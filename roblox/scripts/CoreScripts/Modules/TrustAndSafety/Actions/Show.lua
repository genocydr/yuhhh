-- This action unhides (or show) the whole report menu
local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Packages.Rodux).makeActionCreator

return Action(script.Name, function()
	return {}
end)
