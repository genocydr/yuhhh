PROTO_0:
  GETIMPORT R2 K1 [script]
  LOADK R4 K2 ["Plugin"]
  NAMECALL R2 R2 K3 ["FindFirstAncestorWhichIsA"]
  CALL R2 2 1
  MOVE R5 R1
  NAMECALL R3 R2 K4 ["GetPluginComponent"]
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 0 0
  DUPTABLE R3 K1 [{"__index"}]
  DUPCLOSURE R4 K2 [PROTO_0]
  SETTABLEKS R4 R3 K0 ["__index"]
  FASTCALL2 SETMETATABLE R0 R3 [+4]
  MOVE R2 R0
  GETIMPORT R1 K4 [setmetatable]
  CALL R1 2 0
  RETURN R0 1
