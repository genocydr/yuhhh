PROTO_0:
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K1 ["AnimationData"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["getTrack"]
  MOVE R4 R2
  GETUPVAL R5 1
  GETUPVAL R6 2
  CALL R3 3 1
  JUMPIFNOTEQKNIL R3 [+69]
  GETUPVAL R5 2
  GETTABLEN R4 R5 1
  GETUPVAL R6 3
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K3 ["TRACK_TYPES"]
  GETTABLEKS R7 R8 K4 ["Facs"]
  JUMPIFNOTEQ R6 R7 [+7]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K3 ["TRACK_TYPES"]
  GETTABLEKS R5 R6 K4 ["Facs"]
  JUMP [+5]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K3 ["TRACK_TYPES"]
  GETTABLEKS R5 R6 K5 ["CFrame"]
  GETUPVAL R8 5
  GETUPVAL R9 1
  MOVE R10 R4
  MOVE R11 R5
  GETUPVAL R12 6
  LOADNIL R13
  GETUPVAL R14 7
  CALL R8 6 -1
  NAMECALL R6 R0 K6 ["dispatch"]
  CALL R6 -1 0
  DUPTABLE R6 K8 [{"Value"}]
  GETUPVAL R7 8
  SETTABLEKS R7 R6 K7 ["Value"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K9 ["isChannelAnimation"]
  MOVE R8 R2
  CALL R7 1 1
  JUMPIFNOT R7 [+5]
  GETIMPORT R7 K13 [Enum.KeyInterpolationMode.Cubic]
  SETTABLEKS R7 R6 K14 ["InterpolationMode"]
  JUMP [+8]
  GETIMPORT R7 K17 [Enum.PoseEasingStyle.Linear]
  SETTABLEKS R7 R6 K18 ["EasingStyle"]
  GETIMPORT R7 K21 [Enum.PoseEasingDirection.In]
  SETTABLEKS R7 R6 K22 ["EasingDirection"]
  GETUPVAL R9 9
  GETUPVAL R10 1
  GETUPVAL R11 2
  GETUPVAL R12 3
  GETUPVAL R13 6
  GETUPVAL R14 10
  MOVE R15 R6
  GETUPVAL R16 7
  CALL R9 7 -1
  NAMECALL R7 R0 K6 ["dispatch"]
  CALL R7 -1 0
  JUMP [+51]
  GETTABLEKS R4 R3 K23 ["Data"]
  JUMPIFNOT R4 [+16]
  GETUPVAL R6 10
  GETTABLE R5 R4 R6
  JUMPIFNOT R5 [+13]
  GETUPVAL R7 11
  GETUPVAL R8 1
  GETUPVAL R9 2
  GETUPVAL R10 10
  DUPTABLE R11 K8 [{"Value"}]
  GETUPVAL R12 8
  SETTABLEKS R12 R11 K7 ["Value"]
  CALL R7 4 -1
  NAMECALL R5 R0 K6 ["dispatch"]
  CALL R5 -1 0
  JUMP [+32]
  DUPTABLE R5 K8 [{"Value"}]
  GETUPVAL R6 8
  SETTABLEKS R6 R5 K7 ["Value"]
  GETTABLEKS R6 R3 K24 ["IsCurveTrack"]
  JUMPIFNOT R6 [+5]
  GETIMPORT R6 K13 [Enum.KeyInterpolationMode.Cubic]
  SETTABLEKS R6 R5 K14 ["InterpolationMode"]
  JUMP [+8]
  GETIMPORT R6 K17 [Enum.PoseEasingStyle.Linear]
  SETTABLEKS R6 R5 K18 ["EasingStyle"]
  GETIMPORT R6 K21 [Enum.PoseEasingDirection.In]
  SETTABLEKS R6 R5 K22 ["EasingDirection"]
  GETUPVAL R8 9
  GETUPVAL R9 1
  GETUPVAL R10 2
  GETUPVAL R11 3
  GETUPVAL R12 6
  GETUPVAL R13 10
  MOVE R14 R5
  GETUPVAL R15 7
  CALL R8 7 -1
  NAMECALL R6 R0 K6 ["dispatch"]
  CALL R6 -1 0
  GETUPVAL R6 12
  GETUPVAL R7 10
  CALL R6 1 -1
  NAMECALL R4 R0 K6 ["dispatch"]
  CALL R4 -1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE UPVAL U3
  CAPTURE VAL R4
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  RETURN R7 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Thunks"]
  GETTABLEKS R2 R3 K8 ["AddKeyframe"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Thunks"]
  GETTABLEKS R3 R4 K9 ["SetKeyframeData"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K7 ["Thunks"]
  GETTABLEKS R4 R5 K10 ["AddTrack"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K7 ["Thunks"]
  GETTABLEKS R6 R7 K11 ["Playback"]
  GETTABLEKS R5 R6 K12 ["StepAnimation"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K13 ["Util"]
  GETTABLEKS R6 R7 K14 ["AnimationData"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K6 ["Src"]
  GETTABLEKS R8 R9 K13 ["Util"]
  GETTABLEKS R7 R8 K15 ["Constants"]
  CALL R6 1 1
  DUPCLOSURE R7 K16 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R4
  RETURN R7 1
