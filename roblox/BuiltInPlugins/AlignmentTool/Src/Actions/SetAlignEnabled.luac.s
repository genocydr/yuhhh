PROTO_0:
  FASTCALL1 TYPE R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K1 [type]
  CALL R4 1 1
  JUMPIFEQKS R4 K2 ["boolean"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K3 [+4]
  LOADK R4 K3 ["Expected enabled to be a boolean"]
  GETIMPORT R2 K5 [assert]
  CALL R2 2 0
  LOADB R3 1
  FASTCALL1 TYPE R1 [+3]
  MOVE R5 R1
  GETIMPORT R4 K1 [type]
  CALL R4 1 1
  JUMPIFEQKS R4 K6 ["table"] [+5]
  JUMPIFEQKNIL R1 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K7 [+4]
  LOADK R4 K7 ["Expected reason to be a table or nil"]
  GETIMPORT R2 K5 [assert]
  CALL R2 2 0
  MOVE R2 R1
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R1 R2
  DUPTABLE R2 K10 [{"alignEnabled", "disabledReason"}]
  SETTABLEKS R0 R2 K8 ["alignEnabled"]
  SETTABLEKS R1 R2 K9 ["disabledReason"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["Action"]
  MOVE R3 R2
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K9 ["Name"]
  DUPCLOSURE R5 K10 [PROTO_0]
  CALL R3 2 -1
  RETURN R3 -1
