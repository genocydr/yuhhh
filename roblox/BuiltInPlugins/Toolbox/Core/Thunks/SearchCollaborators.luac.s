PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R3 2
  CALL R3 0 -1
  FASTCALL TOSTRING [+2]
  GETIMPORT R2 K1 [tostring]
  CALL R2 -1 1
  CALL R0 2 1
  NAMECALL R0 R0 K2 ["await"]
  CALL R0 1 2
  GETUPVAL R2 3
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K3 ["LoadedLocalUserFriends"]
  MOVE R5 R0
  MOVE R6 R1
  CALL R4 2 -1
  NAMECALL R2 R2 K4 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_1:
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["SearchTextChanged"]
  GETUPVAL R5 1
  CALL R4 1 -1
  NAMECALL R2 R0 K2 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R2 1
  JUMPIFNOTEQKS R2 K3 [""] [+2]
  RETURN R0 0
  GETTABLEKS R2 R1 K4 ["localUserFriends"]
  JUMPIF R2 [+16]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["LoadingLocalUserFriends"]
  CALL R4 0 -1
  NAMECALL R2 R0 K2 ["dispatch"]
  CALL R2 -1 0
  GETIMPORT R2 K7 [spawn]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CALL R2 1 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R2 R0 K3 ["Core"]
  GETTABLEKS R1 R2 K4 ["Util"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["getUserId"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R6 R0 K3 ["Core"]
  GETTABLEKS R5 R6 K8 ["Actions"]
  GETTABLEKS R4 R5 K9 ["CollaboratorSearchActions"]
  CALL R3 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R9 R0 K3 ["Core"]
  GETTABLEKS R8 R9 K10 ["Networking"]
  GETTABLEKS R7 R8 K11 ["Requests"]
  GETTABLEKS R6 R7 K12 ["UserFriends"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K13 ["Get"]
  DUPCLOSURE R5 K14 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R2
  RETURN R5 1