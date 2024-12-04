PROTO_0:
  GETTABLEN R1 R0 2
  JUMPIFNOT R1 [+28]
  NEWTABLE R1 0 2
  DUPTABLE R2 K3 [{"Name", "Active", "Value"}]
  GETTABLEN R3 R0 1
  SETTABLEKS R3 R2 K0 ["Name"]
  LOADB R3 1
  SETTABLEKS R3 R2 K1 ["Active"]
  LOADB R3 0
  SETTABLEKS R3 R2 K2 ["Value"]
  DUPTABLE R3 K5 [{"Name", "Default", "Active", "Value"}]
  GETTABLEN R4 R0 2
  SETTABLEKS R4 R3 K0 ["Name"]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["Default"]
  LOADB R4 1
  SETTABLEKS R4 R3 K1 ["Active"]
  LOADB R4 1
  SETTABLEKS R4 R3 K2 ["Value"]
  SETLIST R1 R2 2 [1]
  RETURN R1 1
  NEWTABLE R1 0 1
  DUPTABLE R2 K5 [{"Name", "Default", "Active", "Value"}]
  GETTABLEN R3 R0 1
  SETTABLEKS R3 R2 K0 ["Name"]
  LOADB R3 1
  SETTABLEKS R3 R2 K4 ["Default"]
  LOADB R3 1
  SETTABLEKS R3 R2 K1 ["Active"]
  LOADB R3 1
  SETTABLEKS R3 R2 K2 ["Value"]
  SETLIST R1 R2 1 [1]
  RETURN R1 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Buttons"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K9 [{"Size", "Layout", "AutomaticSize", "BackgroundColor3", "Spacing"}]
  GETIMPORT R7 K12 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 1
  LOADN R11 0
  CALL R7 4 1
  SETTABLEKS R7 R6 K4 ["Size"]
  GETIMPORT R7 K16 [Enum.FillDirection.Vertical]
  SETTABLEKS R7 R6 K5 ["Layout"]
  GETIMPORT R7 K18 [Enum.AutomaticSize.Y]
  SETTABLEKS R7 R6 K6 ["AutomaticSize"]
  GETTABLEKS R8 R2 K19 ["dialog"]
  GETTABLEKS R7 R8 K20 ["background"]
  SETTABLEKS R7 R6 K7 ["BackgroundColor3"]
  GETTABLEKS R8 R2 K19 ["dialog"]
  GETTABLEKS R7 R8 K21 ["spacing"]
  SETTABLEKS R7 R6 K8 ["Spacing"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K22 ["Dictionary"]
  GETTABLEKS R7 R8 K23 ["join"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K24 ["Children"]
  GETTABLE R8 R1 R9
  DUPTABLE R9 K25 [{"Buttons"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K3 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K31 [{"Position", "AnchorPoint", "Buttons", "LayoutOrder", "HorizontalAlignment", "ButtonClicked"}]
  GETIMPORT R13 K12 [UDim2.new]
  LOADN R14 0
  LOADN R15 0
  LOADN R16 1
  GETTABLEKS R18 R2 K32 ["buttonBar"]
  GETTABLEKS R17 R18 K33 ["offset"]
  CALL R13 4 1
  SETTABLEKS R13 R12 K26 ["Position"]
  GETIMPORT R13 K35 [Vector2.new]
  LOADN R14 0
  LOADN R15 1
  CALL R13 2 1
  SETTABLEKS R13 R12 K27 ["AnchorPoint"]
  GETUPVAL R13 4
  MOVE R14 R3
  CALL R13 1 1
  SETTABLEKS R13 R12 K2 ["Buttons"]
  LOADN R13 100
  SETTABLEKS R13 R12 K28 ["LayoutOrder"]
  GETIMPORT R13 K37 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R13 R12 K29 ["HorizontalAlignment"]
  GETTABLEKS R13 R1 K38 ["OnResult"]
  SETTABLEKS R13 R12 K30 ["ButtonClicked"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K2 ["Buttons"]
  CALL R7 2 -1
  CALL R4 -1 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Cryo"]
  CALL R3 1 1
  GETTABLEKS R5 R2 K9 ["UI"]
  GETTABLEKS R4 R5 K10 ["Pane"]
  GETTABLEKS R5 R2 K11 ["ContextServices"]
  GETTABLEKS R6 R5 K12 ["withContext"]
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K13 ["Src"]
  GETTABLEKS R9 R10 K14 ["Components"]
  GETTABLEKS R8 R9 K15 ["ButtonBar"]
  CALL R7 1 1
  GETTABLEKS R8 R1 K16 ["PureComponent"]
  LOADK R10 K17 ["BaseDialog"]
  NAMECALL R8 R8 K18 ["extend"]
  CALL R8 2 1
  DUPCLOSURE R9 K19 [PROTO_0]
  DUPCLOSURE R10 K20 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R9
  SETTABLEKS R10 R8 K21 ["render"]
  MOVE R10 R6
  DUPTABLE R11 K23 [{"Stylizer"}]
  GETTABLEKS R12 R5 K22 ["Stylizer"]
  SETTABLEKS R12 R11 K22 ["Stylizer"]
  CALL R10 1 1
  MOVE R11 R8
  CALL R10 1 1
  MOVE R8 R10
  RETURN R8 1