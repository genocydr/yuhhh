--!nonstrict
local HttpService = game:GetService("HttpService")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local FFlagRemoveHardCodedFriendLimitPrompt = require(RobloxGui.Modules.Flags.FFlagRemoveHardCodedFriendLimitPrompt)

local LocalPlayer = Players.LocalPlayer
while not LocalPlayer do
	Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
	LocalPlayer = Players.LocalPlayer
end

local FriendingUtility = {}
FriendingUtility.__index = FriendingUtility

local MAX_FRIEND_COUNT = 200

local BaseUrl = game:GetService("ContentProvider").BaseUrl:lower()
BaseUrl = string.gsub(BaseUrl, "http:", "https:")
local FriendCountUrl = string.gsub(BaseUrl, "www", "friends") .. "v1/users/{userId}/friends/count"

function FriendingUtility:GetFriendCountAsync(userId)
	assert(not FFlagRemoveHardCodedFriendLimitPrompt, "Should not call GetFriendCountAsync when FFlagRemoveHardCodedFriendLimitPrompt is enabled")
	local friendCount = nil

	local wasSuccess, result = pcall(function()
		local url = string.gsub(FriendCountUrl,"{userId}",tostring(userId))
		return HttpRbxApiService:GetAsyncFullUrl(url)
	end)
	if not wasSuccess then
		print(FriendCountUrl,"failed because", result)
		return nil
	end

	result = HttpService:JSONDecode(result)

	if result["count"] then
		friendCount = result["count"]
	end

	return friendCount
end

function FriendingUtility:MaxFriendCount()
	assert(not FFlagRemoveHardCodedFriendLimitPrompt, "Should not call MaxFriendCount when FFlagRemoveHardCodedFriendLimitPrompt is enabled")
	return MAX_FRIEND_COUNT
end

local PlayerFriendedEvent = Instance.new("BindableEvent")
local PlayerUnFriendedEvent = Instance.new("BindableEvent")

LocalPlayer.FriendStatusChanged:connect(function(player, friendStatus)
	if friendStatus == Enum.FriendStatus.Friend then
		PlayerFriendedEvent:Fire(player)
	elseif friendStatus == Enum.FriendStatus.NotFriend then
		PlayerUnFriendedEvent:Fire(player)
	end
end)

StarterGui:RegisterGetCore("PlayerFriendedEvent", function() return PlayerFriendedEvent end)
StarterGui:RegisterGetCore("PlayerUnfriendedEvent", function() return PlayerUnFriendedEvent end)

return FriendingUtility