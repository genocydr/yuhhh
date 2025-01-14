MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K8 [{"PublishTags", "NonePublishTags", "AttributePrefix", "PreviewSpeeds", "StatusTableData", "CrossPluginCommunicationName", "CrossPluginCommunicationInstructions", "ScriptMenuActions"}]
  DUPTABLE R1 K13 [{"AdapterTagging", "CharacterTagging", "AnimationTagging", "ScriptTagging"}]
  DUPTABLE R2 K16 [{"Name", "Mask"}]
  LOADK R3 K17 ["R15MigratorHasAdapter"]
  SETTABLEKS R3 R2 K14 ["Name"]
  LOADN R3 1
  SETTABLEKS R3 R2 K15 ["Mask"]
  SETTABLEKS R2 R1 K9 ["AdapterTagging"]
  DUPTABLE R2 K16 [{"Name", "Mask"}]
  LOADK R3 K18 ["R15MigratorUnconvertedCharacter"]
  SETTABLEKS R3 R2 K14 ["Name"]
  LOADN R3 2
  SETTABLEKS R3 R2 K15 ["Mask"]
  SETTABLEKS R2 R1 K10 ["CharacterTagging"]
  DUPTABLE R2 K16 [{"Name", "Mask"}]
  LOADK R3 K19 ["R15MigratorUnconvertedAnimation"]
  SETTABLEKS R3 R2 K14 ["Name"]
  LOADN R3 4
  SETTABLEKS R3 R2 K15 ["Mask"]
  SETTABLEKS R2 R1 K11 ["AnimationTagging"]
  DUPTABLE R2 K16 [{"Name", "Mask"}]
  LOADK R3 K20 ["R15MigratorUnconvertedScript"]
  SETTABLEKS R3 R2 K14 ["Name"]
  LOADN R3 8
  SETTABLEKS R3 R2 K15 ["Mask"]
  SETTABLEKS R2 R1 K12 ["ScriptTagging"]
  SETTABLEKS R1 R0 K0 ["PublishTags"]
  DUPTABLE R1 K22 [{"CharactersConvertedToR15Tag"}]
  LOADK R2 K23 ["R15MigratorCharactersConvertedToR15"]
  SETTABLEKS R2 R1 K21 ["CharactersConvertedToR15Tag"]
  SETTABLEKS R1 R0 K1 ["NonePublishTags"]
  LOADK R1 K24 ["RBX_R15Migrator_"]
  SETTABLEKS R1 R0 K2 ["AttributePrefix"]
  NEWTABLE R1 0 8
  LOADK R2 K25 [0.25]
  LOADK R3 K26 [0.5]
  LOADK R4 K27 [0.75]
  LOADN R5 1
  LOADK R6 K28 [1.25]
  LOADK R7 K29 [1.5]
  LOADK R8 K30 [1.75]
  LOADN R9 2
  SETLIST R1 R2 8 [1]
  SETTABLEKS R1 R0 K3 ["PreviewSpeeds"]
  DUPTABLE R1 K33 [{"TEXT_COLUMN_INDEX", "STATUS_COLUMN_INDEX"}]
  LOADN R2 1
  SETTABLEKS R2 R1 K31 ["TEXT_COLUMN_INDEX"]
  LOADN R2 2
  SETTABLEKS R2 R1 K32 ["STATUS_COLUMN_INDEX"]
  SETTABLEKS R1 R0 K4 ["StatusTableData"]
  LOADK R1 K34 ["R15Migrator"]
  SETTABLEKS R1 R0 K5 ["CrossPluginCommunicationName"]
  DUPTABLE R1 K37 [{"Open", "Published"}]
  LOADK R2 K35 ["Open"]
  SETTABLEKS R2 R1 K35 ["Open"]
  LOADK R2 K36 ["Published"]
  SETTABLEKS R2 R1 K36 ["Published"]
  SETTABLEKS R1 R0 K6 ["CrossPluginCommunicationInstructions"]
  DUPTABLE R1 K42 [{"GoToScript", "ShowInExplorer", "RevertScript", "SelectAllSimilar"}]
  LOADK R2 K38 ["GoToScript"]
  SETTABLEKS R2 R1 K38 ["GoToScript"]
  LOADK R2 K39 ["ShowInExplorer"]
  SETTABLEKS R2 R1 K39 ["ShowInExplorer"]
  LOADK R2 K40 ["RevertScript"]
  SETTABLEKS R2 R1 K40 ["RevertScript"]
  LOADK R2 K41 ["SelectAllSimilar"]
  SETTABLEKS R2 R1 K41 ["SelectAllSimilar"]
  SETTABLEKS R1 R0 K7 ["ScriptMenuActions"]
  DUPTABLE R1 K46 [{"TempId", "OriginalId", "Name", "Adapted"}]
  GETTABLEKS R3 R0 K2 ["AttributePrefix"]
  LOADK R4 K47 ["R15MigratorTempId"]
  CONCAT R2 R3 R4
  SETTABLEKS R2 R1 K43 ["TempId"]
  GETTABLEKS R3 R0 K2 ["AttributePrefix"]
  LOADK R4 K44 ["OriginalId"]
  CONCAT R2 R3 R4
  SETTABLEKS R2 R1 K44 ["OriginalId"]
  GETTABLEKS R3 R0 K2 ["AttributePrefix"]
  LOADK R4 K48 ["name"]
  CONCAT R2 R3 R4
  SETTABLEKS R2 R1 K14 ["Name"]
  GETTABLEKS R3 R0 K2 ["AttributePrefix"]
  LOADK R4 K45 ["Adapted"]
  CONCAT R2 R3 R4
  SETTABLEKS R2 R1 K45 ["Adapted"]
  SETTABLEKS R1 R0 K49 ["Attributes"]
  RETURN R0 1
