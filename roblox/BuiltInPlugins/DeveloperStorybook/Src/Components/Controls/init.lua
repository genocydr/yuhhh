--[[
	Controls allow a story to define simple state in its schema.
	The state can be change by interacting with this component, which generates UI controls for
	each type of state. For example, a boolean control will display a toggle button in this
	component that the user can set to true/false.

	See https://confluence.rbx.com/display/RDE/Developer+Storybook for the story API.
]]
local Main = script.Parent.Parent.Parent
local React = require(Main.Packages.React)

local Framework = require(Main.Packages.Framework)
local UI = Framework.UI
local Checkbox = UI.Checkbox
local Pane = UI.Pane
local DEPRECATED_TextInput = UI.DEPRECATED_TextInput
local SelectInput = UI.SelectInput
local TextLabel = UI.TextLabel

local Dash = Framework.Dash
local keys = Dash.keys
local map = Dash.map
local collect = Dash.collect
local findIndex = Dash.findIndex

local sort = table.sort

local PanelEntry = require(Main.Src.Components.PanelEntry)

local Types = require(Main.Src.Types)

type Props = {
	LayoutOrder: number,
	Controls: Types.StoryControls,
	ControlState: Types.StoryControls,
	SetControls: (Types.StoryControls) -> (),
}

-- A toggle button for boolean values
local function getToggleButton(key: string, value: any, props: Props)
	return React.createElement(Checkbox, {
		Checked = value,
		Text = key,
		OnClick = function()
			props.SetControls({
				[key] = not value,
			})
		end,
	})
end

-- A text input for number or string values
local function getTextInput(key: string, value: any, props: Props)
	return React.createElement(React.Fragment, {}, {
		Label = React.createElement(TextLabel, {
			Text = key,
			LayoutOrder = 1,
			[React.Tag] = "X-Fit",
		}),
		TextInput = React.createElement(DEPRECATED_TextInput, {
			Style = "RoundedBorder",
			Size = UDim2.fromOffset(100, 32),
			Text = tostring(value),
			OnTextChanged = function(newValue: string)
				local typedValue = newValue
				if typeof(props.Controls[key]) == "number" then
					typedValue = tonumber(newValue) or 0
				end
				props.SetControls({
					[key] = typedValue,
				})
			end,
			LayoutOrder = 2,
		}),
	})
end

-- A select input for table values
local function getSelectInput(key: string, value: any, props: Props)
	local values = props.Controls[key]
	local index = findIndex(values, function(current)
		return tostring(value) == tostring(current)
	end) or 1
	return React.createElement(React.Fragment, {}, {
		SelectInput = React.createElement(SelectInput, {
			Items = map(values, tostring),
			SelectedIndex = index,
			OnItemActivated = function(_value, index: number)
				props.SetControls({
					[key] = values[index],
				})
			end,
		}),
	})
end

local function Controls(props: Props)
	-- Sort the keys so the controls don't swap about
	local keys = keys(props.ControlState)
	sort(keys)
	-- Collect the controls into a table of (key, element) pairs
	local controls = collect(keys, function(index: number, key: string)
		local initialValue = props.Controls[key]
		local value = props.ControlState[key]
		local child
		if typeof(initialValue) == "boolean" then
			child = getToggleButton(key, value, props)
		elseif typeof(initialValue) == "table" then
			child = getSelectInput(key, value, props)
		else
			child = getTextInput(key, value, props)
		end
		local element = React.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.XY,
			Layout = Enum.FillDirection.Horizontal,
			LayoutOrder = index,
			Spacing = 5,
		}, {
			Child = child,
		})
		return key, element
	end)

	return React.createElement(PanelEntry, {
		Header = "Controls",
		Description = "Configuration options for the story",
		LayoutOrder = props.LayoutOrder,
	}, {
		Pane = React.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.Y,
			Layout = if #keys > 5 then Enum.FillDirection.Vertical else Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Spacing = 15,
		}, controls),
	})
end

return Controls
