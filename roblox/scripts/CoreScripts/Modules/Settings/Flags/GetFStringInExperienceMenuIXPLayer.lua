local CorePackages = game:GetService("CorePackages")
local AppUserLayers = require(CorePackages.Workspace.Packages.ExperimentLayers).AppUserLayers

game:DefineFastString("InExperienceMenuIXPLayer", AppUserLayers.ExperienceMenuSettingsExposureLayer)

return function()
	return game:GetFastString("InExperienceMenuIXPLayer")
end
