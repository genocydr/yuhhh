PROTO_0:
  GETTABLEKS R3 R0 K0 ["X"]
  FASTCALL1 MATH_FLOOR R3 [+2]
  GETIMPORT R2 K3 [math.floor]
  CALL R2 1 1
  GETTABLEKS R4 R0 K4 ["Y"]
  FASTCALL1 MATH_FLOOR R4 [+2]
  GETIMPORT R3 K3 [math.floor]
  CALL R3 1 1
  GETTABLEKS R5 R0 K5 ["Z"]
  FASTCALL1 MATH_FLOOR R5 [+2]
  GETIMPORT R4 K3 [math.floor]
  CALL R4 1 1
  FASTCALL VECTOR [+2]
  GETIMPORT R1 K8 [Vector3.new]
  CALL R1 3 1
  RETURN R1 1

PROTO_1:
  GETTABLEKS R3 R0 K0 ["X"]
  FASTCALL1 MATH_CEIL R3 [+2]
  GETIMPORT R2 K3 [math.ceil]
  CALL R2 1 1
  GETTABLEKS R4 R0 K4 ["Y"]
  FASTCALL1 MATH_CEIL R4 [+2]
  GETIMPORT R3 K3 [math.ceil]
  CALL R3 1 1
  GETTABLEKS R5 R0 K5 ["Z"]
  FASTCALL1 MATH_CEIL R5 [+2]
  GETIMPORT R4 K3 [math.ceil]
  CALL R4 1 1
  FASTCALL VECTOR [+2]
  GETIMPORT R1 K8 [Vector3.new]
  CALL R1 3 1
  RETURN R1 1

