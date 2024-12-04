local Root = script:FindFirstAncestor("ChromeShared")

local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ReactUtils = require(CorePackages.Packages.ReactUtils)
local React = require(CorePackages.Packages.React)
local UnibarMenu = require(Root.Unibar.UnibarMenu)
local UIBlox = require(CorePackages.Packages.UIBlox)
local RoactAppPolicy = require(CorePackages.Workspace.Packages.UniversalAppPolicy).RoactAppPolicy
local AppFeaturePolicies = require(CorePackages.Workspace.Packages.UniversalAppPolicy).AppFeaturePolicies
-- APPEXP-2053 TODO: Remove all use of RobloxGui from ChromeShared
local VoiceStateContext = require(RobloxGui.Modules.VoiceChat.VoiceStateContext)

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local GetFFlagRemoveChromeRobloxGuiReferences = SharedFlags.GetFFlagRemoveChromeRobloxGuiReferences

local SelectionCursorProvider = UIBlox.App.SelectionImage.SelectionCursorProvider

local function UnibarMenuWrapper(props: UnibarMenu.UnibarMenuProp)
	return React.createElement(ReactUtils.ContextStack, {
		providers = if GetFFlagRemoveChromeRobloxGuiReferences()
			then {
				React.createElement(SelectionCursorProvider),
				React.createElement(RoactAppPolicy.Provider, {
					policy = {
						AppFeaturePolicies,
					},
				}),
			}
			else {
				React.createElement(VoiceStateContext.Provider),
				React.createElement(SelectionCursorProvider),
				React.createElement(RoactAppPolicy.Provider, {
					policy = {
						AppFeaturePolicies,
					},
				}),
			},
	}, {
		UnibarMenu = React.createElement(UnibarMenu, props),
	})
end

return UnibarMenuWrapper
