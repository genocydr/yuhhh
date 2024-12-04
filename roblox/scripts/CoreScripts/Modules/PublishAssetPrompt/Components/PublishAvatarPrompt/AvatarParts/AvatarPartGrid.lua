--[[
	Grid layout of the Avatar Part Viewports.
	Meant to preview the 6 main parts of a Published Avatar Body
]]
local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.Packages.UIBlox)
local GridMetrics = UIBlox.App.Grid.GridMetrics
local DefaultMetricsGridView = UIBlox.App.Grid.DefaultMetricsGridView
local Constants = require(script.Parent.Parent.Parent.Parent.Constants)

local AvatarItemCard = require(script.Parent.AvatarItemCard)
local ItemTile = UIBlox.Tile.ItemTile

local FFlagAppendBodyPartToTitle = require(script.Parent.Parent.Parent.Parent.FFlagAppendBodyPartToTitle)

local ITEM_HEIGHT_RATIO = 4 / 3
local ITEM_PADDING = Vector2.new(20, 20)
local MIN_ITEMS_PER_ROW = 2

local NUM_PREVIEW_ITEMS = 6

type Props = {
	LayoutOrder: number?,
	humanoidModel: Model,
	name: string,
	screenSize: Vector2,
}

type ItemCardList = { [number]: AvatarItemCard.Props }

-- function to create an objects folder in the format needed for the Thumbnailing code.
-- TODO: AVBURST-13422 Can look at reusing the utility here to create this Folder instead after
-- FFlagMoveToolboxCodeToUGCValidation is on
local function createObjectsFolder(parts: { [number]: MeshPart }): { [number]: Folder }
	local R15ArtistIntentFolder = Instance.new("Folder")
	R15ArtistIntentFolder.Name = "R15ArtistIntent"
	for _, part in parts do
		part.Parent = R15ArtistIntentFolder
	end
	return { [1] = R15ArtistIntentFolder }
end

-- Helper function to avoid type errors
local function getPart(humanoidModel: Model, partName: string): MeshPart
	return humanoidModel:FindFirstChild(partName) :: MeshPart
end

local function getItems(humanoidModel: Model, name: string): ItemCardList
	local eyelashes, eyebrows, hair
	for _, child in ipairs(humanoidModel:GetChildren()) do
		if child:IsA("Accessory") then
			if child.AccessoryType == Enum.AccessoryType.Eyebrow then
				eyebrows = child
			elseif child.AccessoryType == Enum.AccessoryType.Eyelash then
				eyelashes = child
			elseif child.AccessoryType == Enum.AccessoryType.Hair then
				hair = child
			end
		end
	end

	local items: { AvatarItemCard.Props } = {
		{
			asset = getPart(humanoidModel, "Head"),
			-- UGC body creation does not localize similar text, so we don't localize here
			titleText = if FFlagAppendBodyPartToTitle then nil else name .. "'s Head",
			partName = if FFlagAppendBodyPartToTitle then "Head" else nil,
		},
		{
			asset = createObjectsFolder({
				getPart(humanoidModel, "UpperTorso"),
				getPart(humanoidModel, "LowerTorso"),
			}),
			titleText = if FFlagAppendBodyPartToTitle then nil else name .. "'s Torso",
			partName = if FFlagAppendBodyPartToTitle then "Torso" else nil,
		},
		{
			asset = createObjectsFolder({
				getPart(humanoidModel, "LeftUpperArm"),
				getPart(humanoidModel, "LeftLowerArm"),
				getPart(humanoidModel, "LeftHand"),
			}),
			titleText = if FFlagAppendBodyPartToTitle then nil else name .. "'s Left Arm",
			partName = if FFlagAppendBodyPartToTitle then "Left Arm" else nil,
		},
		{
			asset = createObjectsFolder({
				getPart(humanoidModel, "LeftUpperLeg"),
				getPart(humanoidModel, "LeftLowerLeg"),
				getPart(humanoidModel, "LeftFoot"),
			}),
			titleText = if FFlagAppendBodyPartToTitle then nil else name .. "'s Left Leg",
			partName = if FFlagAppendBodyPartToTitle then "Left Leg" else nil,
		},
		{
			asset = createObjectsFolder({
				getPart(humanoidModel, "RightUpperArm"),
				getPart(humanoidModel, "RightLowerArm"),
				getPart(humanoidModel, "RightHand"),
			}),
			titleText = if FFlagAppendBodyPartToTitle then nil else name .. "'s Right Arm",
			partName = if FFlagAppendBodyPartToTitle then "Right Arm" else nil,
		},
		{
			asset = createObjectsFolder({
				getPart(humanoidModel, "RightUpperLeg"),
				getPart(humanoidModel, "RightLowerLeg"),
				getPart(humanoidModel, "RightFoot"),
			}),
			titleText = if FFlagAppendBodyPartToTitle then nil else name .. "'s Right Leg",
			partName = if FFlagAppendBodyPartToTitle then "Right Leg" else nil,
		},
	}

	if eyebrows then
		table.insert(items, {
			asset = eyebrows,
			titleText = if FFlagAppendBodyPartToTitle then nil else name .. "'s Eyebrows",
			partName = if FFlagAppendBodyPartToTitle then "Eyebrows" else nil,
		})
	end

	if eyelashes then
		table.insert(items, {
			asset = eyelashes,
			titleText = if FFlagAppendBodyPartToTitle then nil else name .. "'s Eyelashes",
			partName = if FFlagAppendBodyPartToTitle then "Eyelashes" else nil,
		})
	end

	if hair then
		table.insert(items, {
			asset = hair,
			titleText = if FFlagAppendBodyPartToTitle then nil else name .. "'s Hair",
			partName = if FFlagAppendBodyPartToTitle then "Hair" else nil,
		})
	end

	return items
