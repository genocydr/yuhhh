PROTO_0:
  FASTCALL1 TYPE R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K1 [type]
  CALL R4 1 1
  JUMPIFEQKS R4 K2 ["table"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K3 [+4]
  LOADK R4 K3 ["Expected story to be a table"]
  GETIMPORT R2 K5 [assert]
  CALL R2 2 0
  JUMPIFNOT R1 [+6]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["values"]
  MOVE R3 R1
  CALL R2 1 1
  JUMP [+6]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["values"]
  GETUPVAL R3 1
  CALL R3 0 -1
  CALL R2 -1 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K7 ["provideMockContext"]
  MOVE R4 R2
  MOVE R5 R0
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Dash"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["getMockContextMap"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K12 ["TestHelpers"]
  DUPCLOSURE R5 K13 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R5 1
