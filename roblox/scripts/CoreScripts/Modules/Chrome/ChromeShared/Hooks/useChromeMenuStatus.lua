local Root = script:FindFirstAncestor("ChromeShared")

local ChromeService = require(Root.Service)
local useObservableValue = require(Root.Hooks.useObservableValue)

return function()
	return useObservableValue(ChromeService:status())
end
