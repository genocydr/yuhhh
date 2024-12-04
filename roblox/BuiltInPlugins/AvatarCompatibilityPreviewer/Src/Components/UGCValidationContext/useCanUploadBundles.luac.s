PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFNOT R0 [+1]
  RETURN R0 0
  GETUPVAL R0 0
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["current"]
  GETIMPORT R0 K3 [task.spawn]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["useState"]
  LOADNIL R2
  CALL R1 1 2
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["useRef"]
  LOADB R4 0
  CALL R3 1 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["useCallback"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R0
  NEWTABLE R6 0 0
  CALL R4 2 1
  MOVE R5 R1
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
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["UGCValidation"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Hooks"]
  GETTABLEKS R4 R5 K11 ["useAssertNeverChanges"]
  CALL R3 1 1
  DUPCLOSURE R4 K12 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R1
  RETURN R4 1
