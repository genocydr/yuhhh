PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["IsUpdate"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["requestReason"]
  CALL R1 1 1
  JUMPIF R1 [+5]
  GETUPVAL R3 2
  CALL R3 0 -1
  NAMECALL R1 R0 K2 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R3 3
  GETUPVAL R4 1
  GETUPVAL R5 4
  CALL R3 2 -1
  NAMECALL R1 R0 K2 ["dispatch"]
  CALL R1 -1 0
  NAMECALL R2 R0 K3 ["getState"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K4 ["pageInfo"]
  GETTABLEKS R2 R1 K5 ["audioSearchInfo"]
  GETTABLEKS R3 R1 K6 ["categoryName"]
  GETUPVAL R4 5
  CALL R4 0 1
  JUMPIFNOT R4 [+12]
  JUMPIFNOTEQKNIL R2 [+11]
  DUPTABLE R4 K9 [{"minDuration", "maxDuration"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K7 ["minDuration"]
  GETUPVAL R6 6
  GETTABLEKS R5 R6 K10 ["MAX_AUDIO_SEARCH_DURATION"]
  SETTABLEKS R5 R4 K8 ["maxDuration"]
  MOVE R2 R4
  GETUPVAL R6 7
  GETTABLEKS R5 R6 K11 ["API_NAMES"]
  GETTABLE R4 R5 R3
  JUMPIFNOT R4 [+11]
  GETUPVAL R6 8
  GETUPVAL R7 9
  MOVE R8 R3
  MOVE R9 R2
  MOVE R10 R1
  GETUPVAL R11 4
  CALL R6 5 -1
  NAMECALL R4 R0 K2 ["dispatch"]
  CALL R4 -1 0
  RETURN R0 0
  GETUPVAL R6 10
  GETUPVAL R7 9
  MOVE R8 R1
  CALL R6 2 -1
  NAMECALL R4 R0 K2 ["dispatch"]
  CALL R4 -1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Core"]
  GETTABLEKS R3 R4 K6 ["Types"]
  GETTABLEKS R2 R3 K7 ["RequestReason"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R6 R0 K5 ["Core"]
  GETTABLEKS R5 R6 K8 ["Networking"]
  GETTABLEKS R4 R5 K9 ["Requests"]
  GETTABLEKS R3 R4 K10 ["GetAssetsRequest"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R7 R0 K5 ["Core"]
  GETTABLEKS R6 R7 K8 ["Networking"]
  GETTABLEKS R5 R6 K9 ["Requests"]
  GETTABLEKS R4 R5 K11 ["GetToolboxItems"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K5 ["Core"]
  GETTABLEKS R6 R7 K6 ["Types"]
  GETTABLEKS R5 R6 K12 ["Category"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K5 ["Core"]
  GETTABLEKS R7 R8 K13 ["Actions"]
  GETTABLEKS R6 R7 K14 ["ClearAssets"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K5 ["Core"]
  GETTABLEKS R8 R9 K13 ["Actions"]
  GETTABLEKS R7 R8 K15 ["UpdatePageInfo"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K5 ["Core"]
  GETTABLEKS R9 R10 K16 ["Util"]
  GETTABLEKS R8 R9 K17 ["Constants"]
  CALL R7 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K5 ["Core"]
  GETTABLEKS R11 R12 K16 ["Util"]
  GETTABLEKS R10 R11 K18 ["ToolboxUtilities"]
  CALL R9 1 1
  GETTABLEKS R8 R9 K19 ["showRobloxCreatedAssets"]
  DUPCLOSURE R9 K20 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R2
  RETURN R9 1