MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AttenuationCurveEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleSheet"]
  DUPTABLE R3 K17 [{"ColorGridLine", "ColorKeypointHighlight", "ColorScrollbarButton", "ColorScrollbarButtonPressed", "ColorScrollbarButtonHovered", "ColorScrollbarButtonBorder", "ColorScrollbarButtonText"}]
  GETIMPORT R4 K20 [Color3.fromRGB]
  LOADN R5 155
  LOADN R6 155
  LOADN R7 155
  CALL R4 3 1
  SETTABLEKS R4 R3 K10 ["ColorGridLine"]
  GETIMPORT R4 K20 [Color3.fromRGB]
  LOADN R5 250
  LOADN R6 250
  LOADN R7 250
  CALL R4 3 1
  SETTABLEKS R4 R3 K11 ["ColorKeypointHighlight"]
  GETIMPORT R4 K20 [Color3.fromRGB]
  LOADN R5 60
  LOADN R6 60
  LOADN R7 60
  CALL R4 3 1
  SETTABLEKS R4 R3 K12 ["ColorScrollbarButton"]
  GETIMPORT R4 K20 [Color3.fromRGB]
  LOADN R5 40
  LOADN R6 40
  LOADN R7 40
  CALL R4 3 1
  SETTABLEKS R4 R3 K13 ["ColorScrollbarButtonPressed"]
  GETIMPORT R4 K20 [Color3.fromRGB]
  LOADN R5 90
  LOADN R6 90
  LOADN R7 90
  CALL R4 3 1
  SETTABLEKS R4 R3 K14 ["ColorScrollbarButtonHovered"]
  GETIMPORT R4 K20 [Color3.fromRGB]
  LOADN R5 0
  LOADN R6 0
  LOADN R7 0
  CALL R4 3 1
  SETTABLEKS R4 R3 K15 ["ColorScrollbarButtonBorder"]
  GETIMPORT R4 K20 [Color3.fromRGB]
  LOADN R5 255
  LOADN R6 255
  LOADN R7 255
  CALL R4 3 1
  SETTABLEKS R4 R3 K16 ["ColorScrollbarButtonText"]
  MOVE R4 R2
  LOADK R5 K21 ["AttenuationCurveEditorDarkTheme"]
  NEWTABLE R6 0 0
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1
