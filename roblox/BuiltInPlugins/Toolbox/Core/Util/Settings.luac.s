PROTO_0:
  DUPTABLE R1 K1 [{"_plugin"}]
  SETTABLEKS R0 R1 K0 ["_plugin"]
  GETUPVAL R4 0
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K3 [setmetatable]
  CALL R2 2 0
  RETURN R1 1

PROTO_1:
  GETTABLEKS R3 R0 K0 ["_plugin"]
  JUMPIF R3 [+1]
  RETURN R2 1
  GETTABLEKS R3 R0 K0 ["_plugin"]
  MOVE R5 R1
  NAMECALL R3 R3 K1 ["GetSetting"]
  CALL R3 2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["shouldLogSettings"]
  CALL R4 0 1
  JUMPIFNOT R4 [+56]
  GETIMPORT R4 K4 [print]
  LOADK R5 K5 ["Settings:_getSetting(setting=\"%s\", default=%s) got value = %s"]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R8 R1
  GETIMPORT R7 K7 [tostring]
  CALL R7 1 1
  FASTCALL1 TYPE R2 [+3]
  MOVE R10 R2
  GETIMPORT R9 K9 [type]
  CALL R9 1 1
  JUMPIFNOTEQKS R9 K10 ["string"] [+11]
  LOADK R9 K11 ["\""]
  FASTCALL1 TOSTRING R2 [+3]
  MOVE R13 R2
  GETIMPORT R12 K7 [tostring]
  CALL R12 1 1
  MOVE R10 R12
  LOADK R11 K11 ["\""]
  CONCAT R8 R9 R11
  JUMPIF R8 [+5]
  FASTCALL1 TOSTRING R2 [+3]
  MOVE R9 R2
  GETIMPORT R8 K7 [tostring]
  CALL R8 1 1
  FASTCALL1 TYPE R3 [+3]
  MOVE R11 R3
  GETIMPORT R10 K9 [type]
  CALL R10 1 1
  JUMPIFNOTEQKS R10 K10 ["string"] [+11]
  LOADK R10 K11 ["\""]
  FASTCALL1 TOSTRING R3 [+3]
  MOVE R14 R3
  GETIMPORT R13 K7 [tostring]
  CALL R13 1 1
  MOVE R11 R13
  LOADK R12 K11 ["\""]
  CONCAT R9 R10 R12
  JUMPIF R9 [+5]
  FASTCALL1 TOSTRING R3 [+3]
  MOVE R10 R3
  GETIMPORT R9 K7 [tostring]
  CALL R9 1 1
  NAMECALL R5 R5 K12 ["format"]
  CALL R5 4 -1
  CALL R4 -1 0
  JUMPIF R3 [+1]
  MOVE R3 R2
  RETURN R3 1

