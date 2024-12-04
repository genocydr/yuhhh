local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ReactIs = require(Packages.ReactIs)

local indexBindable = require(Foundation.Utility.indexBindable)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local Types = require(Foundation.Components.Types)

type Bindable<T> = Types.Bindable<T>
type GuiObjectProps = Types.GuiObjectProps
type CommonProps = Types.CommonProps
type NativeCommonProps = Types.NativeCommonProps
type SelectionGroup = Types.SelectionGroup

-- Since GuiObjectProps is in a different form than what's actually applied, we need to manually define the applied props
type AppliedGuiObjectProps = {
	AnchorPoint: Bindable<Vector2>?,
	AutoLocalize: Bindable<boolean>?,
	AutomaticSize: Bindable<Enum.AutomaticSize>?,
	BackgroundColor3: Bindable<Color3>?,
	BackgroundTransparency: Bindable<number>?,
	BorderSizePixel: Bindable<number>?,
	ClipsDescendants: Bindable<boolean>?,
	Rotation: Bindable<number>?,
	Selectable: Bindable<boolean>?,
	SelectionImageObject: Bindable<React.Ref<GuiObject>>?,
	SelectionOrder: Bindable<number>?,
	NextSelectionDown: Bindable<React.Ref<GuiObject>>?,
	NextSelectionLeft: Bindable<React.Ref<GuiObject>>?,
	NextSelectionRight: Bindable<React.Ref<GuiObject>>?,
	NextSelectionUp: Bindable<React.Ref<GuiObject>>?,
	Size: Bindable<UDim2>?,
} & NativeCommonProps

local function withGuiObjectProps<T>(props: GuiObjectProps & CommonProps, baseProps: T)
	if type(baseProps) == "table" then
		baseProps.AutoLocalize = props.AutoLocalize
		baseProps.AutomaticSize = props.AutomaticSize
		baseProps.BackgroundColor3 = if props.backgroundStyle
			then indexBindable(props.backgroundStyle, "Color3")
			else nil
		baseProps.BackgroundTransparency = if props.backgroundStyle
			then indexBindable(props.backgroundStyle, "Transparency")
			else nil
		baseProps.BorderSizePixel = props.BorderSizePixel
		baseProps.ClipsDescendants = props.ClipsDescendants
		baseProps.Rotation = props.Rotation

		if props.selection then
			baseProps.Selectable = props.selection.Selectable
			baseProps.SelectionImageObject = props.selection.SelectionImageObject
			baseProps.SelectionOrder = props.selection.SelectionOrder
			baseProps.NextSelectionDown = props.selection.NextSelectionDown
			baseProps.NextSelectionLeft = props.selection.NextSelectionLeft
			baseProps.NextSelectionRight = props.selection.NextSelectionRight
			baseProps.NextSelectionUp = props.selection.NextSelectionUp
		end

		if props.selectionGroup ~= nil then
			if type(props.selectionGroup) == "boolean" or ReactIs.isBinding(props.selectionGroup) then
				baseProps.SelectionGroup = props.selectionGroup
			else
				local selectionGroup = props.selectionGroup :: SelectionGroup
				baseProps.SelectionGroup = true
				baseProps.SelectionBehaviorUp = selectionGroup.SelectionBehaviorUp
				baseProps.SelectionBehaviorDown = selectionGroup.SelectionBehaviorDown
				baseProps.SelectionBehaviorLeft = selectionGroup.SelectionBehaviorLeft
				baseProps.SelectionBehaviorRight = selectionGroup.SelectionBehaviorRight
			end
		end

		baseProps.Size = props.Size
	end
	local fullProps = withCommonProps(props, baseProps) :: any -- Required since constrained generics are not yet supported

	-- Replace incompatible Common Props
	fullProps[React.Change.AbsoluteSize] = props.onAbsoluteSizeChanged
	fullProps.onAbsoluteSizeChanged = nil

	local fullTestId = if fullProps.testId then "data-testid=" .. fullProps.testId else nil

	if fullProps[React.Tag] and fullTestId then
		fullProps[React.Tag] ..= " " .. fullTestId
	else
		fullProps[React.Tag] = fullProps[React.Tag] or fullTestId
	end
	fullProps.testId = nil

	return fullProps :: T & AppliedGuiObjectProps
end

return withGuiObjectProps
