MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["DirectionalCurveEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleSheet"]
  DUPTABLE R3 K13 [{"ColorGridLine", "ColorGridLinePath", "ColorControlPointHighlight"}]
  GETIMPORT R4 K16 [Color3.fromRGB]
  LOADN R5 155
  LOADN R6 155
  LOADN R7 155
  CALL R4 3 1
  SETTABLEKS R4 R3 K10 ["ColorGridLine"]
  GETIMPORT R4 K16 [Color3.fromRGB]
  LOADN R5 100
  LOADN R6 100
  LOADN R7 100
  CALL R4 3 1
  SETTABLEKS R4 R3 K11 ["ColorGridLinePath"]
  GETIMPORT R4 K16 [Color3.fromRGB]
  LOADN R5 250
  LOADN R6 250
  LOADN R7 250
  CALL R4 3 1
  SETTABLEKS R4 R3 K12 ["ColorControlPointHighlight"]
  MOVE R4 R2
  LOADK R5 K17 ["DirectionalCurveEditorDarkTheme"]
  NEWTABLE R6 0 0
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1
