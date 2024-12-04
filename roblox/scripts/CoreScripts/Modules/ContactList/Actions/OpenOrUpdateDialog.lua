local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Packages.Rodux).makeActionCreator

return Action(script.Name, function(title, bodyText, dismissCallback)
	return {
		title = title,
		bodyText = bodyText,
		dismissCallback = dismissCallback,
	}
end)
