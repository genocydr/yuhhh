--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local LocalizationService = game:GetService("LocalizationService")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local React = require(CorePackages.Packages.React)
local Sounds = require(CorePackages.Workspace.Packages.SoundManager).Sounds
local SoundGroups = require(CorePackages.Workspace.Packages.SoundManager).SoundGroups
local SoundManager = require(CorePackages.Workspace.Packages.SoundManager).SoundManager
local UserProfiles = require(CorePackages.Workspace.Packages.UserProfiles)

local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)
local useDispatch = dependencies.Hooks.useDispatch
local UIBlox = dependencies.UIBlox
local dependencyArray = dependencies.Hooks.dependencyArray
local getStandardSizeAvatarHeadShotRbxthumb = dependencies.getStandardSizeAvatarHeadShotRbxthumb

local useLocalization = dependencies.Hooks.useLocalization

local useSelector = dependencies.Hooks.useSelector

local ControlState = UIBlox.Core.Control.Enum.ControlState
local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel
local Interactable = UIBlox.Core.Control.Interactable
local useStyle = UIBlox.Core.Style.useStyle

local CallState = require(ContactList.Enums.CallState)

local rng = Random.new()

local OpenOrUpdateCFM = require(ContactList.Actions.OpenOrUpdateCFM)
local useAnalytics = require(ContactList.Analytics.useAnalytics)
local EventNamesEnum = require(ContactList.Analytics.EventNamesEnum)
local Pages = require(ContactList.Enums.Pages)

local useStartCallCallback = require(ContactList.Hooks.useStartCallCallback)

local PADDING_IN_BETWEEN = 12
local PROFILE_SIZE = 68
local DETAIL_CONTEXT_HEIGHT = 16
local PADDING = Vector2.new(24, 12)
local CALL_IMAGE_SIZE = 24

export type Participant = {
	userId: number,
}

export type Props = {
	callRecord: {
		callId: string,
		callerId: number,
		participants: { Participant },
		status: string,
		startUtc: number,
		endUtc: number,
		universeId: number,
		placeId: number,
	},
	localUserId: number,
	showDivider: boolean,
	dismissCallback: () -> (),
	layoutOrder: number,
}

local function getIsMissedCall(callRecord, localUserId)
	return callRecord.callerId ~= localUserId and callRecord.status ~= CallState.Finished
end

local function getCallStatusText(callRecord, localUserId)
	if getIsMissedCall(callRecord, localUserId) then
		return "Feature.Call.Label.Missed"
	elseif callRecord.callerId == localUserId then
		return "Feature.Call.Label.Outgoing"
	else
		return "Feature.Call.Label.Incoming"
	end
end

local function getCallContextImage(callRecord, localUserId)
	-- TODO(IRIS-659): Replace with UIBLOX icon
	if getIsMissedCall(callRecord, localUserId) then
		return "rbxassetid://15239344406"
	elseif callRecord.callerId == localUserId then
		return "rbxassetid://15239341275"
	else
		return "rbxassetid://15239341959"
	end
end

local function getAbsoluteDiffDays(currentTimestamp, recordTimestamp, localeId)
	local currentYear = tonumber(currentTimestamp:FormatLocalTime("YYYY", localeId)) :: number -- 	1970, 1971, …, 2029, 2030
	local recordYear = tonumber(recordTimestamp:FormatLocalTime("YYYY", localeId)) :: number -- 	1970, 1971, …, 2029, 2030
	local currentDayOfYear = tonumber(currentTimestamp:FormatLocalTime("DDD", localeId)) :: number -- 1, 2, …, 364, 365
	local recordDayOfYear = tonumber(recordTimestamp:FormatLocalTime("DDD", localeId)) :: number -- 1, 2, …, 364, 365

	local diffDays = 0

	-- add days for each year between current year and record year considering leap years
	for year = recordYear, currentYear - 1 do
		local daysInYear = 365
		if year % 4 == 0 and (year % 100 ~= 0 or year % 400 == 0) then
			daysInYear = 366
		end
		diffDays = diffDays + daysInYear
	end

	diffDays = diffDays + currentDayOfYear - recordDayOfYear
	return diffDays
end

local function getTimestampText(endUtc, yesterdayLabel)
	local currentTimestamp = DateTime.now()
	local recordTimestamp = DateTime.fromUnixTimestampMillis(endUtc)
	local localeId = LocalizationService.RobloxLocaleId

	local diffDays = getAbsoluteDiffDays(currentTimestamp, recordTimestamp, localeId)

	if diffDays == 0 then -- same day
		return recordTimestamp:FormatLocalTime("LT", localeId)
	elseif diffDays == 1 then -- yesterday
		return yesterdayLabel
	elseif diffDays < 7 then -- within a week
		return recordTimestamp:FormatLocalTime("dddd", localeId)
	else -- more than a week
		return recordTimestamp:FormatLocalTime("L", localeId)
	end
