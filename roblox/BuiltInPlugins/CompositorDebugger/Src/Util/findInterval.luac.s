PROTO_0:
  LOADN R2 10
  FASTCALL1 MATH_LOG10 R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K2 [math.log10]
  CALL R4 1 1
  FASTCALL1 MATH_FLOOR R4 [+2]
  GETIMPORT R3 K4 [math.floor]
  CALL R3 1 1
  FASTCALL2 MATH_POW R2 R3 [+3]
  GETIMPORT R1 K6 [math.pow]
  CALL R1 2 1
  DIV R2 R0 R1
  DIVK R3 R2 K7 [10]
  GETUPVAL R5 0
  GETTABLEN R4 R5 1
  GETUPVAL R5 0
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  JUMPIFNOTLT R3 R9 [+3]
  MOVE R4 R9
  JUMP [+2]
  FORGLOOP R5 2 [-5]
  MUL R5 R4 R1
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 0 5
  LOADK R1 K0 [0.05]
  LOADK R2 K1 [0.1]
  LOADK R3 K2 [0.25]
  LOADK R4 K3 [0.5]
  LOADN R5 1
  SETLIST R0 R1 5 [1]
  DUPCLOSURE R1 K4 [PROTO_0]
  CAPTURE VAL R0
  RETURN R1 1
