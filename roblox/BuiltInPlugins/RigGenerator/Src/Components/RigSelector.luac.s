PROTO_0:
  GETIMPORT R1 K1 [workspace]
  GETTABLEKS R0 R1 K2 ["CurrentCamera"]
  GETTABLEKS R2 R0 K4 ["ViewportSize"]
  DIVK R1 R2 K3 [2]
  GETTABLEKS R4 R1 K5 ["X"]
  GETTABLEKS R5 R1 K6 ["Y"]
  LOADN R6 0
  NAMECALL R2 R0 K7 ["ViewportPointToRay"]
  CALL R2 4 1
  GETIMPORT R3 K1 [workspace]
  GETTABLEKS R5 R2 K8 ["Origin"]
  GETTABLEKS R7 R2 K10 ["Direction"]
  MULK R6 R7 K9 [25]
  NAMECALL R3 R3 K11 ["Raycast"]
  CALL R3 3 1
  JUMPIF R3 [+7]
  GETTABLEKS R5 R2 K8 ["Origin"]
  GETTABLEKS R7 R2 K10 ["Direction"]
  MULK R6 R7 K9 [25]
  ADD R4 R5 R6
  RETURN R4 1
  GETTABLEKS R4 R3 K12 ["Position"]
  RETURN R4 1

PROTO_1:
  NAMECALL R1 R0 K0 ["GetDescendants"]
  CALL R1 1 3
  FORGPREP R1
  LOADK R8 K1 ["BasePart"]
  NAMECALL R6 R5 K2 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+3]
  LOADB R6 0
  SETTABLEKS R6 R5 K3 ["Locked"]
  FORGLOOP R1 2 [-9]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["Analytics"]
  GETIMPORT R3 K3 [require]
  MOVE R4 R1
  CALL R3 1 1
  MOVE R4 R3
  GETTABLEKS R6 R0 K4 ["state"]
  GETTABLEKS R5 R6 K5 ["bodyShape"]
  CALL R4 1 1
  GETUPVAL R5 0
  MOVE R7 R4
  GETTABLEKS R9 R0 K4 ["state"]
  GETTABLEKS R8 R9 K6 ["rigType"]
  NAMECALL R5 R5 K7 ["CreateHumanoidModelFromDescription"]
  CALL R5 3 1
  GETUPVAL R6 1
  MOVE R7 R5
  CALL R6 1 0
  LOADK R6 K8 ["Rig"]
  SETTABLEKS R6 R5 K9 ["Name"]
  LOADK R8 K10 ["Humanoid"]
  NAMECALL R6 R5 K11 ["FindFirstChildWhichIsA"]
  CALL R6 2 1
  LOADK R9 K12 ["HumanoidRootPart"]
  NAMECALL R7 R5 K13 ["FindFirstChild"]
  CALL R7 2 1
  FASTCALL2K ASSERT R6 K14 [+5]
  MOVE R9 R6
  LOADK R10 K14 ["Generated rig did not have Humanoid"]
  GETIMPORT R8 K16 [assert]
  CALL R8 2 0
  FASTCALL2K ASSERT R7 K17 [+5]
  MOVE R9 R7
  LOADK R10 K17 ["Generated rig did not have HumanoidRootPart"]
  GETIMPORT R8 K16 [assert]
  CALL R8 2 0
  GETTABLEKS R9 R5 K18 ["PrimaryPart"]
  FASTCALL2K ASSERT R9 K19 [+4]
  LOADK R10 K19 ["Generated rig does not have PrimaryPart"]
  GETIMPORT R8 K16 [assert]
  CALL R8 2 0
  GETIMPORT R10 K21 [workspace]
  GETTABLEKS R9 R10 K22 ["CurrentCamera"]
  GETTABLEKS R11 R9 K24 ["ViewportSize"]
  DIVK R10 R11 K23 [2]
  GETTABLEKS R13 R10 K25 ["X"]
  GETTABLEKS R14 R10 K26 ["Y"]
  LOADN R15 0
  NAMECALL R11 R9 K27 ["ViewportPointToRay"]
  CALL R11 4 1
  GETIMPORT R12 K21 [workspace]
  GETTABLEKS R14 R11 K28 ["Origin"]
  GETTABLEKS R16 R11 K30 ["Direction"]
  MULK R15 R16 K29 [25]
  NAMECALL R12 R12 K31 ["Raycast"]
  CALL R12 3 1
  JUMPIF R12 [+7]
  GETTABLEKS R13 R11 K28 ["Origin"]
  GETTABLEKS R15 R11 K30 ["Direction"]
  MULK R14 R15 K29 [25]
  ADD R8 R13 R14
  JUMP [+2]
  GETTABLEKS R8 R12 K32 ["Position"]
  GETTABLEKS R9 R6 K33 ["HipHeight"]
  GETTABLEKS R11 R0 K4 ["state"]
  GETTABLEKS R10 R11 K6 ["rigType"]
  GETIMPORT R11 K37 [Enum.HumanoidRigType.R6]
  JUMPIFNOTEQ R10 R11 [+25]
  GETTABLEKS R10 R5 K18 ["PrimaryPart"]
  GETIMPORT R11 K40 [CFrame.new]
  LOADN R12 0
  GETTABLEKS R19 R5 K18 ["PrimaryPart"]
  GETTABLEKS R18 R19 K41 ["Size"]
  GETTABLEKS R17 R18 K26 ["Y"]
  MINUS R16 R17
  DIVK R15 R16 K23 [2]
  GETTABLEKS R17 R7 K41 ["Size"]
  GETTABLEKS R16 R17 K26 ["Y"]
  SUB R14 R15 R16
  SUBK R13 R14 K23 [2]
  LOADN R14 0
  CALL R11 3 1
  SETTABLEKS R11 R10 K42 ["PivotOffset"]
  JUMP [+18]
  GETTABLEKS R10 R5 K18 ["PrimaryPart"]
  GETIMPORT R11 K40 [CFrame.new]
  LOADN R12 0
  GETTABLEKS R18 R5 K18 ["PrimaryPart"]
  GETTABLEKS R17 R18 K41 ["Size"]
  GETTABLEKS R16 R17 K26 ["Y"]
  MINUS R15 R16
  DIVK R14 R15 K23 [2]
  SUB R13 R14 R9
  LOADN R14 0
  CALL R11 3 1
  SETTABLEKS R11 R10 K42 ["PivotOffset"]
  GETIMPORT R12 K40 [CFrame.new]
  MOVE R13 R8
  CALL R12 1 -1
  NAMECALL R10 R5 K43 ["PivotTo"]
  CALL R10 -1 0
  GETIMPORT R10 K21 [workspace]
  SETTABLEKS R10 R5 K44 ["Parent"]
  GETUPVAL R10 2
  NEWTABLE R12 0 1
  MOVE R13 R5
  SETLIST R12 R13 1 [1]
  NAMECALL R10 R10 K45 ["Set"]
  CALL R10 2 0
  LOADK R12 K46 ["rigInsert"]
  GETTABLEKS R13 R1 K9 ["Name"]
  GETTABLEKS R15 R0 K4 ["state"]
  GETTABLEKS R14 R15 K6 ["rigType"]
  GETTABLEKS R16 R0 K4 ["state"]
  GETTABLEKS R15 R16 K5 ["bodyShape"]
  NAMECALL R10 R2 K47 ["report"]
  CALL R10 5 0
  RETURN R0 0

