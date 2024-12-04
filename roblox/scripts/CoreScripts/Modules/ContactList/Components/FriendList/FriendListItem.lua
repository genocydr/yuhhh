--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local React = require(CorePackages.Packages.React)
local Sounds = require(CorePackages.Workspace.Packages.SoundManager).Sounds
local SoundGroups = require(CorePackages.Workspace.Packages.SoundManager).SoundGroups
local SoundManager = require(CorePackages.Workspace.Packages.SoundManager).SoundManager
local UserProfiles = require(CorePackages.Workspace.Packages.UserProfiles)
local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)
local dependencyArray = dependencies.Hooks.dependencyArray
local useDispatch = dependencies.Hooks.useDispatch
local useSelector = dependencies.Hooks.useSelector
local getStandardSizeAvatarHeadShotRbxthumb = dependencies.getStandardSizeAvatarHeadShotRbxthumb

local GetPresencesFromUserIds = dependencies.NetworkingPresence.GetPresencesFromUserIds

local useLocalization = dependencies.Hooks.useLocalization

local EnumPresenceType = dependencies.RoduxPresence.Enums.PresenceType
local UIBlox = dependencies.UIBlox

local ControlState = UIBlox.Core.Control.Enum.ControlState
local PlayerContext = UIBlox.App.Indicator.PlayerContext
local Images = UIBlox.App.ImageSet.Images
local Interactable = UIBlox.Core.Control.Interactable

local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel
local useStyle = UIBlox.Core.Style.useStyle

local OpenOrUpdateCFM = require(ContactList.Actions.OpenOrUpdateCFM)
local useAnalytics = require(ContactList.Analytics.useAnalytics)
local EventNamesEnum = require(ContactList.Analytics.EventNamesEnum)
local useStartCallCallback = require(ContactList.Hooks.useStartCallCallback)
local Pages = require(ContactList.Enums.Pages)

local rng = Random.new()

export type Props = {
	userId: number | string,
	userName: string,
	combinedName: string,
	userPresenceType: string?,
	lastLocation: string?,
	dismissCallback: () -> (),
	layoutOrder: number?,
	showDivider: boolean,
	searchQueryString: string?,
	itemListIndex: number,
	isSuggestedUser: boolean,
}

local CALL_IMAGE_SIZE = 24
local PADDING_IN_BETWEEN = 12
local PROFILE_SIZE = 68
local PLAYER_CONTEXT_HEIGHT = 24
local PADDING = Vector2.new(24, 12)

