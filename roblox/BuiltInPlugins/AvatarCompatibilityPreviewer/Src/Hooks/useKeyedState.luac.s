PROTO_0:
  GETIMPORT R1 K2 [table.clone]
  MOVE R2 R0
  CALL R1 1 1
  MOVE R0 R1
  GETUPVAL R1 0
  GETUPVAL R4 0
  GETTABLE R3 R0 R4
  JUMPIFNOTEQKNIL R3 [+7]
  GETUPVAL R2 1
  GETUPVAL R3 2
  GETUPVAL R4 0
  CALL R3 1 -1
  CALL R2 -1 1
  JUMP [+4]
  GETUPVAL R2 1
  GETUPVAL R4 0
  GETTABLE R3 R0 R4
  CALL R2 1 1
  SETTABLE R2 R0 R1
  RETURN R0 1

PROTO_1:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["useState"]
  NEWTABLE R3 0 0
  CALL R2 1 2
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["useCallback"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R0
  NEWTABLE R6 0 2
  MOVE R7 R1
  MOVE R8 R0
  SETLIST R6 R7 2 [1]
  CALL R4 2 1
  GETTABLE R6 R2 R1
  JUMPIFNOTEQKNIL R6 [+5]
  MOVE R5 R0
  MOVE R6 R1
  CALL R5 1 1
  JUMP [+1]
  GETTABLE R5 R2 R1
  MOVE R6 R4
  RETURN R5 2

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_2]
  CAPTURE VAL R1
  RETURN R2 1
