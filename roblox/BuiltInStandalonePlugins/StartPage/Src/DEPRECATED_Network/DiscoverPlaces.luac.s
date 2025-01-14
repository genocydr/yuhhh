PROTO_0:
  DUPTABLE R2 K4 [{"Name", "Id", "UniverseId", "Description"}]
  GETTABLEKS R3 R1 K5 ["name"]
  SETTABLEKS R3 R2 K0 ["Name"]
  GETTABLEKS R3 R1 K6 ["id"]
  SETTABLEKS R3 R2 K1 ["Id"]
  GETTABLEKS R3 R1 K7 ["universeId"]
  SETTABLEKS R3 R2 K2 ["UniverseId"]
  GETTABLEKS R3 R1 K8 ["description"]
  SETTABLEKS R3 R2 K3 ["Description"]
  RETURN R2 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["data"]
  JUMPIF R1 [+3]
  NEWTABLE R1 0 0
  RETURN R1 1
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["data"]
  DUPCLOSURE R3 K1 [PROTO_0]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_2:
  MOVE R1 R0
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETTABLEKS R8 R5 K0 ["IsPlaceholder"]
  NOT R7 R8
  FASTCALL2K ASSERT R7 K1 [+4]
  LOADK R8 K1 ["Data returned from network should not be a placeholder sentinel value"]
  GETIMPORT R6 K3 [assert]
  CALL R6 2 0
  GETTABLEKS R6 R5 K4 ["Id"]
  GETUPVAL R7 0
  JUMPIFNOTEQ R6 R7 [+9]
  GETUPVAL R7 1
  LENGTH R6 R7
  LOADN R7 1
  JUMPIFNOTLT R7 R6 [+4]
  GETUPVAL R6 1
  SETTABLEKS R6 R5 K5 ["Children"]
  FORGLOOP R1 2 [-23]
  RETURN R0 1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["setter"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETIMPORT R1 K1 [warn]
  LOADK R3 K2 ["DiscoverPlaces experienced an error: %*"]
  MOVE R5 R0
  NAMECALL R3 R3 K3 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  DUPTABLE R1 K2 [{"limit", "SortOrder"}]
  LOADN R2 50
  SETTABLEKS R2 R1 K0 ["limit"]
  LOADK R2 K3 ["Asc"]
  SETTABLEKS R2 R1 K1 ["SortOrder"]
  GETTABLEKS R2 R0 K4 ["gameIds"]
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K5 ["new"]
  CALL R7 0 1
  GETTABLEKS R8 R7 K6 ["composeUrl"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K7 ["PLACES_SEARCH_URL"]
  GETTABLEKS R9 R10 K8 ["Prefix"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K7 ["PLACES_SEARCH_URL"]
  GETTABLEKS R10 R11 K9 ["Url"]
  MOVE R11 R6
  CALL R10 1 1
  MOVE R11 R1
  CALL R8 3 1
  GETUPVAL R9 2
  MOVE R11 R8
  NAMECALL R9 R9 K10 ["get"]
  CALL R9 2 1
  GETUPVAL R10 2
  MOVE R12 R9
  NAMECALL R10 R10 K11 ["parseJson"]
  CALL R10 2 1
  GETUPVAL R12 3
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K12 ["validate"]
  CALL R12 1 -1
  NAMECALL R10 R10 K13 ["andThen"]
  CALL R10 -1 1
  DUPCLOSURE R12 K14 [PROTO_1]
  CAPTURE UPVAL U5
  NAMECALL R10 R10 K13 ["andThen"]
  CALL R10 2 1
  NEWCLOSURE R12 P1
  CAPTURE VAL R0
  CAPTURE VAL R6
  NAMECALL R10 R10 K13 ["andThen"]
  CALL R10 2 1
  DUPCLOSURE R12 K15 [PROTO_4]
  NAMECALL R10 R10 K16 ["catch"]
  CALL R10 2 0
  FORGLOOP R2 2 [-54]
  RETURN R0 1

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
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K10 ["Models"]
  GETTABLEKS R4 R5 K11 ["ApiArrayResponsePlaceModel"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K12 ["Packages"]
  GETTABLEKS R5 R6 K13 ["Framework"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K14 ["Network"]
  GETTABLEKS R6 R7 K15 ["Urls"]
  CALL R5 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K6 ["Src"]
  GETTABLEKS R9 R10 K16 ["Util"]
  GETTABLEKS R8 R9 K17 ["Services"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K18 ["Networking"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K6 ["Src"]
  GETTABLEKS R9 R10 K16 ["Util"]
  GETTABLEKS R8 R9 K19 ["createResponseValidator"]
  CALL R7 1 1
  GETTABLEKS R9 R4 K20 ["RobloxAPI"]
  GETTABLEKS R8 R9 K21 ["Url"]
  GETTABLEKS R9 R6 K22 ["new"]
  DUPTABLE R10 K25 [{"isInternal", "loggingLevel"}]
  LOADB R11 1
  SETTABLEKS R11 R10 K23 ["isInternal"]
  SETTABLEKS R1 R10 K24 ["loggingLevel"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K6 ["Src"]
  GETTABLEKS R12 R13 K16 ["Util"]
  GETTABLEKS R11 R12 K26 ["TypedDash"]
  CALL R10 1 1
  GETTABLEKS R11 R10 K27 ["collectArray"]
  DUPCLOSURE R12 K28 [PROTO_5]
  CAPTURE VAL R8
  CAPTURE VAL R5
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R11
  RETURN R12 1