PROTO_2:
  NEWTABLE R2 0 0
  NEWTABLE R3 0 0
  GETUPVAL R4 0
  MOVE R5 R0
  MOVE R6 R1
  CALL R4 2 1
  GETTABLEKS R7 R4 K0 ["Min"]
  GETTABLEKS R6 R7 K1 ["X"]
  GETTABLEKS R8 R4 K0 ["Min"]
  GETTABLEKS R7 R8 K2 ["Y"]
  GETTABLEKS R9 R4 K0 ["Min"]
  GETTABLEKS R8 R9 K3 ["Z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R5 K6 [Vector3.new]
  CALL R5 3 1
  GETTABLEKS R8 R4 K7 ["Max"]
  GETTABLEKS R7 R8 K1 ["X"]
  GETTABLEKS R9 R4 K7 ["Max"]
  GETTABLEKS R8 R9 K2 ["Y"]
  GETTABLEKS R10 R4 K7 ["Max"]
  GETTABLEKS R9 R10 K3 ["Z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R6 K6 [Vector3.new]
  CALL R6 3 1
  DIVK R9 R5 K8 [400]
  GETTABLEKS R12 R9 K1 ["X"]
  FASTCALL1 MATH_FLOOR R12 [+2]
  GETIMPORT R11 K11 [math.floor]
  CALL R11 1 1
  GETTABLEKS R13 R9 K2 ["Y"]
  FASTCALL1 MATH_FLOOR R13 [+2]
  GETIMPORT R12 K11 [math.floor]
  CALL R12 1 1
  GETTABLEKS R14 R9 K3 ["Z"]
  FASTCALL1 MATH_FLOOR R14 [+2]
  GETIMPORT R13 K11 [math.floor]
  CALL R13 1 1
  FASTCALL VECTOR [+2]
  GETIMPORT R10 K6 [Vector3.new]
  CALL R10 3 1
  MOVE R8 R10
  MULK R7 R8 K8 [400]
  DIVK R10 R6 K8 [400]
  GETTABLEKS R13 R10 K1 ["X"]
  FASTCALL1 MATH_CEIL R13 [+2]
  GETIMPORT R12 K13 [math.ceil]
  CALL R12 1 1
  GETTABLEKS R14 R10 K2 ["Y"]
  FASTCALL1 MATH_CEIL R14 [+2]
  GETIMPORT R13 K13 [math.ceil]
  CALL R13 1 1
  GETTABLEKS R15 R10 K3 ["Z"]
  FASTCALL1 MATH_CEIL R15 [+2]
  GETIMPORT R14 K13 [math.ceil]
  CALL R14 1 1
  FASTCALL VECTOR [+2]
  GETIMPORT R11 K6 [Vector3.new]
  CALL R11 3 1
  MOVE R9 R11
  MULK R8 R9 K8 [400]
  GETIMPORT R9 K15 [Region3int16.new]
  GETIMPORT R10 K17 [Vector3int16.new]
  GETTABLEKS R11 R7 K1 ["X"]
  GETTABLEKS R12 R7 K2 ["Y"]
  GETTABLEKS R13 R7 K3 ["Z"]
  CALL R10 3 1
  GETIMPORT R11 K17 [Vector3int16.new]
  GETTABLEKS R12 R8 K1 ["X"]
  GETTABLEKS R13 R8 K2 ["Y"]
  GETTABLEKS R14 R8 K3 ["Z"]
  CALL R11 3 -1
  CALL R9 -1 1
  GETTABLEKS R13 R9 K0 ["Min"]
  GETTABLEKS R12 R13 K1 ["X"]
  GETTABLEKS R13 R9 K7 ["Max"]
  GETTABLEKS R10 R13 K1 ["X"]
  LOADN R11 144
  FORNPREP R10
  GETTABLEKS R16 R9 K0 ["Min"]
  GETTABLEKS R15 R16 K2 ["Y"]
  GETTABLEKS R16 R9 K7 ["Max"]
  GETTABLEKS R13 R16 K2 ["Y"]
  LOADN R14 144
  FORNPREP R13
  GETTABLEKS R19 R9 K0 ["Min"]
  GETTABLEKS R18 R19 K3 ["Z"]
  GETTABLEKS R19 R9 K7 ["Max"]
  GETTABLEKS R16 R19 K3 ["Z"]
  LOADN R17 144
  FORNPREP R16
  FASTCALL3 VECTOR R12 R15 R18
  MOVE R20 R12
  MOVE R21 R15
  MOVE R22 R18
  GETIMPORT R19 K6 [Vector3.new]
  CALL R19 3 1
  MOVE R21 R5
  NAMECALL R19 R19 K7 ["Max"]
  CALL R19 2 1
  ADDK R21 R12 K8 [400]
  ADDK R22 R15 K8 [400]
  ADDK R23 R18 K8 [400]
  FASTCALL VECTOR [+2]
  GETIMPORT R20 K6 [Vector3.new]
  CALL R20 3 1
  MOVE R22 R6
  NAMECALL R20 R20 K0 ["Min"]
  CALL R20 2 1
  GETTABLEKS R21 R19 K1 ["X"]
  GETTABLEKS R22 R20 K1 ["X"]
  JUMPIFLE R22 R21 [+61]
  GETTABLEKS R21 R19 K2 ["Y"]
  GETTABLEKS R22 R20 K2 ["Y"]
  JUMPIFLE R22 R21 [+55]
  GETTABLEKS R21 R19 K3 ["Z"]
  GETTABLEKS R22 R20 K3 ["Z"]
  JUMPIFLE R22 R21 [+49]
  MOVE R22 R2
  GETIMPORT R23 K15 [Region3int16.new]
  GETIMPORT R25 K17 [Vector3int16.new]
  GETTABLEKS R26 R19 K1 ["X"]
  GETTABLEKS R27 R19 K2 ["Y"]
  GETTABLEKS R28 R19 K3 ["Z"]
  CALL R25 3 1
  GETTABLEKS R26 R4 K0 ["Min"]
  SUB R24 R25 R26
  GETIMPORT R26 K17 [Vector3int16.new]
  GETTABLEKS R27 R20 K1 ["X"]
  GETTABLEKS R28 R20 K2 ["Y"]
  GETTABLEKS R29 R20 K3 ["Z"]
  CALL R26 3 1
  GETTABLEKS R27 R4 K0 ["Min"]
  SUB R25 R26 R27
  CALL R23 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R21 K20 [table.insert]
  CALL R21 -1 0
  GETIMPORT R21 K17 [Vector3int16.new]
  GETTABLEKS R22 R19 K1 ["X"]
  GETTABLEKS R23 R19 K2 ["Y"]
  GETTABLEKS R24 R19 K3 ["Z"]
  CALL R21 3 1
  FASTCALL2 TABLE_INSERT R3 R21 [+5]
  MOVE R23 R3
  MOVE R24 R21
  GETIMPORT R22 K20 [table.insert]
  CALL R22 2 0
  FORNLOOP R16
  FORNLOOP R13
  FORNLOOP R10
  RETURN R2 2

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["ConvertTransformToRegion"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_0]
  DUPCLOSURE R3 K9 [PROTO_1]
  DUPCLOSURE R4 K10 [PROTO_2]
  CAPTURE VAL R1
  RETURN R4 1
