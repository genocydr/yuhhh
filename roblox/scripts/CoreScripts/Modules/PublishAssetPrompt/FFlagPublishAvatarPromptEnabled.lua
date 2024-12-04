-- FFlagPublishAvatarPromptEnabled5 can never be enabled on console due to https://roblox.atlassian.net/browse/AVBURST-16725
-- FFlagPublishAvatarPromptEnabledAllPlatforms will be used instead for console to avoid incrementing the other.
local FFlagPublishAvatarPromptEnabledAllPlatforms = require(script.Parent.FFlagPublishAvatarPromptEnabledAllPlatforms)

return (game:DefineFastFlag("PublishAvatarPromptEnabled5", false) or FFlagPublishAvatarPromptEnabledAllPlatforms)
	and game:GetEngineFeature("AvatarCreationService")
