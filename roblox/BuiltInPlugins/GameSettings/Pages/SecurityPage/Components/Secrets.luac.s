PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K4 [{"LayoutOrder", "Title"}]
  GETTABLEKS R5 R1 K2 ["LayoutOrder"]
  SETTABLEKS R5 R4 K2 ["LayoutOrder"]
  GETTABLEKS R5 R1 K5 ["Localization"]
  LOADK R7 K6 ["General"]
  LOADK R8 K7 ["TitleSecrets"]
  NAMECALL R5 R5 K8 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K3 ["Title"]
  DUPTABLE R5 K10 [{"TextBox"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K16 [{"Height", "MultiLine", "OnTextChanged", "Text", "BottomText"}]
  LOADN R9 130
  SETTABLEKS R9 R8 K11 ["Height"]
  LOADB R9 1
  SETTABLEKS R9 R8 K12 ["MultiLine"]
  GETTABLEKS R9 R1 K17 ["OnChanged"]
  SETTABLEKS R9 R8 K13 ["OnTextChanged"]
  GETTABLEKS R9 R1 K18 ["Secrets"]
  SETTABLEKS R9 R8 K14 ["Text"]
  GETTABLEKS R9 R1 K5 ["Localization"]
  LOADK R11 K19 ["Security"]
  LOADK R12 K20 ["LocalSecretsDesc"]
  NAMECALL R9 R9 K8 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K15 ["BottomText"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K9 ["TextBox"]
  CALL R2 3 -1
  RETURN R2 -1

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
  GETTABLEKS R3 R2 K8 ["UI"]
  GETTABLEKS R4 R3 K9 ["TextInput"]
  GETTABLEKS R5 R3 K10 ["TitledFrame"]
  GETTABLEKS R6 R2 K11 ["ContextServices"]
  GETTABLEKS R7 R6 K12 ["withContext"]
  GETTABLEKS R8 R1 K13 ["PureComponent"]
  LOADK R10 K14 ["Secrets"]
  NAMECALL R8 R8 K15 ["extend"]
  CALL R8 2 1
  DUPCLOSURE R9 K16 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R4
  SETTABLEKS R9 R8 K17 ["render"]
  MOVE R9 R7
  DUPTABLE R10 K19 [{"Localization"}]
  GETTABLEKS R11 R6 K18 ["Localization"]
  SETTABLEKS R11 R10 K18 ["Localization"]
  CALL R9 1 1
  MOVE R10 R8
  CALL R9 1 1
  MOVE R8 R9
  RETURN R8 1