end

local function AvatarPartGrid(props: Props)
	local items, setItems = React.useState({} :: ItemCardList)
	React.useEffect(function()
		if props.humanoidModel then
			-- We can only get the item props if the humanoidModel is available
			local modelClone = props.humanoidModel:Clone()
			setItems(getItems(modelClone, props.name))
		else
			-- If the humanoidModel is not available, show shimmer tiles
			-- We set this up by creating a table of empty items
			local loadingItems: any = {}
			for i = 1, NUM_PREVIEW_ITEMS do
				loadingItems[i] = {}
			end
			setItems(loadingItems)
		end
	end, { props.humanoidModel } :: { any })

	React.useEffect(function()
		-- check if items have assets, meaning the item card is not shimmering
		if items[1] and items[1].asset then
			local newItems: ItemCardList = {}
			-- replace the names of the items
			for index, item in items do
				newItems[index] = {
					asset = item.asset,
					titleText = if FFlagAppendBodyPartToTitle then nil else props.name,
					partName = if FFlagAppendBodyPartToTitle then item.partName else nil,
				}
			end
			setItems(newItems)
		end
	end, { props.name } :: { any })

	local isPortrait = props.screenSize.Y > props.screenSize.X
	local itemCardWidth = if isPortrait then Constants.ItemCardWidthPortrait else Constants.ItemCardWidthLandscape

	local renderItem = React.useCallback(function(item: AvatarItemCard.Props)
		if item.asset then
			-- If the item has viewport info, show the AvatarItemCard
			return React.createElement(AvatarItemCard, {
				asset = item.asset,
				titleText = if FFlagAppendBodyPartToTitle then nil else item.titleText,
				bodyName = if FFlagAppendBodyPartToTitle then props.name else nil,
				partName = if FFlagAppendBodyPartToTitle then item.partName else nil,
				viewportSize = itemCardWidth,
			})
		else
			-- If the item is empty, show a shimmer tile
			return React.createElement(ItemTile)
		end
	end, { itemCardWidth, if FFlagAppendBodyPartToTitle then props.name else nil } :: { any })

	return React.createElement("Frame", {
		Size = UDim2.fromScale(1, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		LayoutOrder = props.LayoutOrder,
		BackgroundTransparency = 1,
	}, {
		Grid = React.createElement(DefaultMetricsGridView, {
			getItemHeight = function(width: number)
				return width * ITEM_HEIGHT_RATIO
			end,
			getItemMetrics = GridMetrics.makeCustomMetricsGetter({
				minimumItemsPerRow = MIN_ITEMS_PER_ROW,
				minimumItemWidth = itemCardWidth,
			}),
			renderItem = renderItem,
			itemPadding = ITEM_PADDING,
			items = items,
		}),
	})
end

return AvatarPartGrid
