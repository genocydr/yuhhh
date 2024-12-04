PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["textBoxRef"]
  LOADK R1 K2 [""]
  SETTABLEKS R1 R0 K3 ["enteredText"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["text"]
  RETURN R0 0

PROTO_2:
  JUMPIFNOT R0 [+10]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Group"]
  GETTABLEKS R1 R2 K1 ["OnRenamed"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["text"]
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Group"]
  GETTABLEKS R1 R2 K1 ["OnRenamed"]
  CALL R1 0 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R1 K3 ["Group"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K15 [{"Size", "LayoutOrder", "BackgroundTransparency", "TextWrapped", "ShouldFocus", "TextXAlignment", "ForwardRef", "PlaceholderText", "OnTextChanged", "OnFocusLost"}]
  GETTABLEKS R8 R1 K5 ["Size"]
  SETTABLEKS R8 R7 K5 ["Size"]
  GETTABLEKS R8 R1 K6 ["LayoutOrder"]
  SETTABLEKS R8 R7 K6 ["LayoutOrder"]
  LOADN R8 1
  SETTABLEKS R8 R7 K7 ["BackgroundTransparency"]
  LOADB R8 1
  SETTABLEKS R8 R7 K8 ["TextWrapped"]
  LOADB R8 1
  SETTABLEKS R8 R7 K9 ["ShouldFocus"]
  GETIMPORT R8 K18 [Enum.TextXAlignment.Right]
  SETTABLEKS R8 R7 K10 ["TextXAlignment"]
  GETTABLEKS R8 R0 K19 ["textBoxRef"]
  SETTABLEKS R8 R7 K11 ["ForwardRef"]
  LOADK R10 K20 ["Info"]
  LOADK R11 K21 ["NewGroupName"]
  NAMECALL R8 R3 K22 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K12 ["PlaceholderText"]
  NEWCLOSURE R8 P0
  CAPTURE VAL R0
  SETTABLEKS R8 R7 K13 ["OnTextChanged"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLEKS R8 R7 K14 ["OnFocusLost"]
  CALL R5 2 -1
  RETURN R5 -1

PROTO_4:
  GETTABLEKS R2 R0 K0 ["textBoxRef"]
  GETTABLEKS R1 R2 K1 ["current"]
  NAMECALL R1 R1 K2 ["CaptureFocus"]
  CALL R1 1 0
  RETURN R0 0

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
  GETTABLEKS R4 R2 K9 ["UI"]
  GETTABLEKS R5 R4 K10 ["DEPRECATED_TextInput"]
  GETTABLEKS R6 R1 K11 ["Component"]
  LOADK R8 K12 ["GroupRenameTextBox"]
  NAMECALL R6 R6 K13 ["extend"]
  CALL R6 2 1
  DUPCLOSURE R7 K14 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R7 R6 K15 ["init"]
  DUPCLOSURE R7 K16 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R5
  SETTABLEKS R7 R6 K17 ["render"]
  DUPCLOSURE R7 K18 [PROTO_4]
  SETTABLEKS R7 R6 K19 ["didMount"]
  GETTABLEKS R7 R3 K20 ["withContext"]
  DUPTABLE R8 K23 [{"Stylizer", "Localization"}]
  GETTABLEKS R9 R3 K21 ["Stylizer"]
  SETTABLEKS R9 R8 K21 ["Stylizer"]
  GETTABLEKS R9 R3 K22 ["Localization"]
  SETTABLEKS R9 R8 K22 ["Localization"]
  CALL R7 1 1
  MOVE R8 R6
  CALL R7 1 1
  MOVE R6 R7
  RETURN R6 1
