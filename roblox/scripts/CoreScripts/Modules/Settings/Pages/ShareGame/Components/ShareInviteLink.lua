local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local UserInputService = game:GetService("UserInputService")

local ExternalContentSharingProtocol =
	require(CorePackages.Workspace.Packages.ExternalContentSharingProtocol).ExternalContentSharingProtocol.default

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)

local ShareGame = RobloxGui.Modules.Settings.Pages.ShareGame
local dependencies = require(CorePackages.Workspace.Packages.NotificationsCommon).ReducerDependencies
local Constants = require(ShareGame.Constants)
local ShareButton = require(ShareGame.Components.ShareButton)
local getTranslator = require(ShareGame.getTranslator)
local RobloxTranslator = getTranslator()
local mapDispatchToProps = require(ShareGame.Components.ShareInviteLinkMapDispatchToProps)
local mapStateToProps = require(ShareGame.Components.ShareInviteLinkMapStateToProps)
local RoduxShareLinks = dependencies.RoduxShareLinks
local RoduxNetworking = dependencies.RoduxNetworking
local NetworkStatus = RoduxNetworking.Enum.NetworkStatus
local Theme = require(RobloxGui.Modules.Settings.Theme)

local GetFFlagEnableNewInviteMenu = require(RobloxGui.Modules.Flags.GetFFlagEnableNewInviteMenu)
local GetFFlagInviteFriendsDesignUpdates = require(RobloxGui.Modules.Settings.Flags.GetFFlagInviteFriendsDesignUpdates)

local ShareInviteLink = Roact.PureComponent:extend("ShareInviteLink")

local CONTENTS_LEFT_RIGHT_PADDING = 12
local CONTENTS_TOP_BOTTOM_PADDING = 8
local SHARE_BUTTON_WIDTH = 69
if GetFFlagInviteFriendsDesignUpdates() and GetFFlagEnableNewInviteMenu() then
	CONTENTS_LEFT_RIGHT_PADDING = 16
	CONTENTS_TOP_BOTTOM_PADDING = 12
	SHARE_BUTTON_WIDTH = 66
end

local SHARE_INVITE_LINK_BACKGROUND = Color3.fromRGB(79, 84, 95)
local SHARE_INVITE_LINK_TEXT = RobloxTranslator:FormatByKey("Feature.SocialShare.Action.Share")
local COPIED_INVITE_LINK_TEXT = RobloxTranslator:FormatByKey("Feature.SocialShare.Label.Copied")
local MENU_VERSION_CONST = "V1Menu"
local platform = UserInputService:GetPlatform()

export type Props = {
	isDesktopClient: boolean,
	externalContentSharingProtocol: {
		shareUrl: (any, {
			url: string,
			context: string,
		}) -> (),
	},
	analytics: {
		onShareButtonClick: (any) -> (),
	},
}

type InternalProps = Props & mapStateToProps.Props & mapDispatchToProps.Props

ShareInviteLink.defaultProps = {
	externalContentSharingProtocol = ExternalContentSharingProtocol,
	isDesktopClient = (platform == Enum.Platform.Windows)
		or (platform == Enum.Platform.OSX)
		or (platform == Enum.Platform.UWP),
}

function ShareInviteLink:init()
	self.state = {
		showCopiedText = false,
	}

	self.displayShareSheet = function(config: { shortUrl: string })
		local props: InternalProps = self.props
		if props.externalContentSharingProtocol then
			props.externalContentSharingProtocol:shareUrl({
				url = config.shortUrl,
				context = MENU_VERSION_CONST,
			})

			if props.isDesktopClient then
				self:setState({ showCopiedText = true })

				task.delay(1, function()
					self:setState({ showCopiedText = false })
				end)
			end
		end
	end
end

function ShareInviteLink:didUpdate(oldProps: InternalProps)
	local props: InternalProps = self.props

	if oldProps.shareInviteLink == nil and self.props.shareInviteLink ~= nil then
		local linkType = RoduxShareLinks.Enums.LinkType.ExperienceInvite.rawValue()
		local linkId = self.props.shareInviteLink.linkId

		self.props.analytics:linkGenerated({ linkType = linkType, linkId = linkId })

		self.displayShareSheet(props.shareInviteLink)
	end
end

function ShareInviteLink:render()
	local size = self.props.size
	local layoutOrder = self.props.layoutOrder
	local deviceLayout = self.props.deviceLayout
	local zIndex = self.props.zIndex
	local layoutSpecific = Constants.LayoutSpecific[deviceLayout]

	local onShare = function()
		local props: InternalProps = self.props

		self.props.analytics:onShareButtonClick()
		if self.props.shareInviteLink == nil then
			self.props.fetchShareInviteLink()
		else
			self.displayShareSheet(props.shareInviteLink)
		end
	end

	return Roact.createElement("Frame", {
		Size = size,
		Position = self.props.position,
		LayoutOrder = layoutOrder,
		BackgroundColor3 = Theme.color("PlayerRowFrame", SHARE_INVITE_LINK_BACKGROUND),
		BackgroundTransparency = Theme.transparency("PlayerRowFrame", 0),
		ZIndex = zIndex,
		BorderSizePixel = 0,
	}, {
		Corner = Roact.createElement("UICorner", {
			CornerRadius = if Theme.UIBloxThemeEnabled then Theme.MenuContainerCornerRadius else UDim.new(0, 4),
		}),
		UIPadding = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, CONTENTS_LEFT_RIGHT_PADDING),
			PaddingRight = UDim.new(0, CONTENTS_LEFT_RIGHT_PADDING),
			PaddingTop = UDim.new(0, CONTENTS_TOP_BOTTOM_PADDING),
			PaddingBottom = UDim.new(0, CONTENTS_TOP_BOTTOM_PADDING),
		}),
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		Title = Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			TextXAlignment = Enum.TextXAlignment.Left,
			LayoutOrder = 0,
			Text = RobloxTranslator:FormatByKey("Feature.SocialShare.Label.ShareServerLink"),
			Size = UDim2.new(1, -SHARE_BUTTON_WIDTH, 1, 0),
			TextSize = Theme.textSize(layoutSpecific.PAGE_TITLE_TEXT_SIZE, "ShareLinkTitle"),
			TextColor3 = Constants.Color.WHITE,
			Font = Theme.font(Enum.Font.SourceSansSemibold, "Semibold"),
		}),
		ShareButton = Roact.createElement(ShareButton, {
			size = UDim2.new(0, SHARE_BUTTON_WIDTH, 1, 0),
			layoutOrder = 1,
			onShare = onShare,
			text = if self.state.showCopiedText then COPIED_INVITE_LINK_TEXT else SHARE_INVITE_LINK_TEXT,
			isEnabled = self.props.fetchShareInviteLinkNetworkStatus ~= NetworkStatus.Fetching
				and not self.state.showCopiedText,
		}),
	})
end

ShareInviteLink = RoactRodux.connect(mapStateToProps, mapDispatchToProps)(ShareInviteLink)

return ShareInviteLink
