PROTO_0:
  FASTCALL2K ASSERT R0 K0 [+5]
  MOVE R2 R0
  LOADK R3 K0 ["SetPurchaseStatus expects a PurchaseStatus."]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  DUPTABLE R1 K4 [{"status"}]
  SETTABLEKS R0 R1 K3 ["status"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K6 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K7 ["Util"]
  GETTABLEKS R3 R2 K8 ["Action"]
  MOVE R4 R3
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K9 ["Name"]
  DUPCLOSURE R6 K10 [PROTO_0]
  CALL R4 2 -1
  RETURN R4 -1
