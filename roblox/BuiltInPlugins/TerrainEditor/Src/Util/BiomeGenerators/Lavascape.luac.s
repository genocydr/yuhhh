PROTO_0:
  GETTABLEKS R3 R0 K0 ["X"]
  GETTABLEKS R4 R0 K1 ["Y"]
  GETTABLEKS R5 R0 K2 ["Z"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["WaterLevel"]
  GETUPVAL R9 1
  MULK R12 R4 K5 [0.25]
  FASTCALL3 VECTOR R3 R12 R5
  MOVE R11 R3
  MOVE R13 R5
  GETIMPORT R10 K8 [Vector3.new]
  CALL R10 3 1
  LOADN R11 21
  LOADN R12 8
  CALL R9 3 1
  MULK R8 R9 K4 [5]
  ADD R7 R3 R8
  GETUPVAL R10 1
  MULK R13 R4 K5 [0.25]
  FASTCALL3 VECTOR R3 R13 R5
  MOVE R12 R3
  MOVE R14 R5
  GETIMPORT R11 K8 [Vector3.new]
  CALL R11 3 1
  LOADN R12 22
  LOADN R13 8
  CALL R10 3 1
  MULK R9 R10 K4 [5]
  ADD R8 R4 R9
  GETUPVAL R11 1
  MULK R14 R4 K5 [0.25]
  FASTCALL3 VECTOR R3 R14 R5
  MOVE R13 R3
  MOVE R15 R5
  GETIMPORT R12 K8 [Vector3.new]
  CALL R12 3 1
  LOADN R13 23
  LOADN R14 8
  CALL R11 3 1
  MULK R10 R11 K4 [5]
  ADD R9 R5 R10
  FASTCALL3 VECTOR R7 R8 R9
  MOVE R11 R7
  MOVE R12 R8
  MOVE R13 R9
  GETIMPORT R10 K8 [Vector3.new]
  CALL R10 3 1
  GETUPVAL R14 1
  MOVE R15 R0
  LOADN R16 22
  LOADN R17 30
  CALL R14 3 1
  MULK R13 R14 K9 [30]
  ADD R12 R7 R13
  GETUPVAL R16 1
  MOVE R17 R0
  LOADN R18 24
  LOADN R19 30
  CALL R16 3 1
  MULK R15 R16 K9 [30]
  ADD R14 R9 R15
  FASTCALL3 VECTOR R12 R8 R14
  MOVE R13 R8
  GETIMPORT R11 K8 [Vector3.new]
  CALL R11 3 1
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K10 ["Ridge"]
  GETUPVAL R13 3
  GETUPVAL R14 1
  MOVE R15 R11
  LOADN R16 2
  LOADN R17 120
  CALL R14 3 -1
  CALL R13 -1 -1
  CALL R12 -1 1
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K10 ["Ridge"]
  GETUPVAL R15 3
  GETUPVAL R16 1
  MOVE R17 R10
  LOADN R18 3
  LOADN R19 40
  CALL R16 3 -1
  CALL R15 -1 -1
  CALL R14 -1 1
  MULK R16 R12 K5 [0.25]
  ADDK R15 R16 K11 [0.75]
  MUL R13 R14 R15
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K10 ["Ridge"]
  GETUPVAL R16 3
  GETUPVAL R17 1
  MOVE R18 R10
  LOADN R19 4
  LOADN R20 20
  CALL R17 3 -1
  CALL R16 -1 -1
  CALL R15 -1 1
  MULK R17 R13 K5 [0.25]
  ADDK R16 R17 K11 [0.75]
  MUL R14 R15 R16
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K12 ["Threshold"]
  GETUPVAL R17 3
  GETUPVAL R18 1
  MOVE R19 R0
  LOADN R20 9
  LOADN R21 40
  CALL R18 3 -1
  CALL R17 -1 1
  LOADK R18 K5 [0.25]
  LOADK R19 K13 [0.5]
  CALL R16 3 1
  GETUPVAL R17 3
  GETUPVAL R18 1
  MOVE R19 R0
  LOADN R20 10
  LOADN R21 60
  CALL R18 3 -1
  CALL R17 -1 1
  MUL R15 R16 R17
  LOADN R17 0
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K12 ["Threshold"]
  MOVE R22 R12
  LOADK R23 K15 [0.975]
  LOADN R24 0
  CALL R21 3 1
  SUBRK R20 R14 K21 ["CFrame"]
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K12 ["Threshold"]
  MOVE R22 R13
  LOADK R23 K16 [0.925]
  LOADN R24 0
  CALL R21 3 1
  SUB R19 R20 R21
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K12 ["Threshold"]
  MOVE R21 R14
  LOADK R22 K17 [0.9]
  LOADN R23 0
  CALL R20 3 1
  SUB R18 R19 R20
  FASTCALL2 MATH_MAX R17 R18 [+3]
  GETIMPORT R16 K20 [math.max]
  CALL R16 2 1
  GETIMPORT R18 K23 [CFrame.Angles]
  LOADK R19 K24 [0.7]
  LOADK R20 K24 [0.7]
  LOADN R21 0
  CALL R18 3 1
  FASTCALL3 VECTOR R7 R8 R9
  MOVE R20 R7
  MOVE R21 R8
  MOVE R22 R9
  GETIMPORT R19 K8 [Vector3.new]
  CALL R19 3 1
  MUL R17 R18 R19
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K12 ["Threshold"]
  GETUPVAL R19 3
  GETUPVAL R20 1
  LOADK R22 K25 [{40, 300, 30}]
  DIV R21 R17 R22
  LOADN R22 123
  LOADN R23 1
  CALL R20 3 -1
  CALL R19 -1 1
  LOADK R20 K26 [0.6]
  LOADK R21 K27 [0.4]
  CALL R18 3 1
  ADDK R23 R6 K28 [0.02]
  LOADK R27 K13 [0.5]
  MULK R28 R15 K13 [0.5]
  ADD R26 R27 R28
  MUL R25 R16 R26
  MULK R24 R25 K28 [0.02]
  ADD R22 R23 R24
  MULK R23 R15 K29 [0.05]
  ADD R21 R22 R23
  MULK R22 R18 K30 [0.3]
  ADD R20 R21 R22
  SUBRK R22 R14 K1 ["Y"]
  ADDK R23 R6 K31 [0.01]
  JUMPIFLT R23 R22 [+4]
  LOADN R22 0
  JUMPIFNOTLT R22 R18 [+3]
  LOADK R21 K32 [0.04]
  JUMP [+1]
  LOADN R21 0
  ADD R19 R20 R21
  LOADN R21 0
  JUMPIFNOTLT R21 R18 [+4]
  GETIMPORT R20 K36 [Enum.Material.Rock]
  JUMP [+8]
  LOADN R21 1
  JUMPIFNOTLT R16 R21 [+4]
  GETIMPORT R20 K38 [Enum.Material.CrackedLava]
  JUMP [+2]
  GETIMPORT R20 K40 [Enum.Material.Basalt]
  GETIMPORT R22 K38 [Enum.Material.CrackedLava]
  JUMPIFNOTEQ R20 R22 [+7]
  SUBRK R22 R14 K1 ["Y"]
  JUMPIFNOTLT R22 R6 [+4]
  GETIMPORT R21 K40 [Enum.Material.Basalt]
  JUMP [+1]
  MOVE R21 R20
  MOVE R22 R19
  MOVE R23 R21
  MOVE R24 R20
  RETURN R22 3

PROTO_1:
  NEWCLOSURE R2 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R3 R0 K4 ["Src"]
  GETTABLEKS R2 R3 K5 ["Util"]
  GETTABLEKS R1 R2 K6 ["Generation"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R3 R1 K9 ["Filter"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R4 R1 K10 ["Perlin"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R5 R1 K11 ["ProcessPerlin"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R0 K4 ["Src"]
  GETTABLEKS R6 R7 K12 ["Types"]
  CALL R5 1 1
  DUPCLOSURE R6 K13 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R4
  RETURN R6 1