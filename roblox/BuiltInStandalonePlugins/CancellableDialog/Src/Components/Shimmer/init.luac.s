PROTO_0:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+21]
  GETIMPORT R1 K2 [os.clock]
  CALL R1 0 1
  GETUPVAL R2 1
  SUB R0 R1 R2
  MODK R2 R0 K3 [2]
  DIVK R1 R2 K3 [2]
  MULK R3 R1 K3 [2]
  SUBK R2 R3 K4 [1]
  GETUPVAL R3 2
  GETIMPORT R4 K7 [Vector2.new]
  MOVE R5 R2
  MOVE R6 R2
  CALL R4 2 -1
  CALL R3 -1 0
  GETIMPORT R3 K10 [task.wait]
  LOADK R4 K11 [0.0222222222222222]
  CALL R3 1 0
  JUMPBACK [-23]
  RETURN R0 0

PROTO_1:
  LOADB R0 0
  SETUPVAL R0 0
  RETURN R0 0

PROTO_2:
  LOADB R0 1
  GETIMPORT R1 K2 [task.defer]
  NEWCLOSURE R2 P0
  CAPTURE REF R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CALL R1 1 0
  NEWCLOSURE R1 P1
  CAPTURE REF R0
  CLOSEUPVALS R0
  RETURN R1 1

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["AbsoluteSize"]
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETIMPORT R2 K2 [Vector2.zero]
  CALL R1 1 2
  GETUPVAL R3 0
  GETIMPORT R4 K4 [Vector2.new]
  LOADN R5 255
  LOADN R6 255
  CALL R4 2 -1
  CALL R3 -1 2
  GETUPVAL R5 1
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R4
  NEWTABLE R7 0 0
  CALL R5 2 0
  LOADN R5 45
  GETTABLEKS R7 R1 K5 ["X"]
  GETTABLEKS R8 R1 K6 ["Y"]
  DIV R6 R7 R8
  LOADK R7 K7 [1.5]
  JUMPIFNOTLT R7 R6 [+3]
  LOADN R5 0
  JUMP [+4]
  LOADK R7 K8 [0.3]
  JUMPIFNOTLT R6 R7 [+2]
  LOADN R5 90
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K9 ["createElement"]
  LOADK R8 K10 ["Frame"]
  NEWTABLE R9 8 0
  GETTABLEKS R10 R0 K11 ["Size"]
  SETTABLEKS R10 R9 K11 ["Size"]
  LOADB R10 1
  SETTABLEKS R10 R9 K12 ["ClipsDescendants"]
  GETTABLEKS R10 R0 K13 ["LayoutOrder"]
  SETTABLEKS R10 R9 K13 ["LayoutOrder"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K14 ["Tag"]
  LOADK R11 K15 ["Component-Shimmer"]
  SETTABLE R11 R9 R10
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K16 ["Change"]
  GETTABLEKS R10 R11 K17 ["AbsoluteSize"]
  NEWCLOSURE R11 P1
  CAPTURE VAL R2
  SETTABLE R11 R9 R10
  NEWTABLE R10 0 1
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K9 ["createElement"]
  LOADK R12 K10 ["Frame"]
  NEWTABLE R13 2 0
  GETIMPORT R14 K19 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 1
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K11 ["Size"]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K14 ["Tag"]
  LOADK R15 K20 ["NoBorder ShimmerForeground RoundedCorner8"]
  SETTABLE R15 R13 R14
  NEWTABLE R14 0 1
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K9 ["createElement"]
  LOADK R16 K21 ["UIGradient"]
  DUPTABLE R17 K25 [{"Rotation", "Offset", "Transparency"}]
  SETTABLEKS R5 R17 K22 ["Rotation"]
  SETTABLEKS R3 R17 K23 ["Offset"]
  GETIMPORT R18 K27 [NumberSequence.new]
  NEWTABLE R19 0 5
  GETIMPORT R20 K29 [NumberSequenceKeypoint.new]
  LOADN R21 0
  LOADK R22 K30 [0.95]
  CALL R20 2 1
  GETIMPORT R21 K29 [NumberSequenceKeypoint.new]
  LOADK R22 K31 [0.1]
  LOADK R23 K30 [0.95]
  CALL R21 2 1
  GETIMPORT R22 K29 [NumberSequenceKeypoint.new]
  LOADK R23 K32 [0.5]
  LOADK R24 K33 [0.52]
  CALL R22 2 1
  GETIMPORT R23 K29 [NumberSequenceKeypoint.new]
  LOADK R24 K34 [0.9]
  LOADK R25 K30 [0.95]
  CALL R23 2 1
  GETIMPORT R24 K29 [NumberSequenceKeypoint.new]
  LOADN R25 1
  LOADK R26 K30 [0.95]
  CALL R24 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R18 1 1
  SETTABLEKS R18 R17 K24 ["Transparency"]
  CALL R15 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CancellableDialog"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["useState"]
  GETTABLEKS R3 R1 K9 ["useEffect"]
  GETIMPORT R4 K12 [os.clock]
  CALL R4 0 1
  DUPCLOSURE R5 K13 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R1
  RETURN R5 1
