PROTO_0:
  NEWTABLE R3 0 1
  NAMECALL R4 R0 K0 ["GetComponents"]
  CALL R4 1 -1
  SETLIST R3 R4 -1 [1]
  NEWTABLE R4 0 1
  NAMECALL R5 R1 K0 ["GetComponents"]
  CALL R5 1 -1
  SETLIST R4 R5 -1 [1]
  LOADN R7 1
  LOADN R5 12
  LOADN R6 1
  FORNPREP R5
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K1 ["fuzzyEq"]
  GETTABLE R9 R3 R7
  GETTABLE R10 R4 R7
  MOVE R11 R2
  CALL R8 3 1
  JUMPIF R8 [+2]
  LOADB R8 0
  RETURN R8 1
  FORNLOOP R5
  LOADB R5 1
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Util"]
  GETTABLEKS R2 R3 K9 ["Math"]
  DUPCLOSURE R3 K10 [PROTO_0]
  CAPTURE VAL R2
  RETURN R3 1
