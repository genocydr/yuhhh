--[[
	Adds a Lua listener to external c++ AssetService.h events,
	so that we can open a lua prompt when we receive a game-engine signal.
	This file is not a Roact component because we need to ensure that AssetService events are connected immediately
	on startup. This prevents a potential bug where prompts would not open if triggered early.
	More info here: https://jira.rbx.com/browse/AVBURST-10955
]]
local AssetService = game:GetService("AssetService")
local AvatarCreationService = game:GetService("AvatarCreationService")
local ExpAuthSvc = game:GetService("ExperienceAuthService")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")

local PublishAssetPrompt = script.Parent
local OpenPublishAssetPrompt = require(PublishAssetPrompt.Thunks.OpenPublishAssetPrompt)
local OpenPublishAvatarPrompt = require(PublishAssetPrompt.Thunks.OpenPublishAvatarPrompt)
local OpenResultModal = require(PublishAssetPrompt.Thunks.OpenResultModal)
local SetHumanoidModel = require(PublishAssetPrompt.Actions.SetHumanoidModel)
local SetPriceInRobux = require(PublishAssetPrompt.Actions.SetPriceInRobux)
local OpenValidationErrorModal = require(PublishAssetPrompt.Actions.OpenValidationErrorModal)

local FFlagPublishAvatarPromptEnabled = require(script.Parent.FFlagPublishAvatarPromptEnabled)

local EngineFeaturePromptImportAnimationClipFromVideoAsyncEnabled =
	game:GetEngineFeature("PromptImportAnimationClipFromVideoAsyncEnabled")

local FFlagAvatarPublishPromptUpdateAttachments = game:DefineFastFlag("AvatarPublishPromptUpdateAttachments", false)
local EngineFeatureWrapDeformerUpdateAttachments = game:GetEngineFeature("WrapDeformerUpdateAttachments")

local function updateModelAttachmentsWithWrapDeformers(avatarModel: Instance)
	-- The Avatar model needs to be parented to the DataModel for GetDeformedCFrameAsync to work
	avatarModel.Parent = RobloxReplicatedStorage

	for _, child in avatarModel:GetChildren() do
		if not child:IsA("MeshPart") then
			continue
		end

		local wrapDeformer = child:FindFirstChildWhichIsA("WrapDeformer")
		if not wrapDeformer then
			continue
		end

		for _, meshPartChild in child:GetChildren() do
			if not meshPartChild:IsA("Attachment") then
				continue
			end

			meshPartChild.CFrame = wrapDeformer:GetDeformedCFrameAsync(meshPartChild.CFrame)
		end
	end
end

local function ConnectAssetServiceEvents(store)
	local connections = {}

	-- Event that fires when the dev triggers the in-experience "Publish Asset" prompt.
	table.insert(
		connections,
		ExpAuthSvc.OpenAuthPrompt:Connect(function(guid, scopes, metadata)
			local isVideoToAnimationFlow = EngineFeaturePromptImportAnimationClipFromVideoAsyncEnabled
				and metadata["isVideoToAnimationFlow"]
			-- Check scopes; we only want to show the publish prompt for the CreatorAssetsCreate scope (but not for videoToAnimationFlow)
			if
				#scopes == 1
				and scopes[1] == Enum.ExperienceAuthScope.CreatorAssetsCreate
				and not isVideoToAnimationFlow
			then
				-- We need to handle asset passed as either instance or as serialized string.
				if metadata["instanceToPublish"] then
					store:dispatch(
						OpenPublishAssetPrompt(metadata["instanceToPublish"], metadata["assetType"], guid, scopes)
					)
				elseif metadata["serializedInstance"] then
					local instance = AssetService:DeserializeInstance(metadata["serializedInstance"])
					store:dispatch(OpenPublishAssetPrompt(instance, metadata["assetType"], guid, scopes))
				elseif FFlagPublishAvatarPromptEnabled and metadata["outfitToPublish"] then
					store:dispatch(OpenPublishAvatarPrompt(guid, scopes))
				end
			end
		end)
	)
	-- Event that fires when the publish flow succeeds or fails and we want to inform the user.
	-- Examples: publish success, bad name/description, server error.
	table.insert(
		connections,
		AssetService.OpenPublishResultModal:Connect(function(statusCode)
			store:dispatch(OpenResultModal(statusCode))
		end)
	)
	local function checkNewEventsExist()
		return AvatarCreationService.UgcValidationSuccess and AvatarCreationService.UgcValidationFailure
	end

	-- TODO AVBURST-15088 Needed for older versions of game engine (especially passing PR tests), should be removed once long enough has passed
	if pcall(checkNewEventsExist) then
		table.insert(
			connections,
			AvatarCreationService.UgcValidationSuccess:Connect(function(guid, serializedModel, priceFromToken)
				local state = store:getState()

				-- check that guid matches for the prompt to update humanoid model
				if state and state.promptRequest.promptInfo.guid == guid then
					local deserializedModel = AvatarCreationService:DeserializeAvatarModel(serializedModel)

					if EngineFeatureWrapDeformerUpdateAttachments and FFlagAvatarPublishPromptUpdateAttachments then
						updateModelAttachmentsWithWrapDeformers(deserializedModel)
					end

					store:dispatch(SetHumanoidModel(deserializedModel))
					if FFlagPublishAvatarPromptEnabled then
						store:dispatch(SetPriceInRobux(priceFromToken))
					else
						store:dispatch(SetPriceInRobux(0))
					end
				end
			end)
		)
	end

	-- TODO AVBURST-15088 Needed for older versions of game engine (especially passing PR tests), should be removed once long enough has passed
	if pcall(checkNewEventsExist) then
		table.insert(
			connections,
			AvatarCreationService.UgcValidationFailure:Connect(function(guid, errorMessage)
				local state = store:getState()
				-- check that guid matches for the prompt to show related error message
				if state and state.promptRequest.promptInfo.guid == guid then
					store:dispatch(OpenValidationErrorModal(errorMessage))
				end
			end)
		)
	end

	return connections
end

return ConnectAssetServiceEvents
