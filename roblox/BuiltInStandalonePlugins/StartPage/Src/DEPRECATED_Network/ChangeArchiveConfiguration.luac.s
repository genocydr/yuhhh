PROTO_0:
  GETTABLEKS R3 R0 K0 ["IsPlaceholder"]
  NOT R2 R3
  FASTCALL2K ASSERT R2 K1 [+4]
  LOADK R3 K1 ["Network data should not be a placeholder"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  GETTABLEKS R2 R0 K4 ["Id"]
  GETUPVAL R3 0
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_1:
  GETUPVAL R1 0
  MOVE R2 R0
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CALL R1 2 -1
  RETURN R1 -1

PROTO_2:
  GETUPVAL R0 0
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETIMPORT R1 K1 [warn]
  LOADK R3 K2 ["ChargeArchiveConfiguration experienced an error: %*"]
  MOVE R5 R0
  NAMECALL R3 R3 K3 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["new"]
  CALL R3 0 1
  GETTABLEKS R4 R3 K1 ["composeUrl"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["UNIVERSE_CONFIGURATION"]
  GETTABLEKS R5 R6 K3 ["Prefix"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K2 ["UNIVERSE_CONFIGURATION"]
  GETTABLEKS R6 R7 K4 ["Url"]
  MOVE R7 R0
  CALL R6 1 -1
  CALL R4 -1 1
  DUPTABLE R5 K6 [{"isArchived"}]
  SETTABLEKS R1 R5 K5 ["isArchived"]
  GETUPVAL R6 2
  MOVE R8 R4
  GETUPVAL R9 3
  MOVE R11 R5
  NAMECALL R9 R9 K7 ["JSONEncode"]
  CALL R9 2 1
  GETUPVAL R10 4
  NAMECALL R6 R6 K8 ["patch"]
  CALL R6 4 1
  GETUPVAL R7 2
  MOVE R9 R6
  NAMECALL R7 R7 K9 ["parseJson"]
  CALL R7 2 1
  NEWCLOSURE R9 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  NAMECALL R7 R7 K10 ["andThen"]
  CALL R7 2 1
  DUPCLOSURE R9 K11 [PROTO_3]
  NAMECALL R7 R7 K12 ["catch"]
  CALL R7 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["SharedFlags"]
  GETTABLEKS R2 R3 K8 ["getFIntDebugLuaStartPageLogging"]
  CALL R1 1 1
  CALL R1 0 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K10 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K12 ["Network"]
  GETTABLEKS R5 R6 K13 ["Urls"]
  CALL R4 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K6 ["Src"]
  GETTABLEKS R8 R9 K14 ["Util"]
  GETTABLEKS R7 R8 K15 ["Services"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K16 ["Networking"]
  GETTABLEKS R7 R3 K17 ["RobloxAPI"]
  GETTABLEKS R6 R7 K18 ["Url"]
  GETTABLEKS R7 R5 K19 ["new"]
  DUPTABLE R8 K22 [{"isInternal", "loggingLevel"}]
  LOADB R9 1
  SETTABLEKS R9 R8 K20 ["isInternal"]
  SETTABLEKS R1 R8 K21 ["loggingLevel"]
  CALL R7 1 1
  NEWTABLE R8 1 0
  LOADK R9 K23 ["application/json"]
  SETTABLEKS R9 R8 K24 ["Content-Type"]
  GETIMPORT R9 K26 [game]
  LOADK R11 K27 ["HttpService"]
  NAMECALL R9 R9 K28 ["GetService"]
  CALL R9 2 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K6 ["Src"]
  GETTABLEKS R12 R13 K14 ["Util"]
  GETTABLEKS R11 R12 K29 ["RemoveHandlerFromNetworkData"]
  CALL R10 1 1
  DUPCLOSURE R11 K30 [PROTO_4]
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R10
  RETURN R11 1
