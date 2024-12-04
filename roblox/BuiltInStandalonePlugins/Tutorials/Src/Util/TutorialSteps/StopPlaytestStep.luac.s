PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["complete"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["tutorial"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R1 K1 ["stopPlaying"]
  GETTABLEKS R1 R0 K0 ["tutorial"]
  NAMECALL R1 R1 K2 ["resetAttachment"]
  CALL R1 1 0
  GETUPVAL R1 0
  JUMPIFNOT R1 [+8]
  GETTABLEKS R2 R0 K0 ["tutorial"]
  GETTABLEKS R1 R2 K3 ["Spotlight"]
  GETUPVAL R3 1
  NAMECALL R1 R1 K4 ["ApplyHighlightAsync"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["tutorial"]
  LOADNIL R2
  SETTABLEKS R2 R1 K1 ["stopPlaying"]
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
  GETTABLEKS R2 R3 K9 ["getFFlagSpotlightManager"]
  CALL R1 1 1
  CALL R1 0 1
  GETIMPORT R2 K6 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K10 ["TutorialStep"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K11 ["extend"]
  LOADK R4 K12 ["StopPlaytest"]
  CALL R3 1 1
  DUPTABLE R4 K18 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R5 K19 ["Standalone"]
  SETTABLEKS R5 R4 K13 ["DataModel"]
  LOADK R5 K19 ["Standalone"]
  SETTABLEKS R5 R4 K14 ["PluginType"]
  LOADK R5 K20 ["Ribbon"]
  SETTABLEKS R5 R4 K15 ["PluginId"]
  LOADK R5 K21 ["Widgets"]
  SETTABLEKS R5 R4 K16 ["Category"]
  LOADK R5 K22 ["LeftMezzanine/PlayControls/3"]
  SETTABLEKS R5 R4 K17 ["ItemId"]
  DUPCLOSURE R5 K23 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R4
  SETTABLEKS R5 R3 K24 ["bind"]
  DUPCLOSURE R5 K25 [PROTO_2]
  SETTABLEKS R5 R3 K26 ["unbind"]
  RETURN R3 1
