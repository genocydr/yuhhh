PROTO_0:
  NAMECALL R2 R0 K0 ["getState"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K1 ["AnimationData"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R3 R1 K2 ["Instances"]
  GETUPVAL R4 0
  GETTABLE R2 R3 R4
  JUMPIF R2 [+1]
  RETURN R0 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["Dictionary"]
  GETTABLEKS R2 R3 K4 ["join"]
  NEWTABLE R3 0 0
  MOVE R4 R1
  CALL R2 2 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["Dictionary"]
  GETTABLEKS R3 R4 K4 ["join"]
  NEWTABLE R4 0 0
  GETTABLEKS R5 R2 K2 ["Instances"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K2 ["Instances"]
  GETTABLEKS R3 R2 K2 ["Instances"]
  GETUPVAL R4 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["Dictionary"]
  GETTABLEKS R5 R6 K4 ["join"]
  NEWTABLE R6 0 0
  GETTABLEKS R8 R2 K2 ["Instances"]
  GETUPVAL R9 0
  GETTABLE R7 R8 R9
  CALL R5 2 1
  SETTABLE R5 R3 R4
  GETTABLEKS R4 R2 K2 ["Instances"]
  GETUPVAL R5 0
  GETTABLE R3 R4 R5
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["Dictionary"]
  GETTABLEKS R4 R5 K4 ["join"]
  NEWTABLE R5 0 0
  GETTABLEKS R8 R2 K2 ["Instances"]
  GETUPVAL R9 0
  GETTABLE R7 R8 R9
  GETTABLEKS R6 R7 K5 ["Tracks"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K5 ["Tracks"]
  GETTABLEKS R5 R2 K2 ["Instances"]
  GETUPVAL R6 0
  GETTABLE R4 R5 R6
  GETTABLEKS R3 R4 K5 ["Tracks"]
  GETUPVAL R5 2
  GETTABLEN R4 R5 1
  GETUPVAL R5 3
  GETTABLEKS R9 R2 K2 ["Instances"]
  GETUPVAL R10 0
  GETTABLE R8 R9 R10
  GETTABLEKS R7 R8 K5 ["Tracks"]
  GETUPVAL R9 2
  GETTABLEN R8 R9 1
  GETTABLE R6 R7 R8
  CALL R5 1 1
  SETTABLE R5 R3 R4
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K6 ["getTrack"]
  MOVE R4 R2
  GETUPVAL R5 0
  GETUPVAL R6 2
  CALL R3 3 1
  JUMPIFNOT R3 [+21]
  GETTABLEKS R4 R3 K7 ["Data"]
  JUMPIFNOT R4 [+18]
  GETTABLEKS R5 R3 K7 ["Data"]
  GETUPVAL R6 5
  GETTABLE R4 R5 R6
  JUMPIFNOT R4 [+13]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K8 ["setKeyframeData"]
  MOVE R5 R3
  GETUPVAL R6 5
  GETUPVAL R7 6
  CALL R4 3 0
  GETUPVAL R6 7
  MOVE R7 R2
  CALL R6 1 -1
  NAMECALL R4 R0 K9 ["dispatch"]
  CALL R4 -1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE UPVAL U3
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["deepCopy"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Util"]
  GETTABLEKS R4 R5 K11 ["AnimationData"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K12 ["Thunks"]
  GETTABLEKS R5 R6 K13 ["UpdateAnimationData"]
  CALL R4 1 1
  DUPCLOSURE R5 K14 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R5 1
