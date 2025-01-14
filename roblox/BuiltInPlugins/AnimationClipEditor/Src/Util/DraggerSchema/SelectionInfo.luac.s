PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["computeInfo"]
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  GETUPVAL R4 1
  FASTCALL2 SETMETATABLE R3 R4 [+3]
  GETIMPORT R2 K2 [setmetatable]
  CALL R2 2 1
  GETTABLEKS R5 R2 K3 ["draggerContext"]
  GETTABLEKS R4 R5 K4 ["RootInstance"]
  JUMPIFNOT R4 [+11]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K5 ["getJoints"]
  GETTABLEKS R4 R2 K6 ["parts"]
  GETTABLEKS R6 R2 K3 ["draggerContext"]
  GETTABLEKS R5 R6 K4 ["RootInstance"]
  CALL R3 2 1
  JUMPIF R3 [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K7 ["joints"]
  RETURN R2 1

PROTO_1:
  LOADB R1 0
  GETTABLEKS R3 R0 K0 ["parts"]
  LENGTH R2 R3
  JUMPIFNOTEQKN R2 K1 [0] [+14]
  LOADB R1 0
  GETTABLEKS R3 R0 K2 ["attachments"]
  LENGTH R2 R3
  JUMPIFNOTEQKN R2 K1 [0] [+8]
  GETTABLEKS R3 R0 K3 ["bones"]
  LENGTH R2 R3
  JUMPIFEQKN R2 K1 [0] [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["draggerContext"]
  NAMECALL R1 R1 K1 ["shouldUseLocalSpace"]
  CALL R1 1 1
  GETTABLEKS R4 R0 K2 ["parts"]
  LENGTH R3 R4
  LOADN R4 0
  JUMPIFNOTLT R4 R3 [+3]
  LOADB R2 1
  JUMP [+1]
  LOADB R2 0
  JUMPIFNOT R2 [+3]
  GETTABLEKS R3 R0 K3 ["joints"]
  JUMPIF R3 [+2]
  GETTABLEKS R3 R0 K4 ["bones"]
  LENGTH R4 R3
  LOADN R5 0
  JUMPIFNOTLT R5 R4 [+74]
  LENGTH R5 R3
  GETTABLE R4 R3 R5
  JUMPIF R2 [+28]
  JUMPIFNOT R1 [+11]
  GETTABLEKS R5 R4 K5 ["TransformedWorldCFrame"]
  FASTCALL VECTOR [+2]
  GETIMPORT R6 K8 [Vector3.new]
  CALL R6 0 1
  FASTCALL VECTOR [+2]
  GETIMPORT R7 K8 [Vector3.new]
  CALL R7 0 1
  RETURN R5 3
  GETIMPORT R5 K10 [CFrame.new]
  GETTABLEKS R7 R4 K5 ["TransformedWorldCFrame"]
  GETTABLEKS R6 R7 K11 ["Position"]
  CALL R5 1 1
  FASTCALL VECTOR [+2]
  GETIMPORT R6 K8 [Vector3.new]
  CALL R6 0 1
  FASTCALL VECTOR [+2]
  GETIMPORT R7 K8 [Vector3.new]
  CALL R7 0 1
  RETURN R5 3
  GETTABLEKS R5 R4 K12 ["Part1"]
  JUMPIFEQKNIL R5 [+39]
  JUMPIFNOT R1 [+16]
  GETTABLEKS R7 R4 K12 ["Part1"]
  GETTABLEKS R6 R7 K9 ["CFrame"]
  GETTABLEKS R7 R4 K13 ["C1"]
  MUL R5 R6 R7
  FASTCALL VECTOR [+2]
  GETIMPORT R6 K8 [Vector3.new]
  CALL R6 0 1
  FASTCALL VECTOR [+2]
  GETIMPORT R7 K8 [Vector3.new]
  CALL R7 0 1
  RETURN R5 3
  GETIMPORT R5 K10 [CFrame.new]
  GETTABLEKS R9 R4 K12 ["Part1"]
  GETTABLEKS R8 R9 K9 ["CFrame"]
  GETTABLEKS R9 R4 K13 ["C1"]
  MUL R7 R8 R9
  GETTABLEKS R6 R7 K11 ["Position"]
  CALL R5 1 1
  FASTCALL VECTOR [+2]
  GETIMPORT R6 K8 [Vector3.new]
  CALL R6 0 1
  FASTCALL VECTOR [+2]
  GETIMPORT R7 K8 [Vector3.new]
  CALL R7 0 1
  RETURN R5 3
  GETTABLEKS R4 R0 K14 ["basisCFrame"]
  GETTABLEKS R5 R0 K15 ["boundingBoxOffset"]
  GETTABLEKS R6 R0 K16 ["boundingBoxSize"]
  RETURN R4 3

PROTO_3:
  GETTABLEKS R4 R0 K0 ["partSet"]
  GETTABLE R3 R4 R1
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_4:
  LOADB R1 0
  RETURN R1 1

PROTO_5:
  GETTABLEKS R1 R0 K0 ["parts"]
  GETIMPORT R2 K2 [ipairs]
  GETTABLEKS R3 R0 K3 ["bones"]
  CALL R2 1 3
  FORGPREP_INEXT R2
  FASTCALL2 TABLE_INSERT R1 R6 [+5]
  MOVE R8 R1
  MOVE R9 R6
  GETIMPORT R7 K6 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 2 [inext] [-8]
  MOVE R2 R1
  GETTABLEKS R3 R0 K7 ["attachments"]
  RETURN R2 2

PROTO_6:
  GETTABLEKS R1 R0 K0 ["allAttachments"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["BoundingBoxUtils"]
  CALL R0 1 1
  GETIMPORT R1 K3 [script]
  LOADK R3 K6 ["AnimationClipEditor"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K1 [require]
  GETTABLEKS R5 R1 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["RigUtils"]
  CALL R2 1 1
  NEWTABLE R3 8 0
  SETTABLEKS R3 R3 K11 ["__index"]
  DUPCLOSURE R4 K12 [PROTO_0]
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K13 ["new"]
  DUPCLOSURE R4 K14 [PROTO_1]
  SETTABLEKS R4 R3 K15 ["isEmpty"]
  DUPCLOSURE R4 K16 [PROTO_2]
  SETTABLEKS R4 R3 K17 ["getBoundingBox"]
  DUPCLOSURE R4 K18 [PROTO_3]
  SETTABLEKS R4 R3 K19 ["doesContainItem"]
  DUPCLOSURE R4 K20 [PROTO_4]
  SETTABLEKS R4 R3 K21 ["isDynamic"]
  DUPCLOSURE R4 K22 [PROTO_5]
  SETTABLEKS R4 R3 K23 ["getObjectsToTransform"]
  DUPCLOSURE R4 K24 [PROTO_6]
  SETTABLEKS R4 R3 K25 ["getAllAttachments"]
  RETURN R3 1
