PROTO_0:
  GETIMPORT R0 K1 [warn]
  GETUPVAL R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  CALL R0 0 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["OnClearClicked"]
  JUMPIF R2 [+1]
  GETUPVAL R2 0
  GETTABLEKS R3 R1 K2 ["OnSaveClicked"]
  JUMPIF R3 [+1]
  GETUPVAL R3 0
  GETTABLEKS R4 R1 K3 ["OnSendClicked"]
  JUMPIF R4 [+1]
  GETUPVAL R4 0
  GETTABLEKS R5 R1 K4 ["Stylizer"]
  GETTABLEKS R7 R5 K5 ["Layout"]
  GETTABLEKS R6 R7 K6 ["Horizontal"]
  GETTABLEKS R7 R5 K7 ["Sizes"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K8 ["createElement"]
  LOADK R9 K9 ["Frame"]
  DUPTABLE R10 K13 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R11 K16 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  GETTABLEKS R15 R7 K17 ["ShortHeight"]
  CALL R11 4 1
  SETTABLEKS R11 R10 K10 ["Size"]
  LOADN R11 1
  SETTABLEKS R11 R10 K11 ["BackgroundTransparency"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K18 ["ConfirmationButtons"]
  SETTABLEKS R11 R10 K12 ["LayoutOrder"]
  DUPTABLE R11 K22 [{"Layout", "Clear", "Save", "Send"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K8 ["createElement"]
  LOADK R13 K23 ["UIListLayout"]
  MOVE R14 R6
  CALL R12 2 1
  SETTABLEKS R12 R11 K5 ["Layout"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K8 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K26 [{"Size", "Text", "LayoutOrder", "OnClick"}]
  GETIMPORT R15 K16 [UDim2.new]
  LOADN R16 0
  GETTABLEKS R17 R7 K27 ["ConfirmationButtonWidth"]
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K10 ["Size"]
  LOADK R15 K19 ["Clear"]
  SETTABLEKS R15 R14 K24 ["Text"]
  LOADN R15 1
  SETTABLEKS R15 R14 K12 ["LayoutOrder"]
  SETTABLEKS R2 R14 K25 ["OnClick"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K19 ["Clear"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K8 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K26 [{"Size", "Text", "LayoutOrder", "OnClick"}]
  GETIMPORT R15 K16 [UDim2.new]
  LOADN R16 0
  GETTABLEKS R17 R7 K27 ["ConfirmationButtonWidth"]
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K10 ["Size"]
  LOADK R15 K20 ["Save"]
  SETTABLEKS R15 R14 K24 ["Text"]
  LOADN R15 2
  SETTABLEKS R15 R14 K12 ["LayoutOrder"]
  SETTABLEKS R3 R14 K25 ["OnClick"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K20 ["Save"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K8 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K26 [{"Size", "Text", "LayoutOrder", "OnClick"}]
  GETIMPORT R15 K16 [UDim2.new]
  LOADN R16 0
  GETTABLEKS R17 R7 K27 ["ConfirmationButtonWidth"]
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K10 ["Size"]
  LOADK R15 K21 ["Send"]
  SETTABLEKS R15 R14 K24 ["Text"]
  LOADN R15 3
  SETTABLEKS R15 R14 K12 ["LayoutOrder"]
  NEWCLOSURE R15 P0
  CAPTURE VAL R4
  SETTABLEKS R15 R14 K25 ["OnClick"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K21 ["Send"]
  CALL R8 3 -1
  RETURN R8 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
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
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["Util"]
  GETTABLEKS R6 R7 K12 ["Constants"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K13 ["INPUT_PANE_LAYOUT"]
  GETTABLEKS R7 R5 K14 ["UNIMPLEMENTED_WARNING"]
  GETTABLEKS R8 R2 K15 ["UI"]
  GETTABLEKS R9 R8 K16 ["Button"]
  GETTABLEKS R10 R1 K17 ["PureComponent"]
  LOADK R12 K18 ["ButtonArray"]
  NAMECALL R10 R10 K19 ["extend"]
  CALL R10 2 1
  DUPCLOSURE R11 K20 [PROTO_0]
  CAPTURE VAL R7
  DUPCLOSURE R12 K21 [PROTO_2]
  CAPTURE VAL R11
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R9
  SETTABLEKS R12 R10 K22 ["render"]
  MOVE R12 R4
  DUPTABLE R13 K24 [{"Stylizer"}]
  GETTABLEKS R14 R3 K23 ["Stylizer"]
  SETTABLEKS R14 R13 K23 ["Stylizer"]
  CALL R12 1 1
  MOVE R13 R10
  CALL R12 1 1
  MOVE R10 R12
  RETURN R10 1
