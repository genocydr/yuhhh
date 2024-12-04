PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["complete"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["tutorial"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R1 K1 ["startPlaying"]
  GETTABLEKS R1 R0 K0 ["tutorial"]
  GETUPVAL R4 0
  JUMPIFNOT R4 [+26]
  DUPTABLE R3 K6 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K2 ["TargetWidgetUri"]
  GETIMPORT R4 K9 [Vector2.new]
  LOADN R5 0
  LOADN R6 0
  CALL R4 2 1
  SETTABLEKS R4 R3 K3 ["SubjectAnchorPoint"]
  GETIMPORT R4 K9 [Vector2.new]
  LOADN R5 0
  LOADN R6 1
  CALL R4 2 1
  SETTABLEKS R4 R3 K4 ["TargetAnchorPoint"]
  GETIMPORT R4 K9 [Vector2.new]
  LOADN R5 0
  LOADN R6 20
  CALL R4 2 1
  SETTABLEKS R4 R3 K5 ["Offset"]
  JUMP [+39]
  GETUPVAL R4 2
  JUMPIFNOT R4 [+26]
  DUPTABLE R3 K6 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  GETUPVAL R4 3
  SETTABLEKS R4 R3 K2 ["TargetWidgetUri"]
  GETIMPORT R4 K9 [Vector2.new]
  LOADN R5 0
  LOADN R6 0
  CALL R4 2 1
  SETTABLEKS R4 R3 K3 ["SubjectAnchorPoint"]
  GETIMPORT R4 K9 [Vector2.new]
  LOADN R5 0
  LOADN R6 1
  CALL R4 2 1
  SETTABLEKS R4 R3 K4 ["TargetAnchorPoint"]
  GETIMPORT R4 K9 [Vector2.new]
  LOADN R5 0
  LOADN R6 20
  CALL R4 2 1
  SETTABLEKS R4 R3 K5 ["Offset"]
  JUMP [+11]
  DUPTABLE R3 K12 [{"target", "offset"}]
  LOADK R4 K13 ["playGameActionGroupRibbonControl"]
  SETTABLEKS R4 R3 K10 ["target"]
  GETIMPORT R4 K9 [Vector2.new]
  LOADN R5 0
  LOADN R6 5
  CALL R4 2 1
  SETTABLEKS R4 R3 K11 ["offset"]
  NAMECALL R1 R1 K14 ["attachTo"]
  CALL R1 2 0
  GETUPVAL R1 4
  JUMPIFNOT R1 [+12]
  GETTABLEKS R2 R0 K0 ["tutorial"]
  GETTABLEKS R1 R2 K15 ["Spotlight"]
  GETUPVAL R4 0
  JUMPIFNOT R4 [+2]
  GETUPVAL R3 1
  JUMP [+1]
  GETUPVAL R3 3
  NAMECALL R1 R1 K16 ["ApplyHighlightAsync"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["tutorial"]
  LOADNIL R2
  SETTABLEKS R2 R1 K1 ["startPlaying"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  LOADK R2 K3 ["Tutorials"]
  NAMECALL R0 R0 K4 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K6 [require]
  GETTABLEKS R4 R0 K7 ["Src"]
  GETTABLEKS R3 R4 K8 ["Flags"]
  GETTABLEKS R2 R3 K9 ["getFFlagTutorialsUseLuaRibbon"]
  CALL R1 1 1
  CALL R1 0 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Flags"]
  GETTABLEKS R3 R4 K10 ["getFFlagSpotlightManager"]
  CALL R2 1 1
  CALL R2 0 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R6 R0 K7 ["Src"]
  GETTABLEKS R5 R6 K8 ["Flags"]
  GETTABLEKS R4 R5 K11 ["getFFlagTutorialsUseExtensibilityApi"]
  CALL R3 1 1
  CALL R3 0 1
  GETIMPORT R4 K6 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K2 ["Parent"]
  GETTABLEKS R5 R6 K12 ["TutorialStep"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K13 ["extend"]
  LOADK R6 K14 ["StartPlaytest"]
  CALL R5 1 1
  DUPTABLE R6 K20 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R7 K21 ["Standalone"]
  SETTABLEKS R7 R6 K15 ["DataModel"]
  LOADK R7 K21 ["Standalone"]
  SETTABLEKS R7 R6 K16 ["PluginType"]
  LOADK R7 K22 ["Ribbon"]
  SETTABLEKS R7 R6 K17 ["PluginId"]
  LOADK R7 K23 ["Widgets"]
  SETTABLEKS R7 R6 K18 ["Category"]
  LOADK R7 K24 ["LeftMezzanine/PlayControls/1"]
  SETTABLEKS R7 R6 K19 ["ItemId"]
  DUPTABLE R7 K25 [{"PluginId", "Category", "ItemId"}]
  LOADK R8 K26 ["QtRibbon"]
  SETTABLEKS R8 R7 K17 ["PluginId"]
  LOADK R8 K23 ["Widgets"]
  SETTABLEKS R8 R7 K18 ["Category"]
  LOADK R8 K27 ["Play"]
  SETTABLEKS R8 R7 K19 ["ItemId"]
  DUPCLOSURE R8 K28 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R2
  SETTABLEKS R8 R5 K29 ["bind"]
  DUPCLOSURE R8 K30 [PROTO_2]
  SETTABLEKS R8 R5 K31 ["unbind"]
  RETURN R5 1
