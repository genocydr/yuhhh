PROTO_0:
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K1 [typeof]
  CALL R3 1 1
  JUMPIFEQKS R3 K2 ["Instance"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL1 ASSERT R2 [+2]
  GETIMPORT R1 K4 [assert]
  CALL R1 1 0
  DUPTABLE R1 K6 [{"targetObject"}]
  SETTABLEKS R0 R1 K5 ["targetObject"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R2 R0 K3 ["Packages"]
  GETTABLEKS R1 R2 K4 ["Framework"]
  GETIMPORT R4 K6 [require]
  MOVE R5 R1
  CALL R4 1 1
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["Action"]
  MOVE R3 R2
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K9 ["Name"]
  DUPCLOSURE R5 K10 [PROTO_0]
  CALL R3 2 -1
  RETURN R3 -1
