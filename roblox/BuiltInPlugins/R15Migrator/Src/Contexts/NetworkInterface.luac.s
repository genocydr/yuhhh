PROTO_0:
  DUPTABLE R0 K1 [{"_networkImp"}]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["new"]
  DUPTABLE R2 K4 [{"isInternal"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K3 ["isInternal"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["_networkImp"]
  GETUPVAL R3 1
  FASTCALL2 SETMETATABLE R0 R3 [+4]
  MOVE R2 R0
  GETIMPORT R1 K6 [setmetatable]
  CALL R1 2 0
  RETURN R0 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["_networkImp"]
  MOVE R4 R1
  NAMECALL R2 R2 K1 ["get"]
  CALL R2 2 1
  GETTABLEKS R3 R0 K0 ["_networkImp"]
  MOVE R5 R2
  LOADN R6 5
  NAMECALL R3 R3 K2 ["handleRetry"]
  CALL R3 3 1
  GETTABLEKS R4 R0 K0 ["_networkImp"]
  MOVE R6 R3
  NAMECALL R4 R4 K3 ["parseJson"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_2:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["composeUrl"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["ITEM_CONFIGURATION_URL"]
  LOADK R6 K2 ["v1/creations/get-assets"]
  DUPTABLE R7 K8 [{"assetType", "isArchived", "limit", "cursor", "groupId"}]
  SETTABLEKS R0 R7 K3 ["assetType"]
  LOADB R8 0
  SETTABLEKS R8 R7 K4 ["isArchived"]
  SETTABLEKS R1 R7 K5 ["limit"]
  SETTABLEKS R2 R7 K6 ["cursor"]
  SETTABLEKS R3 R7 K7 ["groupId"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_3:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["composeUrl"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["ITEM_CONFIGURATION_URL"]
  LOADK R5 K2 ["v1/creations/get-assets"]
  DUPTABLE R6 K8 [{"assetType", "isArchived", "limit", "cursor", "groupId"}]
  LOADK R7 K9 ["Animation"]
  SETTABLEKS R7 R6 K3 ["assetType"]
  LOADB R7 0
  SETTABLEKS R7 R6 K4 ["isArchived"]
  LOADN R7 25
  SETTABLEKS R7 R6 K5 ["limit"]
  SETTABLEKS R1 R6 K6 ["cursor"]
  SETTABLEKS R2 R6 K7 ["groupId"]
  CALL R3 3 1
  MOVE R6 R3
  NAMECALL R4 R0 K10 ["httpGetJson"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_4:
  GETIMPORT R5 K2 [string.format]
  LOADK R6 K3 ["toolbox-service/v1/inventory/user/%d/%s?"]
  MOVE R7 R4
  MOVE R8 R0
  CALL R5 3 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["composeUrl"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K5 ["APIS_URL"]
  MOVE R8 R5
  DUPTABLE R9 K10 [{"keyword", "limit", "searchSource", "cursor"}]
  SETTABLEKS R3 R9 K6 ["keyword"]
  SETTABLEKS R1 R9 K7 ["limit"]
  JUMPIFNOT R3 [+2]
  LOADK R10 K6 ["keyword"]
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K8 ["searchSource"]
  SETTABLEKS R2 R9 K9 ["cursor"]
  CALL R6 3 -1
  RETURN R6 -1

PROTO_5:
  GETUPVAL R4 0
  LOADK R5 K0 ["animation"]
  LOADN R6 30
  MOVE R7 R1
  MOVE R8 R3
  MOVE R9 R2
  CALL R4 5 1
  MOVE R7 R4
  NAMECALL R5 R0 K1 ["httpGetJson"]
  CALL R5 2 -1
  RETURN R5 -1

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["composeUrl"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["DEVELOP_URL"]
  LOADK R4 K2 ["v2/universes/"]
  MOVE R5 R0
  LOADK R6 K3 ["/configuration"]
  CONCAT R3 R4 R6
  CALL R1 2 -1
  RETURN R1 -1

PROTO_7:
  LOADNIL R0
  RETURN R0 1

PROTO_8:
  LOADK R4 K0 ["StarterPlayer"]
  NAMECALL R2 R1 K1 ["GetService"]
  CALL R2 2 1
  GETTABLEKS R3 R1 K2 ["GameId"]
  JUMPIFNOTEQKN R3 K3 [0] [+4]
  GETTABLEKS R4 R2 K4 ["GameSettingsAvatar"]
  RETURN R4 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["composeUrl"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["DEVELOP_URL"]
  LOADK R7 K7 ["v2/universes/"]
  MOVE R8 R3
  LOADK R9 K8 ["/configuration"]
  CONCAT R6 R7 R9
  CALL R4 2 1
  MOVE R7 R4
  NAMECALL R5 R0 K9 ["httpGetJson"]
  CALL R5 2 1
  DUPCLOSURE R7 K10 [PROTO_7]
  NAMECALL R5 R5 K11 ["catch"]
  CALL R5 2 1
  NAMECALL R5 R5 K12 ["await"]
  CALL R5 1 1
  JUMPIF R5 [+2]
  LOADNIL R6
  RETURN R6 1
  GETTABLEKS R7 R5 K13 ["responseBody"]
  GETTABLEKS R6 R7 K14 ["universeAvatarType"]
  JUMPIFNOTEQKS R6 K15 ["MorphToR6"] [+4]
  GETIMPORT R7 K19 [Enum.GameAvatarType.R6]
  RETURN R7 1
  JUMPIFNOTEQKS R6 K20 ["MorphToR15"] [+4]
  GETIMPORT R7 K22 [Enum.GameAvatarType.R15]
  RETURN R7 1
  GETIMPORT R7 K24 [Enum.GameAvatarType.PlayerChoice]
  RETURN R7 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Http"]
  GETTABLEKS R2 R3 K9 ["Networking"]
  GETTABLEKS R4 R1 K10 ["ContextServices"]
  GETTABLEKS R3 R4 K11 ["ContextItem"]
  GETTABLEKS R6 R1 K12 ["RobloxAPI"]
  GETTABLEKS R5 R6 K13 ["Url"]
  GETTABLEKS R4 R5 K14 ["new"]
  CALL R4 0 1
  LOADK R7 K15 ["NetworkInterface"]
  NAMECALL R5 R3 K16 ["extend"]
  CALL R5 2 1
  DUPCLOSURE R6 K17 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R5
  SETTABLEKS R6 R5 K14 ["new"]
  DUPCLOSURE R6 K18 [PROTO_1]
  SETTABLEKS R6 R5 K19 ["httpGetJson"]
  DUPCLOSURE R6 K20 [PROTO_2]
  CAPTURE VAL R4
  DUPCLOSURE R7 K21 [PROTO_3]
  CAPTURE VAL R4
  SETTABLEKS R7 R5 K22 ["getGroupAnimations"]
  DUPCLOSURE R7 K23 [PROTO_4]
  CAPTURE VAL R4
  DUPCLOSURE R8 K24 [PROTO_5]
  CAPTURE VAL R7
  SETTABLEKS R8 R5 K25 ["getUserAnimations"]
  DUPCLOSURE R8 K26 [PROTO_6]
  CAPTURE VAL R4
  DUPCLOSURE R9 K27 [PROTO_8]
  CAPTURE VAL R4
  SETTABLEKS R9 R5 K28 ["getAvatarType"]
  RETURN R5 1