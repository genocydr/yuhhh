local Root = script:FindFirstAncestor("ChromeShared")

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CorePackages = game:GetService("CorePackages")

local ViewportUtil = require(Root.Service.ViewportUtil)
local useObservableValue = require(Root.Hooks.useObservableValue)
local useScreenSize = require(RobloxGui.Modules.Common.Hooks.useScreenSize)
local ChromeAnalytics = require(script.ChromeAnalytics)
local React = require(CorePackages.Packages.React)

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagUnibarLuaOcclusionMetrics = SharedFlags.GetFFlagUnibarLuaOcclusionMetrics()
local OcclusionMetricsManager = require(script.OcclusionMetricsManager)
local GetFFlagRemoveChromeRobloxGuiReferences = SharedFlags.GetFFlagRemoveChromeRobloxGuiReferences

local function ChromeAnalyticsListener(props): React.ReactElement?
	local analytics = ChromeAnalytics.default

	local screenSize
	if GetFFlagRemoveChromeRobloxGuiReferences() then
		screenSize = useObservableValue(ViewportUtil.screenSize) :: Vector2
	else
		screenSize = useScreenSize()
	end

	analytics:setScreenSize(screenSize)

	if FFlagUnibarLuaOcclusionMetrics then
		return React.createElement(OcclusionMetricsManager)
	else
		return nil
	end
end

return ChromeAnalyticsListener
