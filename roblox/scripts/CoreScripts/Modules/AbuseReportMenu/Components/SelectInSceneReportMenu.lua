local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local UIBlox = require(CorePackages.Packages.UIBlox)
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local Button = UIBlox.App.Button.Button
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local StandardButtonSize = UIBlox.App.Button.Enum.StandardButtonSize
local useStyle = UIBlox.Core.Style.useStyle

local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)

export type Props = {
	hideReportTab: () -> (),
}

local function SelectInSceneReportMenu(props: Props)
	local style = useStyle()

	return React.createElement("Frame", {
		BackgroundTransparency = 1,
		AutomaticSize = Enum.AutomaticSize.Y,
		Size = UDim2.new(1, 0, 0, 0),
	}, {
		Layout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			Padding = UDim.new(0, 30),
		}),
		Padding = React.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 15),
		}),
		Title = React.createElement(StyledTextLabel, {
			text = RobloxTranslator:FormatByKey("Feature.ReportAbuse.Heading.ReportUsingSelectInScene"),
			fontStyle = style.Font.Header1,
			colorStyle = style.Theme.TextEmphasis,
			layoutOrder = 0,
			automaticSize = Enum.AutomaticSize.XY,
		}),
		SubheadingFrame = React.createElement("Frame", {
			BackgroundTransparency = 1,
			AutomaticSize = Enum.AutomaticSize.XY,
			Position = UDim2.new(0.5, 0, 0, 0),
			AnchorPoint = Vector2.new(0.5, 0),
			LayoutOrder = 1,
		}, {
			Layout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 30),
			}),
			Subheading1 = React.createElement(StyledTextLabel, {
				text = "• " .. RobloxTranslator:FormatByKey("Feature.ReportAbuse.Label.SelectInSceneDescription1"),
				fontStyle = style.Font.Body,
				colorStyle = style.Theme.TextEmphasis,
				layoutOrder = 0,
				automaticSize = Enum.AutomaticSize.XY,
			}),
			Subheading2 = React.createElement(StyledTextLabel, {
				text = "• " .. RobloxTranslator:FormatByKey("Feature.ReportAbuse.Label.SelectInSceneDescription2"),
				fontStyle = style.Font.Body,
				colorStyle = style.Theme.TextEmphasis,
				layoutOrder = 1,
				automaticSize = Enum.AutomaticSize.XY,
			}),
			Subheading3 = React.createElement(StyledTextLabel, {
				text = "• " .. RobloxTranslator:FormatByKey("Feature.ReportAbuse.Label.SelectInSceneDescription3"),
				fontStyle = style.Font.Body,
				colorStyle = style.Theme.TextEmphasis,
				layoutOrder = 2,
				automaticSize = Enum.AutomaticSize.XY,
			}),
		}),
		EnterSelectInSceneButton = React.createElement(Button, {
			text = RobloxTranslator:FormatByKey("Feature.ReportAbuse.Action.EnterSceneReporting"),
			buttonType = ButtonType.PrimarySystem,
			standardSize = StandardButtonSize.Small,
			layoutOrder = 2,
			position = UDim2.new(0.5, 0, 0, 0),
			anchorPoint = Vector2.new(0.5, 0),
			fitContent = true,
			onActivated = function()
				local SafetyService = game:GetService("SafetyService")
				local ExperienceStateCaptureService = game:GetService("ExperienceStateCaptureService")

				if game:GetEngineFeature("ExperienceStateCaptureIsInBackground") then
					local connection
					connection = ExperienceStateCaptureService:GetPropertyChangedSignal("IsInBackground")
						:Connect(function()
							if not connection.Connected then
								return
							end

							if not ExperienceStateCaptureService.IsInBackground then
								props.hideReportTab()
								connection:Disconnect()
							end
						end)
				end

				SafetyService.IsCaptureModeForReport = true
				ExperienceStateCaptureService:ToggleCaptureMode()
			end,
		}),
	})
end

return SelectInSceneReportMenu
