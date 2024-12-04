PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["copy"]
  GETTABLEKS R2 R0 K1 ["expanded"]
  CALL R1 1 1
  GETUPVAL R2 1
  GETUPVAL R5 1
  GETTABLE R4 R1 R5
  NOT R3 R4
  SETTABLE R3 R1 R2
  DUPTABLE R2 K2 [{"expanded"}]
  SETTABLEKS R1 R2 K1 ["expanded"]
  RETURN R2 1

PROTO_1:
  GETUPVAL R0 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NAMECALL R0 R0 K0 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  RETURN R1 1

PROTO_3:
  DUPTABLE R1 K3 [{"expanded", "paneSize", "alert"}]
  NEWTABLE R2 2 0
  LOADB R3 1
  SETTABLEKS R3 R2 K4 ["Preview"]
  LOADB R3 1
  SETTABLEKS R3 R2 K5 ["List"]
  SETTABLEKS R2 R1 K0 ["expanded"]
  GETIMPORT R2 K8 [Vector2.new]
  CALL R2 0 1
  SETTABLEKS R2 R1 K1 ["paneSize"]
  DUPTABLE R2 K10 [{"show"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K9 ["show"]
  SETTABLEKS R2 R1 K2 ["alert"]
  SETTABLEKS R1 R0 K11 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K12 ["onExpandedChanged"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K13 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K14 ["ref"]
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"paneSize"}]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["AbsoluteSize"]
  SETTABLEKS R3 R2 K0 ["paneSize"]
  NAMECALL R0 R0 K3 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["ref"]
  NAMECALL R1 R1 K1 ["getValue"]
  CALL R1 1 1
  JUMPIF R1 [+1]
  RETURN R0 0
  DUPTABLE R4 K3 [{"paneSize"}]
  GETTABLEKS R5 R1 K4 ["AbsoluteSize"]
  SETTABLEKS R5 R4 K2 ["paneSize"]
  NAMECALL R2 R0 K5 ["setState"]
  CALL R2 2 0
  LOADK R4 K4 ["AbsoluteSize"]
  NAMECALL R2 R1 K6 ["GetPropertyChangedSignal"]
  CALL R2 2 1
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  NAMECALL R2 R2 K7 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K8 ["onPaneSizeChanged"]
  RETURN R0 0

PROTO_6:
  NAMECALL R1 R0 K0 ["initRef"]
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["onPaneSizeChanged"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K0 ["onPaneSizeChanged"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R2 R0 K0 ["ref"]
  GETTABLEKS R1 R2 K1 ["current"]
  JUMPIFNOT R1 [+6]
  GETTABLEKS R1 R0 K2 ["onPaneSizeChanged"]
  JUMPIF R1 [+3]
  NAMECALL R1 R0 K3 ["initRef"]
  CALL R1 1 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["animations"]
  NEWTABLE R2 0 0
  MOVE R3 R1
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETTABLEKS R8 R7 K2 ["animationAssetInfo"]
  DUPTABLE R9 K4 [{"id"}]
  LOADK R10 K5 [""]
  SETTABLEKS R10 R9 K3 ["id"]
  GETTABLEKS R10 R7 K6 ["converted"]
  JUMPIFNOT R10 [+21]
  GETTABLEKS R11 R7 K6 ["converted"]
  FASTCALL1 TONUMBER R11 [+2]
  GETIMPORT R10 K8 [tonumber]
  CALL R10 1 1
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K9 ["isValidAssetId"]
  MOVE R13 R10
  CALL R12 1 1
  JUMPIFNOT R12 [+6]
  FASTCALL1 TOSTRING R10 [+3]
  MOVE R12 R10
  GETIMPORT R11 K11 [tostring]
  CALL R11 1 1
  JUMP [+1]
  LOADK R11 K5 [""]
  SETTABLEKS R11 R9 K6 ["converted"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K12 ["RobloxAsset"]
  NAMECALL R10 R8 K13 ["IsA"]
  CALL R10 2 1
  JUMPIFNOT R10 [+8]
  GETTABLEKS R11 R8 K3 ["id"]
  FASTCALL1 TOSTRING R11 [+2]
  GETIMPORT R10 K11 [tostring]
  CALL R10 1 1
  SETTABLEKS R10 R9 K3 ["id"]
  SETTABLE R9 R2 R6
  FORGLOOP R3 2 [-47]
  RETURN R2 1

PROTO_10:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R5 R3 K1 ["Stylizer"]
  GETTABLEKS R4 R5 K2 ["Header"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["new"]
  CALL R5 0 1
  GETTABLEKS R8 R0 K4 ["state"]
  GETTABLEKS R7 R8 K5 ["expanded"]
  GETTABLE R6 R7 R2
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K6 ["createElement"]
  GETUPVAL R8 2
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K7 ["join"]
  GETTABLEKS R10 R4 K8 ["Container"]
  DUPTABLE R11 K10 [{"OnClick"}]
  GETTABLEKS R12 R0 K11 ["onExpandedChanged"]
  MOVE R13 R2
  CALL R12 1 1
  SETTABLEKS R12 R11 K9 ["OnClick"]
  CALL R9 2 1
  DUPTABLE R10 K14 [{"Arrow", "Text"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K18 [{"Style", "StyleModifier", "LayoutOrder"}]
  GETTABLEKS R14 R4 K12 ["Arrow"]
  SETTABLEKS R14 R13 K15 ["Style"]
  JUMPIFNOT R6 [+4]
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K19 ["Selected"]
  JUMP [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K16 ["StyleModifier"]
  NAMECALL R14 R5 K20 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K17 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K12 ["Arrow"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["createElement"]
  GETUPVAL R12 6
  DUPTABLE R13 K24 [{"Text", "LayoutOrder", "AutomaticSize", "AnchorPoint", "Position", "Style"}]
  SETTABLEKS R1 R13 K13 ["Text"]
  NAMECALL R14 R5 K20 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K17 ["LayoutOrder"]
  GETIMPORT R14 K27 [Enum.AutomaticSize.XY]
  SETTABLEKS R14 R13 K21 ["AutomaticSize"]
  GETIMPORT R14 K29 [Vector2.new]
  LOADN R15 0
  LOADK R16 K30 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K22 ["AnchorPoint"]
  GETIMPORT R14 K32 [UDim2.new]
  LOADN R15 0
  LOADN R16 24
  LOADK R17 K30 [0.5]
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K23 ["Position"]
  GETTABLEKS R14 R4 K13 ["Text"]
  SETTABLEKS R14 R13 K15 ["Style"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K13 ["Text"]
  CALL R7 3 -1
  RETURN R7 -1

PROTO_11:
  RETURN R0 0

PROTO_12:
  RETURN R0 0

PROTO_13:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R1 K3 ["animations"]
  NAMECALL R5 R0 K4 ["buildTags"]
  CALL R5 1 1
  GETTABLEKS R6 R0 K5 ["state"]
  GETTABLEKS R8 R6 K7 ["expanded"]
  GETTABLEKS R7 R8 K6 ["Preview"]
  JUMPIFNOT R7 [+3]
  GETTABLEKS R8 R2 K8 ["ExpandedOffset"]
  JUMP [+2]
  GETTABLEKS R8 R2 K9 ["CollapsedOffset"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K10 ["new"]
  CALL R9 0 1
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K11 ["createElement"]
  GETUPVAL R11 2
  DUPTABLE R12 K15 [{"Layout", "HorizontalAlignment", "VerticalAlignment"}]
  GETIMPORT R13 K19 [Enum.FillDirection.Vertical]
  SETTABLEKS R13 R12 K12 ["Layout"]
  GETIMPORT R13 K21 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R13 R12 K13 ["HorizontalAlignment"]
  GETIMPORT R13 K23 [Enum.VerticalAlignment.Top]
  SETTABLEKS R13 R12 K14 ["VerticalAlignment"]
  DUPTABLE R13 K26 [{"Content", "Footer"}]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K11 ["createElement"]
  GETUPVAL R15 2
  NEWTABLE R16 8 0
  NAMECALL R17 R9 K27 ["getNextOrder"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K28 ["LayoutOrder"]
  GETIMPORT R17 K30 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 1
  GETTABLEKS R22 R2 K31 ["FooterHeight"]
  MINUS R21 R22
  CALL R17 4 1
  SETTABLEKS R17 R16 K32 ["Size"]
  GETIMPORT R17 K19 [Enum.FillDirection.Vertical]
  SETTABLEKS R17 R16 K12 ["Layout"]
  GETIMPORT R17 K21 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R17 R16 K13 ["HorizontalAlignment"]
  GETIMPORT R17 K23 [Enum.VerticalAlignment.Top]
  SETTABLEKS R17 R16 K14 ["VerticalAlignment"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K33 ["Ref"]
  GETTABLEKS R18 R0 K34 ["ref"]
  SETTABLE R18 R16 R17
  DUPTABLE R17 K37 [{"PreviewContainer", "ListContainer"}]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K11 ["createElement"]
  GETUPVAL R19 3
  DUPTABLE R20 K42 [{"AutomaticSize", "LayoutOrder", "Expanded", "HeaderOverride", "OnExpandedChanged"}]
  GETIMPORT R21 K44 [Enum.AutomaticSize.Y]
  SETTABLEKS R21 R20 K38 ["AutomaticSize"]
  NAMECALL R21 R9 K27 ["getNextOrder"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K28 ["LayoutOrder"]
  SETTABLEKS R7 R20 K39 ["Expanded"]
  LOADK R25 K45 ["AnimationConversion"]
  LOADK R26 K6 ["Preview"]
  NAMECALL R23 R3 K46 ["getText"]
  CALL R23 3 1
  LOADK R24 K6 ["Preview"]
  NAMECALL R21 R0 K47 ["renderHeader"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K40 ["HeaderOverride"]
  DUPCLOSURE R21 K48 [PROTO_11]
  SETTABLEKS R21 R20 K41 ["OnExpandedChanged"]
  DUPTABLE R21 K49 [{"Preview"}]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K11 ["createElement"]
  GETUPVAL R23 4
  CALL R22 1 1
  SETTABLEKS R22 R21 K6 ["Preview"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K35 ["PreviewContainer"]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K11 ["createElement"]
  GETUPVAL R19 3
  DUPTABLE R20 K51 [{"AutomaticSize", "LayoutOrder", "Expanded", "ContentPadding", "HeaderOverride", "OnExpandedChanged"}]
  GETIMPORT R21 K44 [Enum.AutomaticSize.Y]
  SETTABLEKS R21 R20 K38 ["AutomaticSize"]
  NAMECALL R21 R9 K27 ["getNextOrder"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K28 ["LayoutOrder"]
  GETTABLEKS R22 R6 K7 ["expanded"]
  GETTABLEKS R21 R22 K52 ["List"]
  SETTABLEKS R21 R20 K39 ["Expanded"]
  LOADN R21 0
  SETTABLEKS R21 R20 K50 ["ContentPadding"]
  LOADK R25 K45 ["AnimationConversion"]
  LOADK R26 K53 ["Animations"]
  NAMECALL R23 R3 K46 ["getText"]
  CALL R23 3 1
  LOADK R24 K52 ["List"]
  NAMECALL R21 R0 K47 ["renderHeader"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K40 ["HeaderOverride"]
  DUPCLOSURE R21 K54 [PROTO_12]
  SETTABLEKS R21 R20 K41 ["OnExpandedChanged"]
  DUPTABLE R21 K55 [{"List"}]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K11 ["createElement"]
  GETUPVAL R23 5
  DUPTABLE R24 K59 [{"Size", "Items", "Tags", "LayoutOrder", "OnResetPlugin"}]
  GETIMPORT R25 K30 [UDim2.new]
  LOADN R26 1
  LOADN R27 0
  LOADN R28 0
  GETTABLEKS R32 R6 K60 ["paneSize"]
  GETTABLEKS R31 R32 K43 ["Y"]
  GETTABLEKS R32 R2 K61 ["HeaderHeight"]
  SUB R30 R31 R32
  SUB R29 R30 R8
  CALL R25 4 1
  SETTABLEKS R25 R24 K32 ["Size"]
  SETTABLEKS R4 R24 K56 ["Items"]
  SETTABLEKS R5 R24 K57 ["Tags"]
  NAMECALL R25 R9 K27 ["getNextOrder"]
  CALL R25 1 1
  SETTABLEKS R25 R24 K28 ["LayoutOrder"]
  GETTABLEKS R25 R1 K58 ["OnResetPlugin"]
  SETTABLEKS R25 R24 K58 ["OnResetPlugin"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K52 ["List"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K36 ["ListContainer"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K24 ["Content"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K11 ["createElement"]
  GETUPVAL R15 6
  DUPTABLE R16 K62 [{"LayoutOrder", "Size"}]
  NAMECALL R17 R9 K27 ["getNextOrder"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K28 ["LayoutOrder"]
  GETIMPORT R17 K30 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  GETTABLEKS R21 R2 K31 ["FooterHeight"]
  CALL R17 4 1
  SETTABLEKS R17 R16 K32 ["Size"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K25 ["Footer"]
  CALL R10 3 -1
  RETURN R10 -1

PROTO_14:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  NEWTABLE R3 0 0
  DUPTABLE R4 K2 [{"Label"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K4 [{"Text"}]
  GETTABLEKS R9 R0 K5 ["props"]
  GETTABLEKS R8 R9 K6 ["Localization"]
  LOADK R10 K7 ["AnimationConversion"]
  LOADK R11 K8 ["NoAnimations"]
  NAMECALL R8 R8 K9 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K3 ["Text"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K1 ["Label"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_15:
  GETIMPORT R2 K1 [next]
  GETTABLEKS R4 R0 K2 ["props"]
  GETTABLEKS R3 R4 K3 ["animations"]
  CALL R2 1 1
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_16:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Clicked primary action"]
  CALL R0 1 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"alert"}]
  DUPTABLE R3 K3 [{"show"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K2 ["show"]
  SETTABLEKS R3 R2 K0 ["alert"]
  NAMECALL R0 R0 K4 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  NEWTABLE R3 0 0
  DUPTABLE R4 K3 [{"Content", "Alert"}]
  NAMECALL R6 R0 K4 ["hasAnimations"]
  CALL R6 1 1
  JUMPIFNOT R6 [+4]
  NAMECALL R5 R0 K5 ["renderAnimationList"]
  CALL R5 1 1
  JUMP [+3]
  NAMECALL R5 R0 K6 ["renderNoAnimationsScreen"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K1 ["Content"]
  GETTABLEKS R7 R0 K7 ["state"]
  GETTABLEKS R6 R7 K8 ["alert"]
  GETTABLEKS R5 R6 K9 ["show"]
  JUMPIFNOT R5 [+31]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K16 [{"Style", "Title", "Description", "ZIndex", "PrimaryAction", "OnClose"}]
  LOADK R8 K17 ["Success"]
  SETTABLEKS R8 R7 K10 ["Style"]
  LOADK R8 K17 ["Success"]
  SETTABLEKS R8 R7 K11 ["Title"]
  LOADK R8 K18 ["5 R6 IDs were successfully replaced"]
  SETTABLEKS R8 R7 K12 ["Description"]
  LOADN R8 231
  SETTABLEKS R8 R7 K13 ["ZIndex"]
  DUPTABLE R8 K21 [{"Text", "OnClick"}]
  LOADK R9 K22 ["Action"]
  SETTABLEKS R9 R8 K19 ["Text"]
  DUPCLOSURE R9 K23 [PROTO_16]
  SETTABLEKS R9 R8 K20 ["OnClick"]
  SETTABLEKS R8 R7 K14 ["PrimaryAction"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R0
  SETTABLEKS R8 R7 K15 ["OnClose"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K2 ["Alert"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_19:
  DUPTABLE R2 K2 [{"diagnostics", "animations"}]
  GETTABLEKS R4 R0 K3 ["ScriptConversion"]
  GETTABLEKS R3 R4 K0 ["diagnostics"]
  SETTABLEKS R3 R2 K0 ["diagnostics"]
  GETTABLEKS R4 R0 K4 ["AnimationConversion"]
  GETTABLEKS R3 R4 K1 ["animations"]
  SETTABLEKS R3 R2 K1 ["animations"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Dash"]
  CALL R4 1 1
  GETTABLEKS R5 R1 K11 ["UI"]
  GETTABLEKS R6 R5 K12 ["Pane"]
  GETTABLEKS R7 R5 K13 ["TextLabel"]
  GETTABLEKS R8 R5 K14 ["ExpandablePane"]
  GETTABLEKS R9 R5 K15 ["Image"]
  GETTABLEKS R10 R5 K16 ["Alert"]
  GETTABLEKS R11 R1 K17 ["Util"]
  GETTABLEKS R12 R11 K18 ["LayoutOrderIterator"]
  GETTABLEKS R13 R11 K19 ["StyleModifier"]
  GETTABLEKS R14 R1 K20 ["ContextServices"]
  GETTABLEKS R16 R0 K21 ["Src"]
  GETTABLEKS R15 R16 K22 ["Components"]
  GETIMPORT R16 K5 [require]
  GETTABLEKS R17 R15 K23 ["AnimationList"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R18 R15 K24 ["AnimationPreviewComponent"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R19 R15 K25 ["AnimationConversionPaneFooter"]
  CALL R18 1 1
  GETTABLEKS R21 R0 K21 ["Src"]
  GETTABLEKS R20 R21 K17 ["Util"]
  GETTABLEKS R19 R20 K26 ["AnimationConversion"]
  GETIMPORT R21 K5 [require]
  GETTABLEKS R22 R19 K27 ["constants"]
  CALL R21 1 1
  GETTABLEKS R20 R21 K28 ["AssetType"]
  GETIMPORT R21 K5 [require]
  GETTABLEKS R24 R0 K21 ["Src"]
  GETTABLEKS R23 R24 K17 ["Util"]
  GETTABLEKS R22 R23 K29 ["AssetIdUtil"]
  CALL R21 1 1
  GETTABLEKS R22 R2 K30 ["PureComponent"]
  LOADK R24 K31 ["AnimationConversionPane"]
  NAMECALL R22 R22 K32 ["extend"]
  CALL R22 2 1
  DUPCLOSURE R23 K33 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R2
  SETTABLEKS R23 R22 K34 ["init"]
  DUPCLOSURE R23 K35 [PROTO_5]
  SETTABLEKS R23 R22 K36 ["initRef"]
  DUPCLOSURE R23 K37 [PROTO_6]
  SETTABLEKS R23 R22 K38 ["didMount"]
  DUPCLOSURE R23 K39 [PROTO_7]
  SETTABLEKS R23 R22 K40 ["willUnmount"]
  DUPCLOSURE R23 K41 [PROTO_8]
  SETTABLEKS R23 R22 K42 ["didUpdate"]
  DUPCLOSURE R23 K43 [PROTO_9]
  CAPTURE VAL R21
  CAPTURE VAL R20
  SETTABLEKS R23 R22 K44 ["buildTags"]
  DUPCLOSURE R23 K45 [PROTO_10]
  CAPTURE VAL R12
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R13
  CAPTURE VAL R7
  SETTABLEKS R23 R22 K46 ["renderHeader"]
  DUPCLOSURE R23 K47 [PROTO_13]
  CAPTURE VAL R12
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R17
  CAPTURE VAL R16
  CAPTURE VAL R18
  SETTABLEKS R23 R22 K48 ["renderAnimationList"]
  DUPCLOSURE R23 K49 [PROTO_14]
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R7
  SETTABLEKS R23 R22 K50 ["renderNoAnimationsScreen"]
  DUPCLOSURE R23 K51 [PROTO_15]
  SETTABLEKS R23 R22 K52 ["hasAnimations"]
  DUPCLOSURE R23 K53 [PROTO_18]
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R10
  SETTABLEKS R23 R22 K54 ["render"]
  DUPCLOSURE R23 K55 [PROTO_19]
  GETTABLEKS R24 R14 K56 ["withContext"]
  DUPTABLE R25 K59 [{"Stylizer", "Localization"}]
  GETTABLEKS R26 R14 K57 ["Stylizer"]
  SETTABLEKS R26 R25 K57 ["Stylizer"]
  GETTABLEKS R26 R14 K58 ["Localization"]
  SETTABLEKS R26 R25 K58 ["Localization"]
  CALL R24 1 1
  MOVE R25 R22
  CALL R24 1 1
  MOVE R22 R24
  GETTABLEKS R24 R3 K60 ["connect"]
  MOVE R25 R23
  CALL R24 1 1
  MOVE R25 R22
  CALL R24 1 -1
  RETURN R24 -1
