PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R3 1
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K1 [tostring]
  CALL R2 1 1
  NAMECALL R0 R0 K2 ["deleteItem"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["new"]
  CALL R2 0 1
  DUPTABLE R3 K2 [{"userId"}]
  SETTABLEKS R1 R3 K1 ["userId"]
  GETTABLEKS R4 R2 K3 ["composeUrl"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K4 ["TEAMCREATE_MEMBERSHIPS"]
  GETTABLEKS R5 R6 K5 ["Prefix"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K4 ["TEAMCREATE_MEMBERSHIPS"]
  GETTABLEKS R6 R7 K6 ["Url"]
  MOVE R7 R0
  CALL R6 1 -1
  CALL R4 -1 1
  GETUPVAL R5 2
  DUPTABLE R7 K10 [{"Method", "Url", "Headers", "Body"}]
  LOADK R8 K11 ["DELETE"]
  SETTABLEKS R8 R7 K7 ["Method"]
  SETTABLEKS R4 R7 K6 ["Url"]
  GETUPVAL R8 3
  SETTABLEKS R8 R7 K8 ["Headers"]
  GETUPVAL R8 4
  MOVE R10 R3
  NAMECALL R8 R8 K12 ["JSONEncode"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K9 ["Body"]
  NAMECALL R5 R5 K13 ["request"]
  CALL R5 2 1
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  NAMECALL R5 R5 K14 ["andThen"]
  CALL R5 2 0
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
  GETTABLEKS R12 R13 K12 ["Network"]
  GETTABLEKS R11 R12 K29 ["GameCache"]
  CALL R10 1 1
  DUPCLOSURE R11 K30 [PROTO_1]
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  RETURN R11 1