end

local function CallHistoryItem(props: Props)
	local callRecord = props.callRecord
	local localUserId = props.localUserId

	-- Will update this to support more participants in a follow up.
	assert(#callRecord.participants == 2, "Expect a local user and single other participant in call.")

	-- Get the participant that is not the local user
	local otherParticipantId = callRecord.participants[1].userId
	if otherParticipantId == localUserId then
		otherParticipantId = callRecord.participants[2].userId
	end

	local combinedName = ""
	local userName = ""
	local otherParticipant = nil
	local namesFetch = UserProfiles.Hooks.useUserProfilesFetch({
		userIds = { tostring(otherParticipantId) },
		query = UserProfiles.Queries.userProfilesCombinedNameAndUsernameByUserIds,
	})

	if namesFetch.data then
		combinedName = UserProfiles.Selectors.getCombinedNameFromId(namesFetch.data, otherParticipantId)
		userName = UserProfiles.Selectors.getUsernameFromId(namesFetch.data, otherParticipantId)
		otherParticipant = {
			userId = otherParticipantId,
			userName = userName,
			combinedName = combinedName,
		}
		userName = UserProfiles.Formatters.formatUsername(userName)
	end

	local localized = useLocalization({
		callStatusLabel = getCallStatusText(callRecord, localUserId),
		yesterdayLabel = "Feature.Call.Label.Yesterday",
	})
	local callStatusLabel = localized.callStatusLabel
	local yesterdayLabel = localized.yesterdayLabel

	local analytics = useAnalytics()
	local style = useStyle()
	local theme = style.Theme
	local font = style.Font

	local dispatch = useDispatch()

	local itemBackgroundTheme, setItemBackgroundTheme = React.useState("BackgroundDefault")
	local onItemStateChanged = React.useCallback(function(oldState, newState)
		if newState == ControlState.Pressed then
			setItemBackgroundTheme("BackgroundOnPress")
		elseif newState == ControlState.Hover then
			setItemBackgroundTheme("BackgroundOnHover")
		else
			setItemBackgroundTheme("BackgroundDefault")
		end
	end, {})

	local selectTag = React.useCallback(function(state: any)
		return state.Navigation.currentTag
	end, {})
	local tag = useSelector(selectTag)

	local selectCurrentPage = React.useCallback(function(state: any)
		return state.Navigation.currentPage
	end, {})
	local currentPage = useSelector(selectCurrentPage)

	local analyticsInfo = {
		searchQueryString = "",
		itemListIndex = props.layoutOrder,
		isSuggestedUser = false,
		page = currentPage,
	}
	local startCall = useStartCallCallback(tag, otherParticipantId, combinedName, props.dismissCallback, analyticsInfo)

	local onHovered = React.useCallback(function(_: any, inputObject: InputObject?)
		if inputObject and inputObject.UserInputType == Enum.UserInputType.MouseMovement then
			SoundManager:PlaySound(Sounds.Hover.Name, {
				Volume = 0.5 + rng:NextNumber(-0.25, 0.25),
				PlaybackSpeed = 1 + rng:NextNumber(-0.5, 0.5),
			}, SoundGroups.Iris)
		end
	end, {})

	local openOrUpdateCFM = React.useCallback(function()
		analytics.fireEvent(EventNamesEnum.PhoneBookPlayerMenuOpened, {
			eventTimestampMs = os.time() * 1000,
			friendUserId = otherParticipantId,
			searchQueryString = nil,
			itemListIndex = props.layoutOrder,
			isSuggestedUser = false,
			page = Pages.CallHistory,
		})

		dispatch(OpenOrUpdateCFM(otherParticipant))
	end, dependencyArray(otherParticipantId, props.layoutOrder))

	local image = getStandardSizeAvatarHeadShotRbxthumb(tostring(otherParticipantId))

	local isMissedCall = getIsMissedCall(callRecord, localUserId)

	return React.createElement(Interactable, {
		Position = UDim2.fromOffset(0, 0),
		Size = UDim2.new(1, 0, 0, PROFILE_SIZE + PADDING.Y * 2),
		BackgroundColor3 = theme[itemBackgroundTheme].Color,
		BackgroundTransparency = theme[itemBackgroundTheme].Transparency,
		BorderSizePixel = 0,
		LayoutOrder = props.layoutOrder,
		onStateChanged = onItemStateChanged,
		AutoButtonColor = false,
		[React.Event.Activated] = startCall,
		[React.Event.InputBegan] = onHovered,
	}, {
		UIPadding = React.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, PADDING.X),
			PaddingTop = UDim.new(0, PADDING.Y),
		}),

		ProfileImage = React.createElement("ImageButton", {
			Size = UDim2.fromOffset(PROFILE_SIZE, PROFILE_SIZE),
			Image = image,
			[React.Event.MouseButton2Up] = openOrUpdateCFM,
			[React.Event.TouchTap] = openOrUpdateCFM,
			AutoButtonColor = false,
		}, {
			UICorner = React.createElement("UICorner", {
				CornerRadius = UDim.new(1, 0),
			}),
		}),

		Content = React.createElement("Frame", {
			Position = UDim2.new(0, PADDING_IN_BETWEEN + PROFILE_SIZE, 0, 0),
			Size = UDim2.new(1, -(PADDING_IN_BETWEEN + PROFILE_SIZE + CALL_IMAGE_SIZE + PADDING.X), 1, -PADDING.Y),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		}, {
			NameContent = React.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				LayoutOrder = 1,
			}, {
				UIListLayout = React.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					Padding = UDim.new(0, 4),
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),

				DisplayName = React.createElement("TextLabel", {
					Size = UDim2.new(1, 0, 0, 20),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Font = font.Header2.Font,
					LayoutOrder = 1,
					Text = combinedName,
					TextColor3 = if isMissedCall then theme.Alert.Color else theme.TextEmphasis.Color,
					TextSize = font.BaseSize * font.Header2.RelativeSize,
					TextTransparency = if isMissedCall
						then theme.Alert.Transparency
						else theme.TextEmphasis.Transparency,
					TextTruncate = Enum.TextTruncate.AtEnd,
					TextXAlignment = Enum.TextXAlignment.Left,
				}),

				Username = React.createElement("TextLabel", {
					Size = UDim2.new(1, 0, 0, 14),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Font = font.CaptionBody.Font,
					LayoutOrder = 2,
					Text = userName,
					TextColor3 = theme.TextDefault.Color,
					TextSize = font.BaseSize * font.CaptionBody.RelativeSize,
					TextTransparency = theme.TextDefault.Transparency,
					TextTruncate = Enum.TextTruncate.AtEnd,
					TextXAlignment = Enum.TextXAlignment.Left,
				}),
			}),

			Details = React.createElement("Frame", {
				Position = UDim2.new(0, 0, 1, -DETAIL_CONTEXT_HEIGHT),
				Size = UDim2.new(1, 0, 0, DETAIL_CONTEXT_HEIGHT),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				LayoutOrder = 2,
			}, {
				UIListLayout = React.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					Padding = UDim.new(0, 4),
				}),

				CallContextImage = React.createElement(ImageSetLabel, {
					Size = UDim2.fromOffset(DETAIL_CONTEXT_HEIGHT, DETAIL_CONTEXT_HEIGHT),
					BackgroundTransparency = 1,
					ImageColor3 = theme.TextDefault.Color,
					ImageTransparency = theme.TextDefault.Transparency,
					Image = getCallContextImage(callRecord, localUserId),
				}),

				DetailsText = React.createElement("TextLabel", {
					Size = UDim2.fromOffset(0, 14),
					AutomaticSize = Enum.AutomaticSize.X,
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Font = font.CaptionBody.Font,
					Text = callStatusLabel .. " • " .. getTimestampText(callRecord.endUtc, yesterdayLabel),
					TextColor3 = theme.TextDefault.Color,
					TextSize = font.BaseSize * font.CaptionBody.RelativeSize,
					TextTransparency = theme.TextDefault.Transparency,
					TextTruncate = Enum.TextTruncate.AtEnd,
					TextYAlignment = Enum.TextYAlignment.Center,
				}),
			}),
		}),

		CallIcon = if game:GetEngineFeature("EnableSocialServiceIrisInvite")
			then React.createElement(ImageSetLabel, {
				Position = UDim2.new(1, -PADDING.X - 4, 0.5, -PADDING.Y / 2),
				Size = UDim2.fromOffset(CALL_IMAGE_SIZE, CALL_IMAGE_SIZE),
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundTransparency = 1,
				Image = "rbxassetid://15239343417", -- TODO(IRIS-659): Replace with UIBLOX icon
				ImageColor3 = theme.ContextualPrimaryDefault.Color,
				ImageTransparency = theme.ContextualPrimaryDefault.Transparency,
			})
			else nil,

		Divider = props.showDivider and React.createElement("Frame", {
			Position = UDim2.new(0, 0, 1, -1),
			Size = UDim2.new(1, 0, 0, 1),
			BackgroundColor3 = theme.Divider.Color,
			BackgroundTransparency = theme.Divider.Transparency,
			BorderSizePixel = 0,
		}) or nil,
	})
end

return CallHistoryItem
