MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["FindReplaceAll"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  GETTABLEKS R4 R1 K8 ["Styling"]
  GETTABLEKS R3 R4 K10 ["createStyleSheet"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K11 ["Src"]
  GETTABLEKS R6 R7 K12 ["Resources"]
  GETTABLEKS R5 R6 K13 ["StyleConstants"]
  CALL R4 1 1
  NEWTABLE R5 0 2
  MOVE R6 R2
  LOADK R7 K14 ["TextLabel, TextButton, TextBox"]
  DUPTABLE R8 K17 [{"Font", "TextSize"}]
  GETTABLEKS R9 R4 K18 ["defaultFont"]
  SETTABLEKS R9 R8 K15 ["Font"]
  GETTABLEKS R9 R4 K19 ["normalFontSize"]
  SETTABLEKS R9 R8 K16 ["TextSize"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K20 ["#MainWidget"]
  DUPTABLE R9 K23 [{"BorderSizePixel", "BackgroundColor3"}]
  LOADN R10 0
  SETTABLEKS R10 R9 K21 ["BorderSizePixel"]
  LOADK R10 K24 ["$BackgroundDefault"]
  SETTABLEKS R10 R9 K22 ["BackgroundColor3"]
  CALL R7 2 -1
  SETLIST R5 R6 -1 [1]
  NEWTABLE R6 0 0
  MOVE R7 R3
  LOADK R8 K2 ["FindReplaceAll"]
  MOVE R9 R5
  MOVE R10 R6
  CALL R7 3 -1
  RETURN R7 -1
