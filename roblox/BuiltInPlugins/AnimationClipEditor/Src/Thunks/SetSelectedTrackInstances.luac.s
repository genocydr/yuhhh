PROTO_0:
  GETUPVAL R3 0
  GETUPVAL R4 1
  CALL R3 1 -1
  NAMECALL R1 R0 K0 ["dispatch"]
  CALL R1 -1 0
  NAMECALL R2 R0 K1 ["getState"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K2 ["Status"]
  GETTABLEKS R2 R1 K3 ["RootInstance"]
  GETTABLEKS R3 R1 K4 ["Tracks"]
  JUMPIF R2 [+1]
  RETURN R0 0
  GETUPVAL R4 1
  JUMPIFNOT R4 [+5]
  GETIMPORT R4 K6 [next]
  GETUPVAL R5 1
  CALL R4 1 1
  JUMPIF R4 [+7]
  GETUPVAL R6 2
  NEWTABLE R7 0 0
  CALL R6 1 -1
  NAMECALL R4 R0 K0 ["dispatch"]
  CALL R4 -1 0
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K7 ["getRigInfo"]
  MOVE R5 R2
  CALL R4 1 1
  GETTABLEKS R5 R4 K8 ["Parts"]
  NEWTABLE R6 0 0
  NEWTABLE R7 0 0
  GETIMPORT R8 K10 [ipairs]
  MOVE R9 R5
  CALL R8 1 3
  FORGPREP_INEXT R8
  NEWTABLE R13 0 1
  GETTABLEKS R14 R12 K11 ["Name"]
  SETLIST R13 R14 1 [1]
  SETTABLE R13 R7 R12
  FORGLOOP R8 2 [inext] [-8]
  GETUPVAL R8 1
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  LOADK R15 K12 ["BoneRef"]
  NAMECALL R13 R12 K13 ["FindFirstChild"]
  CALL R13 2 1
  JUMPIFNOT R13 [+10]
  GETTABLEKS R14 R13 K14 ["Value"]
  GETTABLE R17 R7 R14
  FASTCALL2 TABLE_INSERT R6 R17 [+4]
  MOVE R16 R6
  GETIMPORT R15 K17 [table.insert]
  CALL R15 2 0
  JUMP [+7]
  GETTABLE R16 R7 R12
  FASTCALL2 TABLE_INSERT R6 R16 [+4]
  MOVE R15 R6
  GETIMPORT R14 K17 [table.insert]
  CALL R14 2 0
  FORGLOOP R8 2 [-23]
  LENGTH R9 R6
  GETTABLE R8 R6 R9
  LOADN R9 1
  JUMPIFNOT R8 [+13]
  MOVE R10 R3
  LOADNIL R11
  LOADNIL R12
  FORGPREP R10
  GETTABLEKS R15 R14 K11 ["Name"]
  GETTABLEN R16 R8 1
  JUMPIFNOTEQ R15 R16 [+3]
  MOVE R9 R13
  JUMP [+2]
  FORGLOOP R10 2 [-8]
  GETUPVAL R12 2
  MOVE R13 R6
  CALL R12 1 -1
  NAMECALL R10 R0 K0 ["dispatch"]
  CALL R10 -1 0
  GETUPVAL R12 4
  MOVE R13 R9
  CALL R12 1 -1
  NAMECALL R10 R0 K0 ["dispatch"]
  CALL R10 -1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  RETURN R1 1

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
  GETTABLEKS R3 R0 K8 ["Src"]
  GETTABLEKS R2 R3 K9 ["Util"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R2 K10 ["RigInfo"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K11 ["Actions"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R4 K12 ["SetSelectedTracks"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R4 K13 ["SetSelectedTrackInstances"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R4 K14 ["SetTopTrackIndex"]
  CALL R7 1 1
  DUPCLOSURE R8 K15 [PROTO_1]
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R7
  RETURN R8 1