PROTO_3:
  DUPTABLE R4 K2 [{"rigType", "bodyShape"}]
  GETIMPORT R5 K6 [Enum.HumanoidRigType.R15]
  SETTABLEKS R5 R4 K0 ["rigType"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K7 ["Masculine"]
  SETTABLEKS R5 R4 K1 ["bodyShape"]
  NAMECALL R2 R0 K8 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"rigType"}]
  SETTABLEKS R0 R3 K0 ["rigType"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"bodyShape"}]
  SETTABLEKS R0 R3 K0 ["bodyShape"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["insertRig"]
  CALL R1 2 0
  GETUPVAL R1 1
  CALL R1 0 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["MenuCompleted"]
  GETTABLEKS R4 R0 K3 ["state"]
  GETTABLEKS R5 R4 K4 ["rigType"]
  GETTABLEKS R6 R4 K5 ["bodyShape"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["createElement"]
  LOADK R8 K7 ["Frame"]
  DUPTABLE R9 K13 [{"Position", "AnchorPoint", "Size", "AutomaticSize", "BackgroundTransparency"}]
  GETIMPORT R10 K16 [UDim2.new]
  LOADK R11 K17 [0.5]
  LOADN R12 0
  LOADK R13 K17 [0.5]
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K8 ["Position"]
  GETIMPORT R10 K19 [Vector2.new]
  LOADK R11 K17 [0.5]
  LOADK R12 K17 [0.5]
  CALL R10 2 1
  SETTABLEKS R10 R9 K9 ["AnchorPoint"]
  GETIMPORT R10 K16 [UDim2.new]
  LOADN R11 0
  LOADN R12 200
  LOADN R13 0
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K10 ["Size"]
  GETIMPORT R10 K22 [Enum.AutomaticSize.Y]
  SETTABLEKS R10 R9 K11 ["AutomaticSize"]
  LOADN R10 1
  SETTABLEKS R10 R9 K12 ["BackgroundTransparency"]
  DUPTABLE R10 K24 [{"Pane"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K6 ["createElement"]
  GETUPVAL R12 1
  DUPTABLE R13 K29 [{"Style", "Layout", "Padding", "Spacing"}]
  LOADK R14 K30 ["BorderBox"]
  SETTABLEKS R14 R13 K25 ["Style"]
  GETIMPORT R14 K33 [Enum.FillDirection.Vertical]
  SETTABLEKS R14 R13 K26 ["Layout"]
  LOADN R14 10
  SETTABLEKS R14 R13 K27 ["Padding"]
  LOADN R14 10
  SETTABLEKS R14 R13 K28 ["Spacing"]
  DUPTABLE R14 K38 [{"Text", "RigType", "BodyShape", "Rigs"}]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K6 ["createElement"]
  GETUPVAL R16 2
  DUPTABLE R17 K40 [{"AutomaticSize", "LayoutOrder", "Style", "Text"}]
  GETIMPORT R18 K42 [Enum.AutomaticSize.XY]
  SETTABLEKS R18 R17 K11 ["AutomaticSize"]
  LOADN R18 0
  SETTABLEKS R18 R17 K39 ["LayoutOrder"]
  LOADK R18 K43 ["Title"]
  SETTABLEKS R18 R17 K25 ["Style"]
  LOADK R20 K44 ["Plugin"]
  LOADK R21 K34 ["Text"]
  NAMECALL R18 R2 K45 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K34 ["Text"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K34 ["Text"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K6 ["createElement"]
  GETUPVAL R16 3
  DUPTABLE R17 K46 [{"Title", "FillDirection", "LayoutOrder"}]
  LOADK R20 K47 ["Menu"]
  LOADK R21 K35 ["RigType"]
  NAMECALL R18 R2 K45 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K43 ["Title"]
  GETIMPORT R18 K33 [Enum.FillDirection.Vertical]
  SETTABLEKS R18 R17 K31 ["FillDirection"]
  LOADN R18 1
  SETTABLEKS R18 R17 K39 ["LayoutOrder"]
  DUPTABLE R18 K49 [{"Types"}]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K6 ["createElement"]
  GETUPVAL R20 4
  DUPTABLE R21 K53 [{"Buttons", "CurrentSelectedKey", "FillDirection", "OnClick"}]
  NEWTABLE R22 0 2
  DUPTABLE R23 K55 [{"Key", "Text"}]
  GETIMPORT R24 K58 [Enum.HumanoidRigType.R15]
  SETTABLEKS R24 R23 K54 ["Key"]
  GETIMPORT R25 K58 [Enum.HumanoidRigType.R15]
  GETTABLEKS R24 R25 K59 ["Name"]
  SETTABLEKS R24 R23 K34 ["Text"]
  DUPTABLE R24 K55 [{"Key", "Text"}]
  GETIMPORT R25 K61 [Enum.HumanoidRigType.R6]
  SETTABLEKS R25 R24 K54 ["Key"]
  GETIMPORT R26 K61 [Enum.HumanoidRigType.R6]
  GETTABLEKS R25 R26 K59 ["Name"]
  SETTABLEKS R25 R24 K34 ["Text"]
  SETLIST R22 R23 2 [1]
  SETTABLEKS R22 R21 K50 ["Buttons"]
  SETTABLEKS R5 R21 K51 ["CurrentSelectedKey"]
  GETIMPORT R22 K33 [Enum.FillDirection.Vertical]
  SETTABLEKS R22 R21 K31 ["FillDirection"]
  NEWCLOSURE R22 P0
  CAPTURE VAL R0
  SETTABLEKS R22 R21 K52 ["OnClick"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K48 ["Types"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K35 ["RigType"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K6 ["createElement"]
  GETUPVAL R16 3
  DUPTABLE R17 K46 [{"Title", "FillDirection", "LayoutOrder"}]
  LOADK R20 K47 ["Menu"]
  LOADK R21 K36 ["BodyShape"]
  NAMECALL R18 R2 K45 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K43 ["Title"]
  GETIMPORT R18 K33 [Enum.FillDirection.Vertical]
  SETTABLEKS R18 R17 K31 ["FillDirection"]
  LOADN R18 2
  SETTABLEKS R18 R17 K39 ["LayoutOrder"]
  DUPTABLE R18 K49 [{"Types"}]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K6 ["createElement"]
  GETUPVAL R20 4
  DUPTABLE R21 K53 [{"Buttons", "CurrentSelectedKey", "FillDirection", "OnClick"}]
  NEWTABLE R22 0 2
  DUPTABLE R23 K55 [{"Key", "Text"}]
  GETUPVAL R25 5
  GETTABLEKS R24 R25 K62 ["Masculine"]
  SETTABLEKS R24 R23 K54 ["Key"]
  LOADK R26 K36 ["BodyShape"]
  LOADK R27 K62 ["Masculine"]
  NAMECALL R24 R2 K45 ["getText"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K34 ["Text"]
  DUPTABLE R24 K55 [{"Key", "Text"}]
  GETUPVAL R26 5
  GETTABLEKS R25 R26 K63 ["Feminine"]
  SETTABLEKS R25 R24 K54 ["Key"]
  LOADK R27 K36 ["BodyShape"]
  LOADK R28 K63 ["Feminine"]
  NAMECALL R25 R2 K45 ["getText"]
  CALL R25 3 1
  SETTABLEKS R25 R24 K34 ["Text"]
  SETLIST R22 R23 2 [1]
  SETTABLEKS R22 R21 K50 ["Buttons"]
  SETTABLEKS R6 R21 K51 ["CurrentSelectedKey"]
  GETIMPORT R22 K33 [Enum.FillDirection.Vertical]
  SETTABLEKS R22 R21 K31 ["FillDirection"]
  NEWCLOSURE R22 P1
  CAPTURE VAL R0
  SETTABLEKS R22 R21 K52 ["OnClick"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K48 ["Types"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K36 ["BodyShape"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K6 ["createElement"]
  GETUPVAL R16 6
  DUPTABLE R17 K65 [{"LayoutOrder", "OnSelected"}]
  LOADN R18 3
  SETTABLEKS R18 R17 K39 ["LayoutOrder"]
  NEWCLOSURE R18 P2
  CAPTURE VAL R0
  CAPTURE VAL R3
  SETTABLEKS R18 R17 K64 ["OnSelected"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K37 ["Rigs"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K23 ["Pane"]
  CALL R7 3 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Players"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["Selection"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R5 K6 [script]
  GETTABLEKS R4 R5 K7 ["Parent"]
  GETTABLEKS R3 R4 K7 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Parent"]
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R2 K10 ["Packages"]
  GETTABLEKS R4 R5 K11 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R2 K10 ["Packages"]
  GETTABLEKS R5 R6 K12 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K13 ["ContextServices"]
  GETTABLEKS R6 R5 K14 ["withContext"]
  GETTABLEKS R7 R5 K15 ["Analytics"]
  GETTABLEKS R8 R5 K16 ["Localization"]
  GETTABLEKS R10 R4 K17 ["Style"]
  GETTABLEKS R9 R10 K18 ["Stylizer"]
  GETTABLEKS R10 R4 K19 ["UI"]
  GETTABLEKS R11 R10 K20 ["Pane"]
  GETTABLEKS R12 R10 K21 ["RadioButtonList"]
  GETTABLEKS R13 R10 K22 ["TextLabel"]
  GETTABLEKS R14 R10 K23 ["TitledFrame"]
  GETIMPORT R15 K9 [require]
  GETTABLEKS R18 R2 K24 ["Src"]
  GETTABLEKS R17 R18 K25 ["Util"]
  GETTABLEKS R16 R17 K26 ["BodyShape"]
  CALL R15 1 1
  GETIMPORT R16 K9 [require]
  GETTABLEKS R19 R2 K24 ["Src"]
  GETTABLEKS R18 R19 K27 ["Components"]
  GETTABLEKS R17 R18 K28 ["RigList"]
  CALL R16 1 1
  GETTABLEKS R17 R3 K29 ["PureComponent"]
  LOADK R19 K30 ["RigSelector"]
  NAMECALL R17 R17 K31 ["extend"]
  CALL R17 2 1
  DUPCLOSURE R18 K32 [PROTO_0]
  DUPCLOSURE R19 K33 [PROTO_1]
  DUPCLOSURE R20 K34 [PROTO_2]
  CAPTURE VAL R0
  CAPTURE VAL R19
  CAPTURE VAL R1
  SETTABLEKS R20 R17 K35 ["insertRig"]
  DUPCLOSURE R20 K36 [PROTO_3]
  CAPTURE VAL R15
  SETTABLEKS R20 R17 K37 ["init"]
  DUPCLOSURE R20 K38 [PROTO_7]
  CAPTURE VAL R3
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R12
  CAPTURE VAL R15
  CAPTURE VAL R16
  SETTABLEKS R20 R17 K39 ["render"]
  MOVE R20 R6
  DUPTABLE R21 K40 [{"Analytics", "Localization", "Stylizer"}]
  SETTABLEKS R7 R21 K15 ["Analytics"]
  SETTABLEKS R8 R21 K16 ["Localization"]
  SETTABLEKS R9 R21 K18 ["Stylizer"]
  CALL R20 1 1
  MOVE R21 R17
  CALL R20 1 1
  MOVE R17 R20
  RETURN R17 1
