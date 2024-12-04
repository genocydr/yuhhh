MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["Styling"]
  GETTABLEKS R2 R3 K8 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K9 [".Component-AddAnnotationPopup"]
  NEWTABLE R5 0 0
  NEWTABLE R6 0 2
  MOVE R7 R2
  LOADK R8 K10 ["> #InputArea"]
  DUPTABLE R9 K14 [{"BackgroundTransparency", "AutomaticSize", "Size"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K11 ["BackgroundTransparency"]
  GETIMPORT R10 K17 [Enum.AutomaticSize.Y]
  SETTABLEKS R10 R9 K12 ["AutomaticSize"]
  GETIMPORT R10 K20 [UDim2.fromScale]
  LOADN R11 1
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K13 ["Size"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K21 ["> #ErrorWrapper"]
  DUPTABLE R10 K22 [{"BackgroundTransparency", "Size", "AutomaticSize"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K11 ["BackgroundTransparency"]
  GETIMPORT R11 K20 [UDim2.fromScale]
  LOADN R12 1
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K13 ["Size"]
  GETIMPORT R11 K17 [Enum.AutomaticSize.Y]
  SETTABLEKS R11 R10 K12 ["AutomaticSize"]
  NEWTABLE R11 0 1
  MOVE R12 R2
  LOADK R13 K23 ["::UIPadding"]
  DUPTABLE R14 K25 [{"PaddingLeft"}]
  GETIMPORT R15 K28 [UDim.new]
  LOADN R16 0
  LOADN R17 40
  CALL R15 2 1
  SETTABLEKS R15 R14 K24 ["PaddingLeft"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
