PROTO_0:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["Arctic"]
  JUMPIFNOTEQ R0 R4 [+9]
  LOADK R6 K1 [0.2]
  JUMPIFNOTLT R6 R1 [+3]
  LOADN R5 1
  JUMP [+1]
  LOADN R5 0
  MUL R4 R5 R2
  RETURN R4 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["Canyons"]
  JUMPIFNOTEQ R0 R4 [+9]
  LOADK R6 K3 [0.7]
  JUMPIFNOTLT R6 R1 [+3]
  LOADN R5 1
  JUMP [+1]
  LOADN R5 0
  MUL R4 R5 R2
  RETURN R4 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["Mountains"]
  JUMPIFNOTEQ R0 R4 [+7]
  POWK R4 R1 K5 [3]
  SUBRK R7 R6 K4 ["Mountains"]
  MUL R6 R3 R7
  MUL R7 R2 R4
  ADD R5 R6 R7
  RETURN R5 1
  SUBRK R6 R6 K1 [0.2]
  MUL R5 R3 R6
  MUL R6 R2 R1
  ADD R4 R5 R6
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["Biome"]
  DUPCLOSURE R3 K9 [PROTO_0]
  CAPTURE VAL R2
  RETURN R3 1
