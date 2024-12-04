PROTO_0:
  JUMPIF R0 [+1]
  RETURN R1 2
  MOVE R6 R0
  NAMECALL R4 R3 K0 ["pointToObjectSpace"]
  CALL R4 2 1
  MOVE R0 R4
  JUMPIF R1 [+2]
  MOVE R1 R0
  JUMP [+5]
  MOVE R6 R1
  NAMECALL R4 R3 K0 ["pointToObjectSpace"]
  CALL R4 2 1
  MOVE R1 R4
  JUMPIF R2 [+2]
  MOVE R2 R0
  JUMP [+5]
  MOVE R6 R2
  NAMECALL R4 R3 K0 ["pointToObjectSpace"]
  CALL R4 2 1
  MOVE R2 R4
  GETTABLEKS R4 R0 K1 ["x"]
  GETTABLEKS R5 R1 K1 ["x"]
  JUMPIFNOTLT R4 R5 [+12]
  GETTABLEKS R5 R0 K1 ["x"]
  GETTABLEKS R6 R1 K2 ["y"]
  GETTABLEKS R7 R1 K3 ["z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R4 K6 [Vector3.new]
  CALL R4 3 1
  MOVE R1 R4
  GETTABLEKS R4 R0 K2 ["y"]
  GETTABLEKS R5 R1 K2 ["y"]
  JUMPIFNOTLT R4 R5 [+12]
  GETTABLEKS R5 R1 K1 ["x"]
  GETTABLEKS R6 R0 K2 ["y"]
  GETTABLEKS R7 R1 K3 ["z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R4 K6 [Vector3.new]
  CALL R4 3 1
  MOVE R1 R4
  GETTABLEKS R4 R0 K3 ["z"]
  GETTABLEKS R5 R1 K3 ["z"]
  JUMPIFNOTLT R4 R5 [+12]
  GETTABLEKS R5 R1 K1 ["x"]
  GETTABLEKS R6 R1 K2 ["y"]
  GETTABLEKS R7 R0 K3 ["z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R4 K6 [Vector3.new]
  CALL R4 3 1
  MOVE R1 R4
  GETTABLEKS R4 R0 K1 ["x"]
  GETTABLEKS R5 R2 K1 ["x"]
  JUMPIFNOTLT R5 R4 [+12]
  GETTABLEKS R5 R0 K1 ["x"]
  GETTABLEKS R6 R2 K2 ["y"]
  GETTABLEKS R7 R2 K3 ["z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R4 K6 [Vector3.new]
  CALL R4 3 1
  MOVE R2 R4
  GETTABLEKS R4 R0 K2 ["y"]
  GETTABLEKS R5 R2 K2 ["y"]
  JUMPIFNOTLT R5 R4 [+12]
  GETTABLEKS R5 R2 K1 ["x"]
  GETTABLEKS R6 R0 K2 ["y"]
  GETTABLEKS R7 R2 K3 ["z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R4 K6 [Vector3.new]
  CALL R4 3 1
  MOVE R2 R4
  GETTABLEKS R4 R0 K3 ["z"]
  GETTABLEKS R5 R2 K3 ["z"]
  JUMPIFNOTLT R5 R4 [+12]
  GETTABLEKS R5 R2 K1 ["x"]
  GETTABLEKS R6 R2 K2 ["y"]
  GETTABLEKS R7 R0 K3 ["z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R4 K6 [Vector3.new]
  CALL R4 3 1
  MOVE R2 R4
  MOVE R6 R1
  NAMECALL R4 R3 K7 ["pointToWorldSpace"]
  CALL R4 2 1
  MOVE R1 R4
  MOVE R6 R2
  NAMECALL R4 R3 K7 ["pointToWorldSpace"]
  CALL R4 2 1
  MOVE R2 R4
  RETURN R1 2

PROTO_1:
  GETTABLEKS R4 R0 K0 ["Lower"]
  JUMPIF R4 [+11]
  GETTABLEKS R4 R0 K1 ["Upper"]
  JUMPIF R4 [+8]
  DUPTABLE R4 K2 [{"Lower", "Upper"}]
  LOADNIL R5
  SETTABLEKS R5 R4 K0 ["Lower"]
  LOADNIL R5
  SETTABLEKS R5 R4 K1 ["Upper"]
  RETURN R4 1
  JUMPIF R1 [+2]
  GETTABLEKS R1 R0 K0 ["Lower"]
  JUMPIF R2 [+2]
  GETTABLEKS R2 R0 K1 ["Upper"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["minVector3"]
  GETTABLEKS R5 R0 K0 ["Lower"]
  MOVE R6 R1
  CALL R4 2 1
  MOVE R1 R4
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["maxVector3"]
  GETTABLEKS R5 R0 K1 ["Upper"]
  MOVE R6 R2
  CALL R4 2 1
  MOVE R2 R4
  DUPTABLE R4 K2 [{"Lower", "Upper"}]
  SETTABLEKS R1 R4 K0 ["Lower"]
  SETTABLEKS R2 R4 K1 ["Upper"]
  RETURN R4 1

PROTO_2:
  JUMPIF R0 [+1]
  RETURN R1 2
  JUMPIF R1 [+1]
  MOVE R1 R0
  JUMPIF R2 [+1]
  MOVE R2 R0
  GETTABLEKS R3 R0 K0 ["x"]
  GETTABLEKS R4 R1 K0 ["x"]
  JUMPIFNOTLT R3 R4 [+12]
  GETTABLEKS R4 R0 K0 ["x"]
  GETTABLEKS R5 R1 K1 ["y"]
  GETTABLEKS R6 R1 K2 ["z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R3 K5 [Vector3.new]
  CALL R3 3 1
  MOVE R1 R3
  GETTABLEKS R3 R0 K1 ["y"]
  GETTABLEKS R4 R1 K1 ["y"]
  JUMPIFNOTLT R3 R4 [+12]
  GETTABLEKS R4 R1 K0 ["x"]
  GETTABLEKS R5 R0 K1 ["y"]
  GETTABLEKS R6 R1 K2 ["z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R3 K5 [Vector3.new]
  CALL R3 3 1
  MOVE R1 R3
  GETTABLEKS R3 R0 K2 ["z"]
  GETTABLEKS R4 R1 K2 ["z"]
  JUMPIFNOTLT R3 R4 [+12]
  GETTABLEKS R4 R1 K0 ["x"]
  GETTABLEKS R5 R1 K1 ["y"]
  GETTABLEKS R6 R0 K2 ["z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R3 K5 [Vector3.new]
  CALL R3 3 1
  MOVE R1 R3
  GETTABLEKS R3 R0 K0 ["x"]
  GETTABLEKS R4 R2 K0 ["x"]
  JUMPIFNOTLT R4 R3 [+12]
  GETTABLEKS R4 R0 K0 ["x"]
  GETTABLEKS R5 R2 K1 ["y"]
  GETTABLEKS R6 R2 K2 ["z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R3 K5 [Vector3.new]
  CALL R3 3 1
  MOVE R2 R3
  GETTABLEKS R3 R0 K1 ["y"]
  GETTABLEKS R4 R2 K1 ["y"]
  JUMPIFNOTLT R4 R3 [+12]
  GETTABLEKS R4 R2 K0 ["x"]
  GETTABLEKS R5 R0 K1 ["y"]
  GETTABLEKS R6 R2 K2 ["z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R3 K5 [Vector3.new]
  CALL R3 3 1
  MOVE R2 R3
  GETTABLEKS R3 R0 K2 ["z"]
  GETTABLEKS R4 R2 K2 ["z"]
  JUMPIFNOTLT R4 R3 [+12]
  GETTABLEKS R4 R2 K0 ["x"]
  GETTABLEKS R5 R2 K1 ["y"]
  GETTABLEKS R6 R0 K2 ["z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R3 K5 [Vector3.new]
  CALL R3 3 1
  MOVE R2 R3
  RETURN R1 2

PROTO_3:
  GETTABLEKS R3 R0 K1 ["Size"]
  DIVK R2 R3 K0 [2]
  LOADNIL R3
  LOADNIL R4
  GETGLOBAL R5 K2 ["unionVector3"]
  GETTABLEKS R6 R0 K3 ["CFrame"]
  LOADK R9 K4 [{-1, -1, -1}]
  MUL R8 R2 R9
  NAMECALL R6 R6 K5 ["pointToWorldSpace"]
  CALL R6 2 1
  MOVE R7 R3
  MOVE R8 R4
  MOVE R9 R1
  CALL R5 4 2
  MOVE R3 R5
  MOVE R4 R6
  GETGLOBAL R5 K2 ["unionVector3"]
  GETTABLEKS R6 R0 K3 ["CFrame"]
  LOADK R9 K6 [{-1, -1, 1}]
  MUL R8 R2 R9
  NAMECALL R6 R6 K5 ["pointToWorldSpace"]
  CALL R6 2 1
  MOVE R7 R3
  MOVE R8 R4
  MOVE R9 R1
  CALL R5 4 2
  MOVE R3 R5
  MOVE R4 R6
  GETGLOBAL R5 K2 ["unionVector3"]
  GETTABLEKS R6 R0 K3 ["CFrame"]
  LOADK R9 K7 [{-1, 1, -1}]
  MUL R8 R2 R9
  NAMECALL R6 R6 K5 ["pointToWorldSpace"]
  CALL R6 2 1
  MOVE R7 R3
  MOVE R8 R4
  MOVE R9 R1
  CALL R5 4 2
  MOVE R3 R5
  MOVE R4 R6
  GETGLOBAL R5 K2 ["unionVector3"]
  GETTABLEKS R6 R0 K3 ["CFrame"]
  LOADK R9 K8 [{-1, 1, 1}]
  MUL R8 R2 R9
  NAMECALL R6 R6 K5 ["pointToWorldSpace"]
  CALL R6 2 1
  MOVE R7 R3
  MOVE R8 R4
  MOVE R9 R1
  CALL R5 4 2
  MOVE R3 R5
  MOVE R4 R6
  GETGLOBAL R5 K2 ["unionVector3"]
  GETTABLEKS R6 R0 K3 ["CFrame"]
  LOADK R9 K9 [{1, -1, -1}]
  MUL R8 R2 R9
  NAMECALL R6 R6 K5 ["pointToWorldSpace"]
  CALL R6 2 1
  MOVE R7 R3
  MOVE R8 R4
  MOVE R9 R1
  CALL R5 4 2
  MOVE R3 R5
  MOVE R4 R6
  GETGLOBAL R5 K2 ["unionVector3"]
  GETTABLEKS R6 R0 K3 ["CFrame"]
  LOADK R9 K10 [{1, -1, 1}]
  MUL R8 R2 R9
  NAMECALL R6 R6 K5 ["pointToWorldSpace"]
  CALL R6 2 1
  MOVE R7 R3
  MOVE R8 R4
  MOVE R9 R1
  CALL R5 4 2
  MOVE R3 R5
  MOVE R4 R6
  GETGLOBAL R5 K2 ["unionVector3"]
  GETTABLEKS R6 R0 K3 ["CFrame"]
  LOADK R9 K11 [{1, 1, -1}]
  MUL R8 R2 R9
  NAMECALL R6 R6 K5 ["pointToWorldSpace"]
  CALL R6 2 1
  MOVE R7 R3
  MOVE R8 R4
  MOVE R9 R1
  CALL R5 4 2
  MOVE R3 R5
  MOVE R4 R6
  GETGLOBAL R5 K2 ["unionVector3"]
  GETTABLEKS R6 R0 K3 ["CFrame"]
  LOADK R9 K12 [{1, 1, 1}]
  MUL R8 R2 R9
  NAMECALL R6 R6 K5 ["pointToWorldSpace"]
  CALL R6 2 1
  MOVE R7 R3
  MOVE R8 R4
  MOVE R9 R1
  CALL R5 4 2
  MOVE R3 R5
  MOVE R4 R6
  RETURN R3 2

PROTO_4:
  GETUPVAL R3 0
  ADDK R2 R3 K0 [1]
  SETUPVAL R2 0
  LOADNIL R2
  LOADNIL R3
  NAMECALL R4 R0 K1 ["GetChildren"]
  CALL R4 1 1
  GETIMPORT R5 K3 [ipairs]
  MOVE R6 R4
  CALL R5 1 3
  FORGPREP_INEXT R5
  GETGLOBAL R10 K4 ["getExtentsRecursive"]
  MOVE R11 R9
  MOVE R12 R1
  CALL R10 2 1
  GETGLOBAL R11 K5 ["unionVector3"]
  GETTABLEKS R12 R10 K6 ["Lower"]
  MOVE R13 R2
  MOVE R14 R3
  MOVE R15 R1
  CALL R11 4 2
  MOVE R2 R11
  MOVE R3 R12
  GETGLOBAL R11 K5 ["unionVector3"]
  GETTABLEKS R12 R10 K7 ["Upper"]
  MOVE R13 R2
  MOVE R14 R3
  MOVE R15 R1
  CALL R11 4 2
  MOVE R2 R11
  MOVE R3 R12
  FORGLOOP R5 2 [inext] [-26]
  LOADK R7 K8 ["BasePart"]
  NAMECALL R5 R0 K9 ["IsA"]
  CALL R5 2 1
  JUMPIFNOT R5 [+123]
  GETTABLEKS R6 R0 K11 ["Size"]
  DIVK R5 R6 K10 [2]
  GETGLOBAL R6 K5 ["unionVector3"]
  GETTABLEKS R7 R0 K12 ["CFrame"]
  LOADK R10 K13 [{-1, -1, -1}]
  MUL R9 R5 R10
  NAMECALL R7 R7 K14 ["pointToWorldSpace"]
  CALL R7 2 1
  MOVE R8 R2
  MOVE R9 R3
  MOVE R10 R1
  CALL R6 4 2
  MOVE R2 R6
  MOVE R3 R7
  GETGLOBAL R6 K5 ["unionVector3"]
  GETTABLEKS R7 R0 K12 ["CFrame"]
  LOADK R10 K15 [{-1, -1, 1}]
  MUL R9 R5 R10
  NAMECALL R7 R7 K14 ["pointToWorldSpace"]
  CALL R7 2 1
  MOVE R8 R2
  MOVE R9 R3
  MOVE R10 R1
  CALL R6 4 2
  MOVE R2 R6
  MOVE R3 R7
  GETGLOBAL R6 K5 ["unionVector3"]
  GETTABLEKS R7 R0 K12 ["CFrame"]
  LOADK R10 K16 [{-1, 1, -1}]
  MUL R9 R5 R10
  NAMECALL R7 R7 K14 ["pointToWorldSpace"]
  CALL R7 2 1
  MOVE R8 R2
  MOVE R9 R3
  MOVE R10 R1
  CALL R6 4 2
  MOVE R2 R6
  MOVE R3 R7
  GETGLOBAL R6 K5 ["unionVector3"]
  GETTABLEKS R7 R0 K12 ["CFrame"]
  LOADK R10 K17 [{-1, 1, 1}]
  MUL R9 R5 R10
  NAMECALL R7 R7 K14 ["pointToWorldSpace"]
  CALL R7 2 1
  MOVE R8 R2
  MOVE R9 R3
  MOVE R10 R1
  CALL R6 4 2
  MOVE R2 R6
  MOVE R3 R7
  GETGLOBAL R6 K5 ["unionVector3"]
  GETTABLEKS R7 R0 K12 ["CFrame"]
  LOADK R10 K18 [{1, -1, -1}]
  MUL R9 R5 R10
  NAMECALL R7 R7 K14 ["pointToWorldSpace"]
  CALL R7 2 1
  MOVE R8 R2
  MOVE R9 R3
  MOVE R10 R1
  CALL R6 4 2
  MOVE R2 R6
  MOVE R3 R7
  GETGLOBAL R6 K5 ["unionVector3"]
  GETTABLEKS R7 R0 K12 ["CFrame"]
  LOADK R10 K19 [{1, -1, 1}]
  MUL R9 R5 R10
  NAMECALL R7 R7 K14 ["pointToWorldSpace"]
  CALL R7 2 1
  MOVE R8 R2
  MOVE R9 R3
  MOVE R10 R1
  CALL R6 4 2
  MOVE R2 R6
  MOVE R3 R7
  GETGLOBAL R6 K5 ["unionVector3"]
  GETTABLEKS R7 R0 K12 ["CFrame"]
  LOADK R10 K20 [{1, 1, -1}]
  MUL R9 R5 R10
  NAMECALL R7 R7 K14 ["pointToWorldSpace"]
  CALL R7 2 1
  MOVE R8 R2
  MOVE R9 R3
  MOVE R10 R1
  CALL R6 4 2
  MOVE R2 R6
  MOVE R3 R7
  GETGLOBAL R6 K5 ["unionVector3"]
  GETTABLEKS R7 R0 K12 ["CFrame"]
  LOADK R10 K21 [{1, 1, 1}]
  MUL R9 R5 R10
  NAMECALL R7 R7 K14 ["pointToWorldSpace"]
  CALL R7 2 1
  MOVE R8 R2
  MOVE R9 R3
  MOVE R10 R1
  CALL R6 4 2
  MOVE R2 R6
  MOVE R3 R7
  GETUPVAL R6 0
  SUBK R5 R6 K0 [1]
  SETUPVAL R5 0
  DUPTABLE R5 K22 [{"Lower", "Upper"}]
  SETTABLEKS R2 R5 K6 ["Lower"]
  SETTABLEKS R3 R5 K7 ["Upper"]
  RETURN R5 1

PROTO_5:
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["Selection"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  NAMECALL R1 R1 K4 ["Get"]
  CALL R1 1 1
  LOADNIL R2
  LOADNIL R3
  GETIMPORT R4 K6 [ipairs]
  MOVE R5 R1
  CALL R4 1 3
  FORGPREP_INEXT R4
  GETTABLEKS R9 R8 K7 ["Parent"]
  JUMPIFNOT R9 [+36]
  GETTABLEKS R10 R8 K7 ["Parent"]
  GETTABLEKS R9 R10 K7 ["Parent"]
  JUMPIFNOT R9 [+31]
  GETIMPORT R11 K9 [workspace]
  NAMECALL R9 R8 K10 ["IsDescendantOf"]
  CALL R9 2 1
  JUMPIFNOT R9 [+25]
  GETGLOBAL R9 K11 ["getExtentsRecursive"]
  MOVE R10 R8
  MOVE R11 R0
  CALL R9 2 1
  GETGLOBAL R10 K12 ["unionVector3"]
  GETTABLEKS R11 R9 K13 ["Lower"]
  MOVE R12 R2
  MOVE R13 R3
  MOVE R14 R0
  CALL R10 4 2
  MOVE R2 R10
  MOVE R3 R11
  GETGLOBAL R10 K12 ["unionVector3"]
  GETTABLEKS R11 R9 K14 ["Upper"]
  MOVE R12 R2
  MOVE R13 R3
  MOVE R14 R0
  CALL R10 4 2
  MOVE R2 R10
  MOVE R3 R11
  FORGLOOP R4 2 [inext] [-40]
  JUMPIFNOT R2 [+1]
  JUMPIF R3 [+4]
  GETTABLEKS R2 R0 K15 ["p"]
  GETTABLEKS R3 R0 K15 ["p"]
  RETURN R2 2

PROTO_6:
  LOADNIL R2
  LOADNIL R3
  GETIMPORT R4 K1 [ipairs]
  MOVE R5 R0
  CALL R4 1 3
  FORGPREP_INEXT R4
  GETGLOBAL R9 K2 ["getExtentsRecursive"]
  MOVE R10 R8
  MOVE R11 R1
  CALL R9 2 1
  GETGLOBAL R10 K3 ["unionVector3"]
  GETTABLEKS R11 R9 K4 ["Lower"]
  MOVE R12 R2
  MOVE R13 R3
  MOVE R14 R1
  CALL R10 4 2
  MOVE R2 R10
  MOVE R3 R11
  GETGLOBAL R10 K3 ["unionVector3"]
  GETTABLEKS R11 R9 K5 ["Upper"]
  MOVE R12 R2
  MOVE R13 R3
  MOVE R14 R1
  CALL R10 4 2
  MOVE R2 R10
  MOVE R3 R11
  FORGLOOP R4 2 [inext] [-26]
  JUMPIF R2 [+1]
  LOADK R2 K6 [{0, 0, 0}]
  JUMPIF R3 [+1]
  LOADK R3 K6 [{0, 0, 0}]
  MOVE R6 R2
  NAMECALL R4 R1 K7 ["pointToObjectSpace"]
  CALL R4 2 1
  MOVE R2 R4
  MOVE R6 R3
  NAMECALL R4 R1 K7 ["pointToObjectSpace"]
  CALL R4 2 1
  MOVE R3 R4
  DUPTABLE R4 K8 [{"Lower", "Upper"}]
  SETTABLEKS R2 R4 K4 ["Lower"]
  SETTABLEKS R3 R4 K5 ["Upper"]
  RETURN R4 1

PROTO_7:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 2
  MOVE R5 R1
  NAMECALL R3 R0 K0 ["pointToObjectSpace"]
  CALL R3 2 1
  MOVE R1 R3
  MOVE R5 R2
  NAMECALL R3 R0 K0 ["pointToObjectSpace"]
  CALL R3 2 1
  MOVE R2 R3
  DUPTABLE R3 K3 [{"Lower", "Upper"}]
  SETTABLEKS R1 R3 K1 ["Lower"]
  SETTABLEKS R2 R3 K2 ["Upper"]
  RETURN R3 1

PROTO_8:
  GETTABLEKS R2 R0 K0 ["Lower"]
  JUMPIFNOT R2 [+3]
  GETTABLEKS R2 R0 K1 ["Upper"]
  JUMPIF R2 [+3]
  LOADNIL R2
  LOADNIL R3
  RETURN R2 2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["absVector3"]
  GETTABLEKS R4 R0 K1 ["Upper"]
  GETTABLEKS R5 R0 K0 ["Lower"]
  SUB R3 R4 R5
  CALL R2 1 1
  GETTABLEKS R4 R0 K0 ["Lower"]
  DIVK R5 R2 K3 [2]
  ADD R3 R4 R5
  GETIMPORT R6 K6 [CFrame.new]
  MOVE R7 R3
  CALL R6 1 -1
  NAMECALL R4 R1 K7 ["toWorldSpace"]
  CALL R4 -1 1
  MOVE R5 R2
  RETURN R4 2

PROTO_9:
  LOADNIL R2
  JUMPIFNOT R1 [+2]
  MOVE R2 R1
  JUMP [+5]
  GETIMPORT R3 K2 [CFrame.new]
  LOADK R4 K3 [{0, 0, 0}]
  CALL R3 1 1
  MOVE R2 R3
  GETGLOBAL R3 K4 ["extentsToCFrameAndSize"]
  GETGLOBAL R4 K5 ["getExtents"]
  MOVE R5 R2
  CALL R4 1 1
  MOVE R5 R2
  CALL R3 2 2
  JUMPIFNOT R4 [+2]
  SETTABLEKS R4 R0 K6 ["Size"]
  JUMPIFNOT R3 [+2]
  SETTABLEKS R3 R0 K0 ["CFrame"]
  RETURN R0 0

PROTO_10:
  GETGLOBAL R2 K0 ["getExtentsOfList"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  GETGLOBAL R3 K1 ["extentsToCFrameAndSize"]
  MOVE R4 R2
  MOVE R5 R1
  CALL R3 2 1
  RETURN R3 1

PROTO_11:
  GETGLOBAL R2 K0 ["getExtentsOfList"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  GETGLOBAL R3 K1 ["extentsToCFrameAndSize"]
  MOVE R4 R2
  MOVE R5 R1
  CALL R3 2 2
  RETURN R4 1

PROTO_12:
  GETGLOBAL R2 K0 ["getExtentsOfList"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  GETGLOBAL R3 K1 ["extentsToCFrameAndSize"]
  MOVE R4 R2
  MOVE R5 R1
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["Utility"]
  CALL R0 1 1
  DUPCLOSURE R1 K6 [PROTO_0]
  SETGLOBAL R1 K7 ["unionVector3"]
  DUPCLOSURE R1 K8 [PROTO_1]
  CAPTURE VAL R0
  SETGLOBAL R1 K9 ["unionTuple"]
  LOADN R1 0
  DUPCLOSURE R2 K10 [PROTO_2]
  SETGLOBAL R2 K11 ["unionVector3NoSpaceChange"]
  DUPCLOSURE R2 K12 [PROTO_3]
  SETGLOBAL R2 K13 ["getPartBounds"]
  NEWCLOSURE R2 P4
  CAPTURE REF R1
  SETGLOBAL R2 K14 ["getExtentsRecursive"]
  DUPCLOSURE R2 K15 [PROTO_5]
  GETIMPORT R3 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K16 ["FuzzyMath"]
  CALL R3 1 1
  DUPCLOSURE R4 K17 [PROTO_6]
  SETGLOBAL R4 K18 ["getExtentsOfList"]
  DUPCLOSURE R4 K19 [PROTO_7]
  CAPTURE VAL R2
  SETGLOBAL R4 K20 ["getExtents"]
  DUPCLOSURE R4 K21 [PROTO_8]
  CAPTURE VAL R0
  SETGLOBAL R4 K22 ["extentsToCFrameAndSize"]
  DUPCLOSURE R4 K23 [PROTO_9]
  SETGLOBAL R4 K24 ["setPartCFrameToExtents"]
  DUPCLOSURE R4 K25 [PROTO_10]
  DUPCLOSURE R5 K26 [PROTO_11]
  DUPCLOSURE R6 K27 [PROTO_12]
  NEWTABLE R7 8 0
  GETGLOBAL R8 K24 ["setPartCFrameToExtents"]
  SETTABLEKS R8 R7 K24 ["setPartCFrameToExtents"]
  GETGLOBAL R8 K11 ["unionVector3NoSpaceChange"]
  SETTABLEKS R8 R7 K11 ["unionVector3NoSpaceChange"]
  GETGLOBAL R8 K13 ["getPartBounds"]
  SETTABLEKS R8 R7 K13 ["getPartBounds"]
  SETTABLEKS R4 R7 K28 ["getCFrameOfList"]
  SETTABLEKS R5 R7 K29 ["getSizeOfList"]
  SETTABLEKS R6 R7 K30 ["getCFrameAndSizeOfList"]
  CLOSEUPVALS R1
  RETURN R7 1