local function FriendListItem(props: Props)
	local analytics = useAnalytics()
	local style = useStyle()
	local theme = style.Theme
	local font = style.Font

	local dispatch = useDispatch()

	local friend = {
		userId = props.userId,
		userName = props.userName,
		combinedName = props.combinedName,
	}

	local localized = useLocalization({
		offlineStatusLabel = "InGame.Presence.Label.Offline",
		onlineStatusLabel = "InGame.Presence.Label.Online",
		studioStatusLabel = "InGame.Presence.Label.RobloxStudio",
	})

	React.useEffect(function()
		if props.userPresenceType == nil then
			dispatch(GetPresencesFromUserIds.API({ props.userId }))
		end
	end, dependencyArray(props.userId, props.userPresenceType))

	local selectUserPresence = React.useCallback(function(state: any)
		return state.Presence.byUserId[tostring(props.userId)]
	end, { props.userId })
	local presence = useSelector(selectUserPresence)

	local selectTag = React.useCallback(function(state: any)
		return state.Navigation.currentTag
	end, {})
	local tag = useSelector(selectTag)

	local selectCurrentPage = React.useCallback(function(state: any)
		return state.Navigation.currentPage
	end, {})
	local currentPage = useSelector(selectCurrentPage)

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

	local image = getStandardSizeAvatarHeadShotRbxthumb(tostring(props.userId))

	local analyticsInfo = {
		searchQueryString = props.searchQueryString,
		itemListIndex = props.itemListIndex,
		isSuggestedUser = props.isSuggestedUser,
		page = currentPage,
	}
	local startCall = useStartCallCallback(tag, props.userId, props.combinedName, props.dismissCallback, analyticsInfo)

	local playerContext = React.useMemo(function()
		local icon = Images["component_assets/circle_26_stroke_3"]
		local iconColor = style.Theme.OfflineStatus.Color
		local iconTransparency = style.Theme.OfflineStatus.Transparency
		local iconSize = 12
		local text = localized.offlineStatusLabel
		local textColorStyle = style.Theme.TextMuted

		local userPresenceType
		local lastLocation
		if presence then
			userPresenceType = presence.userPresenceType
			lastLocation = presence.lastLocation
		else
			userPresenceType = if props.userPresenceType
				then EnumPresenceType[props.userPresenceType]
				else EnumPresenceType.Offline
			lastLocation = props.lastLocation or ""
		end

		if userPresenceType == EnumPresenceType.Online then
			icon = Images["component_assets/circle_16"]
			iconColor = style.Theme.OnlineStatus.Color
			iconTransparency = style.Theme.OnlineStatus.Transparency
			text = localized.onlineStatusLabel
			textColorStyle = style.Theme.TextMuted
			iconSize = 12
		elseif userPresenceType == EnumPresenceType.InGame then
			icon = Images["icons/menu/games_small"]
			iconColor = style.Theme.IconEmphasis.Color
			iconTransparency = style.Theme.IconEmphasis.Transparency
			text = lastLocation
			textColorStyle = theme.TextEmphasis
			iconSize = 16
		elseif userPresenceType == EnumPresenceType.InStudio then
			icon = Images["icons/logo/studiologo_small"]
			iconColor = style.Theme.TextDefault.Color
			iconTransparency = style.Theme.TextDefault.Transparency
			text = localized.studioStatusLabel
			textColorStyle = style.Theme.TextMuted
			iconSize = 16
		end

		return React.createElement(PlayerContext, {
			fontStyle = style.Font.CaptionBody,
			icon = icon,
			iconColor = iconColor,
			iconSize = UDim2.fromOffset(iconSize, iconSize),
			iconTransparency = iconTransparency,
			layoutOrder = 2,
			onActivated = startCall,
			text = text,
			textColorStyle = textColorStyle,
			textHeight = PLAYER_CONTEXT_HEIGHT,
		})
	end, { presence, style, localized.offlineStatusLabel, localized.onlineStatusLabel, localized.studioStatusLabel })

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
			friendUserId = friend.userId,
			searchQueryString = props.searchQueryString,
			itemListIndex = props.itemListIndex,
			isSuggestedUser = props.isSuggestedUser,
			page = Pages.FriendList,
		})

		dispatch(OpenOrUpdateCFM(friend))
	end, dependencyArray(friend.userId, props.searchQueryString, props.itemListIndex, props.isSuggestedUser))

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
			Size = UDim2.new(1, -(PADDING_IN_BETWEEN * 2 + PROFILE_SIZE + CALL_IMAGE_SIZE + PADDING.X), 1, -PADDING.Y),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		}, {
			UIListLayout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),

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

				UIPadding = React.createElement("UIPadding", {
					PaddingBottom = UDim.new(0, 6),
				}),

				CombinedName = React.createElement("TextLabel", {
					Size = UDim2.new(1, 0, 0, 20),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Font = font.Header2.Font,
					LayoutOrder = 1,
					Text = props.combinedName,
					TextColor3 = theme.TextEmphasis.Color,
					TextSize = font.BaseSize * font.Header2.RelativeSize,
					TextTransparency = theme.TextEmphasis.Transparency,
					TextTruncate = Enum.TextTruncate.AtEnd,
					TextXAlignment = Enum.TextXAlignment.Left,
				}),

				Username = React.createElement("TextLabel", {
					Size = UDim2.new(1, 0, 0, 14),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Font = font.CaptionBody.Font,
					LayoutOrder = 2,
					Text = UserProfiles.Formatters.formatUsername(props.userName),
					TextColor3 = theme.TextDefault.Color,
					TextSize = font.BaseSize * font.CaptionBody.RelativeSize,
					TextTransparency = theme.TextDefault.Transparency,
					TextTruncate = Enum.TextTruncate.AtEnd,
					TextXAlignment = Enum.TextXAlignment.Left,
				}),
			}),

			PlayerContext = playerContext,
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

return FriendListItem
