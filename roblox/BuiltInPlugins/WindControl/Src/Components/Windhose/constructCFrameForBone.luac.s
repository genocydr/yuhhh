PROTO_0:
  LOADN R6 3
  SUBK R7 R0 K0 [1]
  MUL R5 R6 R7
  ADDK R4 R5 K0 [1]
  GETTABLE R3 R1 R4
  GETTABLEKS R2 R3 K1 ["position"]
  LOADN R7 3
  SUBK R8 R0 K0 [1]
  MUL R6 R7 R8
  ADDK R5 R6 K2 [2]
  GETTABLE R4 R1 R5
  GETTABLEKS R3 R4 K1 ["position"]
  LOADN R8 3
  SUBK R9 R0 K0 [1]
  MUL R7 R8 R9
  ADDK R6 R7 K3 [3]
  GETTABLE R5 R1 R6
  GETTABLEKS R4 R5 K1 ["position"]
  ADD R7 R2 R3
  ADD R6 R7 R4
  DIVK R5 R6 K3 [3]
  SUB R7 R5 R2
  GETTABLEKS R6 R7 K4 ["Unit"]
  SUB R8 R3 R2
  SUB R10 R4 R2
  NAMECALL R8 R8 K5 ["Cross"]
  CALL R8 2 1
  GETTABLEKS R7 R8 K4 ["Unit"]
  MOVE R10 R7
  NAMECALL R8 R6 K5 ["Cross"]
  CALL R8 2 1
  GETIMPORT R9 K8 [CFrame.new]
  GETTABLEKS R10 R5 K9 ["x"]
  GETTABLEKS R11 R5 K10 ["y"]
  GETTABLEKS R12 R5 K11 ["z"]
  GETTABLEKS R13 R8 K9 ["x"]
  GETTABLEKS R14 R6 K9 ["x"]
  GETTABLEKS R15 R7 K9 ["x"]
  GETTABLEKS R16 R8 K10 ["y"]
  GETTABLEKS R17 R6 K10 ["y"]
  GETTABLEKS R18 R7 K10 ["y"]
  GETTABLEKS R19 R8 K11 ["z"]
  GETTABLEKS R20 R6 K11 ["z"]
  GETTABLEKS R21 R7 K11 ["z"]
  CALL R9 12 -1
  RETURN R9 -1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1