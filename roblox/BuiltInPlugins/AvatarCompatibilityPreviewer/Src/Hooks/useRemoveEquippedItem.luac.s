PROTO_0:
  MOVE R1 R0
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETUPVAL R6 0
  MOVE R7 R5
  GETUPVAL R8 1
  CALL R6 2 1
  JUMPIFNOT R6 [+10]
  GETIMPORT R6 K2 [table.clone]
  MOVE R7 R0
  CALL R6 1 1
  GETIMPORT R7 K4 [table.remove]
  MOVE R8 R6
  MOVE R9 R4
  CALL R7 2 0
  RETURN R6 1
  FORGLOOP R1 2 [-16]
  RETURN R0 1

PROTO_1:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useCallback"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  NEWTABLE R3 0 1
  MOVE R4 R0
  SETLIST R3 R4 1 [1]
  CALL R1 2 -1
  RETURN R1 -1

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
  GETTABLEKS R4 R0 K8 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["equippedItemDataEquals"]
  CALL R3 1 1
  DUPCLOSURE R4 K12 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R3
  RETURN R4 1
