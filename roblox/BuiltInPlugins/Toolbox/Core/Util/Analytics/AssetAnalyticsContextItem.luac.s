PROTO_0:
  DUPTABLE R1 K1 [{"assetAnalytics"}]
  MOVE R2 R0
  JUMPIF R2 [+4]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K0 ["assetAnalytics"]
  GETUPVAL R4 1
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K4 [setmetatable]
  CALL R2 2 0
  RETURN R1 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["assetAnalytics"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K7 ["ContextServices"]
  GETTABLEKS R3 R4 K8 ["ContextItem"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R8 R0 K9 ["Core"]
  GETTABLEKS R7 R8 K10 ["Util"]
  GETTABLEKS R6 R7 K11 ["Analytics"]
  GETTABLEKS R5 R6 K12 ["AssetAnalytics"]
  CALL R4 1 1
  LOADK R7 K12 ["AssetAnalytics"]
  NAMECALL R5 R3 K13 ["extend"]
  CALL R5 2 1
  DUPCLOSURE R6 K14 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R5
  SETTABLEKS R6 R5 K15 ["new"]
  DUPCLOSURE R6 K16 [PROTO_1]
  SETTABLEKS R6 R5 K17 ["get"]
  RETURN R5 1
