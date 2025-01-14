PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R3 R0 K0 ["expandedAssetId"]
  JUMPIFNOTEQ R2 R3 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["None"]
  JUMP [+1]
  GETUPVAL R1 0
  DUPTABLE R2 K2 [{"expandedAssetId"}]
  SETTABLEKS R1 R2 K0 ["expandedAssetId"]
  RETURN R2 1

PROTO_1:
  GETUPVAL R1 0
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  NAMECALL R1 R1 K0 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["ref"]
  GETTABLEKS R0 R1 K1 ["current"]
  JUMPIFNOT R0 [+16]
  GETUPVAL R0 0
  DUPTABLE R2 K3 [{"width"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["ref"]
  GETTABLEKS R5 R6 K1 ["current"]
  GETTABLEKS R4 R5 K4 ["AbsoluteSize"]
  GETTABLEKS R3 R4 K5 ["X"]
  SETTABLEKS R3 R2 K2 ["width"]
  NAMECALL R0 R0 K6 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["state"]
  GETTABLEKS R4 R5 K1 ["width"]
  GETUPVAL R5 1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["props"]
  GETTABLEKS R6 R7 K3 ["AudioType"]
  MOVE R7 R4
  CALL R5 2 1
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K4 ["Stylizer"]
  GETTABLEKS R6 R7 K5 ["itemRow"]
  GETTABLE R7 R5 R1
  JUMPIFNOT R7 [+65]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K6 ["createElement"]
  GETUPVAL R9 4
  DUPTABLE R10 K14 [{"Font", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextXAlignment"}]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K15 ["FONT"]
  SETTABLEKS R11 R10 K7 ["Font"]
  SETTABLEKS R2 R10 K8 ["LayoutOrder"]
  SETTABLEKS R7 R10 K9 ["Size"]
  SETTABLEKS R0 R10 K10 ["Text"]
  GETTABLEKS R11 R6 K16 ["headerTextColor"]
  SETTABLEKS R11 R10 K11 ["TextColor"]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K17 ["FONT_SIZE_SMALL"]
  SETTABLEKS R11 R10 K12 ["TextSize"]
  MOVE R11 R3
  JUMPIF R11 [+2]
  GETIMPORT R11 K20 [Enum.TextXAlignment.Left]
  SETTABLEKS R11 R10 K13 ["TextXAlignment"]
  DUPTABLE R11 K22 [{"UIPadding"}]
  LOADB R12 0
  JUMPIFEQKN R2 K23 [1] [+27]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K6 ["createElement"]
  LOADK R13 K21 ["UIPadding"]
  DUPTABLE R14 K25 [{"PaddingLeft"}]
  GETIMPORT R15 K28 [UDim.new]
  LOADN R16 0
  GETUPVAL R18 6
  CALL R18 0 1
  JUMPIFNOT R18 [+6]
  GETUPVAL R19 5
  GETTABLEKS R18 R19 K29 ["ITEM_ROW"]
  GETTABLEKS R17 R18 K30 ["LEFT_RIGHT_PADDING"]
  JUMP [+5]
  GETUPVAL R19 5
  GETTABLEKS R18 R19 K31 ["AUDIO_ROW"]
  GETTABLEKS R17 R18 K30 ["LEFT_RIGHT_PADDING"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K24 ["PaddingLeft"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K21 ["UIPadding"]
  CALL R8 3 1
  RETURN R8 1
  LOADNIL R8
  RETURN R8 1

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createRef"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K1 ["ref"]
  DUPTABLE R2 K3 [{"width"}]
  LOADN R3 0
  SETTABLEKS R3 R2 K2 ["width"]
  SETTABLEKS R2 R0 K4 ["state"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R0 K5 ["setExpandedAssetId"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K6 ["OnAbsoluteSizeChanged"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  SETTABLEKS R2 R0 K7 ["createHeaderElement"]
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["OnAbsoluteSizeChanged"]
  CALL R1 0 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["TryInsert"]
  GETUPVAL R2 1
  ORK R3 R0 K1 [False]
  LOADNIL R4
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K2 ["props"]
  GETTABLEKS R5 R6 K3 ["SwimlaneName"]
  CALL R1 4 0
  RETURN R0 0

PROTO_7:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  GETTABLEKS R2 R0 K0 ["Asset"]
  JUMPIFNOT R2 [+59]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["Generator"]
  DUPTABLE R4 K14 [{"key", "AssetInfo", "CanInsertAsset", "InsertAsset", "IsExpanded", "LayoutOrder", "LogImpression", "OnExpanded", "OnAssetPreviewButtonClicked", "ParentAbsoluteSize", "TryOpenAssetConfig", "width"}]
  GETTABLEKS R5 R2 K15 ["Id"]
  SETTABLEKS R5 R4 K2 ["key"]
  SETTABLEKS R0 R4 K3 ["AssetInfo"]
  GETUPVAL R5 3
  SETTABLEKS R5 R4 K4 ["CanInsertAsset"]
  SETTABLEKS R1 R4 K5 ["InsertAsset"]
  GETTABLEKS R6 R2 K15 ["Id"]
  GETUPVAL R7 4
  JUMPIFEQ R6 R7 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  SETTABLEKS R5 R4 K6 ["IsExpanded"]
  GETUPVAL R6 5
  NAMECALL R6 R6 K17 ["getNextOrder"]
  CALL R6 1 1
  ADDK R5 R6 K16 [1]
  SETTABLEKS R5 R4 K7 ["LayoutOrder"]
  GETUPVAL R5 6
  SETTABLEKS R5 R4 K8 ["LogImpression"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K18 ["setExpandedAssetId"]
  SETTABLEKS R5 R4 K9 ["OnExpanded"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K10 ["OnAssetPreviewButtonClicked"]
  SETTABLEKS R5 R4 K10 ["OnAssetPreviewButtonClicked"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K11 ["ParentAbsoluteSize"]
  SETTABLEKS R5 R4 K11 ["ParentAbsoluteSize"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K12 ["TryOpenAssetConfig"]
  SETTABLEKS R5 R4 K12 ["TryOpenAssetConfig"]
  GETUPVAL R5 7
  SETTABLEKS R5 R4 K13 ["width"]
  CALL R3 1 -1
  RETURN R3 -1
  LOADNIL R3
  RETURN R3 1

PROTO_8:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R1 K3 ["Assets"]
  GETTABLEKS R5 R1 K4 ["LayoutOrder"]
  GETTABLEKS R6 R1 K5 ["LogImpression"]
  GETTABLEKS R7 R1 K6 ["CanInsertAsset"]
  GETTABLEKS R8 R2 K7 ["expandedAssetId"]
  GETTABLEKS R9 R2 K8 ["width"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K9 ["new"]
  CALL R10 0 1
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K10 ["map"]
  MOVE R12 R4
  NEWCLOSURE R13 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R6
  CAPTURE VAL R9
  CALL R11 2 1
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K9 ["new"]
  CALL R12 0 1
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K11 ["createElement"]
  GETUPVAL R14 4
  NEWTABLE R15 8 0
  GETIMPORT R16 K15 [Enum.AutomaticSize.Y]
  SETTABLEKS R16 R15 K13 ["AutomaticSize"]
  LOADN R16 1
  SETTABLEKS R16 R15 K16 ["BackgroundTransparency"]
  SETTABLEKS R5 R15 K4 ["LayoutOrder"]
  GETIMPORT R16 K18 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K19 ["Size"]
  GETIMPORT R16 K22 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K23 ["Layout"]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K24 ["Ref"]
  GETTABLEKS R17 R0 K25 ["ref"]
  SETTABLE R17 R15 R16
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K26 ["Change"]
  GETTABLEKS R16 R17 K27 ["AbsoluteSize"]
  GETTABLEKS R17 R0 K28 ["OnAbsoluteSizeChanged"]
  SETTABLE R17 R15 R16
  DUPTABLE R16 K31 [{"HeaderRow", "RowsWrapper"}]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K11 ["createElement"]
  GETUPVAL R18 4
  DUPTABLE R19 K33 [{"BackgroundTransparency", "LayoutOrder", "Size", "Layout", "Padding"}]
  LOADN R20 1
  SETTABLEKS R20 R19 K16 ["BackgroundTransparency"]
  LOADN R20 1
  SETTABLEKS R20 R19 K4 ["LayoutOrder"]
  GETIMPORT R20 K18 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 0
  LOADN R24 20
  CALL R20 4 1
  SETTABLEKS R20 R19 K19 ["Size"]
  GETIMPORT R20 K35 [Enum.FillDirection.Horizontal]
  SETTABLEKS R20 R19 K23 ["Layout"]
  GETUPVAL R21 5
  CALL R21 0 1
  JUMPIFNOT R21 [+6]
  GETUPVAL R22 6
  GETTABLEKS R21 R22 K36 ["ITEM_ROW"]
  GETTABLEKS R20 R21 K37 ["BORDER_SIZE"]
  JUMP [+29]
  DUPTABLE R20 K42 [{"Right", "Left", "Top", "Bottom"}]
  GETUPVAL R23 6
  GETTABLEKS R22 R23 K43 ["AUDIO_ROW"]
  GETTABLEKS R21 R22 K37 ["BORDER_SIZE"]
  SETTABLEKS R21 R20 K38 ["Right"]
  GETUPVAL R23 6
  GETTABLEKS R22 R23 K43 ["AUDIO_ROW"]
  GETTABLEKS R21 R22 K37 ["BORDER_SIZE"]
  SETTABLEKS R21 R20 K39 ["Left"]
  GETUPVAL R23 6
  GETTABLEKS R22 R23 K43 ["AUDIO_ROW"]
  GETTABLEKS R21 R22 K37 ["BORDER_SIZE"]
  SETTABLEKS R21 R20 K40 ["Top"]
  GETUPVAL R23 6
  GETTABLEKS R22 R23 K43 ["AUDIO_ROW"]
  GETTABLEKS R21 R22 K37 ["BORDER_SIZE"]
  SETTABLEKS R21 R20 K41 ["Bottom"]
  SETTABLEKS R20 R19 K32 ["Padding"]
  DUPTABLE R20 K49 [{"Icon", "Title", "Creator", "Tags", "Length"}]
  GETTABLEKS R21 R0 K50 ["createHeaderElement"]
  LOADK R22 K51 [""]
  GETUPVAL R26 6
  GETTABLEKS R25 R26 K43 ["AUDIO_ROW"]
  GETTABLEKS R24 R25 K52 ["COLUMNS"]
  GETTABLEKS R23 R24 K53 ["ICON"]
  NAMECALL R24 R12 K54 ["getNextOrder"]
  CALL R24 1 -1
  CALL R21 -1 1
  SETTABLEKS R21 R20 K44 ["Icon"]
  GETTABLEKS R21 R0 K50 ["createHeaderElement"]
  LOADK R24 K55 ["AudioView"]
  LOADK R25 K45 ["Title"]
  NAMECALL R22 R3 K56 ["getText"]
  CALL R22 3 1
  NAMECALL R22 R22 K57 ["upper"]
  CALL R22 1 1
  GETUPVAL R26 6
  GETTABLEKS R25 R26 K43 ["AUDIO_ROW"]
  GETTABLEKS R24 R25 K52 ["COLUMNS"]
  GETTABLEKS R23 R24 K58 ["TITLE"]
  NAMECALL R24 R12 K54 ["getNextOrder"]
  CALL R24 1 -1
  CALL R21 -1 1
  SETTABLEKS R21 R20 K45 ["Title"]
  GETTABLEKS R21 R0 K50 ["createHeaderElement"]
  LOADK R24 K55 ["AudioView"]
  LOADK R25 K46 ["Creator"]
  NAMECALL R22 R3 K56 ["getText"]
  CALL R22 3 1
  NAMECALL R22 R22 K57 ["upper"]
  CALL R22 1 1
  GETUPVAL R26 6
  GETTABLEKS R25 R26 K43 ["AUDIO_ROW"]
  GETTABLEKS R24 R25 K52 ["COLUMNS"]
  GETTABLEKS R23 R24 K59 ["CREATOR"]
  NAMECALL R24 R12 K54 ["getNextOrder"]
  CALL R24 1 -1
  CALL R21 -1 1
  SETTABLEKS R21 R20 K46 ["Creator"]
  GETTABLEKS R21 R0 K50 ["createHeaderElement"]
  LOADK R24 K55 ["AudioView"]
  LOADK R25 K47 ["Tags"]
  NAMECALL R22 R3 K56 ["getText"]
  CALL R22 3 1
  NAMECALL R22 R22 K57 ["upper"]
  CALL R22 1 1
  GETUPVAL R26 6
  GETTABLEKS R25 R26 K43 ["AUDIO_ROW"]
  GETTABLEKS R24 R25 K52 ["COLUMNS"]
  GETTABLEKS R23 R24 K60 ["TAGS"]
  NAMECALL R24 R12 K54 ["getNextOrder"]
  CALL R24 1 -1
  CALL R21 -1 1
  SETTABLEKS R21 R20 K47 ["Tags"]
  GETTABLEKS R21 R0 K50 ["createHeaderElement"]
  LOADK R24 K55 ["AudioView"]
  LOADK R25 K48 ["Length"]
  NAMECALL R22 R3 K56 ["getText"]
  CALL R22 3 1
  NAMECALL R22 R22 K57 ["upper"]
  CALL R22 1 1
  GETUPVAL R26 6
  GETTABLEKS R25 R26 K43 ["AUDIO_ROW"]
  GETTABLEKS R24 R25 K52 ["COLUMNS"]
  GETTABLEKS R23 R24 K61 ["LENGTH"]
  NAMECALL R24 R12 K54 ["getNextOrder"]
  CALL R24 1 1
  GETIMPORT R25 K63 [Enum.TextXAlignment.Right]
  CALL R21 4 1
  SETTABLEKS R21 R20 K48 ["Length"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K29 ["HeaderRow"]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K64 ["createFragment"]
  MOVE R18 R11
  CALL R17 1 1
  SETTABLEKS R17 R16 K30 ["RowsWrapper"]
  CALL R13 3 -1
  RETURN R13 -1

PROTO_9:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Packages"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R1 K9 ["Dash"]
  CALL R4 1 1
  GETTABLEKS R6 R0 K10 ["Core"]
  GETTABLEKS R5 R6 K11 ["Util"]
  GETIMPORT R6 K6 [require]
  GETTABLEKS R7 R5 K12 ["LayoutOrderIterator"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R8 R5 K13 ["Constants"]
  CALL R7 1 1
  GETTABLEKS R8 R3 K14 ["ContextServices"]
  GETTABLEKS R9 R8 K15 ["withContext"]
  GETIMPORT R10 K6 [require]
  GETTABLEKS R13 R0 K10 ["Core"]
  GETTABLEKS R12 R13 K16 ["Components"]
  GETTABLEKS R11 R12 K17 ["AssetLogicWrapper"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETTABLEKS R14 R0 K10 ["Core"]
  GETTABLEKS R13 R14 K18 ["Models"]
  GETTABLEKS R12 R13 K19 ["AssetInfo"]
  CALL R11 1 1
  GETIMPORT R12 K6 [require]
  GETTABLEKS R15 R0 K10 ["Core"]
  GETTABLEKS R14 R15 K20 ["Types"]
  GETTABLEKS R13 R14 K21 ["AssetLogicTypes"]
  CALL R12 1 1
  GETTABLEKS R13 R3 K22 ["UI"]
  GETTABLEKS R14 R13 K23 ["TextLabel"]
  GETTABLEKS R15 R13 K24 ["Pane"]
  GETIMPORT R16 K6 [require]
  GETTABLEKS R20 R0 K10 ["Core"]
  GETTABLEKS R19 R20 K16 ["Components"]
  GETTABLEKS R18 R19 K25 ["Audio"]
  GETTABLEKS R17 R18 K26 ["AudioRow"]
  CALL R16 1 1
  GETIMPORT R17 K6 [require]
  GETTABLEKS R21 R0 K10 ["Core"]
  GETTABLEKS R20 R21 K16 ["Components"]
  GETTABLEKS R19 R20 K25 ["Audio"]
  GETTABLEKS R18 R19 K27 ["GetAudioTableSizes"]
  CALL R17 1 1
  GETIMPORT R18 K6 [require]
  GETTABLEKS R22 R0 K10 ["Core"]
  GETTABLEKS R21 R22 K11 ["Util"]
  GETTABLEKS R20 R21 K28 ["SharedFlags"]
  GETTABLEKS R19 R20 K29 ["getFFlagToolboxRefactorAudioConstantsForItemRow"]
  CALL R18 1 1
  GETTABLEKS R19 R2 K30 ["PureComponent"]
  LOADK R21 K31 ["AudioTable"]
  NAMECALL R19 R19 K32 ["extend"]
  CALL R19 2 1
  DUPCLOSURE R20 K33 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R17
  CAPTURE VAL R14
  CAPTURE VAL R7
  CAPTURE VAL R18
  SETTABLEKS R20 R19 K34 ["init"]
  DUPCLOSURE R20 K35 [PROTO_5]
  SETTABLEKS R20 R19 K36 ["didMount"]
  DUPCLOSURE R20 K37 [PROTO_8]
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R16
  CAPTURE VAL R2
  CAPTURE VAL R15
  CAPTURE VAL R18
  CAPTURE VAL R7
  SETTABLEKS R20 R19 K38 ["render"]
  MOVE R20 R9
  DUPTABLE R21 K41 [{"Localization", "Stylizer"}]
  GETTABLEKS R22 R8 K39 ["Localization"]
  SETTABLEKS R22 R21 K39 ["Localization"]
  GETTABLEKS R22 R8 K40 ["Stylizer"]
  SETTABLEKS R22 R21 K40 ["Stylizer"]
  CALL R20 1 1
  MOVE R21 R19
  CALL R20 1 1
  MOVE R19 R20
  NEWCLOSURE R20 P3
  CAPTURE VAL R2
  CAPTURE REF R19
  SETGLOBAL R20 K42 ["TypedAudioTable"]
  DUPTABLE R20 K45 [{"Component", "Generator"}]
  SETTABLEKS R19 R20 K43 ["Component"]
  GETGLOBAL R21 K42 ["TypedAudioTable"]
  SETTABLEKS R21 R20 K44 ["Generator"]
  CLOSEUPVALS R19
  RETURN R20 1
