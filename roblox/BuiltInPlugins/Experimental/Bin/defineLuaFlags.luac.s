MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ExperimentalMigrateToRoact17"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K4 ["DebugEnableExperimentalPlugin"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  LOADNIL R0
  RETURN R0 1
