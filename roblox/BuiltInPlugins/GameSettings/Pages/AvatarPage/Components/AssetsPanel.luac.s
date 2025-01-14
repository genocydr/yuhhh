PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["frameRef"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["frameRef"]
  GETTABLEKS R1 R2 K1 ["current"]
  GETIMPORT R2 K4 [UDim2.new]
  LOADN R3 1
  LOADN R4 0
  LOADN R5 0
  GETTABLEKS R7 R0 K5 ["AbsoluteContentSize"]
  GETTABLEKS R6 R7 K6 ["y"]
  CALL R2 4 1
  SETTABLEKS R2 R1 K7 ["Size"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["LayoutOrder"]
  RETURN R0 1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  NEWTABLE R2 1 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["createElement"]
  LOADK R4 K2 ["UIListLayout"]
  NEWTABLE R5 8 0
  GETIMPORT R6 K6 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R6 R5 K4 ["SortOrder"]
  GETIMPORT R6 K9 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R6 R5 K7 ["HorizontalAlignment"]
  GETIMPORT R6 K12 [Enum.FillDirection.Vertical]
  SETTABLEKS R6 R5 K10 ["FillDirection"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K13 ["VirticalPadding"]
  SETTABLEKS R6 R5 K14 ["Padding"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K15 ["Change"]
  GETTABLEKS R6 R7 K16 ["AbsoluteContentSize"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R0
  SETTABLE R7 R5 R6
  CALL R3 2 1
  SETTABLEKS R3 R2 K17 ["UIListLayoutVertical"]
  GETTABLEKS R3 R0 K18 ["props"]
  GETTABLEKS R4 R3 K19 ["Localization"]
  GETUPVAL R5 3
  MOVE R6 R0
  MOVE R7 R2
  MOVE R8 R1
  MOVE R9 R4
  CALL R5 4 0
  GETUPVAL R5 4
  MOVE R6 R0
  MOVE R7 R2
  MOVE R8 R1
  MOVE R9 R4
  CALL R5 4 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K1 ["createElement"]
  LOADK R6 K20 ["Frame"]
  NEWTABLE R7 8 0
  GETIMPORT R8 K22 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 1
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K23 ["Size"]
  LOADN R8 0
  SETTABLEKS R8 R7 K24 ["BorderSizePixel"]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K25 ["getBackgroundColor"]
  GETTABLEKS R9 R0 K18 ["props"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K26 ["BackgroundColor3"]
  GETTABLEKS R9 R0 K18 ["props"]
  GETTABLEKS R8 R9 K5 ["LayoutOrder"]
  SETTABLEKS R8 R7 K5 ["LayoutOrder"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K27 ["Ref"]
  GETTABLEKS R9 R0 K28 ["frameRef"]
  SETTABLE R9 R7 R8
  MOVE R8 R2
  CALL R5 3 -1
  RETURN R5 -1

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["AssetOverrideErrors"]
  JUMPIFNOT R1 [+8]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["AssetOverrideErrors"]
  GETUPVAL R2 1
  GETTABLE R0 R1 R2
  JUMPIF R0 [+1]
  LOADNIL R0
  MOVE R1 R0
  JUMPIFNOT R1 [+8]
  GETUPVAL R1 2
  LOADK R3 K2 ["General"]
  LOADK R5 K3 ["Error"]
  MOVE R6 R0
  CONCAT R4 R5 R6
  NAMECALL R1 R1 K4 ["getText"]
  CALL R1 3 1
  RETURN R1 1

PROTO_5:
  GETIMPORT R1 K2 [string.gsub]
  MOVE R2 R0
  LOADK R3 K3 [" "]
  LOADK R4 K4 [""]
  CALL R1 3 2
  FASTCALL1 STRING_LEN R1 [+3]
  MOVE R5 R1
  GETIMPORT R4 K6 [string.len]
  CALL R4 1 1
  LOADN R5 0
  JUMPIFNOTLT R5 R4 [+7]
  FASTCALL1 TONUMBER R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K8 [tonumber]
  CALL R3 1 1
  JUMPIF R3 [+1]
  LOADN R3 0
  GETUPVAL R4 0
  JUMPIFEQ R3 R4 [+28]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K9 ["makeCopy"]
  GETUPVAL R5 2
  CALL R4 1 1
  JUMPIFNOTEQKN R3 K10 [0] [+2]
  LOADB R5 0 +1
  LOADB R5 1
  GETUPVAL R8 3
  MOVE R9 R3
  NOT R10 R5
  NAMECALL R6 R4 K11 ["setAsset"]
  CALL R6 4 0
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K12 ["props"]
  GETTABLEKS R6 R7 K13 ["clobberTemplate"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K12 ["props"]
  GETTABLEKS R7 R8 K14 ["template"]
  MOVE R8 R4
  CALL R6 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["makeCopy"]
  GETUPVAL R2 1
  CALL R1 1 1
  GETUPVAL R4 2
  LOADNIL R5
  NOT R6 R0
  NAMECALL R2 R1 K1 ["setAsset"]
  CALL R2 4 0
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K2 ["props"]
  GETTABLEKS R2 R3 K3 ["clobberTemplate"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K2 ["props"]
  GETTABLEKS R3 R4 K4 ["template"]
  MOVE R4 R1
  CALL R2 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["getStateModelTemplate"]
  GETTABLEKS R5 R0 K1 ["props"]
  CALL R4 1 1
  MOVE R7 R2
  NAMECALL R5 R4 K2 ["getAsset"]
  CALL R5 2 2
  NAMECALL R7 R3 K3 ["getNextOrder"]
  CALL R7 1 1
  GETTABLEKS R8 R0 K1 ["props"]
  GETTABLEKS R9 R8 K4 ["Localization"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K5 ["createElement"]
  GETUPVAL R11 2
  DUPTABLE R12 K15 [{"InputBoxText", "Title", "LayoutOrder", "PlayerChoice", "IsEnabled", "ErrorMessage", "Mouse", "SetValue", "SetPlayerChoiceValue"}]
  FASTCALL1 TOSTRING R5 [+3]
  MOVE R14 R5
  GETIMPORT R13 K17 [tostring]
  CALL R13 1 1
  SETTABLEKS R13 R12 K6 ["InputBoxText"]
  SETTABLEKS R1 R12 K7 ["Title"]
  SETTABLEKS R7 R12 K8 ["LayoutOrder"]
  SETTABLEKS R6 R12 K9 ["PlayerChoice"]
  GETTABLEKS R14 R0 K1 ["props"]
  GETTABLEKS R13 R14 K10 ["IsEnabled"]
  SETTABLEKS R13 R12 K10 ["IsEnabled"]
  GETTABLEKS R16 R0 K1 ["props"]
  GETTABLEKS R15 R16 K18 ["AssetOverrideErrors"]
  JUMPIFNOT R15 [+6]
  GETTABLEKS R16 R0 K1 ["props"]
  GETTABLEKS R15 R16 K18 ["AssetOverrideErrors"]
  GETTABLE R14 R15 R2
  JUMPIF R14 [+1]
  LOADNIL R14
  MOVE R13 R14
  JUMPIFNOT R13 [+8]
  LOADK R17 K19 ["General"]
  LOADK R19 K20 ["Error"]
  MOVE R20 R14
  CONCAT R18 R19 R20
  NAMECALL R15 R9 K21 ["getText"]
  CALL R15 3 1
  MOVE R13 R15
  SETTABLEKS R13 R12 K11 ["ErrorMessage"]
  GETTABLEKS R14 R0 K1 ["props"]
  GETTABLEKS R13 R14 K12 ["Mouse"]
  SETTABLEKS R13 R12 K12 ["Mouse"]
  NEWCLOSURE R13 P0
  CAPTURE VAL R5
  CAPTURE UPVAL U3
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R0
  SETTABLEKS R13 R12 K13 ["SetValue"]
  NEWCLOSURE R13 P1
  CAPTURE UPVAL U3
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R0
  SETTABLEKS R13 R12 K14 ["SetPlayerChoiceValue"]
  CALL R10 2 -1
  RETURN R10 -1

PROTO_8:
  MOVE R6 R3
  LOADK R7 K0 ["Separator"]
  CONCAT R5 R6 R7
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 1
  DUPTABLE R8 K4 [{"ThemeData", "LayoutOrder"}]
  GETTABLEKS R10 R0 K5 ["props"]
  GETTABLEKS R9 R10 K2 ["ThemeData"]
  SETTABLEKS R9 R8 K2 ["ThemeData"]
  NAMECALL R9 R2 K6 ["getNextOrder"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K3 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLE R6 R1 R5
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K10 [{"ThemeData", "LayoutOrder", "IsEnabled", "Text", "IsPlayerChoiceTitleStyle"}]
  GETTABLEKS R9 R0 K5 ["props"]
  GETTABLEKS R8 R9 K2 ["ThemeData"]
  SETTABLEKS R8 R7 K2 ["ThemeData"]
  NAMECALL R8 R2 K6 ["getNextOrder"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K3 ["LayoutOrder"]
  GETTABLEKS R9 R0 K5 ["props"]
  GETTABLEKS R8 R9 K7 ["IsEnabled"]
  SETTABLEKS R8 R7 K7 ["IsEnabled"]
  SETTABLEKS R3 R7 K8 ["Text"]
  LOADB R8 1
  SETTABLEKS R8 R7 K9 ["IsPlayerChoiceTitleStyle"]
  CALL R5 2 1
  SETTABLE R5 R1 R3
  GETIMPORT R5 K12 [pairs]
  MOVE R6 R4
  CALL R5 1 3
  FORGPREP_NEXT R5
  GETTABLEN R10 R9 1
  GETTABLEN R11 R9 2
  GETTABLEN R12 R9 1
  GETUPVAL R13 3
  MOVE R14 R0
  MOVE R15 R10
  MOVE R16 R11
  MOVE R17 R2
  CALL R13 4 1
  SETTABLE R13 R1 R12
  FORGLOOP R5 2 [-11]
  RETURN R0 0

PROTO_9:
  LOADK R6 K0 ["General"]
  LOADK R7 K1 ["TitleBodyParts"]
  NAMECALL R4 R3 K2 ["getText"]
  CALL R4 3 1
  NEWTABLE R5 0 7
  NEWTABLE R6 0 2
  LOADK R9 K0 ["General"]
  LOADK R10 K3 ["PartFace"]
  NAMECALL R7 R3 K2 ["getText"]
  CALL R7 3 1
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K4 ["AssetTypes"]
  GETTABLEKS R8 R9 K5 ["Face"]
  SETLIST R6 R7 2 [1]
  NEWTABLE R7 0 2
  LOADK R10 K0 ["General"]
  LOADK R11 K6 ["PartHead"]
  NAMECALL R8 R3 K2 ["getText"]
  CALL R8 3 1
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K4 ["AssetTypes"]
  GETTABLEKS R9 R10 K7 ["Head"]
  SETLIST R7 R8 2 [1]
  NEWTABLE R8 0 2
  LOADK R11 K0 ["General"]
  LOADK R12 K8 ["PartTorso"]
  NAMECALL R9 R3 K2 ["getText"]
  CALL R9 3 1
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K4 ["AssetTypes"]
  GETTABLEKS R10 R11 K9 ["Torso"]
  SETLIST R8 R9 2 [1]
  NEWTABLE R9 0 2
  LOADK R12 K0 ["General"]
  LOADK R13 K10 ["PartLeftArm"]
  NAMECALL R10 R3 K2 ["getText"]
  CALL R10 3 1
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K4 ["AssetTypes"]
  GETTABLEKS R11 R12 K11 ["LeftArm"]
  SETLIST R9 R10 2 [1]
  NEWTABLE R10 0 2
  LOADK R13 K0 ["General"]
  LOADK R14 K12 ["PartRightArm"]
  NAMECALL R11 R3 K2 ["getText"]
  CALL R11 3 1
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K4 ["AssetTypes"]
  GETTABLEKS R12 R13 K13 ["RightArm"]
  SETLIST R10 R11 2 [1]
  NEWTABLE R11 0 2
  LOADK R14 K0 ["General"]
  LOADK R15 K14 ["PartLeftLeg"]
  NAMECALL R12 R3 K2 ["getText"]
  CALL R12 3 1
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K4 ["AssetTypes"]
  GETTABLEKS R13 R14 K15 ["LeftLeg"]
  SETLIST R11 R12 2 [1]
  NEWTABLE R12 0 2
  LOADK R15 K0 ["General"]
  LOADK R16 K16 ["PartRightLeg"]
  NAMECALL R13 R3 K2 ["getText"]
  CALL R13 3 1
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K4 ["AssetTypes"]
  GETTABLEKS R14 R15 K17 ["RightLeg"]
  SETLIST R12 R13 2 [1]
  SETLIST R5 R6 7 [1]
  GETUPVAL R6 1
  MOVE R7 R0
  MOVE R8 R1
  MOVE R9 R2
  MOVE R10 R4
  MOVE R11 R5
  CALL R6 5 0
  RETURN R0 0

PROTO_10:
  LOADK R6 K0 ["General"]
  LOADK R7 K1 ["TitleClothing"]
  NAMECALL R4 R3 K2 ["getText"]
  CALL R4 3 1
  NEWTABLE R5 0 3
  NEWTABLE R6 0 2
  LOADK R9 K0 ["General"]
  LOADK R10 K3 ["ClothingTShirt"]
  NAMECALL R7 R3 K2 ["getText"]
  CALL R7 3 1
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K4 ["AssetTypes"]
  GETTABLEKS R8 R9 K5 ["ShirtGraphic"]
  SETLIST R6 R7 2 [1]
  NEWTABLE R7 0 2
  LOADK R10 K0 ["General"]
  LOADK R11 K6 ["ClothingShirt"]
  NAMECALL R8 R3 K2 ["getText"]
  CALL R8 3 1
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K4 ["AssetTypes"]
  GETTABLEKS R9 R10 K7 ["Shirt"]
  SETLIST R7 R8 2 [1]
  NEWTABLE R8 0 2
  LOADK R11 K0 ["General"]
  LOADK R12 K8 ["ClothingPants"]
  NAMECALL R9 R3 K2 ["getText"]
  CALL R9 3 1
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K4 ["AssetTypes"]
  GETTABLEKS R10 R11 K9 ["Pants"]
  SETLIST R8 R9 2 [1]
  SETLIST R5 R6 3 [1]
  GETUPVAL R6 1
  MOVE R7 R0
  MOVE R8 R1
  MOVE R9 R2
  MOVE R10 R4
  MOVE R11 R5
  CALL R6 5 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R1 K5 ["Packages"]
  GETTABLEKS R3 R4 K6 ["Roact"]
  CALL R2 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R1 K5 ["Packages"]
  GETTABLEKS R5 R6 K7 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R1 K5 ["Packages"]
  GETTABLEKS R6 R7 K7 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K10 ["Util"]
  GETTABLEKS R7 R6 K11 ["LayoutOrderIterator"]
  GETIMPORT R8 K4 [require]
  GETTABLEKS R10 R0 K10 ["Util"]
  GETTABLEKS R9 R10 K12 ["ConstantAvatar"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R11 R0 K10 ["Util"]
  GETTABLEKS R10 R11 K13 ["ConstantLayout"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R12 R0 K10 ["Util"]
  GETTABLEKS R11 R12 K14 ["StateModelTemplate"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R13 R0 K10 ["Util"]
  GETTABLEKS R12 R13 K15 ["StateInterfaceTemplates"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R14 R0 K10 ["Util"]
  GETTABLEKS R13 R14 K16 ["StateInterfaceTheme"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R15 R0 K17 ["Components"]
  GETTABLEKS R14 R15 K18 ["AssetInput"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R16 R0 K17 ["Components"]
  GETTABLEKS R15 R16 K19 ["DividerRow"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R17 R0 K17 ["Components"]
  GETTABLEKS R16 R17 K20 ["TitleBar"]
  CALL R15 1 1
  GETTABLEKS R16 R2 K21 ["Component"]
  LOADK R18 K22 ["ComponentAssetsPanel"]
  NAMECALL R16 R16 K23 ["extend"]
  CALL R16 2 1
  LOADNIL R17
  LOADNIL R18
  DUPCLOSURE R19 K24 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R19 R16 K25 ["init"]
  NEWCLOSURE R19 P1
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE REF R17
  CAPTURE REF R18
  CAPTURE VAL R12
  SETTABLEKS R19 R16 K26 ["render"]
  MOVE R19 R4
  DUPTABLE R20 K29 [{"Localization", "Mouse"}]
  GETTABLEKS R21 R3 K27 ["Localization"]
  SETTABLEKS R21 R20 K27 ["Localization"]
  GETTABLEKS R21 R3 K28 ["Mouse"]
  SETTABLEKS R21 R20 K28 ["Mouse"]
  CALL R19 1 1
  MOVE R20 R16
  CALL R19 1 1
  MOVE R16 R19
  DUPCLOSURE R19 K30 [PROTO_7]
  CAPTURE VAL R11
  CAPTURE VAL R2
  CAPTURE VAL R13
  CAPTURE VAL R10
  DUPCLOSURE R20 K31 [PROTO_8]
  CAPTURE VAL R2
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R19
  DUPCLOSURE R17 K32 [PROTO_9]
  CAPTURE VAL R8
  CAPTURE VAL R20
  DUPCLOSURE R18 K33 [PROTO_10]
  CAPTURE VAL R8
  CAPTURE VAL R20
  CLOSEUPVALS R17
  RETURN R16 1
