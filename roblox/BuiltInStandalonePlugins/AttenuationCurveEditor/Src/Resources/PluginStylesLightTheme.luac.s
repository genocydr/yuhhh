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
  LOADN R5 100
  LOADN R6 100
  LOADN R7 100
  CALL R4 3 1
  SETTABLEKS R4 R3 K10 ["ColorGridLine"]
  GETIMPORT R4 K20 [Color3.fromRGB]
  LOADN R5 50
  LOADN R6 50
  LOADN R7 50
  CALL R4 3 1
  SETTABLEKS R4 R3 K11 ["ColorKeypointHighlight"]
  GETIMPORT R4 K20 [Color3.fromRGB]
  LOADN R5 200
  LOADN R6 200
  LOADN R7 200
  CALL R4 3 1
  SETTABLEKS R4 R3 K12 ["ColorScrollbarButton"]
  GETIMPORT R4 K20 [Color3.fromRGB]
  LOADN R5 170
  LOADN R6 170
  LOADN R7 170
  CALL R4 3 1
  SETTABLEKS R4 R3 K13 ["ColorScrollbarButtonPressed"]
  GETIMPORT R4 K20 [Color3.fromRGB]
  LOADN R5 230
  LOADN R6 230
  LOADN R7 230
  CALL R4 3 1
  SETTABLEKS R4 R3 K14 ["ColorScrollbarButtonHovered"]
  GETIMPORT R4 K20 [Color3.fromRGB]
  LOADN R5 100
  LOADN R6 100
  LOADN R7 100
  CALL R4 3 1
  SETTABLEKS R4 R3 K15 ["ColorScrollbarButtonBorder"]
  GETIMPORT R4 K20 [Color3.fromRGB]
  LOADN R5 0
  LOADN R6 0
  LOADN R7 0
  CALL R4 3 1
  SETTABLEKS R4 R3 K16 ["ColorScrollbarButtonText"]
  MOVE R4 R2
  LOADK R5 K21 ["AttenuationCurveEditorLightTheme"]
  NEWTABLE R6 0 0
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1
