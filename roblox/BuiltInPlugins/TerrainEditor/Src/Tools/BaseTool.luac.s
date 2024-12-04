PROTO_0:
  DUPTABLE R5 K4 [{"_name", "_category", "_configuration", "_gizmos"}]
  SETTABLEKS R1 R5 K0 ["_name"]
  SETTABLEKS R2 R5 K1 ["_category"]
  SETTABLEKS R3 R5 K2 ["_configuration"]
  SETTABLEKS R4 R5 K3 ["_gizmos"]
  FASTCALL2 SETMETATABLE R5 R0 [+5]
  MOVE R7 R5
  MOVE R8 R0
  GETIMPORT R6 K6 [setmetatable]
  CALL R6 2 0
  SETTABLEKS R0 R0 K7 ["__index"]
  RETURN R5 1

PROTO_1:
  GETTABLEKS R3 R1 K0 ["Analytics"]
  GETTABLEKS R4 R1 K1 ["Localization"]
  GETTABLEKS R5 R1 K2 ["PluginController"]
  GETTABLEKS R6 R1 K3 ["ShortcutController"]
  GETTABLEKS R7 R1 K4 ["Stylizer"]
  GETTABLEKS R8 R1 K5 ["ToolController"]
  MOVE R11 R5
  NAMECALL R9 R0 K6 ["registerSettings"]
  CALL R9 2 2
  GETTABLEKS R13 R0 K7 ["_name"]
  MOVE R14 R9
  NAMECALL R11 R5 K8 ["setSetting"]
  CALL R11 3 0
  SETTABLEKS R3 R0 K9 ["_analytics"]
  SETTABLEKS R4 R0 K10 ["_localization"]
  SETTABLEKS R5 R0 K11 ["_pluginController"]
  SETTABLEKS R6 R0 K12 ["_shortcutController"]
  SETTABLEKS R7 R0 K13 ["_stylizer"]
  SETTABLEKS R8 R0 K14 ["_toolController"]
  SETTABLEKS R2 R0 K15 ["_services"]
  DUPTABLE R11 K18 [{"icon", "name"}]
  DUPTABLE R12 K20 [{"Image"}]
  LOADK R14 K21 ["%*.png"]
  LOADK R17 K22 ["rbxasset://studio_svg_textures/Lua/TerrainEditor/%s/Large/"]
  GETTABLEKS R18 R0 K7 ["_name"]
  CONCAT R16 R17 R18
  NAMECALL R14 R14 K23 ["format"]
  CALL R14 2 1
  MOVE R13 R14
  SETTABLEKS R13 R12 K19 ["Image"]
  SETTABLEKS R12 R11 K16 ["icon"]
  LOADK R14 K24 ["BaseTool"]
  GETTABLEKS R15 R0 K7 ["_name"]
  NAMECALL R12 R4 K25 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K17 ["name"]
  SETTABLEKS R11 R0 K26 ["_tile"]
  SETTABLEKS R9 R0 K27 ["_persistentUserSettings"]
  SETTABLEKS R10 R0 K28 ["_sessionUserSettings"]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R0 K29 ["_overrides"]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R0 K30 ["_errors"]
  LOADB R11 0
  SETTABLEKS R11 R0 K31 ["_isRunning"]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R0 K32 ["_validateFunctions"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K33 ["new"]
  CALL R11 0 1
  SETTABLEKS R11 R0 K34 ["OnFormChanged"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K33 ["new"]
  CALL R11 0 1
  SETTABLEKS R11 R0 K35 ["OnGizmoChanged"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K33 ["new"]
  CALL R11 0 1
  SETTABLEKS R11 R0 K36 ["OnInternalsChanged"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K33 ["new"]
  CALL R11 0 1
  SETTABLEKS R11 R0 K37 ["OnNoteChanged"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K33 ["new"]
  CALL R11 0 1
  SETTABLEKS R11 R0 K38 ["OnShortcutChanged"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K33 ["new"]
  CALL R11 0 1
  SETTABLEKS R11 R0 K39 ["OnOperationChanged"]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R0 K40 ["_shortcutConnections"]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R0 K41 ["_shortcuts"]
  NAMECALL R11 R0 K42 ["registerShortcuts"]
  CALL R11 1 0
  RETURN R0 1

PROTO_2:
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETTABLE R7 R1 R5
  JUMPIF R7 [+3]
  LOADNIL R7
  SETTABLE R7 R0 R5
  JUMP [+12]
  FASTCALL1 TYPEOF R6 [+3]
  MOVE R8 R6
  GETIMPORT R7 K1 [typeof]
  CALL R7 1 1
  JUMPIFNOTEQKS R7 K2 ["table"] [+6]
  GETUPVAL R7 0
  MOVE R8 R6
  GETTABLE R9 R1 R5
  CALL R7 2 1
  SETTABLE R7 R0 R5
  FORGLOOP R2 2 [-18]
  RETURN R0 1

PROTO_3:
  MOVE R3 R1
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  JUMPIFNOT R2 [+7]
  GETUPVAL R9 0
  GETTABLE R8 R9 R6
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K0 ["LocalPersistent"]
  JUMPIFNOTEQ R8 R9 [+29]
  GETTABLE R9 R0 R6
  FASTCALL1 TYPEOF R9 [+2]
  GETIMPORT R8 K2 [typeof]
  CALL R8 1 1
  FASTCALL1 TYPEOF R7 [+3]
  MOVE R10 R7
  GETIMPORT R9 K2 [typeof]
  CALL R9 1 1
  GETTABLE R10 R0 R6
  JUMPIFNOT R10 [+2]
  JUMPIFEQ R8 R9 [+2]
  SETTABLE R7 R0 R6
  JUMPIFNOTEQKS R8 K3 ["table"] [+12]
  JUMPIFNOTEQKS R9 K3 ["table"] [+10]
  GETUPVAL R11 2
  GETTABLE R10 R11 R6
  JUMPIF R10 [+6]
  GETUPVAL R10 3
  GETTABLE R11 R0 R6
  MOVE R12 R7
  LOADB R13 0
  CALL R10 3 1
  SETTABLE R10 R0 R6
  FORGLOOP R3 2 [-37]
  RETURN R0 1

PROTO_4:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["IsDebuggingSavedSettings"]
  JUMPIFNOT R3 [+2]
  LOADNIL R2
  JUMP [+5]
  GETTABLEKS R4 R0 K1 ["_name"]
  NAMECALL R2 R1 K2 ["getSetting"]
  CALL R2 2 1
  MOVE R3 R2
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  NEWTABLE R4 0 0
  DUPTABLE R5 K4 [{"MaterialList"}]
  LOADB R6 1
  SETTABLEKS R6 R5 K3 ["MaterialList"]
  GETTABLEKS R6 R0 K5 ["_configuration"]
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  DUPCLOSURE R11 K6 [PROTO_2]
  CAPTURE VAL R11
  GETTABLEKS R13 R10 K7 ["Id"]
  GETTABLE R12 R3 R13
  JUMPIF R12 [+6]
  GETTABLEKS R12 R10 K7 ["Id"]
  GETTABLEKS R13 R10 K8 ["Defaults"]
  SETTABLE R13 R3 R12
  JUMP [+10]
  GETTABLEKS R12 R10 K7 ["Id"]
  MOVE R13 R11
  GETTABLEKS R15 R10 K7 ["Id"]
  GETTABLE R14 R3 R15
  GETTABLEKS R15 R10 K8 ["Defaults"]
  CALL R13 2 1
  SETTABLE R13 R3 R12
  GETUPVAL R14 1
  GETTABLEKS R15 R10 K7 ["Id"]
  GETTABLE R13 R14 R15
  GETTABLEKS R12 R13 K9 ["Storage"]
  GETTABLEKS R13 R10 K7 ["Id"]
  NEWTABLE R14 0 0
  SETTABLE R14 R4 R13
  GETTABLEKS R13 R10 K8 ["Defaults"]
  LOADNIL R14
  LOADNIL R15
  FORGPREP R13
  GETTABLE R18 R12 R16
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K10 ["LocalSession"]
  JUMPIFNOTEQ R18 R19 [+5]
  GETTABLEKS R19 R10 K7 ["Id"]
  GETTABLE R18 R4 R19
  SETTABLE R17 R18 R16
  FORGLOOP R13 2 [-11]
  NEWCLOSURE R13 P1
  CAPTURE VAL R12
  CAPTURE UPVAL U2
  CAPTURE VAL R5
  CAPTURE VAL R13
  GETTABLEKS R14 R10 K7 ["Id"]
  MOVE R15 R13
  GETTABLEKS R17 R10 K7 ["Id"]
  GETTABLE R16 R3 R17
  GETTABLEKS R17 R10 K8 ["Defaults"]
  LOADB R18 1
  CALL R15 3 1
  SETTABLE R15 R3 R14
  FORGLOOP R6 2 [-67]
  RETURN R3 2

PROTO_5:
  NAMECALL R1 R0 K0 ["getPayload"]
  CALL R1 1 1
  MOVE R2 R1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  MOVE R7 R6
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  GETTABLEKS R12 R0 K1 ["_shortcutController"]
  MOVE R14 R10
  NAMECALL R12 R12 K2 ["supportsShortcut"]
  CALL R12 2 1
  JUMPIFNOT R12 [+18]
  GETTABLEKS R13 R0 K3 ["_shortcuts"]
  GETTABLE R12 R13 R5
  JUMPIF R12 [+5]
  GETTABLEKS R12 R0 K3 ["_shortcuts"]
  NEWTABLE R13 0 0
  SETTABLE R13 R12 R5
  GETTABLEKS R14 R0 K3 ["_shortcuts"]
  GETTABLE R13 R14 R5
  FASTCALL2 TABLE_INSERT R13 R10 [+4]
  MOVE R14 R10
  GETIMPORT R12 K6 [table.insert]
  CALL R12 2 0
  FORGLOOP R7 2 [-26]
  FORGLOOP R2 2 [-32]
  RETURN R0 0

PROTO_6:
  DUPTABLE R1 K2 [{"_configuration", "_name"}]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K0 ["_configuration"]
  LOADK R2 K3 ["Empty"]
  SETTABLEKS R2 R1 K1 ["_name"]
  GETUPVAL R2 0
  FASTCALL2 SETMETATABLE R1 R2 [+3]
  GETIMPORT R0 K5 [setmetatable]
  CALL R0 2 1
  RETURN R0 1

PROTO_7:
  NEWTABLE R1 0 0
  GETTABLEKS R2 R0 K0 ["_configuration"]
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETTABLEKS R7 R6 K1 ["Id"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K2 ["Get"]
  GETTABLEKS R9 R6 K1 ["Id"]
  GETTABLEKS R10 R0 K3 ["_pluginController"]
  GETTABLEKS R12 R0 K4 ["_persistentUserSettings"]
  GETTABLEKS R13 R6 K1 ["Id"]
  GETTABLE R11 R12 R13
  GETTABLEKS R13 R0 K5 ["_sessionUserSettings"]
  GETTABLEKS R14 R6 K1 ["Id"]
  GETTABLE R12 R13 R14
  CALL R8 4 1
  SETTABLE R8 R1 R7
  FORGLOOP R2 2 [-22]
  RETURN R1 1

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_pluginController"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["_name"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["_persistentUserSettings"]
  NAMECALL R0 R0 K3 ["setSetting"]
  CALL R0 3 0
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["_saveSettingsTask"]
  RETURN R0 0

PROTO_9:
  LOADB R2 0
  MOVE R3 R1
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETUPVAL R9 0
  GETTABLE R8 R9 R6
  JUMPIFNOT R8 [+49]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K0 ["Set"]
  MOVE R9 R6
  GETTABLEKS R10 R0 K1 ["_pluginController"]
  MOVE R11 R7
  CALL R8 3 2
  GETTABLEKS R10 R0 K2 ["_persistentUserSettings"]
  GETTABLEKS R13 R0 K2 ["_persistentUserSettings"]
  GETTABLE R12 R13 R6
  JUMPIFNOT R12 [+7]
  GETUPVAL R11 2
  GETTABLEKS R13 R0 K2 ["_persistentUserSettings"]
  GETTABLE R12 R13 R6
  MOVE R13 R8
  CALL R11 2 1
  JUMP [+1]
  MOVE R11 R8
  SETTABLE R11 R10 R6
  GETTABLEKS R10 R0 K3 ["_sessionUserSettings"]
  GETTABLEKS R13 R0 K3 ["_sessionUserSettings"]
  GETTABLE R12 R13 R6
  JUMPIFNOT R12 [+7]
  GETUPVAL R11 2
  GETTABLEKS R13 R0 K3 ["_sessionUserSettings"]
  GETTABLE R12 R13 R6
  MOVE R13 R9
  CALL R11 2 1
  JUMP [+1]
  MOVE R11 R9
  SETTABLE R11 R10 R6
  MOVE R10 R2
  JUMPIF R10 [+8]
  GETIMPORT R11 K5 [next]
  MOVE R12 R8
  CALL R11 1 1
  JUMPIFNOTEQKNIL R11 [+2]
  LOADB R10 0 +1
  LOADB R10 1
  MOVE R2 R10
  FORGLOOP R3 2 [-53]
  JUMPIFNOT R2 [+19]
  GETTABLEKS R3 R0 K6 ["_saveSettingsTask"]
  JUMPIFNOT R3 [+8]
  GETIMPORT R3 K9 [task.cancel]
  GETTABLEKS R4 R0 K6 ["_saveSettingsTask"]
  CALL R3 1 0
  LOADNIL R3
  SETTABLEKS R3 R0 K6 ["_saveSettingsTask"]
  GETIMPORT R3 K11 [task.delay]
  LOADN R4 1
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CALL R3 2 1
  SETTABLEKS R3 R0 K6 ["_saveSettingsTask"]
  RETURN R0 0

PROTO_10:
  GETTABLEKS R1 R0 K0 ["_pluginController"]
  NAMECALL R1 R1 K1 ["getShouldBeCompact"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_11:
  NEWTABLE R1 0 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETTABLEKS R7 R6 K0 ["Id"]
  GETUPVAL R9 0
  GETTABLE R8 R9 R7
  DUPTABLE R9 K3 [{"Id", "Label", "Children"}]
  SETTABLEKS R7 R9 K0 ["Id"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["_localization"]
  LOADK R12 K5 ["Category"]
  GETTABLEKS R13 R6 K0 ["Id"]
  NAMECALL R10 R10 K6 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K1 ["Label"]
  GETTABLEKS R10 R8 K7 ["Generator"]
  DUPTABLE R11 K11 [{"Localization", "Stylizer", "Tool"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K4 ["_localization"]
  SETTABLEKS R12 R11 K8 ["Localization"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K12 ["_stylizer"]
  SETTABLEKS R12 R11 K9 ["Stylizer"]
  GETUPVAL R12 1
  SETTABLEKS R12 R11 K10 ["Tool"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K13 ["Get"]
  GETTABLEKS R13 R6 K0 ["Id"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K14 ["_pluginController"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K15 ["_persistentUserSettings"]
  GETTABLEKS R17 R6 K0 ["Id"]
  GETTABLE R15 R16 R17
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K16 ["_sessionUserSettings"]
  GETTABLEKS R18 R6 K0 ["Id"]
  GETTABLE R16 R17 R18
  CALL R12 4 1
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K17 ["_name"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K18 ["_overrides"]
  GETTABLEKS R16 R6 K0 ["Id"]
  GETTABLE R14 R15 R16
  JUMPIF R14 [+2]
  NEWTABLE R14 0 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K2 ["Children"]
  FASTCALL2 TABLE_INSERT R1 R9 [+5]
  MOVE R11 R1
  MOVE R12 R9
  GETIMPORT R10 K21 [table.insert]
  CALL R10 2 0
  FORGLOOP R2 2 [-78]
  RETURN R1 1

PROTO_12:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  MOVE R2 R1
  GETTABLEKS R3 R0 K0 ["_configuration"]
  CALL R2 1 1
  RETURN R2 1

PROTO_13:
  NEWTABLE R1 0 0
  NAMECALL R2 R0 K0 ["getPayload"]
  CALL R2 1 1
  GETTABLEKS R3 R0 K1 ["_gizmos"]
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  DUPTABLE R10 K5 [{"Id", "Schema", "Value"}]
  GETTABLEKS R11 R7 K2 ["Id"]
  SETTABLEKS R11 R10 K2 ["Id"]
  GETTABLEKS R11 R7 K3 ["Schema"]
  SETTABLEKS R11 R10 K3 ["Schema"]
  SETTABLEKS R2 R10 K4 ["Value"]
  FASTCALL2 TABLE_INSERT R1 R10 [+4]
  MOVE R9 R1
  GETIMPORT R8 K8 [table.insert]
  CALL R8 2 0
  FORGLOOP R3 2 [-18]
  RETURN R1 1

PROTO_14:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnFormChanged"]
  NAMECALL R0 R0 K1 ["Fire"]
  CALL R0 1 0
  RETURN R0 0

PROTO_15:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["setPayload"]
  CALL R2 2 0
  NAMECALL R2 R0 K1 ["setDisabledState"]
  CALL R2 1 0
  GETIMPORT R2 K4 [task.spawn]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CALL R2 1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnGizmoChanged"]
  NAMECALL R0 R0 K1 ["Fire"]
  CALL R0 1 0
  RETURN R0 0

PROTO_17:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["setPayload"]
  CALL R2 2 0
  NAMECALL R2 R0 K1 ["setDisabledState"]
  CALL R2 1 0
  GETIMPORT R2 K4 [task.spawn]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CALL R2 1 0
  RETURN R0 0

PROTO_18:
  NAMECALL R1 R0 K0 ["form"]
  CALL R1 1 1
  MOVE R2 R1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETTABLEKS R7 R6 K1 ["Children"]
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  GETTABLEKS R12 R11 K2 ["Validate"]
  JUMPIFNOT R12 [+8]
  GETTABLEKS R12 R11 K3 ["Value"]
  JUMPIFNOT R12 [+5]
  GETTABLEKS R12 R11 K2 ["Validate"]
  GETTABLEKS R13 R11 K3 ["Value"]
  CALL R12 1 0
  FORGLOOP R7 2 [-12]
  FORGLOOP R2 2 [-19]
  RETURN R0 0

PROTO_19:
  GETTABLEKS R1 R0 K0 ["_category"]
  RETURN R1 1

PROTO_20:
  GETTABLEKS R1 R0 K0 ["_tile"]
  RETURN R1 1

PROTO_21:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnShortcutChanged"]
  NAMECALL R0 R0 K1 ["Fire"]
  CALL R0 1 0
  RETURN R0 0

PROTO_22:
  NEWTABLE R1 1 0
  GETUPVAL R2 0
  NEWTABLE R3 1 0
  GETUPVAL R4 1
  SETTABLE R0 R3 R4
  SETTABLE R3 R1 R2
  GETUPVAL R2 2
  MOVE R4 R1
  NAMECALL R2 R2 K0 ["setPayload"]
  CALL R2 2 0
  GETIMPORT R2 K3 [task.spawn]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U2
  CALL R2 1 0
  RETURN R0 0

PROTO_23:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["deactivateShortcuts"]
  CALL R0 1 0
  GETUPVAL R0 0
  NAMECALL R0 R0 K1 ["activateShortcuts"]
  CALL R0 1 0
  RETURN R0 0

PROTO_24:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["deactivateShortcuts"]
  CALL R0 1 0
  GETUPVAL R0 0
  NAMECALL R0 R0 K1 ["activateShortcuts"]
  CALL R0 1 0
  RETURN R0 0

PROTO_25:
  NAMECALL R1 R0 K0 ["getPayload"]
  CALL R1 1 1
  GETTABLEKS R2 R0 K1 ["_shortcuts"]
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  MOVE R7 R6
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  GETTABLEKS R13 R0 K2 ["_shortcutConnections"]
  GETTABLEKS R14 R0 K3 ["_shortcutController"]
  MOVE R16 R11
  GETTABLE R18 R1 R5
  GETTABLE R17 R18 R11
  NEWCLOSURE R18 P0
  CAPTURE VAL R5
  CAPTURE VAL R11
  CAPTURE VAL R0
  NEWCLOSURE R19 P1
  CAPTURE VAL R0
  NAMECALL R14 R14 K4 ["registerShortcut"]
  CALL R14 5 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R12 K7 [table.insert]
  CALL R12 -1 0
  FORGLOOP R7 2 [-21]
  FORGLOOP R2 2 [-27]
  GETTABLEKS R2 R0 K8 ["OnFormChanged"]
  NEWCLOSURE R4 P2
  CAPTURE VAL R0
  NAMECALL R2 R2 K9 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K10 ["_refreshShortcuts"]
  RETURN R0 0

PROTO_26:
  GETTABLEKS R1 R0 K0 ["_shortcutConnections"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  MOVE R6 R5
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  NAMECALL R11 R10 K1 ["Disconnect"]
  CALL R11 1 0
  FORGLOOP R6 2 [-4]
  FORGLOOP R1 2 [-10]
  GETTABLEKS R1 R0 K2 ["_refreshShortcuts"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K2 ["_refreshShortcuts"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_27:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnInternalsChanged"]
  NAMECALL R0 R0 K1 ["Fire"]
  CALL R0 1 0
  RETURN R0 0

PROTO_28:
  GETIMPORT R0 K2 [task.spawn]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CALL R0 1 0
  RETURN R0 0

PROTO_29:
  NAMECALL R1 R0 K0 ["activateShortcuts"]
  CALL R1 1 0
  NAMECALL R1 R0 K1 ["setDisabledState"]
  CALL R1 1 0
  NAMECALL R1 R0 K2 ["checkDisabledState"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K3 ["_pluginController"]
  GETTABLEKS R1 R2 K4 ["Compact"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K5 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K6 ["_compactConnection"]
  RETURN R0 0

PROTO_30:
  RETURN R0 0

PROTO_31:
  NAMECALL R1 R0 K0 ["deactivateShortcuts"]
  CALL R1 1 0
  NAMECALL R1 R0 K1 ["reportAnalytics"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["_compactConnection"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K2 ["_compactConnection"]
  NAMECALL R1 R1 K3 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_32:
  LOADB R2 1
  SETTABLEKS R2 R0 K0 ["_isRunning"]
  NAMECALL R2 R0 K1 ["setDisabledState"]
  CALL R2 1 0
  RETURN R0 0

PROTO_33:
  RETURN R0 0

PROTO_34:
  GETTABLEKS R5 R0 K0 ["_errors"]
  GETTABLE R4 R5 R1
  JUMPIF R4 [+5]
  GETTABLEKS R4 R0 K0 ["_errors"]
  NEWTABLE R5 0 0
  SETTABLE R5 R4 R1
  GETTABLEKS R5 R0 K0 ["_errors"]
  GETTABLE R4 R5 R1
  LOADB R5 1
  SETTABLE R5 R4 R2
  NAMECALL R4 R0 K1 ["setDisabledState"]
  CALL R4 1 0
  RETURN R0 0

PROTO_35:
  GETTABLEKS R4 R0 K0 ["_errors"]
  GETTABLE R3 R4 R1
  JUMPIF R3 [+1]
  RETURN R0 0
  GETTABLEKS R4 R0 K0 ["_errors"]
  GETTABLE R3 R4 R1
  LOADNIL R4
  SETTABLE R4 R3 R2
  GETIMPORT R3 K2 [next]
  GETTABLEKS R5 R0 K0 ["_errors"]
  GETTABLE R4 R5 R1
  CALL R3 1 1
  JUMPIFNOTEQKNIL R3 [+5]
  GETTABLEKS R3 R0 K0 ["_errors"]
  LOADNIL R4
  SETTABLE R4 R3 R1
  NAMECALL R3 R0 K3 ["setDisabledState"]
  CALL R3 1 0
  RETURN R0 0

PROTO_36:
  LOADB R1 1
  GETIMPORT R2 K1 [next]
  GETTABLEKS R3 R0 K2 ["_errors"]
  CALL R2 1 1
  JUMPIFNOTEQKNIL R2 [+3]
  GETTABLEKS R1 R0 K3 ["_isRunning"]
  RETURN R1 1

PROTO_37:
  GETTABLEKS R5 R0 K0 ["_validateFunctions"]
  GETTABLE R4 R5 R1
  JUMPIF R4 [+5]
  GETTABLEKS R4 R0 K0 ["_validateFunctions"]
  NEWTABLE R5 0 0
  SETTABLE R5 R4 R1
  GETTABLEKS R5 R0 K0 ["_validateFunctions"]
  GETTABLE R4 R5 R1
  SETTABLE R3 R4 R2
  RETURN R0 0

PROTO_38:
  GETTABLEKS R4 R0 K0 ["_validateFunctions"]
  GETTABLE R3 R4 R1
  JUMPIF R3 [+1]
  RETURN R0 0
  GETTABLEKS R5 R0 K0 ["_validateFunctions"]
  GETTABLE R4 R5 R1
  GETTABLE R3 R4 R2
  RETURN R3 1

PROTO_39:
  RETURN R0 0

PROTO_40:
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["_isRunning"]
  GETTABLEKS R1 R0 K1 ["_operation"]
  NAMECALL R1 R1 K2 ["wasCanceled"]
  CALL R1 1 1
  JUMPIF R1 [+56]
  NAMECALL R1 R0 K3 ["getPayload"]
  CALL R1 1 1
  GETTABLEKS R2 R0 K4 ["_analytics"]
  LOADK R4 K5 ["RegionProperties"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["getRegionPayload"]
  MOVE R6 R1
  GETTABLEKS R7 R0 K1 ["_operation"]
  NAMECALL R7 R7 K7 ["getTimeTaken"]
  CALL R7 1 1
  GETTABLEKS R8 R0 K8 ["_name"]
  CALL R5 3 -1
  NAMECALL R2 R2 K9 ["report"]
  CALL R2 -1 0
  GETTABLEKS R2 R0 K4 ["_analytics"]
  LOADK R4 K10 ["Usage"]
  GETTABLEKS R5 R0 K8 ["_name"]
  LOADN R6 1
  NAMECALL R2 R2 K9 ["report"]
  CALL R2 4 0
  GETTABLEKS R2 R0 K1 ["_operation"]
  NAMECALL R2 R2 K11 ["getTimeStatistic"]
  CALL R2 1 1
  JUMPIFNOT R2 [+9]
  GETTABLEKS R3 R0 K4 ["_analytics"]
  LOADK R5 K12 ["Performance"]
  GETTABLEKS R6 R0 K8 ["_name"]
  MOVE R7 R2
  NAMECALL R3 R3 K9 ["report"]
  CALL R3 4 0
  GETTABLEKS R3 R0 K13 ["_operationFinishedConnection"]
  JUMPIFNOT R3 [+8]
  GETTABLEKS R3 R0 K13 ["_operationFinishedConnection"]
  NAMECALL R3 R3 K14 ["Disconnect"]
  CALL R3 1 0
  LOADNIL R3
  SETTABLEKS R3 R0 K13 ["_operationFinishedConnection"]
  NAMECALL R1 R0 K15 ["setDisabledState"]
  CALL R1 1 0
  RETURN R0 0

PROTO_41:
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K10 ["Storage"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K11 ["Util"]
  GETTABLEKS R5 R6 K12 ["SettingsHelper"]
  CALL R4 1 1
  GETTABLEKS R6 R1 K11 ["Util"]
  GETTABLEKS R5 R6 K13 ["Signal"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K8 ["Src"]
  GETTABLEKS R8 R9 K14 ["Schemas"]
  GETTABLEKS R7 R8 K15 ["Settings"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K8 ["Src"]
  GETTABLEKS R9 R10 K16 ["Resources"]
  GETTABLEKS R8 R9 K17 ["Constants"]
  CALL R7 1 1
  GETTABLEKS R9 R0 K8 ["Src"]
  GETTABLEKS R8 R9 K11 ["Util"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R8 K18 ["AnalyticsHelper"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K8 ["Src"]
  GETTABLEKS R12 R13 K11 ["Util"]
  GETTABLEKS R11 R12 K19 ["deepJoinWithExceptions"]
  CALL R10 1 1
  NEWTABLE R11 32 0
  SETTABLEKS R11 R11 K20 ["__index"]
  DUPCLOSURE R12 K21 [PROTO_0]
  SETTABLEKS R12 R11 K22 ["new"]
  DUPCLOSURE R12 K23 [PROTO_1]
  CAPTURE VAL R5
  SETTABLEKS R12 R11 K24 ["init"]
  DUPCLOSURE R12 K25 [PROTO_4]
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R3
  SETTABLEKS R12 R11 K26 ["registerSettings"]
  DUPCLOSURE R12 K27 [PROTO_5]
  SETTABLEKS R12 R11 K28 ["registerShortcuts"]
  DUPCLOSURE R12 K29 [PROTO_6]
  CAPTURE VAL R11
  SETTABLEKS R12 R11 K30 ["empty"]
  DUPCLOSURE R12 K31 [PROTO_7]
  CAPTURE VAL R4
  SETTABLEKS R12 R11 K32 ["getPayload"]
  DUPCLOSURE R12 K33 [PROTO_9]
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R10
  SETTABLEKS R12 R11 K34 ["setPayload"]
  DUPCLOSURE R12 K35 [PROTO_10]
  SETTABLEKS R12 R11 K36 ["getShouldBeCompact"]
  DUPCLOSURE R12 K37 [PROTO_12]
  CAPTURE VAL R6
  CAPTURE VAL R4
  SETTABLEKS R12 R11 K38 ["form"]
  DUPCLOSURE R12 K39 [PROTO_13]
  SETTABLEKS R12 R11 K40 ["gizmos"]
  DUPCLOSURE R12 K41 [PROTO_15]
  SETTABLEKS R12 R11 K42 ["saveForm"]
  DUPCLOSURE R12 K43 [PROTO_17]
  SETTABLEKS R12 R11 K44 ["saveGizmos"]
  DUPCLOSURE R12 K45 [PROTO_18]
  SETTABLEKS R12 R11 K46 ["checkDisabledState"]
  DUPCLOSURE R12 K47 [PROTO_19]
  SETTABLEKS R12 R11 K48 ["getCategory"]
  DUPCLOSURE R12 K49 [PROTO_20]
  SETTABLEKS R12 R11 K50 ["getTile"]
  DUPCLOSURE R12 K51 [PROTO_25]
  SETTABLEKS R12 R11 K52 ["activateShortcuts"]
  DUPCLOSURE R12 K53 [PROTO_26]
  SETTABLEKS R12 R11 K54 ["deactivateShortcuts"]
  DUPCLOSURE R12 K55 [PROTO_29]
  SETTABLEKS R12 R11 K56 ["activate"]
  DUPCLOSURE R12 K57 [PROTO_30]
  SETTABLEKS R12 R11 K58 ["reportAnalytics"]
  DUPCLOSURE R12 K59 [PROTO_31]
  SETTABLEKS R12 R11 K60 ["deactivate"]
  DUPCLOSURE R12 K61 [PROTO_32]
  SETTABLEKS R12 R11 K62 ["startOperation"]
  DUPCLOSURE R12 K63 [PROTO_33]
  SETTABLEKS R12 R11 K64 ["operation"]
  DUPCLOSURE R12 K65 [PROTO_34]
  SETTABLEKS R12 R11 K66 ["reportError"]
  DUPCLOSURE R12 K67 [PROTO_35]
  SETTABLEKS R12 R11 K68 ["clearError"]
  DUPCLOSURE R12 K69 [PROTO_36]
  SETTABLEKS R12 R11 K70 ["hasError"]
  DUPCLOSURE R12 K71 [PROTO_37]
  SETTABLEKS R12 R11 K72 ["setValidateFunction"]
  DUPCLOSURE R12 K73 [PROTO_38]
  SETTABLEKS R12 R11 K74 ["getValidateFunction"]
  DUPCLOSURE R12 K75 [PROTO_39]
  SETTABLEKS R12 R11 K76 ["setDisabledState"]
  DUPCLOSURE R12 K77 [PROTO_40]
  CAPTURE VAL R9
  SETTABLEKS R12 R11 K78 ["finishOperation"]
  DUPCLOSURE R12 K79 [PROTO_41]
  SETTABLEKS R12 R11 K80 ["note"]
  RETURN R11 1
