PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["reportSaveToRobloxPressed"]
  CALL R0 0 0
  GETUPVAL R0 1
  LOADB R2 0
  LOADB R3 0
  GETIMPORT R4 K4 [Enum.StudioCloseMode.None]
  NAMECALL R0 R0 K5 ["ShowSaveOrPublishPlaceToRoblox"]
  CALL R0 4 0
  GETUPVAL R0 2
  CALL R0 0 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["CloseWidget"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R1 K3 ["Stylizer"]
  LOADK R7 K4 ["Buttons"]
  LOADK R8 K5 ["SaveToRoblox"]
  NAMECALL R5 R3 K6 ["getText"]
  CALL R5 3 1
  GETUPVAL R6 0
  MOVE R8 R5
  GETTABLEKS R11 R4 K7 ["saveToRobloxView"]
  GETTABLEKS R10 R11 K8 ["Text"]
  GETTABLEKS R9 R10 K9 ["TextSize"]
  GETTABLEKS R12 R4 K7 ["saveToRobloxView"]
  GETTABLEKS R11 R12 K8 ["Text"]
  GETTABLEKS R10 R11 K10 ["Font"]
  GETIMPORT R11 K13 [Vector2.new]
  LOADK R12 K14 [∞]
  LOADK R13 K14 [∞]
  CALL R11 2 -1
  NAMECALL R6 R6 K15 ["GetTextSize"]
  CALL R6 -1 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K16 ["createElement"]
  LOADK R8 K17 ["Frame"]
  DUPTABLE R9 K20 [{"Size", "BackgroundColor3"}]
  GETIMPORT R10 K22 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 1
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K18 ["Size"]
  GETTABLEKS R10 R4 K23 ["backgroundColor"]
  SETTABLEKS R10 R9 K19 ["BackgroundColor3"]
  DUPTABLE R10 K26 [{"SaveText", "SaveButton"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K16 ["createElement"]
  LOADK R12 K27 ["TextLabel"]
  DUPTABLE R13 K31 [{"Text", "TextColor3", "TextSize", "Font", "Position", "AnchorPoint"}]
  LOADK R16 K32 ["Description"]
  LOADK R17 K5 ["SaveToRoblox"]
  NAMECALL R14 R3 K6 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K8 ["Text"]
  GETTABLEKS R16 R4 K7 ["saveToRobloxView"]
  GETTABLEKS R15 R16 K8 ["Text"]
  GETTABLEKS R14 R15 K28 ["TextColor3"]
  SETTABLEKS R14 R13 K28 ["TextColor3"]
  GETTABLEKS R16 R4 K7 ["saveToRobloxView"]
  GETTABLEKS R15 R16 K8 ["Text"]
  GETTABLEKS R14 R15 K9 ["TextSize"]
  SETTABLEKS R14 R13 K9 ["TextSize"]
  GETTABLEKS R16 R4 K7 ["saveToRobloxView"]
  GETTABLEKS R15 R16 K8 ["Text"]
  GETTABLEKS R14 R15 K10 ["Font"]
  SETTABLEKS R14 R13 K10 ["Font"]
  GETIMPORT R14 K22 [UDim2.new]
  LOADK R15 K33 [0.5]
  LOADN R16 0
  LOADN R17 0
  GETTABLEKS R20 R4 K7 ["saveToRobloxView"]
  GETTABLEKS R19 R20 K8 ["Text"]
  GETTABLEKS R18 R19 K34 ["YOffset"]
  CALL R14 4 1
  SETTABLEKS R14 R13 K29 ["Position"]
  GETIMPORT R14 K13 [Vector2.new]
  LOADK R15 K33 [0.5]
  LOADK R16 K33 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K30 ["AnchorPoint"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K24 ["SaveText"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K16 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K37 [{"Style", "Text", "Size", "Position", "AnchorPoint", "OnClick"}]
  LOADK R14 K38 ["Active"]
  SETTABLEKS R14 R13 K35 ["Style"]
  SETTABLEKS R5 R13 K8 ["Text"]
  GETIMPORT R14 K22 [UDim2.new]
  LOADN R15 0
  GETTABLEKS R17 R6 K39 ["X"]
  GETTABLEKS R20 R4 K7 ["saveToRobloxView"]
  GETTABLEKS R19 R20 K40 ["publishButton"]
  GETTABLEKS R18 R19 K41 ["paddingX"]
  ADD R16 R17 R18
  LOADN R17 0
  GETTABLEKS R19 R6 K42 ["Y"]
  GETTABLEKS R22 R4 K7 ["saveToRobloxView"]
  GETTABLEKS R21 R22 K40 ["publishButton"]
  GETTABLEKS R20 R21 K43 ["paddingY"]
  ADD R18 R19 R20
  CALL R14 4 1
  SETTABLEKS R14 R13 K18 ["Size"]
  GETIMPORT R14 K22 [UDim2.new]
  LOADK R15 K33 [0.5]
  LOADN R16 0
  LOADN R17 0
  GETTABLEKS R20 R4 K7 ["saveToRobloxView"]
  GETTABLEKS R19 R20 K40 ["publishButton"]
  GETTABLEKS R18 R19 K44 ["offset"]
  CALL R14 4 1
  SETTABLEKS R14 R13 K29 ["Position"]
  GETIMPORT R14 K13 [Vector2.new]
  LOADK R15 K33 [0.5]
  LOADK R16 K33 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K30 ["AnchorPoint"]
  NEWCLOSURE R14 P0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R2
  SETTABLEKS R14 R13 K36 ["OnClick"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K25 ["SaveButton"]
  CALL R7 3 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["TextService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["StudioPublishService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R5 K6 [script]
  GETTABLEKS R4 R5 K7 ["Parent"]
  GETTABLEKS R3 R4 K7 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Parent"]
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R2 K10 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R2 K10 ["Packages"]
  GETTABLEKS R5 R6 K12 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R6 R4 K13 ["UI"]
  GETTABLEKS R5 R6 K14 ["Button"]
  GETTABLEKS R6 R4 K15 ["ContextServices"]
  GETTABLEKS R7 R6 K16 ["withContext"]
  GETTABLEKS R9 R4 K17 ["Style"]
  GETTABLEKS R8 R9 K18 ["Stylizer"]
  GETTABLEKS R9 R6 K19 ["Localization"]
  GETIMPORT R10 K9 [require]
  GETTABLEKS R13 R2 K20 ["Src"]
  GETTABLEKS R12 R13 K21 ["Util"]
  GETTABLEKS R11 R12 K22 ["Analytics"]
  CALL R10 1 1
  GETTABLEKS R11 R3 K23 ["PureComponent"]
  LOADK R13 K24 ["SaveToRobloxView"]
  NAMECALL R11 R11 K25 ["extend"]
  CALL R11 2 1
  DUPCLOSURE R12 K26 [PROTO_1]
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R1
  SETTABLEKS R12 R11 K27 ["render"]
  MOVE R12 R7
  DUPTABLE R13 K28 [{"Stylizer", "Localization"}]
  SETTABLEKS R8 R13 K18 ["Stylizer"]
  SETTABLEKS R9 R13 K19 ["Localization"]
  CALL R12 1 1
  MOVE R13 R11
  CALL R12 1 1
  MOVE R11 R12
  RETURN R11 1
