PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["layoutRef"]
  GETTABLEKS R0 R1 K1 ["current"]
  JUMPIFEQKNIL R0 [+12]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["containerRef"]
  GETTABLEKS R0 R1 K1 ["current"]
  JUMPIFEQKNIL R0 [+5]
  GETUPVAL R0 0
  NAMECALL R0 R0 K3 ["resizeContainer"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["layoutRef"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K2 ["containerRef"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["Dictionary"]
  GETTABLEKS R1 R2 K4 ["join"]
  GETUPVAL R2 2
  NEWTABLE R3 2 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["Ref"]
  GETTABLEKS R5 R0 K1 ["layoutRef"]
  SETTABLE R5 R3 R4
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["Change"]
  GETTABLEKS R4 R5 K7 ["AbsoluteContentSize"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  SETTABLE R5 R3 R4
  CALL R1 2 1
  SETTABLEKS R1 R0 K8 ["layoutProps"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["Size"]
  JUMPIFEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K2 [+4]
  LOADK R3 K2 ["Size must not be specified!"]
  GETIMPORT R1 K4 [assert]
  CALL R1 2 0
  LOADNIL R1
  GETTABLEKS R4 R0 K0 ["props"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["Children"]
  GETTABLE R3 R4 R5
  LENGTH R2 R3
  JUMPIFNOTEQKN R2 K6 [1] [+43]
  GETTABLEKS R6 R0 K0 ["props"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K5 ["Children"]
  GETTABLE R5 R6 R7
  GETTABLEN R4 R5 1
  JUMPIFEQKS R4 K7 ["table"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL1 TYPEOF R3 [+2]
  GETIMPORT R2 K9 [typeof]
  CALL R2 1 1
  JUMPIFNOT R2 [+26]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K10 ["Dictionary"]
  GETTABLEKS R2 R3 K11 ["join"]
  NEWTABLE R3 1 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K12 ["createElement"]
  GETUPVAL R5 2
  GETTABLEKS R6 R0 K13 ["layoutProps"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K14 ["Layout"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K5 ["Children"]
  GETTABLE R5 R6 R7
  GETTABLEN R4 R5 1
  CALL R2 2 1
  MOVE R1 R2
  JUMP [+24]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K10 ["Dictionary"]
  GETTABLEKS R2 R3 K11 ["join"]
  NEWTABLE R3 1 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K12 ["createElement"]
  GETUPVAL R5 2
  GETTABLEKS R6 R0 K13 ["layoutProps"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K14 ["Layout"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["Children"]
  GETTABLE R4 R5 R6
  CALL R2 2 1
  MOVE R1 R2
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K10 ["Dictionary"]
  GETTABLEKS R2 R3 K11 ["join"]
  GETTABLEKS R3 R0 K0 ["props"]
  NEWTABLE R4 2 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["Children"]
  SETTABLE R1 R4 R5
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K15 ["Ref"]
  GETTABLEKS R6 R0 K16 ["containerRef"]
  SETTABLE R6 R4 R5
  CALL R2 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K12 ["createElement"]
  GETUPVAL R4 3
  MOVE R5 R2
  CALL R3 2 -1
  RETURN R3 -1

PROTO_3:
  NAMECALL R1 R0 K0 ["resizeContainer"]
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  NAMECALL R1 R0 K0 ["resizeContainer"]
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R2 R0 K0 ["layoutRef"]
  GETTABLEKS R1 R2 K1 ["current"]
  JUMPIFNOT R1 [+16]
  GETTABLEKS R2 R1 K2 ["AbsoluteContentSize"]
  GETTABLEKS R4 R0 K3 ["containerRef"]
  GETTABLEKS R3 R4 K1 ["current"]
  GETIMPORT R4 K6 [UDim2.new]
  LOADN R5 1
  LOADN R6 0
  LOADN R7 0
  GETTABLEKS R8 R2 K7 ["Y"]
  CALL R4 4 1
  SETTABLEKS R4 R3 K8 ["Size"]
  RETURN R0 0

PROTO_6:
  LOADK R3 K0 ["FitComponent(%s, %s)"]
  MOVE R5 R0
  MOVE R6 R1
  NAMECALL R3 R3 K1 ["format"]
  CALL R3 3 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["Component"]
  MOVE R6 R3
  NAMECALL R4 R4 K3 ["extend"]
  CALL R4 2 1
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R2
  SETTABLEKS R5 R4 K4 ["init"]
  NEWCLOSURE R5 P1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K5 ["render"]
  DUPCLOSURE R5 K6 [PROTO_3]
  SETTABLEKS R5 R4 K7 ["didMount"]
  DUPCLOSURE R5 K8 [PROTO_4]
  SETTABLEKS R5 R4 K9 ["didUpdate"]
  DUPCLOSURE R5 K10 [PROTO_5]
  SETTABLEKS R5 R4 K11 ["resizeContainer"]
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Cryo"]
  CALL R2 1 1
  DUPCLOSURE R3 K8 [PROTO_6]
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R3 1