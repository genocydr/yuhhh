PROTO_0:
  DUPTABLE R1 K1 [{"adornments"}]
  MOVE R2 R0
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K0 ["adornments"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Util"]
  GETTABLEKS R2 R3 K9 ["Action"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K10 ["Src"]
  GETTABLEKS R4 R5 K11 ["Types"]
  CALL R3 1 1
  MOVE R4 R2
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K12 ["Name"]
  DUPCLOSURE R6 K13 [PROTO_0]
  CALL R4 2 -1
  RETURN R4 -1
