PROTO_0:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["StepAnimations"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  LOADNIL R2
  LOADK R5 K0 ["Humanoid"]
  LOADB R6 1
  NAMECALL R3 R0 K1 ["FindFirstChildWhichIsA"]
  CALL R3 3 1
  JUMPIFNOT R3 [+2]
  MOVE R2 R3
  JUMP [+14]
  LOADK R6 K2 ["AnimationController"]
  LOADB R7 1
  NAMECALL R4 R0 K1 ["FindFirstChildWhichIsA"]
  CALL R4 3 1
  JUMPIF R4 [+7]
  GETIMPORT R5 K5 [Instance.new]
  LOADK R6 K2 ["AnimationController"]
  CALL R5 1 1
  MOVE R4 R5
  SETTABLEKS R0 R4 K6 ["Parent"]
  MOVE R2 R4
  LOADK R6 K7 ["Animator"]
  LOADB R7 1
  NAMECALL R4 R2 K1 ["FindFirstChildWhichIsA"]
  CALL R4 3 1
  JUMPIF R4 [+7]
  GETIMPORT R5 K5 [Instance.new]
  LOADK R6 K7 ["Animator"]
  CALL R5 1 1
  MOVE R4 R5
  SETTABLEKS R2 R4 K6 ["Parent"]
  LOADK R7 K8 ["Animation"]
  LOADB R8 1
  NAMECALL R5 R0 K1 ["FindFirstChildWhichIsA"]
  CALL R5 3 1
  JUMPIF R5 [+23]
  GETIMPORT R6 K10 [game]
  LOADK R8 K11 ["KeyframeSequenceProvider"]
  NAMECALL R6 R6 K12 ["GetService"]
  CALL R6 2 1
  MOVE R8 R1
  NAMECALL R6 R6 K13 ["RegisterKeyframeSequence"]
  CALL R6 2 1
  GETIMPORT R7 K5 [Instance.new]
  LOADK R8 K8 ["Animation"]
  CALL R7 1 1
  MOVE R5 R7
  GETTABLEKS R7 R1 K14 ["Name"]
  SETTABLEKS R7 R5 K14 ["Name"]
  SETTABLEKS R6 R5 K15 ["AnimationId"]
  SETTABLEKS R2 R5 K6 ["Parent"]
  MOVE R8 R5
  NAMECALL R6 R4 K16 ["LoadAnimation"]
  CALL R6 2 1
  LOADB R7 1
  SETTABLEKS R7 R6 K17 ["Looped"]
  NAMECALL R7 R6 K18 ["Play"]
  CALL R7 1 0
  GETIMPORT R8 K10 [game]
  LOADK R10 K19 ["RunService"]
  NAMECALL R8 R8 K12 ["GetService"]
  CALL R8 2 1
  GETTABLEKS R7 R8 K20 ["Heartbeat"]
  NEWCLOSURE R9 P0
  CAPTURE REF R4
  NAMECALL R7 R7 K21 ["Connect"]
  CALL R7 2 1
  GETTABLEKS R8 R0 K22 ["Destroying"]
  NEWCLOSURE R10 P1
  CAPTURE VAL R7
  NAMECALL R8 R8 K21 ["Connect"]
  CALL R8 2 0
  CLOSEUPVALS R4
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_2]
  RETURN R0 1