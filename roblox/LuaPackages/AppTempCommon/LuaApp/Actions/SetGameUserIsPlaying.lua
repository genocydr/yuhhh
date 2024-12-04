local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Packages.Rodux).makeActionCreator

return Action(script.Name, function(userId, universeId)
	return {
		userId = userId,
		universeId = universeId,
	}
end)
