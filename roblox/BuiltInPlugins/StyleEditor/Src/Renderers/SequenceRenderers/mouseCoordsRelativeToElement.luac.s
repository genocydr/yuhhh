PROTO_0:
  JUMPIF R0 [+6]
  GETIMPORT R2 K2 [Vector2.new]
  LOADN R3 0
  LOADN R4 0
  CALL R2 2 -1
  RETURN R2 -1
  FASTCALL2K ASSERT R0 K3 [+5]
  MOVE R3 R0
  LOADK R4 K3 ["element should be valid"]
  GETIMPORT R2 K5 [assert]
  CALL R2 2 0
  GETTABLEKS R2 R0 K6 ["AbsoluteSize"]
  GETTABLEKS R4 R0 K7 ["AbsolutePosition"]
  SUB R3 R1 R4
  GETIMPORT R4 K2 [Vector2.new]
  GETTABLEKS R7 R3 K8 ["X"]
  GETTABLEKS R8 R2 K8 ["X"]
  DIV R6 R7 R8
  LOADN R7 0
  LOADN R8 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R5 K11 [math.clamp]
  CALL R5 3 1
  GETTABLEKS R8 R3 K12 ["Y"]
  GETTABLEKS R9 R2 K12 ["Y"]
  DIV R7 R8 R9
  LOADN R8 0
  LOADN R9 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R6 K11 [math.clamp]
  CALL R6 3 1
  CALL R4 2 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
