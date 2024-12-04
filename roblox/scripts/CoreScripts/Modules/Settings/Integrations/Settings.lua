--[[
This integration represents the In-Experience Gamesettings Menu Page. It uses 
the Setting Framework and React to manage business logic and rendering.
]]

local Settings = script:FindFirstAncestor("Settings")

-- Modules
local SettingsService = require(Settings.Resources.SharedSettingsService)
local Constants = require(Settings.Integrations.Constants)
local Fields = Settings.Integrations.SettingFields
local Fullscreen = require(Fields.Fullscreen)
local ShiftLock = require(Fields.ShiftLock)

-- Core Module 

-- Settings Page
local settingsPage = SettingsService:registerPage({
	id = Constants.GAMESETTINGS.PAGE_ID,
	settingsFields = {
		Fullscreen,
		ShiftLock,
	}
})

return settingsPage
