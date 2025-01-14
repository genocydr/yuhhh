PROTO_0:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["JSONDecode"]
  CALL R1 2 1
  DUPTABLE R2 K2 [{"groups"}]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K1 ["groups"]
  GETIMPORT R3 K4 [pairs]
  GETTABLEKS R4 R1 K5 ["data"]
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K6 ["fromJsonData"]
  MOVE R9 R7
  CALL R8 1 2
  JUMPIFNOT R8 [+9]
  GETTABLEKS R11 R2 K1 ["groups"]
  FASTCALL2 TABLE_INSERT R11 R9 [+4]
  MOVE R12 R9
  GETIMPORT R10 K9 [table.insert]
  CALL R10 2 0
  JUMP [+6]
  GETIMPORT R10 K11 [error]
  LOADK R12 K12 ["Parsing error for ApiFetchGroupsCanManage: "]
  MOVE R13 R9
  CONCAT R11 R12 R13
  CALL R10 1 0
  FORGLOOP R3 2 [-22]
  RETURN R2 1

PROTO_1:
  DUPTABLE R0 K2 [{"Url", "Method"}]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["BuildRobloxUrl"]
  LOADK R2 K4 ["develop"]
  LOADK R3 K5 ["v1/user/groups/canmanage"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K0 ["Url"]
  LOADK R1 K6 ["GET"]
  SETTABLEKS R1 R0 K1 ["Method"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K7 ["Request"]
  MOVE R2 R0
  CALL R1 1 1
  DUPCLOSURE R3 K8 [PROTO_0]
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NAMECALL R1 R1 K9 ["andThen"]
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["HttpService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R5 K5 [script]
  GETTABLEKS R4 R5 K6 ["Parent"]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R5 R1 K9 ["Src"]
  GETTABLEKS R4 R5 K10 ["Network"]
  GETTABLEKS R3 R4 K11 ["Http"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R7 R1 K9 ["Src"]
  GETTABLEKS R6 R7 K10 ["Network"]
  GETTABLEKS R5 R6 K12 ["Models"]
  GETTABLEKS R4 R5 K13 ["Group"]
  CALL R3 1 1
  DUPCLOSURE R4 K14 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R0
  CAPTURE VAL R3
  RETURN R4 1
