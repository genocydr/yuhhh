PROTO_0:
  JUMPIFEQKNIL R0 [+30]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["fromInstance"]
  MOVE R2 R0
  GETUPVAL R3 1
  CALL R1 2 1
  GETUPVAL R2 2
  GETUPVAL R4 3
  GETUPVAL R5 4
  MOVE R6 R1
  CALL R4 2 -1
  NAMECALL R2 R2 K1 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R2 2
  GETUPVAL R4 5
  LOADK R5 K2 [""]
  NEWTABLE R6 0 1
  MOVE R7 R0
  SETLIST R6 R7 1 [1]
  GETUPVAL R7 4
  LOADB R8 0
  GETUPVAL R9 6
  CALL R4 5 -1
  NAMECALL R2 R2 K1 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["evaluateWatchWithCallback"]
  GETUPVAL R3 1
  GETUPVAL R4 2
  GETUPVAL R5 3
  MOVE R6 R0
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U2
  CAPTURE UPVAL U6
  CAPTURE UPVAL U3
  CALL R2 5 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R5 R0 K5 ["Src"]
  GETTABLEKS R4 R5 K6 ["Actions"]
  GETTABLEKS R3 R4 K7 ["Watch"]
  GETTABLEKS R2 R3 K8 ["ExpressionEvaluated"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K9 ["Models"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R2 K10 ["StepStateBundle"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R2 K7 ["Watch"]
  GETTABLEKS R5 R6 K11 ["WatchRow"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K5 ["Src"]
  GETTABLEKS R7 R8 K12 ["Util"]
  GETTABLEKS R6 R7 K13 ["WatchHelperFunctions"]
  CALL R5 1 1
  GETTABLEKS R7 R0 K5 ["Src"]
  GETTABLEKS R6 R7 K14 ["Thunks"]
  GETIMPORT R7 K4 [require]
  GETTABLEKS R9 R6 K15 ["Common"]
  GETTABLEKS R8 R9 K16 ["AddChildRowsToVars"]
  CALL R7 1 1
  DUPCLOSURE R8 K17 [PROTO_2]
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R7
  RETURN R8 1