local GuiService = game:GetService("GuiService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

function dismissRobloxMenuAndRun(func)
	local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)
	if GuiService.MenuIsOpen then
		local timeout = tick() + 3
		local conn: RBXScriptConnection | nil = nil
		conn = GuiService.MenuClosed:Connect(function()
			if conn then
				conn:Disconnect()
				conn = nil
			end
			if tick() < timeout then
				func(true)
			end
		end)
		SettingsHub:SetVisibility(false)
	else
		func(false)
	end
end

return {
	dismissRobloxMenuAndRun = dismissRobloxMenuAndRun,
}
