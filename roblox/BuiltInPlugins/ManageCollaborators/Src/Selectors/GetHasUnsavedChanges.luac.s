PROTO_0:
  GETIMPORT R2 K1 [pairs]
  MOVE R3 R0
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETTABLE R7 R1 R5
  JUMPIFEQKNIL R7 [+12]
  GETTABLE R8 R1 R5
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K2 ["ActionKey"]
  GETTABLE R7 R8 R9
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K2 ["ActionKey"]
  GETTABLE R8 R6 R9
  JUMPIFEQ R7 R8 [+3]
  LOADB R7 1
  RETURN R7 1
  FORGLOOP R2 2 [-17]
  GETIMPORT R2 K1 [pairs]
  MOVE R3 R1
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETTABLE R7 R0 R5
  JUMPIFNOTEQKNIL R7 [+3]
  LOADB R7 1
  RETURN R7 1
  FORGLOOP R2 2 [-6]
  LOADB R2 0
  RETURN R2 1

PROTO_1:
  GETUPVAL R2 0
  FASTCALL1 ASSERT R2 [+2]
  GETIMPORT R1 K1 [assert]
  CALL R1 1 0
  GETTABLEKS R2 R0 K2 ["Permissions"]
  GETTABLEKS R1 R2 K3 ["NewPermissions"]
  JUMPIF R1 [+2]
  LOADB R1 0
  RETURN R1 1
  GETTABLEKS R3 R0 K2 ["Permissions"]
  GETTABLEKS R2 R3 K3 ["NewPermissions"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["UserSubjectKey"]
  GETTABLE R1 R2 R3
  GETTABLEKS R4 R0 K2 ["Permissions"]
  GETTABLEKS R3 R4 K5 ["CurrentPermissions"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["UserSubjectKey"]
  GETTABLE R2 R3 R4
  GETTABLEKS R5 R0 K2 ["Permissions"]
  GETTABLEKS R4 R5 K3 ["NewPermissions"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K6 ["RoleSubjectKey"]
  GETTABLE R3 R4 R5
  GETTABLEKS R6 R0 K2 ["Permissions"]
  GETTABLEKS R5 R6 K5 ["CurrentPermissions"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K6 ["RoleSubjectKey"]
  GETTABLE R4 R5 R6
  GETGLOBAL R5 K7 ["checkForDifferenceInCollaborators"]
  MOVE R6 R1
  MOVE R7 R2
  CALL R5 2 1
  JUMPIF R5 [+5]
  GETGLOBAL R5 K7 ["checkForDifferenceInCollaborators"]
  MOVE R6 R3
  MOVE R7 R4
  CALL R5 2 1
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["COLLAB2699FixSaveChangesLogic"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R5 R1 K9 ["Src"]
  GETTABLEKS R4 R5 K10 ["Util"]
  GETTABLEKS R3 R4 K11 ["PermissionsConstants"]
  CALL R2 1 1
  DUPCLOSURE R3 K12 [PROTO_0]
  CAPTURE VAL R2
  SETGLOBAL R3 K13 ["checkForDifferenceInCollaborators"]
  DUPCLOSURE R3 K14 [PROTO_1]
  CAPTURE VAL R0
  CAPTURE VAL R2
  RETURN R3 1
