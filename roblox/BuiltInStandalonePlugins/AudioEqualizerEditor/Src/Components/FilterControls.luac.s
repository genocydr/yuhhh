PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["idToFilterType"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["FilterHook"]
  GETTABLEKS R2 R3 K2 ["setFilterType"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["FilterHook"]
  GETTABLEKS R1 R2 K1 ["setQ"]
  LOADN R3 2
  GETUPVAL R7 1
  GETUPVAL R8 2
  SUB R6 R7 R8
  MUL R5 R0 R6
  GETUPVAL R6 2
  ADD R4 R5 R6
  FASTCALL2 MATH_POW R3 R4 [+3]
  GETIMPORT R2 K4 [math.pow]
  CALL R2 2 1
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["FilterHook"]
  GETTABLEKS R1 R2 K1 ["setQ"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["Context"]
  GETTABLEKS R2 R3 K1 ["Consumer"]
  CALL R1 1 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["Localization"]
  GETTABLEKS R3 R4 K3 ["Key"]
  GETTABLE R2 R1 R3
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K4 ["filterTypeToId"]
  GETTABLEKS R5 R0 K5 ["FilterHook"]
  GETTABLEKS R4 R5 K6 ["filterType"]
  CALL R3 1 1
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K7 ["hasQ"]
  GETTABLEKS R7 R0 K5 ["FilterHook"]
  GETTABLEKS R6 R7 K6 ["filterType"]
  CALL R5 1 1
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K8 ["log2"]
  LOADK R7 K9 [0.1]
  CALL R6 1 1
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K8 ["log2"]
  LOADN R8 10
  CALL R7 1 1
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K8 ["log2"]
  GETTABLEKS R12 R0 K5 ["FilterHook"]
  GETTABLEKS R11 R12 K10 ["q"]
  CALL R10 1 1
  SUB R9 R10 R6
  SUB R10 R7 R6
  DIV R8 R9 R10
  NEWCLOSURE R9 P1
  CAPTURE VAL R0
  CAPTURE VAL R7
  CAPTURE VAL R6
  NEWCLOSURE R10 P2
  CAPTURE VAL R0
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K11 ["createElement"]
  GETUPVAL R12 5
  NEWTABLE R13 4 0
  GETTABLEKS R14 R0 K12 ["Position"]
  SETTABLEKS R14 R13 K12 ["Position"]
  GETTABLEKS R14 R0 K13 ["Size"]
  SETTABLEKS R14 R13 K13 ["Size"]
  LOADN R14 1
  SETTABLEKS R14 R13 K14 ["LayoutOrder"]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K15 ["Tag"]
  LOADK R15 K16 ["X-RowM X-Middle"]
  SETTABLE R15 R13 R14
  DUPTABLE R14 K20 [{"FilterType", "Spacer", "Q"}]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K11 ["createElement"]
  GETUPVAL R16 5
  NEWTABLE R17 2 0
  LOADN R18 1
  SETTABLEKS R18 R17 K14 ["LayoutOrder"]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K15 ["Tag"]
  LOADK R19 K21 ["X-Fit X-RowM X-Middle"]
  SETTABLE R19 R17 R18
  DUPTABLE R18 K24 [{"FilterTypeDropdown", "FilterTypeLabel"}]
  GETUPVAL R20 4
  GETTABLEKS R19 R20 K11 ["createElement"]
  GETUPVAL R20 6
  DUPTABLE R21 K31 [{"AutomaticSize", "Size", "Disabled", "OnChanged", "Schema", "Tooltip", "Value"}]
  GETIMPORT R22 K34 [Enum.AutomaticSize.Y]
  SETTABLEKS R22 R21 K25 ["AutomaticSize"]
  GETIMPORT R22 K37 [UDim2.fromOffset]
  LOADN R23 150
  LOADN R24 25
  CALL R22 2 1
  SETTABLEKS R22 R21 K13 ["Size"]
  LOADB R22 0
  SETTABLEKS R22 R21 K26 ["Disabled"]
  SETTABLEKS R4 R21 K27 ["OnChanged"]
  DUPTABLE R22 K40 [{"Type", "Items"}]
  LOADK R23 K41 ["Select"]
  SETTABLEKS R23 R22 K38 ["Type"]
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K42 ["getDropdownItems"]
  MOVE R24 R2
  CALL R23 1 1
  SETTABLEKS R23 R22 K39 ["Items"]
  SETTABLEKS R22 R21 K28 ["Schema"]
  LOADK R22 K17 ["FilterType"]
  SETTABLEKS R22 R21 K29 ["Tooltip"]
  SETTABLEKS R3 R21 K30 ["Value"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K22 ["FilterTypeDropdown"]
  GETUPVAL R20 4
  GETTABLEKS R19 R20 K11 ["createElement"]
  GETUPVAL R20 7
  NEWTABLE R21 4 0
  LOADK R24 K43 ["Label"]
  LOADK R25 K17 ["FilterType"]
  NAMECALL R22 R2 K44 ["getText"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K45 ["Text"]
  LOADN R22 1
  SETTABLEKS R22 R21 K14 ["LayoutOrder"]
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K15 ["Tag"]
  LOADK R23 K46 ["X-Fit"]
  SETTABLE R23 R21 R22
  CALL R19 2 1
  SETTABLEKS R19 R18 K23 ["FilterTypeLabel"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K17 ["FilterType"]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K11 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K47 [{"LayoutOrder", "Size"}]
  LOADN R18 2
  SETTABLEKS R18 R17 K14 ["LayoutOrder"]
  GETIMPORT R18 K49 [UDim2.new]
  LOADN R19 0
  LOADN R20 25
  LOADN R21 1
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K13 ["Size"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K18 ["Spacer"]
  MOVE R15 R5
  JUMPIFNOT R15 [+116]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K11 ["createElement"]
  GETUPVAL R16 5
  NEWTABLE R17 2 0
  LOADN R18 3
  SETTABLEKS R18 R17 K14 ["LayoutOrder"]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K15 ["Tag"]
  LOADK R19 K21 ["X-Fit X-RowM X-Middle"]
  SETTABLE R19 R17 R18
  DUPTABLE R18 K53 [{"QSlider", "QTextInput", "QLabel"}]
  GETUPVAL R20 4
  GETTABLEKS R19 R20 K11 ["createElement"]
  GETUPVAL R20 8
  DUPTABLE R21 K60 [{"Disabled", "Max", "Min", "OnValueChanged", "Size", "ShowInput", "SnapIncrement", "VerticalDragTolerance", "Value"}]
  LOADB R22 0
  SETTABLEKS R22 R21 K26 ["Disabled"]
  LOADN R22 1
  SETTABLEKS R22 R21 K54 ["Max"]
  LOADN R22 0
  SETTABLEKS R22 R21 K55 ["Min"]
  SETTABLEKS R9 R21 K56 ["OnValueChanged"]
  GETIMPORT R22 K37 [UDim2.fromOffset]
  LOADN R23 100
  LOADN R24 25
  CALL R22 2 1
  SETTABLEKS R22 R21 K13 ["Size"]
  LOADB R22 0
  SETTABLEKS R22 R21 K57 ["ShowInput"]
  LOADK R22 K61 [0.01]
  SETTABLEKS R22 R21 K58 ["SnapIncrement"]
  LOADN R22 232
  SETTABLEKS R22 R21 K59 ["VerticalDragTolerance"]
  SETTABLEKS R8 R21 K30 ["Value"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K50 ["QSlider"]
  GETUPVAL R20 4
  GETTABLEKS R19 R20 K11 ["createElement"]
  GETUPVAL R20 6
  DUPTABLE R21 K31 [{"AutomaticSize", "Size", "Disabled", "OnChanged", "Schema", "Tooltip", "Value"}]
  GETIMPORT R22 K34 [Enum.AutomaticSize.Y]
  SETTABLEKS R22 R21 K25 ["AutomaticSize"]
  GETIMPORT R22 K37 [UDim2.fromOffset]
  LOADN R23 50
  LOADN R24 25
  CALL R22 2 1
  SETTABLEKS R22 R21 K13 ["Size"]
  LOADB R22 0
  SETTABLEKS R22 R21 K26 ["Disabled"]
  SETTABLEKS R10 R21 K27 ["OnChanged"]
  DUPTABLE R22 K62 [{"Type"}]
  LOADK R23 K63 ["Number"]
  SETTABLEKS R23 R22 K38 ["Type"]
  SETTABLEKS R22 R21 K28 ["Schema"]
  LOADK R22 K19 ["Q"]
  SETTABLEKS R22 R21 K29 ["Tooltip"]
  GETTABLEKS R23 R0 K5 ["FilterHook"]
  GETTABLEKS R22 R23 K10 ["q"]
  SETTABLEKS R22 R21 K30 ["Value"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K51 ["QTextInput"]
  GETUPVAL R20 4
  GETTABLEKS R19 R20 K11 ["createElement"]
  GETUPVAL R20 7
  NEWTABLE R21 4 0
  LOADK R24 K43 ["Label"]
  LOADK R25 K19 ["Q"]
  NAMECALL R22 R2 K44 ["getText"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K45 ["Text"]
  LOADN R22 1
  SETTABLEKS R22 R21 K14 ["LayoutOrder"]
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K15 ["Tag"]
  LOADK R23 K46 ["X-Fit"]
  SETTABLE R23 R21 R22
  CALL R19 2 1
  SETTABLEKS R19 R18 K52 ["QLabel"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K19 ["Q"]
  CALL R11 3 -1
  RETURN R11 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  LOADK R3 K3 ["AudioEqualizerEditor"]
  NAMECALL R1 R0 K4 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R1 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["useContext"]
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R1 K7 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K11 ["ContextServices"]
  GETTABLEKS R7 R4 K12 ["UI"]
  GETTABLEKS R6 R7 K13 ["Pane"]
  GETTABLEKS R8 R4 K12 ["UI"]
  GETTABLEKS R7 R8 K14 ["PropertyCell"]
  GETTABLEKS R9 R4 K12 ["UI"]
  GETTABLEKS R8 R9 K15 ["Slider"]
  GETTABLEKS R10 R4 K12 ["UI"]
  GETTABLEKS R9 R10 K16 ["TextLabel"]
  GETIMPORT R10 K6 [require]
  GETTABLEKS R12 R1 K17 ["Src"]
  GETTABLEKS R11 R12 K18 ["Types"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETTABLEKS R14 R1 K17 ["Src"]
  GETTABLEKS R13 R14 K19 ["Util"]
  GETTABLEKS R12 R13 K20 ["FilterTypeUtil"]
  CALL R11 1 1
  GETIMPORT R12 K6 [require]
  GETTABLEKS R15 R1 K17 ["Src"]
  GETTABLEKS R14 R15 K19 ["Util"]
  GETTABLEKS R13 R14 K21 ["PlotUtil"]
  CALL R12 1 1
  DUPCLOSURE R13 K22 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R8
  RETURN R13 1
