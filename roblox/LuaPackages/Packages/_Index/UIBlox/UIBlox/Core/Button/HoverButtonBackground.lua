--!nonstrict
--[[
	Creates a background square that shows up behind buttons when hovered.
]]
local Button = script.Parent
local Core = Button.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local ImageSetComponent = require(Core.ImageSet.ImageSetComponent)
local validateImage = require(Core.ImageSet.Validator.validateImage)
local withStyle = require(Core.Style.withStyle)

local UIBloxConfig = require(Packages.UIBlox.UIBloxConfig)

local CORNER_RADIUS = 8

local HoverButtonBackground = Roact.PureComponent:extend("HoverButtonBackground")

HoverButtonBackground.validateProps = t.strictInterface({
	-- The padding on the left and right of the button
	sidePadding = t.optional(t.number),

	--The image to render on hover. If not provided, will fall back to a rounded rectangle.
	image = t.optional(validateImage),

	-- The slice for the hover image.
	sliceCenter = t.optional(t.Rect),
})

function HoverButtonBackground:render()
	local sidePadding = if UIBloxConfig.fixGenericButtonHoverBackgroundPadding and self.props.sidePadding
		then UDim2.new(self.props.sidePadding, UDim.new()) + UDim2.new(self.props.sidePadding, UDim.new())
		else UDim2.new()

	return withStyle(function(style)
		local backgroundHover = style.Theme.BackgroundOnHover

		if UIBloxConfig.enableGenericButtonHoverImage then
			return Roact.createElement(ImageSetComponent.Label, {
				Size = if UIBloxConfig.fixGenericButtonHoverBackgroundPadding
					then UDim2.fromScale(1, 1) + sidePadding
					else UDim2.fromScale(1, 1),
				AnchorPoint = if UIBloxConfig.fixGenericButtonHoverBackgroundPadding
					then Vector2.new(0.5, 0.5)
					else nil,
				Position = if UIBloxConfig.fixGenericButtonHoverBackgroundPadding
					then UDim2.fromScale(0.5, 0.5)
					else nil,
				BackgroundColor3 = if self.props.image then nil else backgroundHover.Color,
				BackgroundTransparency = if self.props.image then 1 else backgroundHover.Transparency,
				Image = self.props.image,
				ImageColor3 = backgroundHover.Color,
				ImageTransparency = backgroundHover.Transparency,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = self.props.sliceCenter,
				ZIndex = if UIBloxConfig.useNewThemeColorPalettes then -1 else nil,
			}, {
				corner = if self.props.image
					then nil
					else Roact.createElement("UICorner", {
						CornerRadius = UDim.new(0, CORNER_RADIUS),
					}),
			})
		else
			return Roact.createElement("Frame", {
				Size = if UIBloxConfig.fixGenericButtonHoverBackgroundPadding
					then UDim2.fromScale(1, 1) + sidePadding
					else UDim2.fromScale(1, 1),
				AnchorPoint = if UIBloxConfig.fixGenericButtonHoverBackgroundPadding
					then Vector2.new(0.5, 0.5)
					else nil,
				Position = if UIBloxConfig.fixGenericButtonHoverBackgroundPadding
					then UDim2.fromScale(0.5, 0.5)
					else nil,
				BackgroundColor3 = backgroundHover.Color,
				BackgroundTransparency = backgroundHover.Transparency,
				ZIndex = if UIBloxConfig.useNewThemeColorPalettes then -1 else nil,
			}, {
				corner = Roact.createElement("UICorner", {
					CornerRadius = UDim.new(0, CORNER_RADIUS),
				}),
			})
		end
	end)
end

return HoverButtonBackground
