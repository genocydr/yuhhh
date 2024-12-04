local CorePackages = game:GetService("CorePackages")
local Action = require(CorePackages.Packages.Rodux).makeActionCreator

return Action(script.Name, function(assetId, bundleIdsAssetIsIn)
	return {
		assetId = assetId,
		bundleIds = bundleIdsAssetIsIn,
	}
end)
