local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Packages.Rodux)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)
local RoduxCall = dependencies.RoduxCall
local RoduxFriends = dependencies.RoduxFriends
local RoduxPresence = dependencies.RoduxPresence
local RoduxUsers = dependencies.RoduxUsers
local RoduxNetworking = dependencies.RoduxNetworking

local Navigation = require(script.Navigation)
local Dialog = require(script.Dialog)
local PlayerMenu = require(script.PlayerMenu)
local LastRemovedFriend = require(script.LastRemovedFriend)

local Reducer = Rodux.combineReducers({
	Navigation = Navigation,
	Dialog = Dialog,
	PlayerMenu = PlayerMenu,
	LastRemovedFriend = LastRemovedFriend,
	Call = RoduxCall.installReducer(),
	Friends = RoduxFriends.installReducer(),
	Presence = RoduxPresence.installReducer(),
	Users = RoduxUsers.installReducer(),
	NetworkStatus = RoduxNetworking.installReducer(),
})

return Reducer
