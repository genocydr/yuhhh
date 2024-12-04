PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["animationID"]
  JUMPIFEQKS R0 K1 [""] [+8]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K2 ["attachAnimation"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["animationID"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  DUPTABLE R1 K3 [{"animLoop", "playSpeed", "animIsRunning"}]
  LOADB R2 1
  SETTABLEKS R2 R1 K0 ["animLoop"]
  LOADN R2 1
  SETTABLEKS R2 R1 K1 ["playSpeed"]
  LOADB R2 0
  SETTABLEKS R2 R1 K2 ["animIsRunning"]
  SETTABLEKS R1 R0 K4 ["state"]
  LOADK R1 K5 [""]
  SETTABLEKS R1 R0 K6 ["animationID"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K7 ["attachAnimation"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["animationID"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K5 [{"BackgroundColor", "Padding", "Layout", "LayoutOrder"}]
  GETIMPORT R4 K8 [Color3.fromRGB]
  LOADN R5 100
  LOADN R6 100
  LOADN R7 100
  CALL R4 3 1
  SETTABLEKS R4 R3 K1 ["BackgroundColor"]
  LOADN R4 10
  SETTABLEKS R4 R3 K2 ["Padding"]
  GETIMPORT R4 K12 [Enum.FillDirection.Vertical]
  SETTABLEKS R4 R3 K3 ["Layout"]
  LOADN R4 0
  SETTABLEKS R4 R3 K4 ["LayoutOrder"]
  DUPTABLE R4 K15 [{"First", "Second"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K16 ["Frame"]
  DUPTABLE R7 K20 [{"Size", "Position", "BackgroundColor3", "LayoutOrder"}]
  GETIMPORT R8 K23 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADK R11 K24 [0.2]
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K17 ["Size"]
  GETIMPORT R8 K23 [UDim2.new]
  LOADN R9 0
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K18 ["Position"]
  GETIMPORT R8 K8 [Color3.fromRGB]
  LOADN R9 100
  LOADN R10 100
  LOADN R11 100
  CALL R8 3 1
  SETTABLEKS R8 R7 K19 ["BackgroundColor3"]
  LOADN R8 1
  SETTABLEKS R8 R7 K4 ["LayoutOrder"]
  NEWTABLE R8 1 2
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K0 ["createElement"]
  LOADK R12 K25 ["UIListLayout"]
  DUPTABLE R13 K29 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment", "Padding"}]
  GETIMPORT R14 K12 [Enum.FillDirection.Vertical]
  SETTABLEKS R14 R13 K10 ["FillDirection"]
  GETIMPORT R14 K31 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R14 R13 K26 ["HorizontalAlignment"]
  GETIMPORT R14 K32 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R14 R13 K27 ["SortOrder"]
  GETIMPORT R14 K33 [Enum.VerticalAlignment.Center]
  SETTABLEKS R14 R13 K28 ["VerticalAlignment"]
  GETIMPORT R14 K35 [UDim.new]
  LOADN R15 0
  LOADN R16 10
  CALL R14 2 1
  SETTABLEKS R14 R13 K2 ["Padding"]
  CALL R11 2 1
  SETTABLEKS R11 R8 K25 ["UIListLayout"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K39 [{"OnClick", "Style", "Size", "Text", "LayoutOrder"}]
  GETTABLEKS R12 R0 K40 ["attachAnimation"]
  SETTABLEKS R12 R11 K36 ["OnClick"]
  LOADK R12 K41 ["RoundPrimary"]
  SETTABLEKS R12 R11 K37 ["Style"]
  GETIMPORT R12 K43 [UDim2.fromOffset]
  LOADN R13 200
  LOADN R14 30
  CALL R12 2 1
  SETTABLEKS R12 R11 K17 ["Size"]
  LOADK R12 K44 ["Attach animation from ID"]
  SETTABLEKS R12 R11 K38 ["Text"]
  LOADN R12 1
  SETTABLEKS R12 R11 K4 ["LayoutOrder"]
  CALL R9 2 1
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K0 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K47 [{"Size", "Style", "PlaceholderText", "OnTextChanged", "LayoutOrder"}]
  GETIMPORT R13 K43 [UDim2.fromOffset]
  LOADN R14 200
  LOADN R15 30
  CALL R13 2 1
  SETTABLEKS R13 R12 K17 ["Size"]
  LOADK R13 K48 ["FilledRoundedBorder"]
  SETTABLEKS R13 R12 K37 ["Style"]
  LOADK R13 K49 ["Input animation ID here"]
  SETTABLEKS R13 R12 K45 ["PlaceholderText"]
  NEWCLOSURE R13 P0
  CAPTURE VAL R0
  SETTABLEKS R13 R12 K46 ["OnTextChanged"]
  LOADN R13 2
  SETTABLEKS R13 R12 K4 ["LayoutOrder"]
  CALL R10 2 -1
  SETLIST R8 R9 -1 [1]
  CALL R5 3 1
  SETTABLEKS R5 R4 K13 ["First"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K16 ["Frame"]
  DUPTABLE R7 K20 [{"Size", "Position", "BackgroundColor3", "LayoutOrder"}]
  GETIMPORT R8 K23 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADK R11 K50 [0.6]
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K17 ["Size"]
  GETIMPORT R8 K23 [UDim2.new]
  LOADN R9 0
  LOADN R10 0
  LOADK R11 K24 [0.2]
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K18 ["Position"]
  GETIMPORT R8 K8 [Color3.fromRGB]
  LOADN R9 100
  LOADN R10 100
  LOADN R11 100
  CALL R8 3 1
  SETTABLEKS R8 R7 K19 ["BackgroundColor3"]
  LOADN R8 2
  SETTABLEKS R8 R7 K4 ["LayoutOrder"]
  NEWTABLE R8 0 1
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  GETUPVAL R10 4
  CALL R9 1 -1
  SETLIST R8 R9 -1 [1]
  CALL R5 3 1
  SETTABLEKS R5 R4 K14 ["Second"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K2 ["Parent"]
  GETTABLEKS R4 R5 K8 ["animationFunctions"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K2 ["Parent"]
  GETTABLEKS R5 R6 K9 ["animationCatalogUIComponent"]
  CALL R4 1 1
  GETTABLEKS R5 R2 K10 ["UI"]
  GETTABLEKS R6 R5 K11 ["Pane"]
  GETTABLEKS R7 R5 K12 ["Button"]
  GETTABLEKS R8 R5 K13 ["DEPRECATED_TextInput"]
  GETTABLEKS R9 R1 K14 ["PureComponent"]
  LOADK R11 K15 ["avatarCheckUIComponent"]
  NAMECALL R9 R9 K16 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K17 [PROTO_1]
  CAPTURE VAL R3
  SETTABLEKS R10 R9 K18 ["init"]
  DUPCLOSURE R10 K19 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R4
  SETTABLEKS R10 R9 K20 ["render"]
  RETURN R9 1
