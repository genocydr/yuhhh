PROTO_0:
  FASTCALL1 TYPE R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K1 [type]
  CALL R4 1 1
  JUMPIFEQKS R4 K2 ["boolean"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETIMPORT R4 K5 [string.format]
  LOADK R5 K6 ["Expected isEnabled to be a boolean, received %s"]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R7 R0
  GETIMPORT R6 K8 [tostring]
  CALL R6 1 1
  CALL R4 2 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R2 K10 [assert]
  CALL R2 -1 0
  FASTCALL1 TYPE R1 [+3]
  MOVE R5 R1
  GETIMPORT R4 K1 [type]
  CALL R4 1 1
  JUMPIF R0 [+2]
  LOADK R5 K3 ["string"]
  JUMP [+1]
  LOADK R5 K11 ["table"]
  JUMPIFEQ R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL1 ASSERT R3 [+2]
  GETIMPORT R2 K10 [assert]
  CALL R2 1 0
  DUPTABLE R2 K14 [{"isEnabled", "errorMessage"}]
  SETTABLEKS R0 R2 K12 ["isEnabled"]
  JUMPIF R0 [+2]
  MOVE R3 R1
  JUMPIF R3 [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K13 ["errorMessage"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["Action"]
  CALL R0 1 1
  MOVE R1 R0
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K6 ["Name"]
  DUPCLOSURE R3 K7 [PROTO_0]
  CALL R1 2 -1
  RETURN R1 -1
