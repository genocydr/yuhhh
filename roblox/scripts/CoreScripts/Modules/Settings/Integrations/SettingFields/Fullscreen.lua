--[[
	This module represents the FullScreen setting option in the In-Experience Menu Settings page
]]

local Settings = script:FindFirstAncestor("Settings")
local CorePackages = game:GetService("CorePackages")
local UserSettings = UserSettings()
local UserGameSettings = UserSettings.GameSettings
local GuiService = game:GetService("GuiService")

-- Modules
local SettingsServiceLib = require(CorePackages.Workspace.Packages.SettingsService)
local ValueChangedSignal = SettingsServiceLib.ValueChangedSignal
local AvailabilitySignal = SettingsServiceLib.AvailabilitySignal
local FieldType = SettingsServiceLib.FieldType
local Constants = require(Settings.Integrations.Constants)
local Utils = require(Settings.Integrations.Utils)

-- Constants
local SettingsLayoutOrder = Constants.GAMESETTINGS.LAYOUT_ORDER

-- Fullscreen
local FullScreenValue = ValueChangedSignal.new(UserGameSettings:InFullScreen())

FullScreenValue:connect(function(newValue)
	local oldValue = UserGameSettings:InFullScreen()
	if newValue == oldValue then
		return
	end
	GuiService:ToggleFullscreen()
end, true)

local function initAvailability()
	return Utils.getDeviceType() == Utils.DeviceTypes.Desktop or Utils.getDeviceType() == Utils.DeviceTypes.Unknown
end

local FullScreenAvailability = AvailabilitySignal.new(initAvailability())

local FullScreenConfig = {
	id = "fullscreen",
	field_type = FieldType.Toggle,
	label = "CoreScripts.InGameMenu.GameSettings.FullScreen",
	layoutOrder = SettingsLayoutOrder.FullScreenFrame :: number,
	onChanged = FullScreenValue,
	alreadyLocalized = false,
	availability = FullScreenAvailability,
}

return FullScreenConfig :: SettingsServiceLib.ToggleRegisterConfig
