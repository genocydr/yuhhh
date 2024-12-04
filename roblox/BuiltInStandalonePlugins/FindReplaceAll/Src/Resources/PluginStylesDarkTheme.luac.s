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
  GETTABLEKS R2 R3 K9 ["createStyleSheet"]
  NEWTABLE R3 0 0
  LOADK R4 K10 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/Expand.png"]
  SETTABLEKS R4 R3 K11 ["ExpandReplaceInput"]
  LOADK R4 K12 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/Collapse.png"]
  SETTABLEKS R4 R3 K13 ["CollapseReplaceInput"]
  LOADK R4 K14 ["rbxasset://studio_svg_textures/Lua/FindReplaceAll/Dark/Standard/MatchCase.png"]
  SETTABLEKS R4 R3 K15 ["MatchCase"]
  LOADK R4 K16 ["rbxasset://studio_svg_textures/Lua/FindReplaceAll/Dark/Standard/ClearInput.png"]
  SETTABLEKS R4 R3 K17 ["ClearInput"]
  LOADK R4 K18 ["rbxasset://studio_svg_textures/Lua/FindReplaceAll/Dark/Standard/MatchWholeWord.png"]
  SETTABLEKS R4 R3 K19 ["MatchWholeWord"]
  LOADK R4 K20 ["rbxasset://studio_svg_textures/Lua/FindReplaceAll/Dark/Standard/RegularExpression.png"]
  SETTABLEKS R4 R3 K21 ["RegularExpression"]
  LOADK R4 K22 ["rbxasset://studio_svg_textures/Lua/FindReplaceAll/Dark/Standard/FindPrevious.png"]
  SETTABLEKS R4 R3 K23 ["FindPrevious"]
  LOADK R4 K24 ["rbxasset://studio_svg_textures/Lua/FindReplaceAll/Dark/Standard/FindNext.png"]
  SETTABLEKS R4 R3 K25 ["FindNext"]
  LOADK R4 K26 ["rbxasset://studio_svg_textures/Shared/Utility/Dark/Standard/Filter.png"]
  SETTABLEKS R4 R3 K27 ["Filter"]
  MOVE R4 R2
  LOADK R5 K28 ["FindReplaceAllDarkTheme"]
  NEWTABLE R6 0 0
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1
