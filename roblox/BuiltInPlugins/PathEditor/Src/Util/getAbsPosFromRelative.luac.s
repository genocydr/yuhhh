PROTO_0:
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K1 [typeof]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K2 ["UDim2"] [+6]
  GETUPVAL R2 0
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  MOVE R0 R2
  LOADK R4 K3 ["GuiBase2d"]
  NAMECALL R2 R1 K4 ["IsA"]
  CALL R2 2 1
  JUMPIF R2 [+1]
  RETURN R0 1
  GETUPVAL R2 1
  MOVE R3 R0
  LOADK R5 K5 [0.5]
  GETTABLEKS R6 R1 K6 ["AbsoluteSize"]
  MUL R4 R5 R6
  GETTABLEKS R5 R1 K7 ["AbsoluteRotation"]
  CALL R2 3 1
  MOVE R0 R2
  GETTABLEKS R2 R1 K8 ["AbsolutePosition"]
  ADD R0 R0 R2
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["getVector2FromUDim2Scale"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K6 ["rotatePoint"]
  CALL R1 1 1
  DUPCLOSURE R2 K7 [PROTO_0]
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETGLOBAL R2 K8 ["getAbsPosFromRelative"]
  GETGLOBAL R2 K8 ["getAbsPosFromRelative"]
  RETURN R2 1