PROTO_2:
  GETTABLEKS R3 R0 K0 ["_plugin"]
  JUMPIF R3 [+1]
  RETURN R0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["shouldLogSettings"]
  CALL R3 0 1
  JUMPIFNOT R3 [+34]
  GETIMPORT R3 K3 [print]
  LOADK R4 K4 ["Settings:_setSetting(setting=\"%s\", value=%s)"]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R7 R1
  GETIMPORT R6 K6 [tostring]
  CALL R6 1 1
  FASTCALL1 TYPE R2 [+3]
  MOVE R9 R2
  GETIMPORT R8 K8 [type]
  CALL R8 1 1
  JUMPIFNOTEQKS R8 K9 ["string"] [+11]
  LOADK R8 K10 ["\""]
  FASTCALL1 TOSTRING R2 [+3]
  MOVE R12 R2
  GETIMPORT R11 K6 [tostring]
  CALL R11 1 1
  MOVE R9 R11
  LOADK R10 K10 ["\""]
  CONCAT R7 R8 R10
  JUMPIF R7 [+5]
  FASTCALL1 TOSTRING R2 [+3]
  MOVE R8 R2
  GETIMPORT R7 K6 [tostring]
  CALL R7 1 1
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 3 -1
  CALL R3 -1 0
  GETTABLEKS R3 R0 K0 ["_plugin"]
  MOVE R5 R1
  MOVE R6 R2
  NAMECALL R3 R3 K12 ["SetSetting"]
  CALL R3 3 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R3 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["DEFAULT"]
  GETTABLEKS R4 R5 K1 ["name"]
  NAMECALL R1 R0 K2 ["_getSetting"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_4:
  GETUPVAL R4 0
  MOVE R5 R1
  NAMECALL R2 R0 K0 ["_setSetting"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_5:
  GETUPVAL R3 0
  LOADK R4 K0 [""]
  NAMECALL R1 R0 K1 ["_getSetting"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_6:
  GETUPVAL R4 0
  MOVE R5 R1
  NAMECALL R2 R0 K0 ["_setSetting"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_7:
  GETUPVAL R3 0
  LOADN R4 1
  NAMECALL R1 R0 K0 ["_getSetting"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_8:
  GETUPVAL R4 0
  MOVE R5 R1
  NAMECALL R2 R0 K0 ["_setSetting"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_9:
  GETUPVAL R4 0
  LOADK R5 K0 ["true"]
  NAMECALL R2 R0 K1 ["_getSetting"]
  CALL R2 3 1
  JUMPIFEQKS R2 K0 ["true"] [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_10:
  GETUPVAL R4 0
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R6 R1
  GETIMPORT R5 K1 [tostring]
  CALL R5 1 1
  NAMECALL R2 R0 K2 ["_setSetting"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_11:
  GETUPVAL R3 0
  LOADK R4 K0 [""]
  NAMECALL R1 R0 K1 ["_getSetting"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_12:
  GETUPVAL R4 0
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R6 R1
  GETIMPORT R5 K1 [tostring]
  CALL R5 1 1
  NAMECALL R2 R0 K2 ["_setSetting"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_13:
  GETUPVAL R3 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["Grid"]
  NAMECALL R1 R0 K1 ["_getSetting"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_14:
  GETUPVAL R4 0
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R6 R1
  GETIMPORT R5 K1 [tostring]
  CALL R5 1 1
  NAMECALL R2 R0 K2 ["_setSetting"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_15:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["shouldLogSettings"]
  CALL R2 0 1
  JUMPIFNOT R2 [+4]
  GETIMPORT R2 K2 [print]
  LOADK R3 K3 ["Settings:updateFromPageInfo()"]
  CALL R2 1 0
  GETTABLEKS R4 R1 K4 ["categoryName"]
  NAMECALL R2 R0 K5 ["setSelectedCategoryName"]
  CALL R2 2 0
  GETTABLEKS R4 R1 K6 ["searchTerm"]
  NAMECALL R2 R0 K7 ["setSelectedSearchTerm"]
  CALL R2 2 0
  GETTABLEKS R4 R1 K8 ["sortIndex"]
  NAMECALL R2 R0 K9 ["setSelectedSortIndex"]
  CALL R2 2 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["shouldLogSettings"]
  CALL R1 0 1
  JUMPIFNOT R1 [+4]
  GETIMPORT R1 K2 [print]
  LOADK R2 K3 ["Settings:loadInitialSettings()"]
  CALL R1 1 0
  NEWTABLE R1 8 0
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIFNOT R2 [+8]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K4 ["DEFAULT"]
  GETTABLEKS R2 R3 K5 ["name"]
  SETTABLEKS R2 R1 K6 ["categoryName"]
  JUMP [+19]
  NAMECALL R2 R0 K7 ["getSelectedCategoryName"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K6 ["categoryName"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K8 ["getCategoryByName"]
  GETTABLEKS R3 R1 K6 ["categoryName"]
  CALL R2 1 1
  JUMPIF R2 [+7]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K4 ["DEFAULT"]
  GETTABLEKS R2 R3 K5 ["name"]
  SETTABLEKS R2 R1 K6 ["categoryName"]
  GETUPVAL R2 3
  CALL R2 0 1
  JUMPIFNOT R2 [+17]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K9 ["MARKETPLACE_KEY"]
  SETTABLEKS R2 R1 K10 ["tab"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K4 ["DEFAULT"]
  GETTABLEKS R2 R3 K5 ["name"]
  SETTABLEKS R2 R1 K6 ["categoryName"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K11 ["CREATOR_ROBLOX"]
  SETTABLEKS R2 R1 K12 ["creator"]
  NAMECALL R2 R0 K13 ["getSelectedSearchTerm"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K14 ["searchTerm"]
  NAMECALL R2 R0 K15 ["getSelectedSortIndex"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K16 ["sortIndex"]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K17 ["canSort"]
  GETTABLEKS R3 R1 K14 ["searchTerm"]
  GETTABLEKS R4 R1 K6 ["categoryName"]
  CALL R2 2 1
  JUMPIF R2 [+8]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K18 ["getDefaultSortForCategory"]
  GETTABLEKS R3 R1 K6 ["categoryName"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K16 ["sortIndex"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Core"]
  GETTABLEKS R3 R4 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["DebugFlags"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K5 ["Core"]
  GETTABLEKS R4 R5 K8 ["Types"]
  GETTABLEKS R3 R4 K9 ["Category"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K5 ["Core"]
  GETTABLEKS R5 R6 K8 ["Types"]
  GETTABLEKS R4 R5 K10 ["Sort"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K5 ["Core"]
  GETTABLEKS R6 R7 K8 ["Types"]
  GETTABLEKS R5 R6 K11 ["LayoutMode"]
  CALL R4 1 1
  NEWTABLE R5 32 0
  SETTABLEKS R5 R5 K12 ["__index"]
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K5 ["Core"]
  GETTABLEKS R9 R10 K6 ["Util"]
  GETTABLEKS R8 R9 K13 ["ToolboxUtilities"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K14 ["disableMarketplaceAndRecents"]
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K5 ["Core"]
  GETTABLEKS R10 R11 K6 ["Util"]
  GETTABLEKS R9 R10 K13 ["ToolboxUtilities"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K15 ["showRobloxCreatedAssets"]
  GETIMPORT R8 K4 [require]
  GETTABLEKS R12 R0 K5 ["Core"]
  GETTABLEKS R11 R12 K6 ["Util"]
  GETTABLEKS R10 R11 K16 ["SharedFlags"]
  GETTABLEKS R9 R10 K17 ["getFFlagToolboxEnableAssetRows"]
  CALL R8 1 1
  LOADK R10 K18 ["Toolbox_"]
  LOADK R11 K19 ["SelectedCategoryName"]
  CONCAT R9 R10 R11
  LOADK R11 K18 ["Toolbox_"]
  LOADK R12 K20 ["SelectedSearchTerm"]
  CONCAT R10 R11 R12
  LOADK R12 K18 ["Toolbox_"]
  LOADK R13 K21 ["SelectedSortIndex"]
  CONCAT R11 R12 R13
  LOADK R13 K18 ["Toolbox_"]
  LOADK R14 K22 ["ShowScriptWarning"]
  CONCAT R12 R13 R14
  LOADK R14 K18 ["Toolbox_"]
  LOADK R15 K23 ["LastAnnouncementViewedKey"]
  CONCAT R13 R14 R15
  LOADK R15 K18 ["Toolbox_"]
  LOADK R16 K24 ["LayoutModeKey"]
  CONCAT R14 R15 R16
  DUPCLOSURE R15 K25 [PROTO_0]
  CAPTURE VAL R5
  SETTABLEKS R15 R5 K26 ["new"]
  DUPCLOSURE R15 K27 [PROTO_1]
  CAPTURE VAL R1
  SETTABLEKS R15 R5 K28 ["_getSetting"]
  DUPCLOSURE R15 K29 [PROTO_2]
  CAPTURE VAL R1
  SETTABLEKS R15 R5 K30 ["_setSetting"]
  DUPCLOSURE R15 K31 [PROTO_3]
  CAPTURE VAL R9
  CAPTURE VAL R2
  SETTABLEKS R15 R5 K32 ["getSelectedCategoryName"]
  DUPCLOSURE R15 K33 [PROTO_4]
  CAPTURE VAL R9
  SETTABLEKS R15 R5 K34 ["setSelectedCategoryName"]
  DUPCLOSURE R15 K35 [PROTO_5]
  CAPTURE VAL R10
  SETTABLEKS R15 R5 K36 ["getSelectedSearchTerm"]
  DUPCLOSURE R15 K37 [PROTO_6]
  CAPTURE VAL R10
  SETTABLEKS R15 R5 K38 ["setSelectedSearchTerm"]
  DUPCLOSURE R15 K39 [PROTO_7]
  CAPTURE VAL R11
  SETTABLEKS R15 R5 K40 ["getSelectedSortIndex"]
  DUPCLOSURE R15 K41 [PROTO_8]
  CAPTURE VAL R11
  SETTABLEKS R15 R5 K42 ["setSelectedSortIndex"]
  DUPCLOSURE R15 K43 [PROTO_9]
  CAPTURE VAL R12
  SETTABLEKS R15 R5 K44 ["getShowScriptWarning"]
  DUPCLOSURE R15 K45 [PROTO_10]
  CAPTURE VAL R12
  SETTABLEKS R15 R5 K46 ["setShowScriptWarning"]
  DUPCLOSURE R15 K47 [PROTO_11]
  CAPTURE VAL R13
  SETTABLEKS R15 R5 K48 ["getLastAnnouncementViewedKey"]
  DUPCLOSURE R15 K49 [PROTO_12]
  CAPTURE VAL R13
  SETTABLEKS R15 R5 K50 ["setLastAnnouncementViewedKey"]
  MOVE R15 R8
  CALL R15 0 1
  JUMPIFNOT R15 [+9]
  DUPCLOSURE R15 K51 [PROTO_13]
  CAPTURE VAL R14
  CAPTURE VAL R4
  SETTABLEKS R15 R5 K52 ["getLayoutMode"]
  DUPCLOSURE R15 K53 [PROTO_14]
  CAPTURE VAL R14
  SETTABLEKS R15 R5 K54 ["setLayoutMode"]
  DUPCLOSURE R15 K55 [PROTO_15]
  CAPTURE VAL R1
  SETTABLEKS R15 R5 K56 ["updateFromPageInfo"]
  DUPCLOSURE R15 K57 [PROTO_16]
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R3
  SETTABLEKS R15 R5 K58 ["loadInitialSettings"]
  RETURN R5 1