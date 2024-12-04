MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["Style"]
  GETTABLEKS R3 R2 K9 ["StyleKey"]
  GETTABLEKS R5 R1 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["StyleModifier"]
  GETTABLEKS R5 R2 K12 ["ComponentSymbols"]
  GETIMPORT R6 K14 [game]
  LOADK R8 K15 ["TerrainEditorSizingAdjustments"]
  LOADB R9 0
  NAMECALL R6 R6 K16 ["DefineFastFlag"]
  CALL R6 3 1
  NEWTABLE R7 0 0
  LOADK R10 K17 ["Toolbar"]
  NAMECALL R8 R5 K18 ["add"]
  CALL R8 2 0
  GETTABLEKS R8 R5 K17 ["Toolbar"]
  DUPTABLE R9 K27 [{"CellSize", "CellPadding", "IconSize", "OverflowTextSize", "OverflowThreshold", "StudioTheme", "TabBackgroundColor", "TextSize"}]
  JUMPIFNOT R6 [+6]
  GETIMPORT R10 K30 [UDim2.fromOffset]
  LOADN R11 84
  LOADN R12 60
  CALL R10 2 1
  JUMP [+5]
  GETIMPORT R10 K30 [UDim2.fromOffset]
  LOADN R11 84
  LOADN R12 84
  CALL R10 2 1
  SETTABLEKS R10 R9 K19 ["CellSize"]
  GETIMPORT R10 K30 [UDim2.fromOffset]
  LOADN R11 2
  LOADN R12 2
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["CellPadding"]
  GETIMPORT R10 K30 [UDim2.fromOffset]
  LOADN R11 30
  LOADN R12 30
  CALL R10 2 1
  SETTABLEKS R10 R9 K21 ["IconSize"]
  LOADN R10 15
  SETTABLEKS R10 R9 K22 ["OverflowTextSize"]
  LOADN R10 75
  SETTABLEKS R10 R9 K23 ["OverflowThreshold"]
  GETTABLEKS R10 R3 K24 ["StudioTheme"]
  SETTABLEKS R10 R9 K24 ["StudioTheme"]
  GETTABLEKS R10 R3 K31 ["SubBackground"]
  SETTABLEKS R10 R9 K25 ["TabBackgroundColor"]
  LOADN R10 18
  SETTABLEKS R10 R9 K26 ["TextSize"]
  SETTABLE R9 R7 R8
  LOADK R10 K32 ["ToolSettings"]
  NAMECALL R8 R5 K18 ["add"]
  CALL R8 2 0
  GETTABLEKS R8 R5 K32 ["ToolSettings"]
  DUPTABLE R9 K34 [{"BackgroundColor"}]
  GETTABLEKS R10 R3 K35 ["MainBackground"]
  SETTABLEKS R10 R9 K33 ["BackgroundColor"]
  SETTABLE R9 R7 R8
  LOADK R10 K36 ["ImageRenderer"]
  NAMECALL R8 R5 K18 ["add"]
  CALL R8 2 0
  GETTABLEKS R8 R5 K36 ["ImageRenderer"]
  DUPTABLE R9 K46 [{"ClearIcon", "ExpandIcon", "IconPadding", "ImportIcon", "PreviewSize", "ToolbarTransparency", "ToolbarBackgroundColor", "ToolbarButtonBackgroundColor", "ToolbarHeight"}]
  LOADK R10 K47 ["rbxasset://textures/StudioSharedUI/preview_clear.png"]
  SETTABLEKS R10 R9 K37 ["ClearIcon"]
  LOADK R10 K48 ["rbxasset://textures/StudioSharedUI/preview_expand.png"]
  SETTABLEKS R10 R9 K38 ["ExpandIcon"]
  LOADN R10 3
  SETTABLEKS R10 R9 K39 ["IconPadding"]
  LOADK R10 K49 ["rbxasset://textures/StudioSharedUI/import@2x.png"]
  SETTABLEKS R10 R9 K40 ["ImportIcon"]
  GETIMPORT R10 K30 [UDim2.fromOffset]
  LOADN R11 100
  LOADN R12 100
  CALL R10 2 1
  SETTABLEKS R10 R9 K41 ["PreviewSize"]
  LOADK R10 K50 [0.4]
  SETTABLEKS R10 R9 K42 ["ToolbarTransparency"]
  GETTABLEKS R10 R3 K43 ["ToolbarBackgroundColor"]
  SETTABLEKS R10 R9 K43 ["ToolbarBackgroundColor"]
  GETTABLEKS R10 R3 K44 ["ToolbarButtonBackgroundColor"]
  SETTABLEKS R10 R9 K44 ["ToolbarButtonBackgroundColor"]
  LOADN R10 32
  SETTABLEKS R10 R9 K45 ["ToolbarHeight"]
  SETTABLE R9 R7 R8
  LOADK R10 K51 ["MetadataDialog"]
  NAMECALL R8 R5 K18 ["add"]
  CALL R8 2 0
  GETTABLEKS R8 R5 K51 ["MetadataDialog"]
  DUPTABLE R9 K58 [{"ImageBackgroundColor", "MetadataLineHeight", "MinSize", "Padding", "Size", "Spacing"}]
  GETIMPORT R10 K61 [Color3.new]
  LOADN R11 0
  LOADN R12 0
  LOADN R13 0
  CALL R10 3 1
  SETTABLEKS R10 R9 K52 ["ImageBackgroundColor"]
  LOADN R10 16
  SETTABLEKS R10 R9 K53 ["MetadataLineHeight"]
  GETIMPORT R10 K63 [Vector2.new]
  LOADN R11 100
  LOADN R12 100
  CALL R10 2 1
  SETTABLEKS R10 R9 K54 ["MinSize"]
  LOADN R10 4
  SETTABLEKS R10 R9 K55 ["Padding"]
  GETIMPORT R10 K63 [Vector2.new]
  LOADN R11 144
  LOADN R12 144
  CALL R10 2 1
  SETTABLEKS R10 R9 K56 ["Size"]
  LOADN R10 4
  SETTABLEKS R10 R9 K57 ["Spacing"]
  SETTABLE R9 R7 R8
  LOADK R10 K64 ["MaterialRenderer"]
  NAMECALL R8 R5 K18 ["add"]
  CALL R8 2 0
  GETTABLEKS R8 R5 K64 ["MaterialRenderer"]
  DUPTABLE R9 K74 [{"CornerRadius", "DropdownItemHeight", "DropdownPadding", "Font", "FontSize", "GridItemSize", "InitialDistance", "MaterialPreviewBackground", "PreviewSize", "SelectInputArrowSize", "Spacing"}]
  GETIMPORT R10 K76 [UDim.new]
  LOADN R11 0
  LOADN R12 4
  CALL R10 2 1
  SETTABLEKS R10 R9 K65 ["CornerRadius"]
  LOADN R10 40
  SETTABLEKS R10 R9 K66 ["DropdownItemHeight"]
  LOADN R10 10
  SETTABLEKS R10 R9 K67 ["DropdownPadding"]
  GETIMPORT R10 K79 [Enum.Font.BuilderSans]
  SETTABLEKS R10 R9 K68 ["Font"]
  LOADN R10 18
  SETTABLEKS R10 R9 K69 ["FontSize"]
  LOADN R10 48
  SETTABLEKS R10 R9 K70 ["GridItemSize"]
  LOADK R10 K80 [6.2]
  SETTABLEKS R10 R9 K71 ["InitialDistance"]
  GETTABLEKS R10 R3 K81 ["InputFieldBackground"]
  SETTABLEKS R10 R9 K72 ["MaterialPreviewBackground"]
  LOADN R10 24
  SETTABLEKS R10 R9 K41 ["PreviewSize"]
  LOADN R10 16
  SETTABLEKS R10 R9 K73 ["SelectInputArrowSize"]
  LOADN R10 6
  SETTABLEKS R10 R9 K57 ["Spacing"]
  SETTABLE R9 R7 R8
  LOADK R10 K82 ["ProgressDialog"]
  NAMECALL R8 R5 K18 ["add"]
  CALL R8 2 0
  GETTABLEKS R8 R5 K82 ["ProgressDialog"]
  DUPTABLE R9 K86 [{"DescriptionHeight", "MinContentSize", "Padding", "ProgressHeight", "Spacing"}]
  LOADN R10 20
  SETTABLEKS R10 R9 K83 ["DescriptionHeight"]
  GETIMPORT R10 K63 [Vector2.new]
  LOADN R11 64
  LOADN R12 60
  CALL R10 2 1
  SETTABLEKS R10 R9 K84 ["MinContentSize"]
  LOADN R10 5
  SETTABLEKS R10 R9 K55 ["Padding"]
  LOADN R10 20
  SETTABLEKS R10 R9 K85 ["ProgressHeight"]
  LOADN R10 5
  SETTABLEKS R10 R9 K57 ["Spacing"]
  SETTABLE R9 R7 R8
  LOADK R10 K87 ["PlaneLockRenderer"]
  NAMECALL R8 R5 K18 ["add"]
  CALL R8 2 0
  GETTABLEKS R8 R5 K87 ["PlaneLockRenderer"]
  DUPTABLE R9 K90 [{"Height", "Icon", "Spacing"}]
  LOADN R10 32
  SETTABLEKS R10 R9 K88 ["Height"]
  GETTABLEKS R10 R3 K91 ["Reset"]
  SETTABLEKS R10 R9 K89 ["Icon"]
  LOADN R10 6
  SETTABLEKS R10 R9 K57 ["Spacing"]
  SETTABLE R9 R7 R8
  LOADK R10 K92 ["UpgradeRenderer"]
  NAMECALL R8 R5 K18 ["add"]
  CALL R8 2 0
  GETTABLEKS R8 R5 K92 ["UpgradeRenderer"]
  DUPTABLE R9 K94 [{"Font", "MaxWidth", "Spacing", "TextSize"}]
  GETIMPORT R10 K96 [Enum.Font.SourceSans]
  SETTABLEKS R10 R9 K68 ["Font"]
  LOADN R10 44
  SETTABLEKS R10 R9 K93 ["MaxWidth"]
  LOADN R10 12
  SETTABLEKS R10 R9 K57 ["Spacing"]
  LOADN R10 16
  SETTABLEKS R10 R9 K26 ["TextSize"]
  SETTABLE R9 R7 R8
  LOADK R10 K97 ["Line"]
  NAMECALL R8 R5 K18 ["add"]
  CALL R8 2 0
  GETTABLEKS R8 R5 K97 ["Line"]
  DUPTABLE R9 K101 [{"Color", "TransparencyActive", "Transparency"}]
  GETIMPORT R10 K104 [BrickColor.White]
  CALL R10 0 1
  SETTABLEKS R10 R9 K98 ["Color"]
  LOADK R10 K105 [0.8]
  SETTABLEKS R10 R9 K99 ["TransparencyActive"]
  LOADK R10 K106 [0.3]
  SETTABLEKS R10 R9 K100 ["Transparency"]
  SETTABLE R9 R7 R8
  LOADK R10 K107 ["Brush"]
  NAMECALL R8 R5 K18 ["add"]
  CALL R8 2 0
  GETTABLEKS R8 R5 K107 ["Brush"]
  DUPTABLE R9 K111 [{"CenterRadiusMultiplier", "CenterTransparency", "Color", "MainTransparency"}]
  LOADK R10 K112 [0.015]
  SETTABLEKS R10 R9 K108 ["CenterRadiusMultiplier"]
  LOADK R10 K113 [0.25]
  SETTABLEKS R10 R9 K109 ["CenterTransparency"]
  GETIMPORT R10 K104 [BrickColor.White]
  CALL R10 0 1
  SETTABLEKS R10 R9 K98 ["Color"]
  LOADK R10 K114 [0.95]
  SETTABLEKS R10 R9 K110 ["MainTransparency"]
  SETTABLE R9 R7 R8
  GETTABLEKS R8 R5 K115 ["SimpleTab"]
  NEWTABLE R9 16 0
  LOADN R10 1
  SETTABLEKS R10 R9 K116 ["BorderSize"]
  LOADN R10 5
  SETTABLEKS R10 R9 K57 ["Spacing"]
  DUPTABLE R10 K121 [{"Left", "Top", "Bottom", "Right"}]
  LOADN R11 20
  SETTABLEKS R11 R10 K117 ["Left"]
  LOADN R11 4
  SETTABLEKS R11 R10 K118 ["Top"]
  LOADN R11 0
  SETTABLEKS R11 R10 K119 ["Bottom"]
  LOADN R11 20
  SETTABLEKS R11 R10 K120 ["Right"]
  SETTABLEKS R10 R9 K55 ["Padding"]
  LOADN R10 3
  SETTABLEKS R10 R9 K122 ["TopLineHeight"]
  GETTABLEKS R10 R3 K123 ["ButtonText"]
  SETTABLEKS R10 R9 K98 ["Color"]
  GETTABLEKS R10 R3 K31 ["SubBackground"]
  SETTABLEKS R10 R9 K33 ["BackgroundColor"]
  GETTABLEKS R10 R3 K31 ["SubBackground"]
  SETTABLEKS R10 R9 K124 ["BorderColor"]
  GETTABLEKS R10 R3 K125 ["DialogMainButton"]
  SETTABLEKS R10 R9 K126 ["TopLineColor"]
  GETTABLEKS R10 R3 K31 ["SubBackground"]
  SETTABLEKS R10 R9 K127 ["BottomLineColor"]
  GETTABLEKS R10 R4 K128 ["Hover"]
  DUPTABLE R11 K129 [{"Color"}]
  GETTABLEKS R12 R3 K125 ["DialogMainButton"]
  SETTABLEKS R12 R11 K98 ["Color"]
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R4 K130 ["Selected"]
  DUPTABLE R11 K131 [{"BottomLineColor", "BackgroundColor", "BorderColor"}]
  GETTABLEKS R12 R3 K35 ["MainBackground"]
  SETTABLEKS R12 R11 K127 ["BottomLineColor"]
  GETTABLEKS R12 R3 K35 ["MainBackground"]
  SETTABLEKS R12 R11 K33 ["BackgroundColor"]
  GETTABLEKS R12 R3 K132 ["Border"]
  SETTABLEKS R12 R11 K124 ["BorderColor"]
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R4 K133 ["Disabled"]
  DUPTABLE R11 K129 [{"Color"}]
  GETTABLEKS R12 R3 K134 ["ButtonTextDisabled"]
  SETTABLEKS R12 R11 K98 ["Color"]
  SETTABLE R11 R9 R10
  SETTABLE R9 R7 R8
  GETIMPORT R8 K76 [UDim.new]
  LOADN R9 0
  LOADN R10 6
  CALL R8 2 1
  LOADK R11 K135 ["MaterialGrid"]
  NAMECALL R9 R5 K18 ["add"]
  CALL R9 2 0
  GETTABLEKS R9 R5 K135 ["MaterialGrid"]
  DUPTABLE R10 K148 [{"BackgroundColor", "GridItemBackgroundColor", "GridItemBackgroundColorHovered", "GridItemBorderColor", "GridItemBorderColorSelected", "GridItemCornerRadius", "GridItemPadding", "GridItemSize", "GridItemLabelPadding", "ListItemHeight", "ListItemPadding", "ListItemSpacing", "MaterialPreviewStyle", "Padding", "ShimmerSizeOffset", "TextSize"}]
  GETTABLEKS R11 R3 K35 ["MainBackground"]
  SETTABLEKS R11 R10 K33 ["BackgroundColor"]
  GETTABLEKS R11 R3 K149 ["Button"]
  SETTABLEKS R11 R10 K136 ["GridItemBackgroundColor"]
  GETTABLEKS R11 R3 K150 ["ButtonHover"]
  SETTABLEKS R11 R10 K137 ["GridItemBackgroundColorHovered"]
  GETTABLEKS R11 R3 K132 ["Border"]
  SETTABLEKS R11 R10 K138 ["GridItemBorderColor"]
  GETTABLEKS R11 R3 K151 ["InputFieldBorderSelected"]
  SETTABLEKS R11 R10 K139 ["GridItemBorderColorSelected"]
  GETIMPORT R11 K76 [UDim.new]
  LOADN R12 0
  LOADN R13 6
  CALL R11 2 1
  SETTABLEKS R11 R10 K140 ["GridItemCornerRadius"]
  LOADN R11 2
  SETTABLEKS R11 R10 K141 ["GridItemPadding"]
  LOADN R11 128
  SETTABLEKS R11 R10 K70 ["GridItemSize"]
  DUPTABLE R11 K155 [{"PaddingBottom", "PaddingLeft", "PaddingRight"}]
  SETTABLEKS R8 R11 K152 ["PaddingBottom"]
  SETTABLEKS R8 R11 K153 ["PaddingLeft"]
  SETTABLEKS R8 R11 K154 ["PaddingRight"]
  SETTABLEKS R11 R10 K142 ["GridItemLabelPadding"]
  LOADN R11 40
  SETTABLEKS R11 R10 K143 ["ListItemHeight"]
  LOADN R11 0
  SETTABLEKS R11 R10 K144 ["ListItemPadding"]
  LOADN R11 4
  SETTABLEKS R11 R10 K145 ["ListItemSpacing"]
  LOADK R11 K156 ["CornerBox"]
  SETTABLEKS R11 R10 K146 ["MaterialPreviewStyle"]
  LOADN R11 0
  SETTABLEKS R11 R10 K55 ["Padding"]
  LOADN R11 2
  SETTABLEKS R11 R10 K147 ["ShimmerSizeOffset"]
  LOADN R11 20
  SETTABLEKS R11 R10 K26 ["TextSize"]
  SETTABLE R10 R7 R9
  LOADK R11 K157 ["Note"]
  NAMECALL R9 R5 K18 ["add"]
  CALL R9 2 0
  GETTABLEKS R9 R5 K157 ["Note"]
  DUPTABLE R10 K163 [{"Background", "KeyBackground", "EdgePadding", "FramePadding", "TextMargin"}]
  GETTABLEKS R11 R3 K35 ["MainBackground"]
  SETTABLEKS R11 R10 K158 ["Background"]
  GETTABLEKS R11 R3 K164 ["DimmedText"]
  SETTABLEKS R11 R10 K159 ["KeyBackground"]
  LOADN R11 2
  SETTABLEKS R11 R10 K160 ["EdgePadding"]
  LOADN R11 3
  SETTABLEKS R11 R10 K161 ["FramePadding"]
  LOADN R11 2
  SETTABLEKS R11 R10 K162 ["TextMargin"]
  SETTABLE R10 R7 R9
  LOADK R11 K165 ["BrushSizeRenderer"]
  NAMECALL R9 R5 K18 ["add"]
  CALL R9 2 0
  GETTABLEKS R9 R5 K165 ["BrushSizeRenderer"]
  DUPTABLE R10 K171 [{"LabelWidth", "LockButtonWidth", "RowHeight", "Locked", "Unlocked"}]
  LOADN R11 20
  SETTABLEKS R11 R10 K166 ["LabelWidth"]
  LOADN R11 26
  SETTABLEKS R11 R10 K167 ["LockButtonWidth"]
  LOADN R11 24
  SETTABLEKS R11 R10 K168 ["RowHeight"]
  GETTABLEKS R11 R3 K169 ["Locked"]
  SETTABLEKS R11 R10 K169 ["Locked"]
  GETTABLEKS R11 R3 K170 ["Unlocked"]
  SETTABLEKS R11 R10 K170 ["Unlocked"]
  SETTABLE R10 R7 R9
  LOADK R11 K172 ["MultiSelectionRenderer"]
  NAMECALL R9 R5 K18 ["add"]
  CALL R9 2 0
  GETTABLEKS R9 R5 K172 ["MultiSelectionRenderer"]
  DUPTABLE R10 K173 [{"Spacing"}]
  LOADN R11 4
  SETTABLEKS R11 R10 K57 ["Spacing"]
  SETTABLE R10 R7 R9
  LOADK R11 K174 ["ElevationRenderer"]
  NAMECALL R9 R5 K18 ["add"]
  CALL R9 2 0
  GETTABLEKS R9 R5 K174 ["ElevationRenderer"]
  DUPTABLE R10 K188 [{"AddStyle", "ArrowSize", "ArrowStyle", "ButtonSize", "Corner", "ImageColor", "ImageColorSelected", "MaterialPreviewSize", "PreviewBorder", "RemoveStyle", "SliderAreaSize", "SliderSize", "TextBoxSize", "Spacing"}]
  DUPTABLE R11 K190 [{"Image"}]
  GETTABLEKS R12 R3 K191 ["Add"]
  SETTABLEKS R12 R11 K189 ["Image"]
  SETTABLEKS R11 R10 K175 ["AddStyle"]
  GETIMPORT R11 K30 [UDim2.fromOffset]
  LOADN R12 10
  LOADN R13 5
  CALL R11 2 1
  SETTABLEKS R11 R10 K176 ["ArrowSize"]
  DUPTABLE R11 K190 [{"Image"}]
  LOADK R12 K192 ["rbxasset://textures/TerrainEditor/trianglesmallinverted.png"]
  SETTABLEKS R12 R11 K189 ["Image"]
  SETTABLEKS R11 R10 K177 ["ArrowStyle"]
  GETIMPORT R11 K30 [UDim2.fromOffset]
  LOADN R12 16
  LOADN R13 16
  CALL R11 2 1
  SETTABLEKS R11 R10 K178 ["ButtonSize"]
  GETIMPORT R11 K76 [UDim.new]
  LOADN R12 0
  LOADN R13 4
  CALL R11 2 1
  SETTABLEKS R11 R10 K179 ["Corner"]
  GETTABLEKS R11 R3 K193 ["TextPrimary"]
  SETTABLEKS R11 R10 K180 ["ImageColor"]
  GETTABLEKS R11 R3 K125 ["DialogMainButton"]
  SETTABLEKS R11 R10 K181 ["ImageColorSelected"]
  GETIMPORT R11 K30 [UDim2.fromOffset]
  LOADN R12 20
  LOADN R13 20
  CALL R11 2 1
  SETTABLEKS R11 R10 K182 ["MaterialPreviewSize"]
  DUPTABLE R11 K195 [{"Color", "Image", "SliceCenter"}]
  GETTABLEKS R12 R3 K125 ["DialogMainButton"]
  SETTABLEKS R12 R11 K98 ["Color"]
  LOADK R12 K196 ["rbxasset://textures/StudioToolbox/RoundedBorder.png"]
  SETTABLEKS R12 R11 K189 ["Image"]
  GETIMPORT R12 K198 [Rect.new]
  LOADN R13 3
  LOADN R14 3
  LOADN R15 13
  LOADN R16 13
  CALL R12 4 1
  SETTABLEKS R12 R11 K194 ["SliceCenter"]
  SETTABLEKS R11 R10 K183 ["PreviewBorder"]
  DUPTABLE R11 K190 [{"Image"}]
  GETTABLEKS R12 R3 K199 ["Remove"]
  SETTABLEKS R12 R11 K189 ["Image"]
  SETTABLEKS R11 R10 K184 ["RemoveStyle"]
  GETIMPORT R11 K30 [UDim2.fromOffset]
  LOADN R12 20
  LOADN R13 182
  CALL R11 2 1
  SETTABLEKS R11 R10 K185 ["SliderAreaSize"]
  GETIMPORT R11 K30 [UDim2.fromOffset]
  LOADN R12 20
  LOADN R13 200
  CALL R11 2 1
  SETTABLEKS R11 R10 K186 ["SliderSize"]
  GETIMPORT R11 K30 [UDim2.fromOffset]
  LOADN R12 50
  LOADN R13 20
  CALL R11 2 1
  SETTABLEKS R11 R10 K187 ["TextBoxSize"]
  LOADN R11 10
  SETTABLEKS R11 R10 K57 ["Spacing"]
  SETTABLE R10 R7 R9
  LOADK R11 K200 ["SlopeRenderer"]
  NAMECALL R9 R5 K18 ["add"]
  CALL R9 2 0
  GETTABLEKS R9 R5 K200 ["SlopeRenderer"]
  DUPTABLE R10 K202 [{"Height", "Spacing", "TextInputWidth"}]
  LOADN R11 24
  SETTABLEKS R11 R10 K88 ["Height"]
  LOADN R11 6
  SETTABLEKS R11 R10 K57 ["Spacing"]
  LOADN R11 50
  SETTABLEKS R11 R10 K201 ["TextInputWidth"]
  SETTABLE R10 R7 R9
  LOADK R11 K203 ["MaterialRangesRenderer"]
  NAMECALL R9 R5 K18 ["add"]
  CALL R9 2 0
  GETTABLEKS R9 R5 K203 ["MaterialRangesRenderer"]
  DUPTABLE R10 K207 [{"BackgroundColor", "CloseButton", "Dialog", "MinHeight", "Padding", "Reset"}]
  GETIMPORT R11 K208 [BrickColor.new]
  LOADN R12 0
  LOADN R13 0
  LOADN R14 0
  CALL R11 3 1
  SETTABLEKS R11 R10 K33 ["BackgroundColor"]
  DUPTABLE R11 K215 [{"AnchorPoint", "BackgroundTransparency", "BorderSizePixel", "Image", "ImageColor3", "Position", "Size", "ZIndex"}]
  GETIMPORT R12 K63 [Vector2.new]
  LOADN R13 1
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K209 ["AnchorPoint"]
  LOADN R12 1
  SETTABLEKS R12 R11 K210 ["BackgroundTransparency"]
  LOADN R12 0
  SETTABLEKS R12 R11 K211 ["BorderSizePixel"]
  LOADK R12 K216 ["rbxasset://textures/DeveloperFramework/AssetPreview/close_button.png"]
  SETTABLEKS R12 R11 K189 ["Image"]
  GETIMPORT R12 K218 [Color3.fromRGB]
  LOADN R13 255
  LOADN R14 255
  LOADN R15 255
  CALL R12 3 1
  SETTABLEKS R12 R11 K212 ["ImageColor3"]
  GETIMPORT R12 K220 [UDim2.fromScale]
  LOADN R13 1
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K213 ["Position"]
  GETIMPORT R12 K30 [UDim2.fromOffset]
  LOADN R13 28
  LOADN R14 28
  CALL R12 2 1
  SETTABLEKS R12 R11 K56 ["Size"]
  LOADN R12 2
  SETTABLEKS R12 R11 K214 ["ZIndex"]
  SETTABLEKS R11 R10 K204 ["CloseButton"]
  DUPTABLE R11 K222 [{"AnchorPoint", "BackgroundColor", "Position", "FillSize", "Size"}]
  GETIMPORT R12 K63 [Vector2.new]
  LOADK R13 K223 [0.5]
  LOADK R14 K223 [0.5]
  CALL R12 2 1
  SETTABLEKS R12 R11 K209 ["AnchorPoint"]
  GETTABLEKS R12 R3 K35 ["MainBackground"]
  SETTABLEKS R12 R11 K33 ["BackgroundColor"]
  GETIMPORT R12 K220 [UDim2.fromScale]
  LOADK R13 K223 [0.5]
  LOADK R14 K223 [0.5]
  CALL R12 2 1
  SETTABLEKS R12 R11 K213 ["Position"]
  GETIMPORT R12 K224 [UDim2.new]
  LOADN R13 0
  LOADN R14 250
  LOADN R15 1
  LOADN R16 196
  CALL R12 4 1
  SETTABLEKS R12 R11 K221 ["FillSize"]
  GETIMPORT R12 K30 [UDim2.fromOffset]
  LOADN R13 250
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K56 ["Size"]
  SETTABLEKS R11 R10 K205 ["Dialog"]
  LOADN R11 127
  SETTABLEKS R11 R10 K206 ["MinHeight"]
  LOADN R11 6
  SETTABLEKS R11 R10 K55 ["Padding"]
  DUPTABLE R11 K225 [{"Icon", "Size"}]
  GETTABLEKS R12 R3 K91 ["Reset"]
  SETTABLEKS R12 R11 K89 ["Icon"]
  GETIMPORT R12 K30 [UDim2.fromOffset]
  LOADN R13 90
  LOADN R14 32
  CALL R12 2 1
  SETTABLEKS R12 R11 K56 ["Size"]
  SETTABLEKS R11 R10 K91 ["Reset"]
  SETTABLE R10 R7 R9
  LOADK R11 K226 ["TerrainTypeRenderer"]
  NAMECALL R9 R5 K18 ["add"]
  CALL R9 2 0
  GETTABLEKS R9 R5 K226 ["TerrainTypeRenderer"]
  DUPTABLE R10 K229 [{"BorderColor", "Height", "IconSize", "ItemsPerRow", "ItemMinWidth", "Spacing"}]
  GETTABLEKS R11 R3 K125 ["DialogMainButton"]
  SETTABLEKS R11 R10 K124 ["BorderColor"]
  LOADN R11 32
  SETTABLEKS R11 R10 K88 ["Height"]
  LOADN R11 24
  SETTABLEKS R11 R10 K21 ["IconSize"]
  LOADN R11 3
  SETTABLEKS R11 R10 K227 ["ItemsPerRow"]
  LOADN R11 130
  SETTABLEKS R11 R10 K228 ["ItemMinWidth"]
  LOADN R11 6
  SETTABLEKS R11 R10 K57 ["Spacing"]
  SETTABLE R10 R7 R9
  LOADK R11 K230 ["SeedRenderer"]
  NAMECALL R9 R5 K18 ["add"]
  CALL R9 2 0
  GETTABLEKS R9 R5 K230 ["SeedRenderer"]
  DUPTABLE R10 K90 [{"Height", "Icon", "Spacing"}]
  LOADN R11 24
  SETTABLEKS R11 R10 K88 ["Height"]
  GETTABLEKS R11 R3 K231 ["Randomize"]
  SETTABLEKS R11 R10 K89 ["Icon"]
  LOADN R11 6
  SETTABLEKS R11 R10 K57 ["Spacing"]
  SETTABLE R10 R7 R9
  RETURN R7 1
