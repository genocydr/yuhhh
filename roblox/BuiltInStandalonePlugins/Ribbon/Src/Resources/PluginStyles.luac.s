MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["Styling"]
  GETTABLEKS R2 R3 K8 ["createStyleRule"]
  GETTABLEKS R4 R1 K7 ["Styling"]
  GETTABLEKS R3 R4 K9 ["createStyleSheet"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["SharedFlags"]
  GETTABLEKS R5 R6 K12 ["getFFlagAddTestModeDropDown"]
  CALL R4 1 1
  CALL R4 0 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["SharedFlags"]
  GETTABLEKS R6 R7 K13 ["getFFlagRibbonDynamicBackground"]
  CALL R5 1 1
  CALL R5 0 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K11 ["SharedFlags"]
  GETTABLEKS R7 R8 K14 ["getFFlagRibbonEnableSliderLua"]
  CALL R6 1 1
  CALL R6 0 1
  NEWTABLE R7 0 60
  MOVE R8 R2
  LOADK R9 K15 ["TextLabel, TextButton, TextBox"]
  DUPTABLE R10 K17 [{"Font"}]
  GETIMPORT R11 K20 [Enum.Font.SourceSans]
  SETTABLEKS R11 R10 K16 ["Font"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K21 [".Role-Surface"]
  DUPTABLE R11 K24 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R12 K25 ["$BackgroundTransparent"]
  SETTABLEKS R12 R11 K22 ["BackgroundTransparency"]
  LOADK R12 K26 ["$BorderNone"]
  SETTABLEKS R12 R11 K23 ["BorderSizePixel"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K27 [".Role-Surface100"]
  DUPTABLE R12 K29 [{"BackgroundColor3", "BorderSizePixel"}]
  JUMPIFNOT R5 [+2]
  LOADK R13 K30 ["$SemanticColorSurface100"]
  JUMP [+1]
  LOADK R13 K31 ["$DEPRECATED_MainBackground"]
  SETTABLEKS R13 R12 K28 ["BackgroundColor3"]
  LOADK R13 K26 ["$BorderNone"]
  SETTABLEKS R13 R12 K23 ["BorderSizePixel"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K32 [".Text-Label"]
  DUPTABLE R13 K35 [{"Font", "TextColor3", "TextSize", "BorderSizePixel", "BackgroundTransparency"}]
  LOADK R14 K36 ["$FontWeight400"]
  SETTABLEKS R14 R13 K16 ["Font"]
  LOADK R14 K37 ["$SemanticColorContentMuted"]
  SETTABLEKS R14 R13 K33 ["TextColor3"]
  LOADK R14 K38 ["$FontSize100"]
  SETTABLEKS R14 R13 K34 ["TextSize"]
  LOADK R14 K26 ["$BorderNone"]
  SETTABLEKS R14 R13 K23 ["BorderSizePixel"]
  LOADK R14 K25 ["$BackgroundTransparent"]
  SETTABLEKS R14 R13 K22 ["BackgroundTransparency"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K39 [".Text-Title"]
  DUPTABLE R14 K35 [{"Font", "TextColor3", "TextSize", "BorderSizePixel", "BackgroundTransparency"}]
  LOADK R15 K40 ["$FontWeight700"]
  SETTABLEKS R15 R14 K16 ["Font"]
  LOADK R15 K37 ["$SemanticColorContentMuted"]
  SETTABLEKS R15 R14 K33 ["TextColor3"]
  LOADK R15 K38 ["$FontSize100"]
  SETTABLEKS R15 R14 K34 ["TextSize"]
  LOADK R15 K26 ["$BorderNone"]
  SETTABLEKS R15 R14 K23 ["BorderSizePixel"]
  LOADK R15 K25 ["$BackgroundTransparent"]
  SETTABLEKS R15 R14 K22 ["BackgroundTransparency"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K41 [".TooltipBackground"]
  DUPTABLE R15 K29 [{"BackgroundColor3", "BorderSizePixel"}]
  LOADK R16 K42 ["$SemanticColorSurface300Inverse"]
  SETTABLEKS R16 R15 K28 ["BackgroundColor3"]
  LOADK R16 K26 ["$BorderNone"]
  SETTABLEKS R16 R15 K23 ["BorderSizePixel"]
  NEWTABLE R16 0 1
  MOVE R17 R2
  LOADK R18 K43 [">> TextLabel"]
  DUPTABLE R19 K44 [{"TextColor3"}]
  LOADK R20 K45 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R20 R19 K33 ["TextColor3"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K46 [".TooltipTextBounds"]
  DUPTABLE R16 K49 [{"TextWrapped", "TextXAlignment"}]
  LOADB R17 1
  SETTABLEKS R17 R16 K47 ["TextWrapped"]
  GETIMPORT R17 K51 [Enum.TextXAlignment.Left]
  SETTABLEKS R17 R16 K48 ["TextXAlignment"]
  NEWTABLE R17 0 1
  MOVE R18 R2
  LOADK R19 K52 ["::UISizeConstraint"]
  DUPTABLE R20 K54 [{"MaxSize"}]
  GETIMPORT R21 K57 [Vector2.new]
  LOADN R22 200
  LOADK R23 K58 [∞]
  CALL R21 2 1
  SETTABLEKS R21 R20 K53 ["MaxSize"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K59 [".Role-DividerH"]
  DUPTABLE R17 K61 [{"Size"}]
  GETIMPORT R18 K63 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  LOADN R22 1
  CALL R18 4 1
  SETTABLEKS R18 R17 K60 ["Size"]
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K64 ["> Frame"]
  DUPTABLE R21 K65 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  LOADK R22 K66 ["$SemanticColorDivider"]
  SETTABLEKS R22 R21 K28 ["BackgroundColor3"]
  LOADK R22 K67 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R22 R21 K22 ["BackgroundTransparency"]
  LOADK R22 K26 ["$BorderNone"]
  SETTABLEKS R22 R21 K23 ["BorderSizePixel"]
  GETIMPORT R22 K63 [UDim2.new]
  LOADN R23 1
  LOADN R24 0
  LOADN R25 0
  LOADN R26 1
  CALL R22 4 1
  SETTABLEKS R22 R21 K60 ["Size"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K68 [".Role-DividerV"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 5
  MOVE R20 R2
  LOADK R21 K64 ["> Frame"]
  DUPTABLE R22 K69 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
  LOADK R23 K66 ["$SemanticColorDivider"]
  SETTABLEKS R23 R22 K28 ["BackgroundColor3"]
  LOADK R23 K67 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R23 R22 K22 ["BackgroundTransparency"]
  LOADK R23 K26 ["$BorderNone"]
  SETTABLEKS R23 R22 K23 ["BorderSizePixel"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K70 [".Small"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K64 ["> Frame"]
  DUPTABLE R27 K61 [{"Size"}]
  GETIMPORT R28 K63 [UDim2.new]
  LOADN R29 0
  LOADN R30 1
  LOADN R31 0
  LOADN R32 28
  CALL R28 4 1
  SETTABLEKS R28 R27 K60 ["Size"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K71 [".Medium"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K64 ["> Frame"]
  DUPTABLE R28 K61 [{"Size"}]
  GETIMPORT R29 K63 [UDim2.new]
  LOADN R30 0
  LOADN R31 1
  LOADN R32 0
  LOADN R33 48
  CALL R29 4 1
  SETTABLEKS R29 R28 K60 ["Size"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K72 [".Large"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 1
  MOVE R27 R2
  LOADK R28 K64 ["> Frame"]
  DUPTABLE R29 K61 [{"Size"}]
  GETIMPORT R30 K63 [UDim2.new]
  LOADN R31 0
  LOADN R32 1
  LOADN R33 0
  LOADN R34 64
  CALL R30 4 1
  SETTABLEKS R30 R29 K60 ["Size"]
  CALL R27 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K73 [".RibbonButton-Divider"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K74 ["::UIPadding"]
  DUPTABLE R30 K77 [{"PaddingLeft", "PaddingRight"}]
  LOADK R31 K78 ["$GlobalSpace150"]
  SETTABLEKS R31 R30 K75 ["PaddingLeft"]
  LOADK R31 K78 ["$GlobalSpace150"]
  SETTABLEKS R31 R30 K76 ["PaddingRight"]
  CALL R28 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K79 [".X-RowSpace50"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K80 ["::UIListLayout"]
  DUPTABLE R23 K84 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R24 K86 [Enum.FillDirection.Horizontal]
  SETTABLEKS R24 R23 K81 ["FillDirection"]
  LOADK R24 K87 ["$GlobalSpace50"]
  SETTABLEKS R24 R23 K82 ["Padding"]
  GETIMPORT R24 K89 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R24 R23 K83 ["SortOrder"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K90 [".X-RowSpace100"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K80 ["::UIListLayout"]
  DUPTABLE R24 K84 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R25 K86 [Enum.FillDirection.Horizontal]
  SETTABLEKS R25 R24 K81 ["FillDirection"]
  LOADK R25 K91 ["$GlobalSpace100"]
  SETTABLEKS R25 R24 K82 ["Padding"]
  GETIMPORT R25 K89 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R25 R24 K83 ["SortOrder"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K92 [".X-RowSpace150"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K80 ["::UIListLayout"]
  DUPTABLE R25 K84 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R26 K86 [Enum.FillDirection.Horizontal]
  SETTABLEKS R26 R25 K81 ["FillDirection"]
  LOADK R26 K78 ["$GlobalSpace150"]
  SETTABLEKS R26 R25 K82 ["Padding"]
  GETIMPORT R26 K89 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R26 R25 K83 ["SortOrder"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K93 [".X-RowSpace200"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K80 ["::UIListLayout"]
  DUPTABLE R26 K84 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R27 K86 [Enum.FillDirection.Horizontal]
  SETTABLEKS R27 R26 K81 ["FillDirection"]
  LOADK R27 K94 ["$GlobalSpace200"]
  SETTABLEKS R27 R26 K82 ["Padding"]
  GETIMPORT R27 K89 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R27 R26 K83 ["SortOrder"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K95 [".X-ColumnSpace25"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K80 ["::UIListLayout"]
  DUPTABLE R27 K84 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R28 K97 [Enum.FillDirection.Vertical]
  SETTABLEKS R28 R27 K81 ["FillDirection"]
  LOADK R28 K98 ["$GlobalSpace25"]
  SETTABLEKS R28 R27 K82 ["Padding"]
  GETIMPORT R28 K89 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R28 R27 K83 ["SortOrder"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K99 [".X-ColumnSpace50"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K80 ["::UIListLayout"]
  DUPTABLE R28 K84 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R29 K97 [Enum.FillDirection.Vertical]
  SETTABLEKS R29 R28 K81 ["FillDirection"]
  LOADK R29 K87 ["$GlobalSpace50"]
  SETTABLEKS R29 R28 K82 ["Padding"]
  GETIMPORT R29 K89 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R29 R28 K83 ["SortOrder"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K100 [".X-ColumnSpace100"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 1
  MOVE R27 R2
  LOADK R28 K80 ["::UIListLayout"]
  DUPTABLE R29 K84 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R30 K97 [Enum.FillDirection.Vertical]
  SETTABLEKS R30 R29 K81 ["FillDirection"]
  LOADK R30 K91 ["$GlobalSpace100"]
  SETTABLEKS R30 R29 K82 ["Padding"]
  GETIMPORT R30 K89 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R30 R29 K83 ["SortOrder"]
  CALL R27 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  SETLIST R7 R8 16 [1]
  MOVE R8 R2
  LOADK R9 K101 [".X-PadSpace150 ::UIPadding"]
  DUPTABLE R10 K104 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R11 K78 ["$GlobalSpace150"]
  SETTABLEKS R11 R10 K75 ["PaddingLeft"]
  LOADK R11 K78 ["$GlobalSpace150"]
  SETTABLEKS R11 R10 K76 ["PaddingRight"]
  LOADK R11 K78 ["$GlobalSpace150"]
  SETTABLEKS R11 R10 K102 ["PaddingTop"]
  LOADK R11 K78 ["$GlobalSpace150"]
  SETTABLEKS R11 R10 K103 ["PaddingBottom"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K105 [".X-MezzPaddingLeft ::UIPadding"]
  DUPTABLE R11 K106 [{"PaddingLeft"}]
  LOADK R12 K91 ["$GlobalSpace100"]
  SETTABLEKS R12 R11 K75 ["PaddingLeft"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K107 [".X-MezzPaddingRight ::UIPadding"]
  DUPTABLE R12 K108 [{"PaddingRight"}]
  LOADK R13 K91 ["$GlobalSpace100"]
  SETTABLEKS R13 R12 K76 ["PaddingRight"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K109 [".X-RowXS"]
  NEWTABLE R13 0 0
  NEWTABLE R14 0 1
  MOVE R15 R2
  LOADK R16 K80 ["::UIListLayout"]
  DUPTABLE R17 K84 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R18 K86 [Enum.FillDirection.Horizontal]
  SETTABLEKS R18 R17 K81 ["FillDirection"]
  LOADK R18 K98 ["$GlobalSpace25"]
  SETTABLEKS R18 R17 K82 ["Padding"]
  GETIMPORT R18 K89 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R18 R17 K83 ["SortOrder"]
  CALL R15 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K110 [".Component-RibbonTab"]
  DUPTABLE R14 K111 [{"BackgroundTransparency", "Font", "Size", "TextColor3", "TextSize"}]
  LOADK R15 K25 ["$BackgroundTransparent"]
  SETTABLEKS R15 R14 K22 ["BackgroundTransparency"]
  LOADK R15 K36 ["$FontWeight400"]
  SETTABLEKS R15 R14 K16 ["Font"]
  GETIMPORT R15 K63 [UDim2.new]
  LOADN R16 0
  LOADN R17 80
  LOADN R18 0
  LOADN R19 28
  CALL R15 4 1
  SETTABLEKS R15 R14 K60 ["Size"]
  LOADK R15 K37 ["$SemanticColorContentMuted"]
  SETTABLEKS R15 R14 K33 ["TextColor3"]
  LOADK R15 K112 ["$FontSize150"]
  SETTABLEKS R15 R14 K34 ["TextSize"]
  NEWTABLE R15 0 3
  MOVE R16 R2
  LOADK R17 K113 [".State-Selected"]
  DUPTABLE R18 K114 [{"BackgroundColor3", "BackgroundTransparency", "Font", "TextColor3"}]
  LOADK R19 K115 ["$SemanticColorStatesSelected"]
  SETTABLEKS R19 R18 K28 ["BackgroundColor3"]
  LOADK R19 K116 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R19 R18 K22 ["BackgroundTransparency"]
  LOADK R19 K40 ["$FontWeight700"]
  SETTABLEKS R19 R18 K16 ["Font"]
  LOADK R19 K117 ["$SemanticColorContentStandard"]
  SETTABLEKS R19 R18 K33 ["TextColor3"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K118 [".State-Disabled"]
  DUPTABLE R19 K44 [{"TextColor3"}]
  LOADK R20 K119 ["$SemanticColorContentDisabled"]
  SETTABLEKS R20 R19 K33 ["TextColor3"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K120 [".State-Default :hover, .State-Disabled :hover"]
  DUPTABLE R20 K121 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R21 K122 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R21 R20 K28 ["BackgroundColor3"]
  LOADK R21 K123 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R21 R20 K22 ["BackgroundTransparency"]
  CALL R18 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K124 [".Component-RibbonTabs"]
  DUPTABLE R15 K132 [{"AnchorPoint", "AutomaticCanvasSize", "AutomaticSize", "Position", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset"}]
  GETIMPORT R16 K57 [Vector2.new]
  LOADK R17 K133 [0.5]
  LOADK R18 K133 [0.5]
  CALL R16 2 1
  SETTABLEKS R16 R15 K125 ["AnchorPoint"]
  GETIMPORT R16 K135 [Enum.AutomaticSize.XY]
  SETTABLEKS R16 R15 K126 ["AutomaticCanvasSize"]
  GETIMPORT R16 K135 [Enum.AutomaticSize.XY]
  SETTABLEKS R16 R15 K127 ["AutomaticSize"]
  GETIMPORT R16 K137 [UDim2.fromScale]
  LOADK R17 K133 [0.5]
  LOADK R18 K133 [0.5]
  CALL R16 2 1
  SETTABLEKS R16 R15 K128 ["Position"]
  GETIMPORT R16 K139 [Enum.ScrollingDirection.X]
  SETTABLEKS R16 R15 K129 ["ScrollingDirection"]
  LOADN R16 0
  SETTABLEKS R16 R15 K130 ["ScrollBarThickness"]
  GETIMPORT R16 K142 [Enum.ScrollBarInset.None]
  SETTABLEKS R16 R15 K131 ["HorizontalScrollBarInset"]
  NEWTABLE R16 0 2
  MOVE R17 R2
  LOADK R18 K71 [".Medium"]
  DUPTABLE R19 K143 [{"AnchorPoint", "Position"}]
  GETIMPORT R20 K57 [Vector2.new]
  LOADN R21 1
  LOADK R22 K133 [0.5]
  CALL R20 2 1
  SETTABLEKS R20 R19 K125 ["AnchorPoint"]
  GETIMPORT R20 K63 [UDim2.new]
  LOADN R21 1
  LOADN R22 122
  LOADK R23 K133 [0.5]
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K128 ["Position"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K70 [".Small"]
  DUPTABLE R20 K144 [{"AnchorPoint", "AutomaticSize", "Position", "Size"}]
  GETIMPORT R21 K57 [Vector2.new]
  LOADN R22 0
  LOADK R23 K133 [0.5]
  CALL R21 2 1
  SETTABLEKS R21 R20 K125 ["AnchorPoint"]
  GETIMPORT R21 K145 [Enum.AutomaticSize.None]
  SETTABLEKS R21 R20 K127 ["AutomaticSize"]
  GETIMPORT R21 K63 [UDim2.new]
  LOADN R22 0
  LOADN R23 160
  LOADK R24 K133 [0.5]
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K128 ["Position"]
  GETIMPORT R21 K63 [UDim2.new]
  LOADN R22 1
  LOADN R23 218
  LOADN R24 0
  LOADN R25 28
  CALL R21 4 1
  SETTABLEKS R21 R20 K60 ["Size"]
  CALL R18 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K146 [".X-CornerXS ::UICorner"]
  DUPTABLE R16 K148 [{"CornerRadius"}]
  LOADK R17 K149 ["$GlobalRadiusXSmall"]
  SETTABLEKS R17 R16 K147 ["CornerRadius"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K150 [".X-CornerS ::UICorner"]
  DUPTABLE R17 K148 [{"CornerRadius"}]
  LOADK R18 K151 ["$GlobalRadiusSmall"]
  SETTABLEKS R18 R17 K147 ["CornerRadius"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K152 [".X-CornerM ::UICorner"]
  DUPTABLE R18 K148 [{"CornerRadius"}]
  LOADK R19 K153 ["$GlobalRadiusMedium"]
  SETTABLEKS R19 R18 K147 ["CornerRadius"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K154 [".X-PadMezz :: UIPadding"]
  DUPTABLE R19 K106 [{"PaddingLeft"}]
  GETIMPORT R20 K156 [UDim.new]
  LOADN R21 0
  LOADN R22 1
  CALL R20 2 1
  SETTABLEKS R20 R19 K75 ["PaddingLeft"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K157 [".X-PadRibbonTool ::UIPadding"]
  DUPTABLE R20 K104 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R21 K156 [UDim.new]
  LOADN R22 0
  LOADN R23 10
  CALL R21 2 1
  SETTABLEKS R21 R20 K75 ["PaddingLeft"]
  GETIMPORT R21 K156 [UDim.new]
  LOADN R22 0
  LOADN R23 10
  CALL R21 2 1
  SETTABLEKS R21 R20 K76 ["PaddingRight"]
  LOADK R21 K91 ["$GlobalSpace100"]
  SETTABLEKS R21 R20 K102 ["PaddingTop"]
  LOADK R21 K91 ["$GlobalSpace100"]
  SETTABLEKS R21 R20 K103 ["PaddingBottom"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K158 [".X-PadSplitButtonTool ::UIPadding"]
  DUPTABLE R21 K106 [{"PaddingLeft"}]
  LOADK R22 K91 ["$GlobalSpace100"]
  SETTABLEKS R22 R21 K75 ["PaddingLeft"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K159 [".X-PadSplitButtonDropdown :: UIPadding"]
  DUPTABLE R22 K104 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R23 K98 ["$GlobalSpace25"]
  SETTABLEKS R23 R22 K75 ["PaddingLeft"]
  LOADK R23 K160 ["$GlobalSpace75"]
  SETTABLEKS R23 R22 K76 ["PaddingRight"]
  LOADK R23 K161 ["$GlobalSpace350"]
  SETTABLEKS R23 R22 K102 ["PaddingTop"]
  LOADK R23 K160 ["$GlobalSpace75"]
  SETTABLEKS R23 R22 K103 ["PaddingBottom"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K162 [".X-PadSplitButtonDropdownSmall :: UIPadding"]
  DUPTABLE R23 K163 [{"PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R24 K98 ["$GlobalSpace25"]
  SETTABLEKS R24 R23 K76 ["PaddingRight"]
  LOADK R24 K164 ["$GlobalSpace250"]
  SETTABLEKS R24 R23 K102 ["PaddingTop"]
  LOADK R24 K87 ["$GlobalSpace50"]
  SETTABLEKS R24 R23 K103 ["PaddingBottom"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K165 [".X-PadSplitButtonToolSmall ::UIPadding"]
  DUPTABLE R24 K106 [{"PaddingLeft"}]
  LOADK R25 K160 ["$GlobalSpace75"]
  SETTABLEKS R25 R24 K75 ["PaddingLeft"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K166 [".X-PadButtonLabel ::UIPadding"]
  DUPTABLE R25 K167 [{"PaddingTop", "PaddingBottom"}]
  LOADK R26 K87 ["$GlobalSpace50"]
  SETTABLEKS R26 R25 K102 ["PaddingTop"]
  LOADK R26 K87 ["$GlobalSpace50"]
  SETTABLEKS R26 R25 K103 ["PaddingBottom"]
  CALL R23 2 1
  SETLIST R7 R8 16 [17]
  MOVE R8 R2
  LOADK R9 K168 [".X-PadRibbon ::UIPadding"]
  DUPTABLE R10 K104 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R11 K78 ["$GlobalSpace150"]
  SETTABLEKS R11 R10 K75 ["PaddingLeft"]
  LOADK R11 K91 ["$GlobalSpace100"]
  SETTABLEKS R11 R10 K76 ["PaddingRight"]
  LOADK R11 K78 ["$GlobalSpace150"]
  SETTABLEKS R11 R10 K102 ["PaddingTop"]
  LOADK R11 K78 ["$GlobalSpace150"]
  SETTABLEKS R11 R10 K103 ["PaddingBottom"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K169 [".X-PadTabMenu ::UIPadding"]
  DUPTABLE R11 K104 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R12 K91 ["$GlobalSpace100"]
  SETTABLEKS R12 R11 K75 ["PaddingLeft"]
  LOADK R12 K91 ["$GlobalSpace100"]
  SETTABLEKS R12 R11 K76 ["PaddingRight"]
  LOADK R12 K91 ["$GlobalSpace100"]
  SETTABLEKS R12 R11 K102 ["PaddingTop"]
  LOADK R12 K91 ["$GlobalSpace100"]
  SETTABLEKS R12 R11 K103 ["PaddingBottom"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K170 [".X-PadMezzanine ::UIPadding"]
  DUPTABLE R12 K104 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R13 K160 ["$GlobalSpace75"]
  SETTABLEKS R13 R12 K75 ["PaddingLeft"]
  LOADK R13 K160 ["$GlobalSpace75"]
  SETTABLEKS R13 R12 K76 ["PaddingRight"]
  LOADK R13 K160 ["$GlobalSpace75"]
  SETTABLEKS R13 R12 K102 ["PaddingTop"]
  LOADK R13 K160 ["$GlobalSpace75"]
  SETTABLEKS R13 R12 K103 ["PaddingBottom"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K171 [".X-PadMenuOption ::UIPadding"]
  DUPTABLE R13 K104 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R14 K91 ["$GlobalSpace100"]
  SETTABLEKS R14 R13 K75 ["PaddingLeft"]
  LOADK R14 K91 ["$GlobalSpace100"]
  SETTABLEKS R14 R13 K76 ["PaddingRight"]
  LOADK R14 K87 ["$GlobalSpace50"]
  SETTABLEKS R14 R13 K102 ["PaddingTop"]
  LOADK R14 K87 ["$GlobalSpace50"]
  SETTABLEKS R14 R13 K103 ["PaddingBottom"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K172 [".X-PadTooltip ::UIPadding"]
  DUPTABLE R14 K104 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R15 K160 ["$GlobalSpace75"]
  SETTABLEKS R15 R14 K75 ["PaddingLeft"]
  LOADK R15 K160 ["$GlobalSpace75"]
  SETTABLEKS R15 R14 K76 ["PaddingRight"]
  LOADK R15 K87 ["$GlobalSpace50"]
  SETTABLEKS R15 R14 K102 ["PaddingTop"]
  LOADK R15 K87 ["$GlobalSpace50"]
  SETTABLEKS R15 R14 K103 ["PaddingBottom"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K173 [".X-RowSplitButton"]
  NEWTABLE R15 0 0
  NEWTABLE R16 0 1
  MOVE R17 R2
  LOADK R18 K80 ["::UIListLayout"]
  DUPTABLE R19 K84 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R20 K86 [Enum.FillDirection.Horizontal]
  SETTABLEKS R20 R19 K81 ["FillDirection"]
  LOADK R20 K98 ["$GlobalSpace25"]
  SETTABLEKS R20 R19 K82 ["Padding"]
  GETIMPORT R20 K89 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R20 R19 K83 ["SortOrder"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K174 [".X-RowSplitButtonSmall"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 1
  MOVE R18 R2
  LOADK R19 K80 ["::UIListLayout"]
  DUPTABLE R20 K175 [{"FillDirection", "SortOrder"}]
  GETIMPORT R21 K86 [Enum.FillDirection.Horizontal]
  SETTABLEKS R21 R20 K81 ["FillDirection"]
  GETIMPORT R21 K89 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R21 R20 K83 ["SortOrder"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K176 [".X-RowSpinbox"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K80 ["::UIListLayout"]
  DUPTABLE R21 K84 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R22 K86 [Enum.FillDirection.Horizontal]
  SETTABLEKS R22 R21 K81 ["FillDirection"]
  LOADK R22 K87 ["$GlobalSpace50"]
  SETTABLEKS R22 R21 K82 ["Padding"]
  GETIMPORT R22 K89 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R22 R21 K83 ["SortOrder"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K177 [".X-PadSpinBox ::UIPadding"]
  DUPTABLE R18 K106 [{"PaddingLeft"}]
  LOADK R19 K91 ["$GlobalSpace100"]
  SETTABLEKS R19 R18 K75 ["PaddingLeft"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K178 [".Component-RibbonButton"]
  DUPTABLE R19 K181 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "Text"}]
  LOADB R20 0
  SETTABLEKS R20 R19 K179 ["AutoButtonColor"]
  LOADK R20 K25 ["$BackgroundTransparent"]
  SETTABLEKS R20 R19 K22 ["BackgroundTransparency"]
  LOADK R20 K26 ["$BorderNone"]
  SETTABLEKS R20 R19 K23 ["BorderSizePixel"]
  LOADK R20 K182 [""]
  SETTABLEKS R20 R19 K180 ["Text"]
  NEWTABLE R20 0 7
  MOVE R21 R2
  LOADK R22 K183 ["> TextLabel"]
  DUPTABLE R23 K184 [{"BackgroundTransparency", "Font", "LayoutOrder", "TextColor3", "TextSize"}]
  LOADK R24 K25 ["$BackgroundTransparent"]
  SETTABLEKS R24 R23 K22 ["BackgroundTransparency"]
  LOADK R24 K36 ["$FontWeight400"]
  SETTABLEKS R24 R23 K16 ["Font"]
  LOADN R24 2
  SETTABLEKS R24 R23 K88 ["LayoutOrder"]
  LOADK R24 K37 ["$SemanticColorContentMuted"]
  SETTABLEKS R24 R23 K33 ["TextColor3"]
  LOADK R24 K38 ["$FontSize100"]
  SETTABLEKS R24 R23 K34 ["TextSize"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K185 [">> #RibbonToolButtonIcon, >> #ButtonIcon"]
  DUPTABLE R24 K186 [{"BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  LOADK R25 K25 ["$BackgroundTransparent"]
  SETTABLEKS R25 R24 K22 ["BackgroundTransparency"]
  LOADK R25 K26 ["$BorderNone"]
  SETTABLEKS R25 R24 K23 ["BorderSizePixel"]
  LOADN R25 0
  SETTABLEKS R25 R24 K88 ["LayoutOrder"]
  NEWTABLE R25 0 2
  MOVE R26 R2
  LOADK R27 K187 [".Icon-Large"]
  DUPTABLE R28 K61 [{"Size"}]
  LOADK R29 K188 ["$IconLarge"]
  SETTABLEKS R29 R28 K60 ["Size"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K189 [".Icon-Small"]
  DUPTABLE R29 K61 [{"Size"}]
  LOADK R30 K190 ["$IconSmall"]
  SETTABLEKS R30 R29 K60 ["Size"]
  CALL R27 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K118 [".State-Disabled"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 2
  MOVE R27 R2
  LOADK R28 K191 [">> #RibbonTool"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 1
  MOVE R31 R2
  LOADK R32 K192 ["> #RibbonToolButtonIcon"]
  DUPTABLE R33 K194 [{"ImageTransparency"}]
  LOADK R34 K195 ["$IconDisabled"]
  SETTABLEKS R34 R33 K193 ["ImageTransparency"]
  CALL R31 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K183 ["> TextLabel"]
  DUPTABLE R30 K44 [{"TextColor3"}]
  LOADK R31 K119 ["$SemanticColorContentDisabled"]
  SETTABLEKS R31 R30 K33 ["TextColor3"]
  CALL R28 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K196 [".State-Default"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K197 [">> #RibbonTool, >> #StateLayer"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 2
  MOVE R32 R2
  LOADK R33 K198 [":hover"]
  DUPTABLE R34 K199 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R35 K123 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R35 R34 K22 ["BackgroundTransparency"]
  LOADK R35 K122 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R35 R34 K28 ["BackgroundColor3"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K200 [":pressed"]
  DUPTABLE R35 K199 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R36 K201 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R36 R35 K22 ["BackgroundTransparency"]
  LOADK R36 K202 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R36 R35 K28 ["BackgroundColor3"]
  CALL R33 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K113 [".State-Selected"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 1
  MOVE R29 R2
  LOADK R30 K191 [">> #RibbonTool"]
  DUPTABLE R31 K199 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R32 K116 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R32 R31 K22 ["BackgroundTransparency"]
  LOADK R32 K115 ["$SemanticColorStatesSelected"]
  SETTABLEKS R32 R31 K28 ["BackgroundColor3"]
  CALL R29 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K203 [">> Frame .Component-SplitButtonDropdown"]
  DUPTABLE R28 K204 [{"LayoutOrder", "Size"}]
  LOADN R29 1
  SETTABLEKS R29 R28 K88 ["LayoutOrder"]
  GETIMPORT R29 K63 [UDim2.new]
  LOADN R30 0
  LOADN R31 12
  LOADN R32 0
  LOADN R33 40
  CALL R29 4 1
  SETTABLEKS R29 R28 K60 ["Size"]
  NEWTABLE R29 0 2
  MOVE R30 R2
  LOADK R31 K70 [".Small"]
  DUPTABLE R32 K61 [{"Size"}]
  GETIMPORT R33 K63 [UDim2.new]
  LOADN R34 0
  LOADN R35 6
  LOADN R36 0
  LOADN R37 28
  CALL R33 4 1
  SETTABLEKS R33 R32 K60 ["Size"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K205 ["> TextButton"]
  DUPTABLE R33 K206 [{"AnchorPoint", "AutoButtonColor", "Position", "Text", "TextSize"}]
  GETIMPORT R34 K156 [UDim.new]
  LOADN R35 1
  LOADN R36 1
  CALL R34 2 1
  SETTABLEKS R34 R33 K125 ["AnchorPoint"]
  LOADB R34 0
  SETTABLEKS R34 R33 K179 ["AutoButtonColor"]
  GETIMPORT R34 K63 [UDim2.new]
  LOADN R35 1
  LOADN R36 0
  LOADN R37 1
  LOADN R38 0
  CALL R34 4 1
  SETTABLEKS R34 R33 K128 ["Position"]
  LOADK R34 K182 [""]
  SETTABLEKS R34 R33 K180 ["Text"]
  LOADN R34 1
  SETTABLEKS R34 R33 K34 ["TextSize"]
  NEWTABLE R34 0 1
  MOVE R35 R2
  LOADK R36 K207 ["> ImageLabel"]
  DUPTABLE R37 K209 [{"Image", "Size"}]
  LOADK R38 K210 ["$ArrowDownAngleSmall"]
  SETTABLEKS R38 R37 K208 ["Image"]
  GETIMPORT R38 K212 [UDim2.fromOffset]
  LOADN R39 6
  LOADN R40 6
  CALL R38 2 1
  SETTABLEKS R38 R37 K60 ["Size"]
  NEWTABLE R38 0 1
  MOVE R39 R2
  LOADK R40 K70 [".Small"]
  DUPTABLE R41 K61 [{"Size"}]
  GETIMPORT R42 K212 [UDim2.fromOffset]
  LOADN R43 4
  LOADN R44 4
  CALL R42 2 1
  SETTABLEKS R42 R41 K60 ["Size"]
  CALL R39 2 -1
  SETLIST R38 R39 -1 [1]
  CALL R35 3 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K213 ["> Frame #StateLayer"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 2
  MOVE R31 R2
  LOADK R32 K214 [".State-Gradient-Hover"]
  DUPTABLE R33 K215 [{"BackgroundTransparency"}]
  LOADK R34 K216 ["$BackgroundNonTransparent"]
  SETTABLEKS R34 R33 K22 ["BackgroundTransparency"]
  NEWTABLE R34 0 1
  MOVE R35 R2
  LOADK R36 K217 ["::UIGradient"]
  DUPTABLE R37 K221 [{"Color", "Rotation", "Transparency"}]
  LOADK R38 K222 ["$SemanticColorStateLayerHoverGradient"]
  SETTABLEKS R38 R37 K218 ["Color"]
  LOADK R38 K223 ["$SemanticColorStateLayerHoverGradientRotation"]
  SETTABLEKS R38 R37 K219 ["Rotation"]
  LOADK R38 K224 ["$SemanticColorStateLayerHoverGradientTransparency"]
  SETTABLEKS R38 R37 K220 ["Transparency"]
  CALL R35 2 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 1
  MOVE R32 R2
  LOADK R33 K225 [".State-Gradient-Pressed"]
  DUPTABLE R34 K215 [{"BackgroundTransparency"}]
  LOADK R35 K216 ["$BackgroundNonTransparent"]
  SETTABLEKS R35 R34 K22 ["BackgroundTransparency"]
  NEWTABLE R35 0 1
  MOVE R36 R2
  LOADK R37 K217 ["::UIGradient"]
  DUPTABLE R38 K221 [{"Color", "Rotation", "Transparency"}]
  LOADK R39 K226 ["$SemanticColorStateLayerPressGradient"]
  SETTABLEKS R39 R38 K218 ["Color"]
  LOADK R39 K227 ["$SemanticColorStateLayerPressGradientRotation"]
  SETTABLEKS R39 R38 K219 ["Rotation"]
  LOADK R39 K228 ["$SemanticColorStateLayerPressGradientTransparency"]
  SETTABLEKS R39 R38 K220 ["Transparency"]
  CALL R36 2 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K229 [".Ribbon-More"]
  DUPTABLE R20 K231 [{"AnchorPoint", "Position", "ZIndex"}]
  GETIMPORT R21 K57 [Vector2.new]
  LOADN R22 1
  LOADK R23 K133 [0.5]
  CALL R21 2 1
  SETTABLEKS R21 R20 K125 ["AnchorPoint"]
  GETIMPORT R21 K63 [UDim2.new]
  LOADN R22 1
  LOADN R23 248
  LOADK R24 K133 [0.5]
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K128 ["Position"]
  LOADN R21 3
  SETTABLEKS R21 R20 K230 ["ZIndex"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K232 [".Component-Button"]
  DUPTABLE R21 K233 [{"AutoButtonColor", "Text", "Size"}]
  LOADB R22 0
  SETTABLEKS R22 R21 K179 ["AutoButtonColor"]
  LOADK R22 K182 [""]
  SETTABLEKS R22 R21 K180 ["Text"]
  GETIMPORT R22 K63 [UDim2.new]
  LOADN R23 0
  LOADN R24 0
  LOADN R25 0
  LOADN R26 28
  CALL R22 4 1
  SETTABLEKS R22 R21 K60 ["Size"]
  NEWTABLE R22 0 5
  MOVE R23 R2
  LOADK R24 K234 ["> #StateLayer"]
  DUPTABLE R25 K61 [{"Size"}]
  GETIMPORT R26 K63 [UDim2.new]
  LOADN R27 0
  LOADN R28 0
  LOADN R29 0
  LOADN R30 28
  CALL R26 4 1
  SETTABLEKS R26 R25 K60 ["Size"]
  NEWTABLE R26 0 6
  MOVE R27 R2
  LOADK R28 K80 ["::UIListLayout"]
  DUPTABLE R29 K235 [{"Padding"}]
  LOADK R30 K87 ["$GlobalSpace50"]
  SETTABLEKS R30 R29 K82 ["Padding"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K236 [".X-PadButtonSmall ::UIPadding"]
  DUPTABLE R30 K104 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R31 K78 ["$GlobalSpace150"]
  SETTABLEKS R31 R30 K75 ["PaddingLeft"]
  LOADK R31 K78 ["$GlobalSpace150"]
  SETTABLEKS R31 R30 K76 ["PaddingRight"]
  LOADK R31 K87 ["$GlobalSpace50"]
  SETTABLEKS R31 R30 K102 ["PaddingTop"]
  LOADK R31 K87 ["$GlobalSpace50"]
  SETTABLEKS R31 R30 K103 ["PaddingBottom"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K237 [".X-PadButtonLarge ::UIPadding"]
  DUPTABLE R31 K104 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R32 K164 ["$GlobalSpace250"]
  SETTABLEKS R32 R31 K75 ["PaddingLeft"]
  LOADK R32 K164 ["$GlobalSpace250"]
  SETTABLEKS R32 R31 K76 ["PaddingRight"]
  LOADK R32 K78 ["$GlobalSpace150"]
  SETTABLEKS R32 R31 K102 ["PaddingTop"]
  LOADK R32 K78 ["$GlobalSpace150"]
  SETTABLEKS R32 R31 K103 ["PaddingBottom"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K238 [".X-PadButtonMedium ::UIPadding"]
  DUPTABLE R32 K104 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R33 K94 ["$GlobalSpace200"]
  SETTABLEKS R33 R32 K75 ["PaddingLeft"]
  LOADK R33 K94 ["$GlobalSpace200"]
  SETTABLEKS R33 R32 K76 ["PaddingRight"]
  LOADK R33 K91 ["$GlobalSpace100"]
  SETTABLEKS R33 R32 K102 ["PaddingTop"]
  LOADK R33 K91 ["$GlobalSpace100"]
  SETTABLEKS R33 R32 K103 ["PaddingBottom"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K239 ["> #ButtonIcon"]
  DUPTABLE R33 K240 [{"LayoutOrder"}]
  LOADN R34 0
  SETTABLEKS R34 R33 K88 ["LayoutOrder"]
  NEWTABLE R34 0 3
  MOVE R35 R2
  LOADK R36 K187 [".Icon-Large"]
  DUPTABLE R37 K61 [{"Size"}]
  LOADK R38 K188 ["$IconLarge"]
  SETTABLEKS R38 R37 K60 ["Size"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K189 [".Icon-Small"]
  DUPTABLE R38 K61 [{"Size"}]
  LOADK R39 K190 ["$IconSmall"]
  SETTABLEKS R39 R38 K60 ["Size"]
  CALL R36 2 1
  MOVE R37 R2
  LOADK R38 K241 [".Right"]
  DUPTABLE R39 K240 [{"LayoutOrder"}]
  LOADN R40 3
  SETTABLEKS R40 R39 K88 ["LayoutOrder"]
  CALL R37 2 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 1
  MOVE R32 R2
  LOADK R33 K242 ["> #ButtonText"]
  DUPTABLE R34 K243 [{"Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADK R35 K40 ["$FontWeight700"]
  SETTABLEKS R35 R34 K16 ["Font"]
  LOADK R35 K244 ["$FontSize200"]
  SETTABLEKS R35 R34 K34 ["TextSize"]
  LOADN R35 2
  SETTABLEKS R35 R34 K88 ["LayoutOrder"]
  LOADK R35 K117 ["$SemanticColorContentStandard"]
  SETTABLEKS R35 R34 K33 ["TextColor3"]
  NEWTABLE R35 0 2
  MOVE R36 R2
  LOADK R37 K70 [".Small"]
  DUPTABLE R38 K245 [{"TextSize"}]
  LOADK R39 K112 ["$FontSize150"]
  SETTABLEKS R39 R38 K34 ["TextSize"]
  CALL R36 2 1
  MOVE R37 R2
  LOADK R38 K72 [".Large"]
  DUPTABLE R39 K245 [{"TextSize"}]
  LOADK R40 K246 ["$FontSize300"]
  SETTABLEKS R40 R39 K34 ["TextSize"]
  CALL R37 2 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K247 [".Outline"]
  DUPTABLE R26 K61 [{"Size"}]
  GETIMPORT R27 K63 [UDim2.new]
  LOADN R28 0
  LOADN R29 0
  LOADN R30 0
  LOADN R31 26
  CALL R27 4 1
  SETTABLEKS R27 R26 K60 ["Size"]
  NEWTABLE R27 0 2
  MOVE R28 R2
  LOADK R29 K248 ["::UIStroke"]
  DUPTABLE R30 K251 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R31 K253 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R31 R30 K249 ["ApplyStrokeMode"]
  LOADK R31 K66 ["$SemanticColorDivider"]
  SETTABLEKS R31 R30 K218 ["Color"]
  LOADK R31 K254 ["$BorderMedium"]
  SETTABLEKS R31 R30 K250 ["Thickness"]
  LOADK R31 K67 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R31 R30 K220 ["Transparency"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K234 ["> #StateLayer"]
  DUPTABLE R31 K61 [{"Size"}]
  GETIMPORT R32 K63 [UDim2.new]
  LOADN R33 0
  LOADN R34 0
  LOADN R35 0
  LOADN R36 26
  CALL R32 4 1
  SETTABLEKS R32 R31 K60 ["Size"]
  CALL R29 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K118 [".State-Disabled"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 2
  MOVE R29 R2
  LOADK R30 K255 [">> #ButtonIcon"]
  DUPTABLE R31 K194 [{"ImageTransparency"}]
  LOADK R32 K195 ["$IconDisabled"]
  SETTABLEKS R32 R31 K193 ["ImageTransparency"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K0 ["script"]
  DUPTABLE R32 K44 [{"TextColor3"}]
  LOADK R33 K119 ["$SemanticColorContentDisabled"]
  SETTABLEKS R33 R32 K33 ["TextColor3"]
  CALL R30 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K196 [".State-Default"]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 2
  MOVE R30 R2
  LOADK R31 K1 [script]
  DUPTABLE R32 K199 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R33 K123 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R33 R32 K22 ["BackgroundTransparency"]
  LOADK R33 K122 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R33 R32 K28 ["BackgroundColor3"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K2 ["Parent"]
  DUPTABLE R33 K199 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R34 K201 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R34 R33 K22 ["BackgroundTransparency"]
  LOADK R34 K202 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R34 R33 K28 ["BackgroundColor3"]
  CALL R31 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K3 ["require"]
  DUPTABLE R29 K121 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R30 K4 [require]
  SETTABLEKS R30 R29 K28 ["BackgroundColor3"]
  LOADK R30 K216 ["$BackgroundNonTransparent"]
  SETTABLEKS R30 R29 K22 ["BackgroundTransparency"]
  NEWTABLE R30 0 2
  MOVE R31 R2
  LOADK R32 K196 [".State-Default"]
  NEWTABLE R33 0 0
  NEWTABLE R34 0 2
  MOVE R35 R2
  LOADK R36 K1 [script]
  DUPTABLE R37 K199 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R38 K5 ["Packages"]
  SETTABLEKS R38 R37 K22 ["BackgroundTransparency"]
  LOADK R38 K6 ["Framework"]
  SETTABLEKS R38 R37 K28 ["BackgroundColor3"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K2 ["Parent"]
  DUPTABLE R38 K199 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R39 K7 ["Styling"]
  SETTABLEKS R39 R38 K22 ["BackgroundTransparency"]
  LOADK R39 K8 ["createStyleRule"]
  SETTABLEKS R39 R38 K28 ["BackgroundColor3"]
  CALL R36 2 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 1
  MOVE R32 R2
  LOADK R33 K0 ["script"]
  DUPTABLE R34 K44 [{"TextColor3"}]
  LOADK R35 K45 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R35 R34 K33 ["TextColor3"]
  CALL R32 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K9 ["createStyleSheet"]
  DUPTABLE R22 K24 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R23 K25 ["$BackgroundTransparent"]
  SETTABLEKS R23 R22 K22 ["BackgroundTransparency"]
  LOADK R23 K26 ["$BorderNone"]
  SETTABLEKS R23 R22 K23 ["BorderSizePixel"]
  NEWTABLE R23 0 9
  MOVE R24 R2
  LOADK R25 K10 ["Src"]
  DUPTABLE R26 K267 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Text"}]
  LOADB R27 0
  SETTABLEKS R27 R26 K179 ["AutoButtonColor"]
  LOADK R27 K25 ["$BackgroundTransparent"]
  SETTABLEKS R27 R26 K22 ["BackgroundTransparency"]
  LOADK R27 K26 ["$BorderNone"]
  SETTABLEKS R27 R26 K23 ["BorderSizePixel"]
  LOADN R27 1
  SETTABLEKS R27 R26 K88 ["LayoutOrder"]
  LOADK R27 K182 [""]
  SETTABLEKS R27 R26 K180 ["Text"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K12 ["getFFlagAddTestModeDropDown"]
  DUPTABLE R27 K269 [{"BackgroundTransparency", "BorderSizePixel", "Font", "LayoutOrder"}]
  LOADK R28 K25 ["$BackgroundTransparent"]
  SETTABLEKS R28 R27 K22 ["BackgroundTransparency"]
  LOADK R28 K26 ["$BorderNone"]
  SETTABLEKS R28 R27 K23 ["BorderSizePixel"]
  LOADK R28 K36 ["$FontWeight400"]
  SETTABLEKS R28 R27 K16 ["Font"]
  LOADN R28 2
  SETTABLEKS R28 R27 K88 ["LayoutOrder"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K14 ["getFFlagRibbonEnableSliderLua"]
  DUPTABLE R28 K24 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R29 K25 ["$BackgroundTransparent"]
  SETTABLEKS R29 R28 K22 ["BackgroundTransparency"]
  LOADK R29 K26 ["$BorderNone"]
  SETTABLEKS R29 R28 K23 ["BorderSizePixel"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K15 ["TextLabel, TextButton, TextBox"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 2
  MOVE R31 R2
  LOADK R32 K10 ["Src"]
  NEWTABLE R33 0 0
  NEWTABLE R34 0 1
  MOVE R35 R2
  LOADK R36 K80 ["::UIListLayout"]
  DUPTABLE R37 K273 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R38 K86 [Enum.FillDirection.Horizontal]
  SETTABLEKS R38 R37 K81 ["FillDirection"]
  LOADK R38 K91 ["$GlobalSpace100"]
  SETTABLEKS R38 R37 K82 ["Padding"]
  GETIMPORT R38 K89 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R38 R37 K83 ["SortOrder"]
  GETIMPORT R38 K275 [Enum.VerticalAlignment.Center]
  SETTABLEKS R38 R37 K272 ["VerticalAlignment"]
  CALL R35 2 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 1
  MOVE R32 R2
  LOADK R33 K14 ["getFFlagRibbonEnableSliderLua"]
  DUPTABLE R34 K61 [{"Size"}]
  LOADK R35 K190 ["$IconSmall"]
  SETTABLEKS R35 R34 K60 ["Size"]
  CALL R32 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K70 [".Small"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 1
  MOVE R32 R2
  LOADK R33 K12 ["getFFlagAddTestModeDropDown"]
  DUPTABLE R34 K245 [{"TextSize"}]
  LOADK R35 K112 ["$FontSize150"]
  SETTABLEKS R35 R34 K34 ["TextSize"]
  CALL R32 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K71 [".Medium"]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 1
  MOVE R33 R2
  LOADK R34 K12 ["getFFlagAddTestModeDropDown"]
  DUPTABLE R35 K245 [{"TextSize"}]
  LOADK R36 K244 ["$FontSize200"]
  SETTABLEKS R36 R35 K34 ["TextSize"]
  CALL R33 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 1
  MOVE R30 R2
  LOADK R31 K72 [".Large"]
  NEWTABLE R32 0 0
  NEWTABLE R33 0 3
  MOVE R34 R2
  LOADK R35 K10 ["Src"]
  NEWTABLE R36 0 0
  NEWTABLE R37 0 1
  MOVE R38 R2
  LOADK R39 K80 ["::UIListLayout"]
  DUPTABLE R40 K273 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R41 K86 [Enum.FillDirection.Horizontal]
  SETTABLEKS R41 R40 K81 ["FillDirection"]
  LOADK R41 K78 ["$GlobalSpace150"]
  SETTABLEKS R41 R40 K82 ["Padding"]
  GETIMPORT R41 K89 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R41 R40 K83 ["SortOrder"]
  GETIMPORT R41 K275 [Enum.VerticalAlignment.Center]
  SETTABLEKS R41 R40 K272 ["VerticalAlignment"]
  CALL R38 2 -1
  SETLIST R37 R38 -1 [1]
  CALL R34 3 1
  MOVE R35 R2
  LOADK R36 K14 ["getFFlagRibbonEnableSliderLua"]
  DUPTABLE R37 K61 [{"Size"}]
  LOADK R38 K188 ["$IconLarge"]
  SETTABLEKS R38 R37 K60 ["Size"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K12 ["getFFlagAddTestModeDropDown"]
  DUPTABLE R38 K245 [{"TextSize"}]
  LOADK R39 K246 ["$FontSize300"]
  SETTABLEKS R39 R38 K34 ["TextSize"]
  CALL R36 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 1
  MOVE R31 R2
  LOADK R32 K196 [".State-Default"]
  NEWTABLE R33 0 0
  NEWTABLE R34 0 5
  MOVE R35 R2
  LOADK R36 K14 ["getFFlagRibbonEnableSliderLua"]
  DUPTABLE R37 K276 [{"Image"}]
  LOADK R38 K21 [".Role-Surface"]
  SETTABLEKS R38 R37 K208 ["Image"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K22 ["BackgroundTransparency"]
  DUPTABLE R38 K276 [{"Image"}]
  LOADK R39 K23 ["BorderSizePixel"]
  SETTABLEKS R39 R38 K208 ["Image"]
  CALL R36 2 1
  MOVE R37 R2
  LOADK R38 K24 [{"BackgroundTransparency", "BorderSizePixel"}]
  DUPTABLE R39 K276 [{"Image"}]
  LOADK R40 K25 ["$BackgroundTransparent"]
  SETTABLEKS R40 R39 K208 ["Image"]
  CALL R37 2 1
  MOVE R38 R2
  LOADK R39 K26 ["$BorderNone"]
  DUPTABLE R40 K276 [{"Image"}]
  LOADK R41 K27 [".Role-Surface100"]
  SETTABLEKS R41 R40 K208 ["Image"]
  CALL R38 2 1
  MOVE R39 R2
  LOADK R40 K12 ["getFFlagAddTestModeDropDown"]
  DUPTABLE R41 K44 [{"TextColor3"}]
  LOADK R42 K117 ["$SemanticColorContentStandard"]
  SETTABLEKS R42 R41 K33 ["TextColor3"]
  CALL R39 2 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 1
  MOVE R32 R2
  LOADK R33 K118 [".State-Disabled"]
  NEWTABLE R34 0 0
  NEWTABLE R35 0 4
  MOVE R36 R2
  LOADK R37 K14 ["getFFlagRibbonEnableSliderLua"]
  DUPTABLE R38 K276 [{"Image"}]
  LOADK R39 K28 ["BackgroundColor3"]
  SETTABLEKS R39 R38 K208 ["Image"]
  CALL R36 2 1
  MOVE R37 R2
  LOADK R38 K24 [{"BackgroundTransparency", "BorderSizePixel"}]
  DUPTABLE R39 K276 [{"Image"}]
  LOADK R40 K29 [{"BackgroundColor3", "BorderSizePixel"}]
  SETTABLEKS R40 R39 K208 ["Image"]
  CALL R37 2 1
  MOVE R38 R2
  LOADK R39 K26 ["$BorderNone"]
  DUPTABLE R40 K276 [{"Image"}]
  LOADK R41 K30 ["$SemanticColorSurface100"]
  SETTABLEKS R41 R40 K208 ["Image"]
  CALL R38 2 1
  MOVE R39 R2
  LOADK R40 K12 ["getFFlagAddTestModeDropDown"]
  DUPTABLE R41 K44 [{"TextColor3"}]
  LOADK R42 K119 ["$SemanticColorContentDisabled"]
  SETTABLEKS R42 R41 K33 ["TextColor3"]
  CALL R39 2 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K31 ["$DEPRECATED_MainBackground"]
  DUPTABLE R23 K24 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R24 K25 ["$BackgroundTransparent"]
  SETTABLEKS R24 R23 K22 ["BackgroundTransparency"]
  LOADK R24 K26 ["$BorderNone"]
  SETTABLEKS R24 R23 K23 ["BorderSizePixel"]
  NEWTABLE R24 0 9
  MOVE R25 R2
  LOADK R26 K32 [".Text-Label"]
  DUPTABLE R27 K267 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Text"}]
  LOADB R28 0
  SETTABLEKS R28 R27 K179 ["AutoButtonColor"]
  LOADK R28 K25 ["$BackgroundTransparent"]
  SETTABLEKS R28 R27 K22 ["BackgroundTransparency"]
  LOADK R28 K26 ["$BorderNone"]
  SETTABLEKS R28 R27 K23 ["BorderSizePixel"]
  LOADN R28 1
  SETTABLEKS R28 R27 K88 ["LayoutOrder"]
  LOADK R28 K182 [""]
  SETTABLEKS R28 R27 K180 ["Text"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K33 ["TextColor3"]
  DUPTABLE R28 K269 [{"BackgroundTransparency", "BorderSizePixel", "Font", "LayoutOrder"}]
  LOADK R29 K25 ["$BackgroundTransparent"]
  SETTABLEKS R29 R28 K22 ["BackgroundTransparency"]
  LOADK R29 K26 ["$BorderNone"]
  SETTABLEKS R29 R28 K23 ["BorderSizePixel"]
  LOADK R29 K36 ["$FontWeight400"]
  SETTABLEKS R29 R28 K16 ["Font"]
  LOADN R29 2
  SETTABLEKS R29 R28 K88 ["LayoutOrder"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K34 ["TextSize"]
  DUPTABLE R29 K24 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R30 K25 ["$BackgroundTransparent"]
  SETTABLEKS R30 R29 K22 ["BackgroundTransparency"]
  LOADK R30 K26 ["$BorderNone"]
  SETTABLEKS R30 R29 K23 ["BorderSizePixel"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K15 ["TextLabel, TextButton, TextBox"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 2
  MOVE R32 R2
  LOADK R33 K32 [".Text-Label"]
  NEWTABLE R34 0 0
  NEWTABLE R35 0 1
  MOVE R36 R2
  LOADK R37 K80 ["::UIListLayout"]
  DUPTABLE R38 K273 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R39 K86 [Enum.FillDirection.Horizontal]
  SETTABLEKS R39 R38 K81 ["FillDirection"]
  LOADK R39 K91 ["$GlobalSpace100"]
  SETTABLEKS R39 R38 K82 ["Padding"]
  GETIMPORT R39 K89 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R39 R38 K83 ["SortOrder"]
  GETIMPORT R39 K275 [Enum.VerticalAlignment.Center]
  SETTABLEKS R39 R38 K272 ["VerticalAlignment"]
  CALL R36 2 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 1
  MOVE R33 R2
  LOADK R34 K34 ["TextSize"]
  DUPTABLE R35 K61 [{"Size"}]
  LOADK R36 K190 ["$IconSmall"]
  SETTABLEKS R36 R35 K60 ["Size"]
  CALL R33 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K70 [".Small"]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 1
  MOVE R33 R2
  LOADK R34 K33 ["TextColor3"]
  DUPTABLE R35 K245 [{"TextSize"}]
  LOADK R36 K112 ["$FontSize150"]
  SETTABLEKS R36 R35 K34 ["TextSize"]
  CALL R33 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 1
  MOVE R30 R2
  LOADK R31 K71 [".Medium"]
  NEWTABLE R32 0 0
  NEWTABLE R33 0 1
  MOVE R34 R2
  LOADK R35 K33 ["TextColor3"]
  DUPTABLE R36 K245 [{"TextSize"}]
  LOADK R37 K244 ["$FontSize200"]
  SETTABLEKS R37 R36 K34 ["TextSize"]
  CALL R34 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 1
  MOVE R31 R2
  LOADK R32 K72 [".Large"]
  NEWTABLE R33 0 0
  NEWTABLE R34 0 3
  MOVE R35 R2
  LOADK R36 K32 [".Text-Label"]
  NEWTABLE R37 0 0
  NEWTABLE R38 0 1
  MOVE R39 R2
  LOADK R40 K80 ["::UIListLayout"]
  DUPTABLE R41 K273 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R42 K86 [Enum.FillDirection.Horizontal]
  SETTABLEKS R42 R41 K81 ["FillDirection"]
  LOADK R42 K78 ["$GlobalSpace150"]
  SETTABLEKS R42 R41 K82 ["Padding"]
  GETIMPORT R42 K89 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R42 R41 K83 ["SortOrder"]
  GETIMPORT R42 K275 [Enum.VerticalAlignment.Center]
  SETTABLEKS R42 R41 K272 ["VerticalAlignment"]
  CALL R39 2 -1
  SETLIST R38 R39 -1 [1]
  CALL R35 3 1
  MOVE R36 R2
  LOADK R37 K34 ["TextSize"]
  DUPTABLE R38 K61 [{"Size"}]
  LOADK R39 K188 ["$IconLarge"]
  SETTABLEKS R39 R38 K60 ["Size"]
  CALL R36 2 1
  MOVE R37 R2
  LOADK R38 K33 ["TextColor3"]
  DUPTABLE R39 K245 [{"TextSize"}]
  LOADK R40 K246 ["$FontSize300"]
  SETTABLEKS R40 R39 K34 ["TextSize"]
  CALL R37 2 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 1
  MOVE R32 R2
  LOADK R33 K196 [".State-Default"]
  NEWTABLE R34 0 0
  NEWTABLE R35 0 4
  MOVE R36 R2
  LOADK R37 K34 ["TextSize"]
  DUPTABLE R38 K276 [{"Image"}]
  LOADK R39 K35 [{"Font", "TextColor3", "TextSize", "BorderSizePixel", "BackgroundTransparency"}]
  SETTABLEKS R39 R38 K208 ["Image"]
  CALL R36 2 1
  MOVE R37 R2
  LOADK R38 K36 ["$FontWeight400"]
  DUPTABLE R39 K276 [{"Image"}]
  LOADK R40 K37 ["$SemanticColorContentMuted"]
  SETTABLEKS R40 R39 K208 ["Image"]
  CALL R37 2 1
  MOVE R38 R2
  LOADK R39 K38 ["$FontSize100"]
  DUPTABLE R40 K276 [{"Image"}]
  LOADK R41 K39 [".Text-Title"]
  SETTABLEKS R41 R40 K208 ["Image"]
  CALL R38 2 1
  MOVE R39 R2
  LOADK R40 K33 ["TextColor3"]
  DUPTABLE R41 K44 [{"TextColor3"}]
  LOADK R42 K117 ["$SemanticColorContentStandard"]
  SETTABLEKS R42 R41 K33 ["TextColor3"]
  CALL R39 2 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 1
  MOVE R33 R2
  LOADK R34 K118 [".State-Disabled"]
  NEWTABLE R35 0 0
  NEWTABLE R36 0 3
  MOVE R37 R2
  LOADK R38 K34 ["TextSize"]
  DUPTABLE R39 K276 [{"Image"}]
  LOADK R40 K40 ["$FontWeight700"]
  SETTABLEKS R40 R39 K208 ["Image"]
  CALL R37 2 1
  MOVE R38 R2
  LOADK R39 K38 ["$FontSize100"]
  DUPTABLE R40 K276 [{"Image"}]
  LOADK R41 K41 [".TooltipBackground"]
  SETTABLEKS R41 R40 K208 ["Image"]
  CALL R38 2 1
  MOVE R39 R2
  LOADK R40 K33 ["TextColor3"]
  DUPTABLE R41 K44 [{"TextColor3"}]
  LOADK R42 K119 ["$SemanticColorContentDisabled"]
  SETTABLEKS R42 R41 K33 ["TextColor3"]
  CALL R39 2 -1
  SETLIST R36 R37 -1 [1]
  CALL R33 3 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K42 ["$SemanticColorSurface300Inverse"]
  DUPTABLE R24 K299 [{"AutoButtonColor", "BorderSizePixel", "BackgroundTransparency", "Text"}]
  LOADB R25 0
  SETTABLEKS R25 R24 K179 ["AutoButtonColor"]
  LOADK R25 K26 ["$BorderNone"]
  SETTABLEKS R25 R24 K23 ["BorderSizePixel"]
  LOADK R25 K25 ["$BackgroundTransparent"]
  SETTABLEKS R25 R24 K22 ["BackgroundTransparency"]
  LOADK R25 K182 [""]
  SETTABLEKS R25 R24 K180 ["Text"]
  NEWTABLE R25 0 8
  MOVE R26 R2
  LOADK R27 K44 [{"TextColor3"}]
  DUPTABLE R28 K301 [{"BorderSizePixel", "BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADK R29 K26 ["$BorderNone"]
  SETTABLEKS R29 R28 K23 ["BorderSizePixel"]
  LOADK R29 K25 ["$BackgroundTransparent"]
  SETTABLEKS R29 R28 K22 ["BackgroundTransparency"]
  LOADN R29 1
  SETTABLEKS R29 R28 K88 ["LayoutOrder"]
  LOADK R29 K188 ["$IconLarge"]
  SETTABLEKS R29 R28 K60 ["Size"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K46 [".TooltipTextBounds"]
  DUPTABLE R29 K303 [{"AnchorPoint", "Position", "BorderSizePixel", "BackgroundTransparency", "Image", "LayoutOrder", "Size"}]
  GETIMPORT R30 K57 [Vector2.new]
  LOADN R31 1
  LOADK R32 K133 [0.5]
  CALL R30 2 1
  SETTABLEKS R30 R29 K125 ["AnchorPoint"]
  GETIMPORT R30 K137 [UDim2.fromScale]
  LOADN R31 1
  LOADK R32 K133 [0.5]
  CALL R30 2 1
  SETTABLEKS R30 R29 K128 ["Position"]
  LOADK R30 K26 ["$BorderNone"]
  SETTABLEKS R30 R29 K23 ["BorderSizePixel"]
  LOADN R30 1
  SETTABLEKS R30 R29 K22 ["BackgroundTransparency"]
  LOADK R30 K48 ["TextXAlignment"]
  SETTABLEKS R30 R29 K208 ["Image"]
  LOADN R30 3
  SETTABLEKS R30 R29 K88 ["LayoutOrder"]
  LOADK R30 K190 ["$IconSmall"]
  SETTABLEKS R30 R29 K60 ["Size"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K49 [{"TextWrapped", "TextXAlignment"}]
  DUPTABLE R30 K204 [{"LayoutOrder", "Size"}]
  LOADN R31 3
  SETTABLEKS R31 R30 K88 ["LayoutOrder"]
  LOADK R31 K190 ["$IconSmall"]
  SETTABLEKS R31 R30 K60 ["Size"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K43 [">> TextLabel"]
  DUPTABLE R31 K306 [{"BackgroundTransparency", "Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADN R32 1
  SETTABLEKS R32 R31 K22 ["BackgroundTransparency"]
  LOADK R32 K36 ["$FontWeight400"]
  SETTABLEKS R32 R31 K16 ["Font"]
  LOADK R32 K112 ["$FontSize150"]
  SETTABLEKS R32 R31 K34 ["TextSize"]
  LOADN R32 2
  SETTABLEKS R32 R31 K88 ["LayoutOrder"]
  LOADK R32 K117 ["$SemanticColorContentStandard"]
  SETTABLEKS R32 R31 K33 ["TextColor3"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K70 [".Small"]
  NEWTABLE R32 0 0
  NEWTABLE R33 0 2
  MOVE R34 R2
  LOADK R35 K44 [{"TextColor3"}]
  DUPTABLE R36 K61 [{"Size"}]
  LOADK R37 K190 ["$IconSmall"]
  SETTABLEKS R37 R36 K60 ["Size"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K43 [">> TextLabel"]
  DUPTABLE R37 K245 [{"TextSize"}]
  LOADK R38 K38 ["$FontSize100"]
  SETTABLEKS R38 R37 K34 ["TextSize"]
  CALL R35 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 1
  MOVE R31 R2
  LOADK R32 K51 [Enum.TextXAlignment.Left]
  DUPTABLE R33 K121 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R34 K52 ["::UISizeConstraint"]
  SETTABLEKS R34 R33 K28 ["BackgroundColor3"]
  LOADK R34 K53 ["MaxSize"]
  SETTABLEKS R34 R33 K22 ["BackgroundTransparency"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K113 [".State-Selected"]
  DUPTABLE R34 K121 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R35 K115 ["$SemanticColorStatesSelected"]
  SETTABLEKS R35 R34 K28 ["BackgroundColor3"]
  LOADK R35 K116 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R35 R34 K22 ["BackgroundTransparency"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K118 [".State-Disabled"]
  NEWTABLE R35 0 0
  NEWTABLE R36 0 2
  MOVE R37 R2
  LOADK R38 K44 [{"TextColor3"}]
  DUPTABLE R39 K194 [{"ImageTransparency"}]
  LOADK R40 K195 ["$IconDisabled"]
  SETTABLEKS R40 R39 K193 ["ImageTransparency"]
  CALL R37 2 1
  MOVE R38 R2
  LOADK R39 K43 [">> TextLabel"]
  DUPTABLE R40 K44 [{"TextColor3"}]
  LOADK R41 K119 ["$SemanticColorContentDisabled"]
  SETTABLEKS R41 R40 K33 ["TextColor3"]
  CALL R38 2 -1
  SETLIST R36 R37 -1 [1]
  CALL R33 3 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K54 [{"MaxSize"}]
  DUPTABLE R25 K61 [{"Size"}]
  GETIMPORT R26 K63 [UDim2.new]
  LOADN R27 0
  LOADN R28 90
  LOADN R29 0
  LOADN R30 20
  CALL R26 4 1
  SETTABLEKS R26 R25 K60 ["Size"]
  CALL R23 2 1
  SETLIST R7 R8 16 [33]
  MOVE R8 R2
  LOADK R9 K55 ["Vector2"]
  NEWTABLE R10 0 0
  NEWTABLE R11 0 6
  MOVE R12 R2
  LOADK R13 K248 ["::UIStroke"]
  DUPTABLE R14 K312 [{"Thickness"}]
  LOADK R15 K26 ["$BorderNone"]
  SETTABLEKS R15 R14 K250 ["Thickness"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K57 [Vector2.new]
  DUPTABLE R15 K245 [{"TextSize"}]
  LOADK R16 K112 ["$FontSize150"]
  SETTABLEKS R16 R15 K34 ["TextSize"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K196 [".State-Default"]
  DUPTABLE R16 K121 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R17 K58 [∞]
  SETTABLEKS R17 R16 K28 ["BackgroundColor3"]
  LOADK R17 K59 [".Role-DividerH"]
  SETTABLEKS R17 R16 K22 ["BackgroundTransparency"]
  NEWTABLE R17 0 1
  MOVE R18 R2
  LOADK R19 K57 [Vector2.new]
  DUPTABLE R20 K44 [{"TextColor3"}]
  LOADK R21 K37 ["$SemanticColorContentMuted"]
  SETTABLEKS R21 R20 K33 ["TextColor3"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K60 ["Size"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 2
  MOVE R19 R2
  LOADK R20 K248 ["::UIStroke"]
  DUPTABLE R21 K317 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R22 K253 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R22 R21 K249 ["ApplyStrokeMode"]
  LOADK R22 K62 ["UDim2"]
  SETTABLEKS R22 R21 K218 ["Color"]
  LOADK R22 K254 ["$BorderMedium"]
  SETTABLEKS R22 R21 K250 ["Thickness"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K57 [Vector2.new]
  DUPTABLE R22 K44 [{"TextColor3"}]
  LOADK R23 K117 ["$SemanticColorContentStandard"]
  SETTABLEKS R23 R22 K33 ["TextColor3"]
  CALL R20 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K63 [UDim2.new]
  DUPTABLE R18 K121 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R19 K64 ["> Frame"]
  SETTABLEKS R19 R18 K28 ["BackgroundColor3"]
  LOADK R19 K65 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  SETTABLEKS R19 R18 K22 ["BackgroundTransparency"]
  NEWTABLE R19 0 2
  MOVE R20 R2
  LOADK R21 K57 [Vector2.new]
  DUPTABLE R22 K44 [{"TextColor3"}]
  LOADK R23 K117 ["$SemanticColorContentStandard"]
  SETTABLEKS R23 R22 K33 ["TextColor3"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K66 ["$SemanticColorDivider"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K248 ["::UIStroke"]
  DUPTABLE R27 K323 [{"ApplyStrokeMode", "Color", "Transparency", "Thickness"}]
  GETIMPORT R28 K253 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R28 R27 K249 ["ApplyStrokeMode"]
  LOADK R28 K122 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R28 R27 K218 ["Color"]
  LOADK R28 K123 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R28 R27 K220 ["Transparency"]
  LOADK R28 K254 ["$BorderMedium"]
  SETTABLEKS R28 R27 K250 ["Thickness"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K118 [".State-Disabled"]
  DUPTABLE R19 K121 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R20 K58 [∞]
  SETTABLEKS R20 R19 K28 ["BackgroundColor3"]
  LOADK R20 K59 [".Role-DividerH"]
  SETTABLEKS R20 R19 K22 ["BackgroundTransparency"]
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K57 [Vector2.new]
  DUPTABLE R23 K44 [{"TextColor3"}]
  LOADK R24 K119 ["$SemanticColorContentDisabled"]
  SETTABLEKS R24 R23 K33 ["TextColor3"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K68 [".Role-DividerV"]
  NEWTABLE R11 0 0
  NEWTABLE R12 0 2
  MOVE R13 R2
  LOADK R14 K205 ["> TextButton"]
  DUPTABLE R15 K61 [{"Size"}]
  GETIMPORT R16 K63 [UDim2.new]
  LOADN R17 0
  LOADN R18 16
  LOADN R19 0
  LOADN R20 8
  CALL R16 4 1
  SETTABLEKS R16 R15 K60 ["Size"]
  NEWTABLE R16 0 1
  MOVE R17 R2
  LOADK R18 K69 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
  DUPTABLE R19 K61 [{"Size"}]
  GETIMPORT R20 K63 [UDim2.new]
  LOADN R21 0
  LOADN R22 16
  LOADN R23 0
  LOADN R24 8
  CALL R20 4 1
  SETTABLEKS R20 R19 K60 ["Size"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K196 [".State-Default"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 2
  MOVE R18 R2
  LOADK R19 K70 [".Small"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 3
  MOVE R22 R2
  LOADK R23 K71 [".Medium"]
  DUPTABLE R24 K276 [{"Image"}]
  LOADK R25 K72 [".Large"]
  SETTABLEKS R25 R24 K208 ["Image"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K73 [".RibbonButton-Divider"]
  DUPTABLE R25 K276 [{"Image"}]
  LOADK R26 K74 ["::UIPadding"]
  SETTABLEKS R26 R25 K208 ["Image"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K75 ["PaddingLeft"]
  DUPTABLE R26 K276 [{"Image"}]
  LOADK R27 K76 ["PaddingRight"]
  SETTABLEKS R27 R26 K208 ["Image"]
  CALL R24 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K77 [{"PaddingLeft", "PaddingRight"}]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 3
  MOVE R23 R2
  LOADK R24 K71 [".Medium"]
  DUPTABLE R25 K276 [{"Image"}]
  LOADK R26 K78 ["$GlobalSpace150"]
  SETTABLEKS R26 R25 K208 ["Image"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K73 [".RibbonButton-Divider"]
  DUPTABLE R26 K276 [{"Image"}]
  LOADK R27 K79 [".X-RowSpace50"]
  SETTABLEKS R27 R26 K208 ["Image"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K75 ["PaddingLeft"]
  DUPTABLE R27 K276 [{"Image"}]
  LOADK R28 K80 ["::UIListLayout"]
  SETTABLEKS R28 R27 K208 ["Image"]
  CALL R25 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K81 ["FillDirection"]
  DUPTABLE R12 K215 [{"BackgroundTransparency"}]
  LOADK R13 K25 ["$BackgroundTransparent"]
  SETTABLEKS R13 R12 K22 ["BackgroundTransparency"]
  NEWTABLE R13 0 3
  MOVE R14 R2
  LOADK R15 K82 ["Padding"]
  DUPTABLE R16 K148 [{"CornerRadius"}]
  LOADK R17 K153 ["$GlobalRadiusMedium"]
  SETTABLEKS R17 R16 K147 ["CornerRadius"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K83 ["SortOrder"]
  DUPTABLE R17 K251 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R18 K253 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R18 R17 K249 ["ApplyStrokeMode"]
  LOADK R18 K66 ["$SemanticColorDivider"]
  SETTABLEKS R18 R17 K218 ["Color"]
  LOADK R18 K254 ["$BorderMedium"]
  SETTABLEKS R18 R17 K250 ["Thickness"]
  LOADK R18 K67 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R18 R17 K220 ["Transparency"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K84 [{"FillDirection", "Padding", "SortOrder"}]
  DUPTABLE R18 K215 [{"BackgroundTransparency"}]
  LOADK R19 K25 ["$BackgroundTransparent"]
  SETTABLEKS R19 R18 K22 ["BackgroundTransparency"]
  NEWTABLE R19 0 3
  MOVE R20 R2
  LOADK R21 K82 ["Padding"]
  DUPTABLE R22 K148 [{"CornerRadius"}]
  LOADK R23 K153 ["$GlobalRadiusMedium"]
  SETTABLEKS R23 R22 K147 ["CornerRadius"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K85 ["Horizontal"]
  DUPTABLE R23 K24 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R24 K25 ["$BackgroundTransparent"]
  SETTABLEKS R24 R23 K22 ["BackgroundTransparency"]
  LOADK R24 K26 ["$BorderNone"]
  SETTABLEKS R24 R23 K23 ["BorderSizePixel"]
  NEWTABLE R24 0 2
  MOVE R25 R2
  LOADK R26 K198 [":hover"]
  DUPTABLE R27 K121 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R28 K122 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R28 R27 K28 ["BackgroundColor3"]
  LOADK R28 K123 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R28 R27 K22 ["BackgroundTransparency"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K86 [Enum.FillDirection.Horizontal]
  DUPTABLE R28 K121 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R29 K202 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R29 R28 K28 ["BackgroundColor3"]
  LOADK R29 K201 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R29 R28 K22 ["BackgroundTransparency"]
  CALL R26 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K87 ["$GlobalSpace50"]
  DUPTABLE R24 K344 [{"TextSize", "AutoButtonColor", "BorderSizePixel"}]
  LOADK R25 K112 ["$FontSize150"]
  SETTABLEKS R25 R24 K34 ["TextSize"]
  LOADB R25 0
  SETTABLEKS R25 R24 K179 ["AutoButtonColor"]
  LOADK R25 K26 ["$BorderNone"]
  SETTABLEKS R25 R24 K23 ["BorderSizePixel"]
  NEWTABLE R25 0 3
  MOVE R26 R2
  LOADK R27 K74 ["::UIPadding"]
  DUPTABLE R28 K77 [{"PaddingLeft", "PaddingRight"}]
  LOADK R29 K78 ["$GlobalSpace150"]
  SETTABLEKS R29 R28 K75 ["PaddingLeft"]
  LOADK R29 K78 ["$GlobalSpace150"]
  SETTABLEKS R29 R28 K76 ["PaddingRight"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K196 [".State-Default"]
  DUPTABLE R29 K345 [{"BackgroundTransparency", "Font", "TextColor3"}]
  LOADK R30 K25 ["$BackgroundTransparent"]
  SETTABLEKS R30 R29 K22 ["BackgroundTransparency"]
  LOADK R30 K40 ["$FontWeight700"]
  SETTABLEKS R30 R29 K16 ["Font"]
  LOADK R30 K37 ["$SemanticColorContentMuted"]
  SETTABLEKS R30 R29 K33 ["TextColor3"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K113 [".State-Selected"]
  DUPTABLE R30 K114 [{"BackgroundColor3", "BackgroundTransparency", "Font", "TextColor3"}]
  LOADK R31 K115 ["$SemanticColorStatesSelected"]
  SETTABLEKS R31 R30 K28 ["BackgroundColor3"]
  LOADK R31 K116 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R31 R30 K22 ["BackgroundTransparency"]
  LOADK R31 K40 ["$FontWeight700"]
  SETTABLEKS R31 R30 K16 ["Font"]
  LOADK R31 K117 ["$SemanticColorContentStandard"]
  SETTABLEKS R31 R30 K33 ["TextColor3"]
  CALL R28 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K90 [".X-RowSpace100"]
  DUPTABLE R13 K347 [{"BackgroundColor3", "BackgroundTransparency", "Size"}]
  GETIMPORT R14 K350 [Color3.fromHex]
  LOADK R15 K95 [".X-ColumnSpace25"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K28 ["BackgroundColor3"]
  LOADK R14 K216 ["$BackgroundNonTransparent"]
  SETTABLEKS R14 R13 K22 ["BackgroundTransparency"]
  GETIMPORT R14 K63 [UDim2.new]
  LOADN R15 0
  LOADN R16 40
  LOADN R17 0
  LOADN R18 24
  CALL R14 4 1
  SETTABLEKS R14 R13 K60 ["Size"]
  NEWTABLE R14 0 6
  MOVE R15 R2
  LOADK R16 K96 ["Vertical"]
  DUPTABLE R17 K148 [{"CornerRadius"}]
  LOADK R18 K97 [Enum.FillDirection.Vertical]
  SETTABLEKS R18 R17 K147 ["CornerRadius"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K74 ["::UIPadding"]
  DUPTABLE R18 K354 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  LOADK R19 K98 ["$GlobalSpace25"]
  SETTABLEKS R19 R18 K103 ["PaddingBottom"]
  LOADK R19 K98 ["$GlobalSpace25"]
  SETTABLEKS R19 R18 K75 ["PaddingLeft"]
  LOADK R19 K98 ["$GlobalSpace25"]
  SETTABLEKS R19 R18 K76 ["PaddingRight"]
  LOADK R19 K98 ["$GlobalSpace25"]
  SETTABLEKS R19 R18 K102 ["PaddingTop"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K80 ["::UIListLayout"]
  DUPTABLE R19 K356 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R20 K97 [Enum.FillDirection.Vertical]
  SETTABLEKS R20 R19 K81 ["FillDirection"]
  GETIMPORT R20 K357 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R20 R19 K355 ["HorizontalAlignment"]
  GETIMPORT R20 K89 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R20 R19 K83 ["SortOrder"]
  GETIMPORT R20 K275 [Enum.VerticalAlignment.Center]
  SETTABLEKS R20 R19 K272 ["VerticalAlignment"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K64 ["> Frame"]
  DUPTABLE R20 K358 [{"BackgroundColor3", "Size"}]
  LOADK R21 K103 ["PaddingBottom"]
  SETTABLEKS R21 R20 K28 ["BackgroundColor3"]
  GETIMPORT R21 K63 [UDim2.new]
  LOADN R22 0
  LOADN R23 20
  LOADN R24 0
  LOADN R25 20
  CALL R21 4 1
  SETTABLEKS R21 R20 K60 ["Size"]
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K96 ["Vertical"]
  DUPTABLE R24 K148 [{"CornerRadius"}]
  LOADK R25 K97 [Enum.FillDirection.Vertical]
  SETTABLEKS R25 R24 K147 ["CornerRadius"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K113 [".State-Selected"]
  DUPTABLE R21 K360 [{"BackgroundColor3"}]
  GETIMPORT R22 K350 [Color3.fromHex]
  LOADK R23 K105 [".X-MezzPaddingLeft ::UIPadding"]
  CALL R22 1 1
  SETTABLEKS R22 R21 K28 ["BackgroundColor3"]
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K80 ["::UIListLayout"]
  DUPTABLE R25 K362 [{"HorizontalAlignment"}]
  GETIMPORT R26 K364 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R26 R25 K355 ["HorizontalAlignment"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K118 [".State-Disabled"]
  DUPTABLE R22 K215 [{"BackgroundTransparency"}]
  LOADK R23 K109 [".X-RowXS"]
  SETTABLEKS R23 R22 K22 ["BackgroundTransparency"]
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K64 ["> Frame"]
  DUPTABLE R26 K215 [{"BackgroundTransparency"}]
  LOADK R27 K109 [".X-RowXS"]
  SETTABLEKS R27 R26 K22 ["BackgroundTransparency"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K110 [".Component-RibbonTab"]
  DUPTABLE R14 K368 [{"Active", "AutoButtonColor", "AnchorPoint", "Position", "Text", "ZIndex"}]
  LOADB R15 1
  SETTABLEKS R15 R14 K367 ["Active"]
  LOADB R15 0
  SETTABLEKS R15 R14 K179 ["AutoButtonColor"]
  GETIMPORT R15 K57 [Vector2.new]
  LOADN R16 1
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K125 ["AnchorPoint"]
  GETIMPORT R15 K137 [UDim2.fromScale]
  LOADN R16 1
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K128 ["Position"]
  LOADK R15 K182 [""]
  SETTABLEKS R15 R14 K180 ["Text"]
  LOADN R15 2
  SETTABLEKS R15 R14 K230 ["ZIndex"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K113 [".State-Selected"]
  DUPTABLE R15 K370 [{"AnchorPoint", "Position", "Size"}]
  GETIMPORT R16 K57 [Vector2.new]
  LOADN R17 1
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K125 ["AnchorPoint"]
  GETIMPORT R16 K63 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  LOADN R20 1
  CALL R16 4 1
  SETTABLEKS R16 R15 K128 ["Position"]
  GETIMPORT R16 K63 [UDim2.new]
  LOADN R17 0
  LOADN R18 22
  LOADN R19 1
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K60 ["Size"]
  NEWTABLE R16 0 1
  MOVE R17 R2
  LOADK R18 K217 ["::UIGradient"]
  DUPTABLE R19 K221 [{"Color", "Rotation", "Transparency"}]
  GETIMPORT R20 K372 [ColorSequence.new]
  GETIMPORT R21 K350 [Color3.fromHex]
  LOADK R22 K117 ["$SemanticColorContentStandard"]
  CALL R21 1 -1
  CALL R20 -1 1
  SETTABLEKS R20 R19 K218 ["Color"]
  LOADN R20 180
  SETTABLEKS R20 R19 K219 ["Rotation"]
  GETIMPORT R20 K375 [NumberSequence.new]
  NEWTABLE R21 0 3
  GETIMPORT R22 K377 [NumberSequenceKeypoint.new]
  LOADN R23 0
  LOADN R24 0
  CALL R22 2 1
  GETIMPORT R23 K377 [NumberSequenceKeypoint.new]
  LOADK R24 K133 [0.5]
  LOADN R25 0
  CALL R23 2 1
  GETIMPORT R24 K377 [NumberSequenceKeypoint.new]
  LOADN R25 1
  LOADN R26 1
  CALL R24 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R20 1 1
  SETTABLEKS R20 R19 K220 ["Transparency"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K122 ["$SemanticColorStateLayerHover"]
  DUPTABLE R16 K61 [{"Size"}]
  GETIMPORT R17 K63 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  LOADN R21 84
  CALL R17 4 1
  SETTABLEKS R17 R16 K60 ["Size"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K123 ["$SemanticColorStateLayerHoverTransparency"]
  DUPTABLE R17 K61 [{"Size"}]
  GETIMPORT R18 K63 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  LOADN R22 70
  CALL R18 4 1
  SETTABLEKS R18 R17 K60 ["Size"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K124 [".Component-RibbonTabs"]
  DUPTABLE R18 K61 [{"Size"}]
  GETIMPORT R19 K63 [UDim2.new]
  LOADN R20 1
  LOADN R21 224
  LOADN R22 1
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K60 ["Size"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K125 ["AnchorPoint"]
  DUPTABLE R19 K143 [{"AnchorPoint", "Position"}]
  GETIMPORT R20 K57 [Vector2.new]
  LOADN R21 0
  LOADK R22 K133 [0.5]
  CALL R20 2 1
  SETTABLEKS R20 R19 K125 ["AnchorPoint"]
  GETIMPORT R20 K63 [UDim2.new]
  LOADN R21 0
  LOADN R22 165
  LOADK R23 K133 [0.5]
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K128 ["Position"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K126 ["AutomaticCanvasSize"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 3
  MOVE R22 R2
  LOADK R23 K80 ["::UIListLayout"]
  DUPTABLE R24 K383 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment", "Padding"}]
  GETIMPORT R25 K86 [Enum.FillDirection.Horizontal]
  SETTABLEKS R25 R24 K81 ["FillDirection"]
  GETIMPORT R25 K357 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R25 R24 K355 ["HorizontalAlignment"]
  GETIMPORT R25 K89 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R25 R24 K83 ["SortOrder"]
  GETIMPORT R25 K275 [Enum.VerticalAlignment.Center]
  SETTABLEKS R25 R24 K272 ["VerticalAlignment"]
  LOADK R25 K91 ["$GlobalSpace100"]
  SETTABLEKS R25 R24 K82 ["Padding"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K183 ["> TextLabel"]
  DUPTABLE R25 K306 [{"BackgroundTransparency", "Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADK R26 K25 ["$BackgroundTransparent"]
  SETTABLEKS R26 R25 K22 ["BackgroundTransparency"]
  LOADK R26 K36 ["$FontWeight400"]
  SETTABLEKS R26 R25 K16 ["Font"]
  LOADK R26 K112 ["$FontSize150"]
  SETTABLEKS R26 R25 K34 ["TextSize"]
  LOADN R26 0
  SETTABLEKS R26 R25 K88 ["LayoutOrder"]
  LOADK R26 K117 ["$SemanticColorContentStandard"]
  SETTABLEKS R26 R25 K33 ["TextColor3"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K118 [".State-Disabled"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K183 ["> TextLabel"]
  DUPTABLE R30 K44 [{"TextColor3"}]
  LOADK R31 K119 ["$SemanticColorContentDisabled"]
  SETTABLEKS R31 R30 K33 ["TextColor3"]
  CALL R28 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K128 ["Position"]
  DUPTABLE R21 K233 [{"AutoButtonColor", "Text", "Size"}]
  LOADB R22 0
  SETTABLEKS R22 R21 K179 ["AutoButtonColor"]
  LOADK R22 K182 [""]
  SETTABLEKS R22 R21 K180 ["Text"]
  GETIMPORT R22 K63 [UDim2.new]
  LOADN R23 0
  LOADN R24 85
  LOADN R25 0
  LOADN R26 28
  CALL R22 4 1
  SETTABLEKS R22 R21 K60 ["Size"]
  NEWTABLE R22 0 11
  MOVE R23 R2
  LOADK R24 K80 ["::UIListLayout"]
  DUPTABLE R25 K386 [{"HorizontalFlex"}]
  GETIMPORT R26 K389 [Enum.UIFlexAlignment.Fill]
  SETTABLEKS R26 R25 K385 ["HorizontalFlex"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K74 ["::UIPadding"]
  DUPTABLE R26 K104 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R27 K91 ["$GlobalSpace100"]
  SETTABLEKS R27 R26 K75 ["PaddingLeft"]
  LOADK R27 K87 ["$GlobalSpace50"]
  SETTABLEKS R27 R26 K76 ["PaddingRight"]
  LOADK R27 K87 ["$GlobalSpace50"]
  SETTABLEKS R27 R26 K102 ["PaddingTop"]
  LOADK R27 K87 ["$GlobalSpace50"]
  SETTABLEKS R27 R26 K103 ["PaddingBottom"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K134 ["XY"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 1
  MOVE R29 R2
  LOADK R30 K80 ["::UIListLayout"]
  DUPTABLE R31 K386 [{"HorizontalFlex"}]
  GETIMPORT R32 K389 [Enum.UIFlexAlignment.Fill]
  SETTABLEKS R32 R31 K385 ["HorizontalFlex"]
  CALL R29 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K135 [Enum.AutomaticSize.XY]
  DUPTABLE R28 K61 [{"Size"}]
  LOADK R29 K190 ["$IconSmall"]
  SETTABLEKS R29 R28 K60 ["Size"]
  NEWTABLE R29 0 1
  MOVE R30 R2
  LOADK R31 K136 ["fromScale"]
  DUPTABLE R32 K395 [{"FlexMode", "ShrinkRation"}]
  GETIMPORT R33 K398 [Enum.UIFlexMode.Custom]
  SETTABLEKS R33 R32 K393 ["FlexMode"]
  LOADN R33 0
  SETTABLEKS R33 R32 K394 ["ShrinkRation"]
  CALL R30 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K143 [{"AnchorPoint", "Position"}]
  DUPTABLE R29 K240 [{"LayoutOrder"}]
  LOADN R30 0
  SETTABLEKS R30 R29 K88 ["LayoutOrder"]
  NEWTABLE R30 0 1
  MOVE R31 R2
  LOADK R32 K241 [".Right"]
  DUPTABLE R33 K240 [{"LayoutOrder"}]
  LOADN R34 3
  SETTABLEKS R34 R33 K88 ["LayoutOrder"]
  CALL R31 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K144 [{"AnchorPoint", "AutomaticSize", "Position", "Size"}]
  DUPTABLE R30 K401 [{"BorderSizePixel", "BackgroundTransparency", "Image", "LayoutOrder"}]
  LOADK R31 K26 ["$BorderNone"]
  SETTABLEKS R31 R30 K23 ["BorderSizePixel"]
  LOADN R31 1
  SETTABLEKS R31 R30 K22 ["BackgroundTransparency"]
  JUMPIFNOT R4 [+2]
  LOADK R31 K146 [".X-CornerXS ::UICorner"]
  JUMP [+1]
  LOADK R31 K147 ["CornerRadius"]
  SETTABLEKS R31 R30 K208 ["Image"]
  LOADN R31 4
  SETTABLEKS R31 R30 K88 ["LayoutOrder"]
  NEWTABLE R31 0 1
  MOVE R32 R2
  LOADK R33 K148 [{"CornerRadius"}]
  DUPTABLE R34 K276 [{"Image"}]
  JUMPIFNOT R4 [+2]
  LOADK R35 K149 ["$GlobalRadiusXSmall"]
  JUMP [+1]
  LOADK R35 K150 [".X-CornerS ::UICorner"]
  SETTABLEKS R35 R34 K208 ["Image"]
  CALL R32 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K151 ["$GlobalRadiusSmall"]
  DUPTABLE R31 K409 [{"Font", "TextSize", "TextTruncate", "TextXAlignment", "LayoutOrder"}]
  LOADK R32 K36 ["$FontWeight400"]
  SETTABLEKS R32 R31 K16 ["Font"]
  LOADK R32 K112 ["$FontSize150"]
  SETTABLEKS R32 R31 K34 ["TextSize"]
  GETIMPORT R32 K411 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R32 R31 K408 ["TextTruncate"]
  GETIMPORT R32 K51 [Enum.TextXAlignment.Left]
  SETTABLEKS R32 R31 K48 ["TextXAlignment"]
  LOADN R32 2
  SETTABLEKS R32 R31 K88 ["LayoutOrder"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K196 [".State-Default"]
  DUPTABLE R32 K121 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R33 K58 [∞]
  SETTABLEKS R33 R32 K28 ["BackgroundColor3"]
  LOADK R33 K59 [".Role-DividerH"]
  SETTABLEKS R33 R32 K22 ["BackgroundTransparency"]
  NEWTABLE R33 0 2
  MOVE R34 R2
  LOADK R35 K151 ["$GlobalRadiusSmall"]
  DUPTABLE R36 K44 [{"TextColor3"}]
  LOADK R37 K37 ["$SemanticColorContentMuted"]
  SETTABLEKS R37 R36 K33 ["TextColor3"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K143 [{"AnchorPoint", "Position"}]
  DUPTABLE R37 K194 [{"ImageTransparency"}]
  LOADK R38 K156 [UDim.new]
  SETTABLEKS R38 R37 K193 ["ImageTransparency"]
  CALL R35 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 1
  MOVE R31 R2
  LOADK R32 K157 [".X-PadRibbonTool ::UIPadding"]
  DUPTABLE R33 K121 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R34 K64 ["> Frame"]
  SETTABLEKS R34 R33 K28 ["BackgroundColor3"]
  LOADK R34 K65 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  SETTABLEKS R34 R33 K22 ["BackgroundTransparency"]
  NEWTABLE R34 0 2
  MOVE R35 R2
  LOADK R36 K151 ["$GlobalRadiusSmall"]
  DUPTABLE R37 K44 [{"TextColor3"}]
  LOADK R38 K117 ["$SemanticColorContentStandard"]
  SETTABLEKS R38 R37 K33 ["TextColor3"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K143 [{"AnchorPoint", "Position"}]
  DUPTABLE R38 K194 [{"ImageTransparency"}]
  LOADN R39 0
  SETTABLEKS R39 R38 K193 ["ImageTransparency"]
  CALL R36 2 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 1
  MOVE R32 R2
  LOADK R33 K60 ["Size"]
  NEWTABLE R34 0 0
  NEWTABLE R35 0 3
  MOVE R36 R2
  LOADK R37 K248 ["::UIStroke"]
  DUPTABLE R38 K317 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R39 K253 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R39 R38 K249 ["ApplyStrokeMode"]
  LOADK R39 K62 ["UDim2"]
  SETTABLEKS R39 R38 K218 ["Color"]
  LOADK R39 K254 ["$BorderMedium"]
  SETTABLEKS R39 R38 K250 ["Thickness"]
  CALL R36 2 1
  MOVE R37 R2
  LOADK R38 K151 ["$GlobalRadiusSmall"]
  DUPTABLE R39 K44 [{"TextColor3"}]
  LOADK R40 K117 ["$SemanticColorContentStandard"]
  SETTABLEKS R40 R39 K33 ["TextColor3"]
  CALL R37 2 1
  MOVE R38 R2
  LOADK R39 K143 [{"AnchorPoint", "Position"}]
  DUPTABLE R40 K194 [{"ImageTransparency"}]
  LOADN R41 0
  SETTABLEKS R41 R40 K193 ["ImageTransparency"]
  CALL R38 2 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 1
  MOVE R33 R2
  LOADK R34 K118 [".State-Disabled"]
  DUPTABLE R35 K121 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R36 K58 [∞]
  SETTABLEKS R36 R35 K28 ["BackgroundColor3"]
  LOADK R36 K59 [".Role-DividerH"]
  SETTABLEKS R36 R35 K22 ["BackgroundTransparency"]
  NEWTABLE R36 0 2
  MOVE R37 R2
  LOADK R38 K151 ["$GlobalRadiusSmall"]
  DUPTABLE R39 K44 [{"TextColor3"}]
  LOADK R40 K119 ["$SemanticColorContentDisabled"]
  SETTABLEKS R40 R39 K33 ["TextColor3"]
  CALL R37 2 1
  MOVE R38 R2
  LOADK R39 K143 [{"AnchorPoint", "Position"}]
  DUPTABLE R40 K194 [{"ImageTransparency"}]
  LOADK R41 K195 ["$IconDisabled"]
  SETTABLEKS R41 R40 K193 ["ImageTransparency"]
  CALL R38 2 -1
  SETLIST R36 R37 -1 [1]
  CALL R33 3 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 -1
  SETLIST R7 R8 -1 [49]
  MOVE R8 R3
  LOADK R9 K158 [".X-PadSplitButtonTool ::UIPadding"]
  MOVE R10 R7
  DUPTABLE R11 K417 [{"Size", "SizeDense", "SliderSize"}]
  GETIMPORT R12 K63 [UDim2.new]
  LOADN R13 0
  LOADN R14 90
  LOADN R15 0
  LOADN R16 24
  CALL R12 4 1
  SETTABLEKS R12 R11 K60 ["Size"]
  GETIMPORT R12 K63 [UDim2.new]
  LOADN R13 0
  LOADN R14 90
  LOADN R15 0
  LOADN R16 20
  CALL R12 4 1
  SETTABLEKS R12 R11 K415 ["SizeDense"]
  JUMPIFNOT R6 [+8]
  GETIMPORT R12 K63 [UDim2.new]
  LOADN R13 0
  LOADN R14 180
  LOADN R15 0
  LOADN R16 24
  CALL R12 4 1
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K416 ["SliderSize"]
  CALL R8 3 -1
  RETURN R8 -1
