PROTO_0:
  JUMPIFNOTEQKNIL R0 [+3]
  LOADNIL R1
  RETURN R1 1
  GETTABLEKS R1 R0 K0 ["responseBody"]
  GETUPVAL R2 0
  MOVE R4 R1
  NAMECALL R2 R2 K1 ["JSONDecode"]
  CALL R2 2 1
  NEWTABLE R3 0 0
  GETIMPORT R4 K3 [ipairs]
  GETTABLEKS R5 R2 K4 ["data"]
  CALL R4 1 3
  FORGPREP_INEXT R4
  MOVE R10 R3
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K5 ["fromDevelop"]
  MOVE R12 R8
  CALL R11 1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R9 K8 [table.insert]
  CALL R9 -1 0
  FORGLOOP R4 2 [inext] [-11]
  RETURN R3 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["shouldDebugWarnings"]
  CALL R1 0 1
  JUMPIFNOT R1 [+5]
  GETIMPORT R1 K2 [warn]
  LOADK R2 K3 ["Failed to get asset media metadata: "]
  MOVE R3 R0
  CALL R1 2 0
  GETUPVAL R1 1
  GETUPVAL R3 2
  MOVE R4 R0
  CALL R3 1 -1
  NAMECALL R1 R1 K4 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_2:
  JUMPIFEQKNIL R0 [+11]
  LENGTH R1 R0
  LOADN R2 0
  JUMPIFNOTLT R2 R1 [+7]
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["getDevelopAssetMetadata"]
  CALL R1 2 -1
  RETURN R1 -1
  RETURN R0 0

PROTO_3:
  JUMPIFEQKNIL R0 [+12]
  LENGTH R1 R0
  LOADN R2 0
  JUMPIFNOTLT R2 R1 [+8]
  GETUPVAL R1 0
  GETUPVAL R3 1
  MOVE R4 R0
  CALL R3 1 -1
  NAMECALL R1 R1 K0 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_4:
  DUPCLOSURE R1 K0 [PROTO_0]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  NEWCLOSURE R2 P1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  GETUPVAL R5 4
  GETUPVAL R6 5
  GETUPVAL R7 6
  LOADB R8 1
  LOADB R9 1
  CALL R5 4 -1
  NAMECALL R3 R0 K1 ["dispatch"]
  CALL R3 -1 1
  NEWCLOSURE R5 P2
  CAPTURE UPVAL U5
  NAMECALL R3 R3 K2 ["andThen"]
  CALL R3 2 1
  MOVE R5 R1
  MOVE R6 R2
  NAMECALL R3 R3 K2 ["andThen"]
  CALL R3 3 1
  NEWCLOSURE R5 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  NAMECALL R3 R3 K2 ["andThen"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_5:
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U5
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R2 R0 K3 ["Core"]
  GETTABLEKS R1 R2 K4 ["Util"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["DebugFlags"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["createAssetMediaMetadata"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K3 ["Core"]
  GETTABLEKS R4 R5 K9 ["Actions"]
  GETIMPORT R5 K6 [require]
  GETTABLEKS R6 R4 K10 ["NetworkError"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R7 R4 K11 ["SetAssetMediaMetadataArray"]
  CALL R6 1 1
  GETTABLEKS R9 R0 K3 ["Core"]
  GETTABLEKS R8 R9 K12 ["Networking"]
  GETTABLEKS R7 R8 K13 ["Requests"]
  GETIMPORT R8 K6 [require]
  GETTABLEKS R9 R7 K14 ["GetAssetMediaIdsRequest"]
  CALL R8 1 1
  GETIMPORT R9 K16 [game]
  LOADK R11 K17 ["HttpService"]
  NAMECALL R9 R9 K18 ["GetService"]
  CALL R9 2 1
  DUPCLOSURE R10 K19 [PROTO_5]
  CAPTURE VAL R9
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R6
  RETURN R10 1