local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")

local root = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Packages.Roact)

local Types = require(root.Components.Types)
local Constants = require(root.Components.Constants)

local ScreenshotFlowStepHandlerContainer = require(root.ReportAnything.Components.ScreenshotFlowStepHandlerContainer)
local ReportAnythingAnalytics = require(root.ReportAnything.Utility.ReportAnythingAnalytics)

local GetFFlagAbuseReportMenuConsoleSupportRefactor =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagAbuseReportMenuConsoleSupportRefactor

local elements: any = {
	annotationPageHandle = nil,
	annotationPageFrame = nil,
	annotationPageScreenGui = nil,
}

local function unmountAnnotationPage()
	if elements.annotationPageHandle ~= nil then
		Roact.unmount(elements.annotationPageHandle)
		elements.annotationPageHandle = nil
	end
	if elements.annotationPageScreenGui ~= nil then
		elements.annotationPageFrame.Parent = nil
		elements.annotationPageFrame = nil
		elements.annotationPageScreenGui = nil
	end
end

local function mountAnnotationPage(
	entryPoint: string,
	hideReportTab: () -> (),
	reportAnythingAnalytics: typeof(ReportAnythingAnalytics),
	reportAnythingState: Types.ReportAnythingState,
	reportAnythingDispatch: (action: { type: string }) -> ()
)
	local topCornerInset, _ = GuiService:GetGuiInset()
	if not elements.annotationPageScreenGui then
		local screenGui = Instance.new("ScreenGui")
		screenGui.Name = "AnnotationPageContents"
		screenGui.DisplayOrder = 7
		screenGui.Enabled = true
		screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		screenGui.Parent = if GetFFlagAbuseReportMenuConsoleSupportRefactor()
			then CoreGui:FindFirstChild(Constants.AbuseReportMenuPlaceholderFrame, true)
			else CoreGui:FindFirstChild(Constants.AbuseReportMenuRootName, true)

		elements.annotationPageScreenGui = screenGui

		local frame = Instance.new("Frame")
		frame.BackgroundTransparency = 1
		frame.Position = UDim2.new(0, 0, 0, -topCornerInset.Y)
		frame.Size = UDim2.new(1, 0, 1, topCornerInset.Y)
		frame.Parent = elements.annotationPageScreenGui

		elements.annotationPageFrame = frame
	end

	local annotationPage = Roact.createElement(ScreenshotFlowStepHandlerContainer, {
		screenshot = reportAnythingState.screenshotContentId,
		entryPoint = entryPoint,
		backAction = function()
			unmountAnnotationPage()
		end,
		dismissAction = function()
			unmountAnnotationPage()
		end,
		finishAnnotationAction = function(annotationPoints)
			unmountAnnotationPage()
			reportAnythingDispatch({
				type = Constants.ReportAnythingActions.SetAnnotationPoints,
				annotationPoints = annotationPoints,
			})
			reportAnythingDispatch({
				type = Constants.ReportAnythingActions.CompleteAttachment,
			})
		end,
		restartAction = function()
			unmountAnnotationPage()
			-- Explicitly clear here since when we trigger the menu hide this way, the menu
			-- hide signal (which would otherwise trigger this to be cleared if the AR session
			-- had ended) will be raised before our main cleanup function ends the AR Session.
			reportAnythingDispatch({
				type = Constants.ReportAnythingActions.ClearAll,
			})
			hideReportTab()
		end,
		skipAnnotationAction = function()
			unmountAnnotationPage()
			reportAnythingDispatch({
				type = Constants.ReportAnythingActions.CompleteAttachment,
			})
		end,
		setAnnotationCircleRadius = function(radius)
			reportAnythingDispatch({
				type = Constants.ReportAnythingActions.SetAnnotationCircleRadius,
				radius = radius,
			})
		end,
		setAnnotationAreaDimensions = function(width, height)
			reportAnythingDispatch({
				type = Constants.ReportAnythingActions.SetAnnotationAreaDimensions,
				width = width,
				height = height,
			})
		end,
		initialAnnotationPoints = {},
		initialPageNumber = 1,
		reportAnythingAnalytics = reportAnythingAnalytics,
	})
	reportAnythingDispatch({
		type = Constants.ReportAnythingActions.SetAnnotationOptionSeen,
	})
	elements.annotationPageHandle = Roact.mount(annotationPage, elements.annotationPageFrame, "AnnotationFlow")
end

return {
	mountAnnotationPage = mountAnnotationPage,
	unmountAnnotationPage = unmountAnnotationPage,
}
