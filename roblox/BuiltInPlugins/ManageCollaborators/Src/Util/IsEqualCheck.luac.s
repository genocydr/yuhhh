PROTO_0:
  GETIMPORT R2 K1 [next]
  MOVE R3 R0
  CALL R2 1 1
  JUMPIFEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_1:
  JUMPIFEQKNIL R0 [+3]
  JUMPIFNOTEQKNIL R1 [+6]
  JUMPIFEQ R0 R1 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1
  GETIMPORT R3 K1 [next]
  MOVE R4 R0
  CALL R3 1 1
  JUMPIFEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETIMPORT R4 K1 [next]
  MOVE R5 R1
  CALL R4 1 1
  JUMPIFEQKNIL R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  JUMPIFEQ R2 R3 [+3]
  LOADB R2 0
  RETURN R2 1
  LOADB R2 1
  GETIMPORT R3 K3 [pairs]
  MOVE R4 R0
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETTABLE R8 R1 R6
  JUMPIFEQ R8 R7 [+3]
  LOADB R2 0
  JUMP [+2]
  FORGLOOP R3 2 [-6]
  GETIMPORT R3 K3 [pairs]
  MOVE R4 R1
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETTABLE R8 R0 R6
  JUMPIFEQ R8 R7 [+3]
  LOADB R2 0
  RETURN R2 1
  FORGLOOP R3 2 [-6]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  DUPCLOSURE R1 K1 [PROTO_1]
  RETURN R1 1
