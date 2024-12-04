PROTO_0:
  NAMECALL R2 R0 K0 ["getState"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K1 ["DebugData"]
  GETTABLEKS R2 R1 K2 ["FrameBuffer"]
  JUMPIFNOT R2 [+3]
  GETTABLEKS R3 R1 K2 ["FrameBuffer"]
  GETTABLEN R2 R3 1
  MOVE R3 R2
  JUMPIFNOT R3 [+4]
  GETTABLEKS R4 R2 K3 ["layerMap"]
  GETUPVAL R5 0
  GETTABLE R3 R4 R5
  GETTABLEKS R4 R1 K4 ["Overrides"]
  GETUPVAL R6 1
  GETTABLEN R5 R6 1
  GETUPVAL R6 2
  JUMPIFNOTEQKNIL R6 [+27]
  GETUPVAL R6 3
  MOVE R7 R4
  NEWTABLE R8 1 0
  GETUPVAL R9 0
  GETUPVAL R10 3
  GETUPVAL R12 0
  GETTABLE R11 R4 R12
  NEWTABLE R12 1 0
  GETUPVAL R13 4
  SETTABLE R13 R12 R5
  CALL R10 2 1
  SETTABLE R10 R8 R9
  CALL R6 2 1
  MOVE R4 R6
  GETIMPORT R6 K6 [next]
  GETUPVAL R8 0
  GETTABLE R7 R4 R8
  CALL R6 1 1
  JUMPIF R6 [+65]
  GETUPVAL R6 0
  LOADNIL R7
  SETTABLE R7 R4 R6
  JUMP [+61]
  GETUPVAL R6 3
  MOVE R7 R4
  NEWTABLE R8 0 0
  CALL R6 2 1
  MOVE R4 R6
  GETUPVAL R6 0
  GETUPVAL R8 0
  GETTABLE R7 R4 R8
  JUMPIF R7 [+2]
  NEWTABLE R7 0 0
  SETTABLE R7 R4 R6
  GETUPVAL R8 0
  GETTABLE R7 R4 R8
  GETTABLE R6 R7 R5
  JUMPIF R6 [+20]
  JUMPIFNOT R3 [+19]
  GETTABLEKS R8 R3 K7 ["props"]
  GETTABLE R7 R8 R5
  FASTCALL1 TYPE R7 [+2]
  GETIMPORT R6 K9 [type]
  CALL R6 1 1
  JUMPIFNOTEQKS R6 K10 ["table"] [+11]
  GETUPVAL R7 0
  GETTABLE R6 R4 R7
  GETUPVAL R7 5
  NEWTABLE R8 0 0
  GETTABLEKS R10 R3 K7 ["props"]
  GETTABLE R9 R10 R5
  CALL R7 2 1
  SETTABLE R7 R6 R5
  GETUPVAL R7 0
  GETTABLE R6 R4 R7
  GETUPVAL R7 1
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  GETUPVAL R13 1
  LENGTH R12 R13
  JUMPIFNOTLT R10 R12 [+7]
  GETTABLE R12 R6 R11
  JUMPIF R12 [+3]
  NEWTABLE R12 0 0
  SETTABLE R12 R6 R11
  GETTABLE R6 R6 R11
  FORGLOOP R7 2 [-11]
  GETUPVAL R8 1
  GETUPVAL R10 1
  LENGTH R9 R10
  GETTABLE R7 R8 R9
  GETUPVAL R8 2
  SETTABLE R8 R6 R7
  GETUPVAL R8 6
  MOVE R9 R4
  CALL R8 1 -1
  NAMECALL R6 R0 K11 ["dispatch"]
  CALL R6 -1 0
  NAMECALL R8 R0 K0 ["getState"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K12 ["Status"]
  GETTABLEKS R6 R7 K13 ["PropertyOverridesEvent"]
  JUMPIFNOT R6 [+4]
  MOVE R9 R4
  NAMECALL R7 R6 K14 ["Fire"]
  CALL R7 2 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Dash"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["join"]
  GETTABLEKS R3 R1 K9 ["joinDeep"]
  GETTABLEKS R4 R1 K10 ["None"]
  GETTABLEKS R6 R0 K11 ["Src"]
  GETTABLEKS R5 R6 K12 ["Actions"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R5 K13 ["SetOverrides"]
  CALL R6 1 1
  DUPCLOSURE R7 K14 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R6
  RETURN R7 1