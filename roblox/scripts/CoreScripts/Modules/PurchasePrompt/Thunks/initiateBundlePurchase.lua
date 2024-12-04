--!nonstrict
local Root = script.Parent.Parent
local Players = game:GetService("Players")

local ErrorOccurred = require(Root.Actions.ErrorOccurred)
local RequestBundlePurchase = require(Root.Actions.RequestBundlePurchase)
local PurchaseError = require(Root.Enums.PurchaseError)
local getBundleDetails = require(Root.Network.getBundleDetails)
local getProductPurchasableDetails = require(Root.Network.getProductPurchasableDetails)
local getCatalogItemDetails = require(Root.Network.getCatalogItemDetails)
local getAccountInfo = require(Root.Network.getAccountInfo)
local getBalanceInfo = require(Root.Network.getBalanceInfo)
local getIsAlreadyOwned = require(Root.Network.getIsAlreadyOwned)
local Network = require(Root.Services.Network)
local ExternalSettings = require(Root.Services.ExternalSettings)
local hasPendingRequest = require(Root.Utils.hasPendingRequest)
local Promise = require(Root.Promise)
local Thunk = require(Root.Thunk)

local resolveBundlePromptState = require(script.Parent.resolveBundlePromptState)

local FFlagEnableBundlePurchaseChecks = require(Root.Parent.Flags.FFlagEnableBundlePurchaseChecks)
local GetFFlagUseCatalogItemDetailsToResolveBundlePurchase =
	require(Root.Flags.GetFFlagUseCatalogItemDetailsToResolveBundlePurchase)

local requiredServices = {
	Network,
	ExternalSettings,
}

-- Defining fast flag only used in this file. Will be cleaned up later.
local GetFFlagReturnNotForSaleOnInvalidBundleId = require(Root.Flags.GetFFlagReturnNotForSaleOnInvalidBundleId)

local function initiateBundlePurchase(
	bundleId,
	idempotencyKey,
	purchaseAuthToken,
	collectibleItemId,
	collectibleItemInstanceId,
	collectibleProductId,
	expectedPrice
)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]
		local externalSettings = services[ExternalSettings]

		if hasPendingRequest(store:getState()) then
			return nil
		end

		store:dispatch(
			RequestBundlePurchase(
				bundleId,
				idempotencyKey,
				purchaseAuthToken,
				collectibleItemId,
				collectibleItemInstanceId,
				collectibleProductId,
				expectedPrice
			)
		)

		local isStudio = externalSettings.isStudio()
		if not isStudio and Players.LocalPlayer.UserId <= 0 then
			store:dispatch(ErrorOccurred(PurchaseError.Guest))
			return nil
		end

		if externalSettings.getFlagOrder66() then
			store:dispatch(ErrorOccurred(PurchaseError.PurchaseDisabled))
			return nil
		end

		return Promise.all({
			bundleDetails = getBundleDetails(network, bundleId),
			accountInfo = getAccountInfo(network, externalSettings),
			balanceInfo = getBalanceInfo(network, externalSettings),
			alreadyOwned = if FFlagEnableBundlePurchaseChecks
				then getIsAlreadyOwned(network, bundleId, Enum.InfoType.Bundle)
				else nil,
		})
			:andThen(function(results)
				-- If Fast Flag is on for the InvalidBundleId fix, use new logic
				if GetFFlagReturnNotForSaleOnInvalidBundleId() then
					-- Only continue the purchase if the bundleId was valid and VEP returned a valid product
					if results.bundleDetails.product then
						if GetFFlagUseCatalogItemDetailsToResolveBundlePurchase() then
							getCatalogItemDetails(network, bundleId, "bundle")
								:andThen(function(catalogItemDetails)
									store:dispatch(
										resolveBundlePromptState(
											catalogItemDetails,
											results.bundleDetails,
											results.accountInfo,
											results.balanceInfo,
											expectedPrice,
											if FFlagEnableBundlePurchaseChecks then results.alreadyOwned else nil
										)
									)
								end)
								:catch(function(errorReason)
									store:dispatch(ErrorOccurred(errorReason))
								end)
						else
							local bundleProductId = results.bundleDetails.product.id
							getProductPurchasableDetails(network, bundleProductId):andThen(
								function(productPurchasableDetails)
									store:dispatch(
										resolveBundlePromptState(
											productPurchasableDetails,
											results.bundleDetails,
											results.accountInfo,
											results.balanceInfo,
											expectedPrice,
											if FFlagEnableBundlePurchaseChecks then results.alreadyOwned else nil
										)
									)
								end
							)
						end
					-- Otherwise, we can dispatch the NotForSale error and end early to not crash the UI
					else
						store:dispatch(ErrorOccurred(PurchaseError.NotForSale))
					end
				else
					if GetFFlagUseCatalogItemDetailsToResolveBundlePurchase() then
						getCatalogItemDetails(network, bundleId, "bundle")
							:andThen(function(catalogItemDetails)
								store:dispatch(
									resolveBundlePromptState(
										catalogItemDetails,
										results.bundleDetails,
										results.accountInfo,
										results.balanceInfo,
										expectedPrice
									)
								)
							end)
							:catch(function(errorReason)
								store:dispatch(ErrorOccurred(errorReason))
							end)
					else
						local bundleProductId = results.bundleDetails.product.id
						getProductPurchasableDetails(network, bundleProductId):andThen(
							function(productPurchasableDetails)
								store:dispatch(
									resolveBundlePromptState(
										productPurchasableDetails,
										results.bundleDetails,
										results.accountInfo,
										results.balanceInfo,
										expectedPrice
									)
								)
							end
						)
					end
				end
			end)
			:catch(function(errorReason)
				store:dispatch(ErrorOccurred(errorReason))
			end)
	end)
end

return initiateBundlePurchase
