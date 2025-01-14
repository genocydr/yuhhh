local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")
local VRService = game:GetService("VRService")

local Symbol = require(CorePackages.Workspace.Packages.AppCommonLib).Symbol
local MouseIconOverrideService = require(CorePackages.InGameServices.MouseIconOverrideService)

local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent.Parent

local Constants = require(InGameMenu.Resources.Constants)
local ExternalEventConnection = require(InGameMenu.Utility.ExternalEventConnection)

local INGAME_MENU_CUSOR_OVERRIDE_KEY = Symbol.named("InGameMenuCursorOverride")

local InputType = Constants.InputType

local MouseOverrideManager = Roact.PureComponent:extend("MouseOverrideManager")

MouseOverrideManager.validateProps = t.strictInterface({
	menuOpen = t.boolean,
	exitModalOpen = t.boolean,
	inputType = t.string,
})

function MouseOverrideManager:render()
	local isExitModalOpen = self.props.exitModalOpen

	return Roact.createElement(ExternalEventConnection, {
		event = UserInputService:GetPropertyChangedSignal("OverrideMouseIconBehavior"),
		callback = function()
			-- Another menu that overrides the mouse icon behaviour has closed.
			-- But we are still open so we need to keep re-override the icon behaviour.
			if
				(self.props.menuOpen or isExitModalOpen)
				and UserInputService.OverrideMouseIconBehavior == Enum.OverrideMouseIconBehavior.None
			then
				self:updateMouseIconOverride()
			end
		end,
	})
end

function MouseOverrideManager:init()
	self.didOverrideMouse = false
end

function MouseOverrideManager:updateMouseIconOverride()
	local isExitModalOpen = self.props.exitModalOpen

	if self.props.menuOpen or isExitModalOpen then
		self.didOverrideMouse = true
		if self.props.inputType == InputType.Gamepad or VRService.VREnabled then
			MouseIconOverrideService.push(INGAME_MENU_CUSOR_OVERRIDE_KEY, Enum.OverrideMouseIconBehavior.ForceHide)
		else
			MouseIconOverrideService.push(INGAME_MENU_CUSOR_OVERRIDE_KEY, Enum.OverrideMouseIconBehavior.ForceShow)
		end
	elseif self.didOverrideMouse then
		self.didOverrideMouse = false
		MouseIconOverrideService.pop(INGAME_MENU_CUSOR_OVERRIDE_KEY)
	end
end

function MouseOverrideManager:didMount()
	self:updateMouseIconOverride()
end

function MouseOverrideManager:didUpdate()
	self:updateMouseIconOverride()
end

return RoactRodux.UNSTABLE_connect2(function(state)
	local exitModalOpen = state.nativeClosePrompt.closingApp

	return {
		menuOpen = state.isMenuOpen,
		exitModalOpen = exitModalOpen,
		inputType = state.displayOptions.inputType,
	}
end, nil)(MouseOverrideManager)
