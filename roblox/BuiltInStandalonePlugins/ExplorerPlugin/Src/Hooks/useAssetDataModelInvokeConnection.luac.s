PROTO_0:
  GETUPVAL R0 0
  RETURN R0 1

PROTO_1:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R3 2
  NAMECALL R0 R0 K0 ["OnInvoke"]
  CALL R0 3 1
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  RETURN R1 1

PROTO_3:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["ContextServices"]
  GETTABLEKS R3 R4 K1 ["Plugin"]
  NAMECALL R3 R3 K2 ["use"]
  CALL R3 1 1
  NAMECALL R3 R3 K3 ["get"]
  CALL R3 1 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["useMemo"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  MOVE R6 R2
  CALL R4 2 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["useEffect"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R3
  CAPTURE VAL R0
  CAPTURE VAL R4
  NEWTABLE R7 0 3
  MOVE R8 R3
  MOVE R9 R0
  MOVE R10 R4
  SETLIST R7 R8 3 [1]
  CALL R5 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ExplorerPlugin"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  DUPCLOSURE R3 K9 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R3 1
