MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Resources"]
  GETTABLEKS R2 R3 K8 ["Constants"]
  CALL R1 1 1
  DUPTABLE R2 K19 [{"StartKey", "EndKey", "CharacterLimit", "AttributeChunkNameBase", "AttributeChunkCountName", "AttributeInitialIssueCountName", "AttributeUnificationScriptName", "ScriptStatus", "ReferenceKey", "ScriptBackupTag"}]
  LOADK R3 K20 ["start"]
  SETTABLEKS R3 R2 K9 ["StartKey"]
  LOADK R3 K21 ["end"]
  SETTABLEKS R3 R2 K10 ["EndKey"]
  LOADK R3 K22 [199987]
  SETTABLEKS R3 R2 K11 ["CharacterLimit"]
  GETTABLEKS R4 R1 K23 ["AttributePrefix"]
  LOADK R5 K24 ["ScriptBackupChunk"]
  CONCAT R3 R4 R5
  SETTABLEKS R3 R2 K12 ["AttributeChunkNameBase"]
  GETTABLEKS R4 R1 K23 ["AttributePrefix"]
  LOADK R5 K25 ["ScriptBackupCount"]
  CONCAT R3 R4 R5
  SETTABLEKS R3 R2 K13 ["AttributeChunkCountName"]
  GETTABLEKS R4 R1 K23 ["AttributePrefix"]
  LOADK R5 K26 ["InitialIssueCount"]
  CONCAT R3 R4 R5
  SETTABLEKS R3 R2 K14 ["AttributeInitialIssueCountName"]
  GETTABLEKS R4 R1 K23 ["AttributePrefix"]
  LOADK R5 K27 ["UnificationScript"]
  CONCAT R3 R4 R5
  SETTABLEKS R3 R2 K15 ["AttributeUnificationScriptName"]
  DUPTABLE R3 K35 [{"AutoConverted", "Complete", "Reverted", "Warning", "Error", "VariableError", "None"}]
  LOADK R4 K28 ["AutoConverted"]
  SETTABLEKS R4 R3 K28 ["AutoConverted"]
  LOADK R4 K29 ["Complete"]
  SETTABLEKS R4 R3 K29 ["Complete"]
  LOADK R4 K30 ["Reverted"]
  SETTABLEKS R4 R3 K30 ["Reverted"]
  LOADK R4 K31 ["Warning"]
  SETTABLEKS R4 R3 K31 ["Warning"]
  LOADK R4 K32 ["Error"]
  SETTABLEKS R4 R3 K32 ["Error"]
  LOADK R4 K33 ["VariableError"]
  SETTABLEKS R4 R3 K33 ["VariableError"]
  LOADK R4 K34 ["None"]
  SETTABLEKS R4 R3 K34 ["None"]
  SETTABLEKS R3 R2 K16 ["ScriptStatus"]
  LOADK R3 K36 ["Reference"]
  SETTABLEKS R3 R2 K17 ["ReferenceKey"]
  LOADK R3 K37 ["R15MigratorScriptHasBackup"]
  SETTABLEKS R3 R2 K18 ["ScriptBackupTag"]
  RETURN R2 1