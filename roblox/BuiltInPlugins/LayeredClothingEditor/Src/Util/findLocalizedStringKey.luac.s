PROTO_0:
  GETIMPORT R4 K1 [pairs]
  MOVE R5 R3
  CALL R4 1 3
  FORGPREP_NEXT R4
  MOVE R11 R1
  MOVE R12 R7
  NAMECALL R9 R0 K2 ["getText"]
  CALL R9 3 1
  JUMPIFNOTEQ R9 R2 [+2]
  RETURN R7 1
  FORGLOOP R4 2 [-9]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1