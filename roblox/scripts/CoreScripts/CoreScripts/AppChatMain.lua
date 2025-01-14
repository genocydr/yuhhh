local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local Rodux = require(CorePackages.Packages.Rodux)
local SocialCommon = require(CorePackages.Workspace.Packages.SocialCommon)
local SquadExperimentation = require(CorePackages.Workspace.Packages.SocialExperiments).SquadExperimentation
local ChatEntryPointNames = SocialCommon.Enums.ChatEntryPointNames

local ApolloClient = require(CoreGui.RobloxGui.Modules.ApolloClient)

local GetFFlagFixSettingshubImportOrder = require(RobloxGui.Modules.Flags.GetFFlagFixSettingshubImportOrder)
if GetFFlagFixSettingshubImportOrder() then
	-- We need to ensure we don't require SettingsHub before TopBar has finished
	-- This is due to ordering of SetGlobalGuiInset defined in TopBar
	CoreGui:WaitForChild("TopBarApp")
end
local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)

local AppChat = require(CorePackages.Workspace.Packages.AppChat)
local InExperienceAppChat = AppChat.App.InExperienceAppChat
local AppChatReducer = AppChat.App.AppChatReducer
local InExperienceAppChatProviders = AppChat.App.InExperienceAppChatProviders
local InExperienceAppChatExperimentation = AppChat.App.InExperienceAppChatExperimentation
local InExperienceAppChatModal = AppChat.App.InExperienceAppChatModal
local ViewportUtil = require(RobloxGui.Modules.Chrome.ChromeShared.Service.ViewportUtil)
local getFFlagAppChatCoreUIConflictFix = require(CorePackages.Workspace.Packages.SharedFlags).getFFlagAppChatCoreUIConflictFix
local ChatSelector = if getFFlagAppChatCoreUIConflictFix() then require(RobloxGui.Modules.ChatSelector) else nil :: never
local PlayerListManager = if getFFlagAppChatCoreUIConflictFix() then require(RobloxGui.Modules.PlayerList.PlayerListManager) else nil :: never

local GetFFlagAppChatInExpConnectIconEnableSquadIndicator =
	require(RobloxGui.Modules.Chrome.Flags.GetFFlagAppChatInExpConnectIconEnableSquadIndicator)
local TopBarTopMargin = require(RobloxGui.Modules.TopBar.Constants).TopBarTopMargin
local getFFlagAppChatMoveApolloProvider = AppChat.Flags.getFFlagAppChatMoveApolloProvider

local folder = Instance.new("Folder")
folder.Name = "AppChat"
folder.Parent = CoreGui

local root = ReactRoblox.createRoot(folder)
local store = Rodux.Store.new(AppChatReducer, nil, {
	Rodux.thunkMiddleware,
})

local shouldUseIndependentAppChatContainer = InExperienceAppChatExperimentation.getShowPlatformChatInChrome()
local updateAppChatUnreadMessagesCount = SettingsHub.Instance.PlayersPage.UpdateAppChatUnreadMessagesCount
local parentContainerContext: AppChat.ParentContainerContextType = {
	getParentContainer = function()
		return SettingsHub.Instance.MenuContainer
	end,
	visibilitySignal = SettingsHub.CurrentPageSignal,
	getShouldSetAppChatVisible = function(newPage: string)
		return newPage == "AppChatPage"
	end,
	-- todo: ROACTCHAT-1352 consolidate with UA entry point logic
	entryPoint = ChatEntryPointNames.SettingsHub,
	hideParentContainer = function()
		if SettingsHub:GetVisibility() then
			SettingsHub.Instance:PopMenu(false, true)
		end
	end,
	showParentContainer = function()
		SettingsHub.Instance:SetVisibility(true, false)
		SettingsHub:SwitchToPage(SettingsHub.Instance.AppChatPage)
	end,
	updateCurrentSquadId = function(squadId)
		-- Unsupported for the old flow.
	end,
}

if shouldUseIndependentAppChatContainer then
	InExperienceAppChatModal.default:initialize(TopBarTopMargin, SettingsHub, ViewportUtil, ChatSelector, PlayerListManager)

	updateAppChatUnreadMessagesCount = function(newCount)
		InExperienceAppChatModal:setUnreadCount(newCount)
	end

	parentContainerContext = {
		getParentContainer = function()
			return InExperienceAppChatModal.default.frame
		end,
		visibilitySignal = InExperienceAppChatModal.default.visibilitySignal.Event,
		getShouldSetAppChatVisible = function(...)
			return InExperienceAppChatModal:getVisible()
		end,
		-- todo: ROACTCHAT-1352 consolidate with UA entry point logic
		entryPoint = if InExperienceAppChatExperimentation.default.variant.ShowPlatformChatChromeUnibarEntryPoint
			then ChatEntryPointNames.ChromeUnibar
			else ChatEntryPointNames.ChromeDropdown,
		hideParentContainer = function()
			InExperienceAppChatModal.default:setVisible(false)
		end,
		showParentContainer = function()
			InExperienceAppChatModal.default:setVisible(true)
		end,
		updateCurrentSquadId = function(squadId)
			if GetFFlagAppChatInExpConnectIconEnableSquadIndicator() and SquadExperimentation.getSquadEntrypointsEnabled() then
				InExperienceAppChatModal:setCurrentSquadId(squadId)
			end
		end,
	}
end

local tree = React.createElement(InExperienceAppChatProviders, {
	store = store,
	-- this anonymous function to be replaced by one used by unibar
	updateAppChatUnreadMessagesCount = updateAppChatUnreadMessagesCount,
	parentContainerContext = parentContainerContext,
	apolloClient = if getFFlagAppChatMoveApolloProvider() then ApolloClient else nil,
}, {
	appChat = React.createElement(InExperienceAppChat, {
		apolloClient = if getFFlagAppChatMoveApolloProvider() then nil else ApolloClient,
	}),
})
root:render(tree)
