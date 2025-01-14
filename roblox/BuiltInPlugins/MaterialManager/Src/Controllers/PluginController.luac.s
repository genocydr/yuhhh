PROTO_0:
  DUPTABLE R6 K5 [{"_plugin", "_store", "_mouse", "_generalServiceController", "_mock"}]
  SETTABLEKS R0 R6 K0 ["_plugin"]
  SETTABLEKS R1 R6 K1 ["_store"]
  SETTABLEKS R2 R6 K2 ["_mouse"]
  SETTABLEKS R3 R6 K3 ["_generalServiceController"]
  SETTABLEKS R4 R6 K4 ["_mock"]
  GETUPVAL R7 0
  FASTCALL2 SETMETATABLE R6 R7 [+3]
  GETIMPORT R5 K7 [setmetatable]
  CALL R5 2 1
  LOADNIL R6
  SETTABLEKS R6 R5 K8 ["_mouseMoveConnection"]
  LOADNIL R6
  SETTABLEKS R6 R5 K9 ["_mouseClickedConnection"]
  LOADNIL R6
  SETTABLEKS R6 R5 K10 ["_deactivationConnection"]
  RETURN R5 1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["new"]
  LOADNIL R1
  LOADNIL R2
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["mock"]
  CALL R3 0 1
  LOADB R4 1
  CALL R0 4 -1
  RETURN R0 -1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["_mock"]
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETTABLEKS R1 R0 K1 ["_plugin"]
  LOADK R3 K2 ["MaterialBrowserLayout"]
  NAMECALL R1 R1 K3 ["GetSetting"]
  CALL R1 2 1
  GETTABLEKS R2 R0 K1 ["_plugin"]
  LOADK R4 K4 ["MaterialTileSize"]
  NAMECALL R2 R2 K3 ["GetSetting"]
  CALL R2 2 1
  GETTABLEKS R3 R0 K1 ["_plugin"]
  LOADK R5 K5 ["ViewType"]
  NAMECALL R3 R3 K3 ["GetSetting"]
  CALL R3 2 1
  JUMPIFNOT R1 [+8]
  GETTABLEKS R4 R0 K6 ["_store"]
  GETUPVAL R6 0
  MOVE R7 R1
  CALL R6 1 -1
  NAMECALL R4 R4 K7 ["dispatch"]
  CALL R4 -1 0
  JUMPIFNOT R2 [+8]
  GETTABLEKS R4 R0 K6 ["_store"]
  GETUPVAL R6 1
  MOVE R7 R2
  CALL R6 1 -1
  NAMECALL R4 R4 K7 ["dispatch"]
  CALL R4 -1 0
  JUMPIFNOT R3 [+8]
  GETTABLEKS R4 R0 K6 ["_store"]
  GETUPVAL R6 2
  MOVE R7 R3
  CALL R6 1 -1
  NAMECALL R4 R4 K7 ["dispatch"]
  CALL R4 -1 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R2 R0 K0 ["_mock"]
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETTABLEKS R2 R0 K1 ["_plugin"]
  LOADK R4 K2 ["MaterialTileSize"]
  MOVE R5 R1
  NAMECALL R2 R2 K3 ["SetSetting"]
  CALL R2 3 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R2 R0 K0 ["_mock"]
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETTABLEKS R2 R0 K1 ["_plugin"]
  LOADK R4 K2 ["ViewType"]
  MOVE R5 R1
  NAMECALL R2 R2 K3 ["SetSetting"]
  CALL R2 3 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R2 R0 K0 ["_mock"]
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETTABLEKS R2 R0 K1 ["_plugin"]
  LOADK R4 K2 ["MaterialBrowserLayout"]
  MOVE R5 R1
  NAMECALL R2 R2 K3 ["SetSetting"]
  CALL R2 3 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["_store"]
  NAMECALL R2 R2 K1 ["getState"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K2 ["MaterialBrowserReducer"]
  GETTABLEKS R0 R1 K3 ["Material"]
  JUMPIFNOT R0 [+21]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K4 ["_mouse"]
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIFNOT R2 [+2]
  LOADNIL R1
  JUMP [+1]
  GETUPVAL R1 2
  SETTABLEKS R1 R0 K5 ["Icon"]
  GETUPVAL R0 4
  GETUPVAL R1 3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["_mouse"]
  GETTABLEKS R2 R3 K6 ["Target"]
  CALL R0 2 1
  SETUPVAL R0 3
  RETURN R0 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K4 ["_mouse"]
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIFNOT R2 [+2]
  LOADNIL R1
  JUMP [+1]
  GETUPVAL R1 5
  SETTABLEKS R1 R0 K5 ["Icon"]
  RETURN R0 0

PROTO_7:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["_store"]
  NAMECALL R2 R2 K1 ["getState"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K2 ["MaterialBrowserReducer"]
  GETTABLEKS R0 R1 K3 ["Material"]
  JUMPIFNOT R0 [+33]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["_mouse"]
  GETUPVAL R3 1
  CALL R3 0 1
  JUMPIFNOT R3 [+2]
  LOADNIL R2
  JUMP [+1]
  GETUPVAL R2 2
  SETTABLEKS R2 R1 K5 ["Icon"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["_generalServiceController"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["_mouse"]
  GETTABLEKS R3 R4 K7 ["Target"]
  GETTABLEKS R4 R0 K3 ["Material"]
  GETTABLEKS R6 R0 K8 ["MaterialVariant"]
  JUMPIFNOT R6 [+5]
  GETTABLEKS R6 R0 K8 ["MaterialVariant"]
  GETTABLEKS R5 R6 K9 ["Name"]
  JUMP [+1]
  LOADNIL R5
  NAMECALL R1 R1 K10 ["ApplyToBasePart"]
  CALL R1 4 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_store"]
  GETUPVAL R2 1
  LOADB R3 0
  CALL R2 1 -1
  NAMECALL R0 R0 K1 ["dispatch"]
  CALL R0 -1 0
  GETUPVAL R0 2
  JUMPIFNOT R0 [+4]
  GETUPVAL R0 2
  NAMECALL R0 R0 K2 ["Destroy"]
  CALL R0 1 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["_mouse"]
  GETUPVAL R2 3
  CALL R2 0 1
  JUMPIFNOT R2 [+2]
  LOADNIL R1
  JUMP [+1]
  GETUPVAL R1 4
  SETTABLEKS R1 R0 K4 ["Icon"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K5 ["_mouseMoveConnection"]
  JUMPIFNOT R0 [+10]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K5 ["_mouseMoveConnection"]
  NAMECALL R0 R0 K6 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K5 ["_mouseMoveConnection"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K7 ["_mouseClickedConnection"]
  JUMPIFNOT R0 [+10]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K7 ["_mouseClickedConnection"]
  NAMECALL R0 R0 K6 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K7 ["_mouseClickedConnection"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K8 ["_deactivationConnection"]
  JUMPIFNOT R0 [+10]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K8 ["_deactivationConnection"]
  NAMECALL R0 R0 K6 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K8 ["_deactivationConnection"]
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["_mock"]
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETTABLEKS R1 R0 K1 ["_plugin"]
  LOADB R3 1
  NAMECALL R1 R1 K2 ["Activate"]
  CALL R1 2 0
  GETTABLEKS R1 R0 K3 ["_store"]
  GETUPVAL R3 0
  LOADB R4 1
  CALL R3 1 -1
  NAMECALL R1 R1 K4 ["dispatch"]
  CALL R1 -1 0
  LOADNIL R1
  GETTABLEKS R3 R0 K5 ["_mouse"]
  GETTABLEKS R2 R3 K6 ["Move"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE REF R1
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  NAMECALL R2 R2 K7 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K8 ["_mouseMoveConnection"]
  GETTABLEKS R3 R0 K5 ["_mouse"]
  GETTABLEKS R2 R3 K9 ["Button1Down"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NAMECALL R2 R2 K7 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K10 ["_mouseClickedConnection"]
  GETTABLEKS R3 R0 K1 ["_plugin"]
  GETTABLEKS R2 R3 K11 ["Deactivation"]
  NEWCLOSURE R4 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE REF R1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U4
  NAMECALL R2 R2 K7 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K12 ["_deactivationConnection"]
  CLOSEUPVALS R1
  RETURN R0 0

PROTO_10:
  GETTABLEKS R1 R0 K0 ["_mock"]
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETTABLEKS R1 R0 K1 ["_plugin"]
  NAMECALL R1 R1 K2 ["Deactivate"]
  CALL R1 1 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R1 R0 K0 ["_mock"]
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETTABLEKS R1 R0 K1 ["_mouseMoveConnection"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K1 ["_mouseMoveConnection"]
  NAMECALL R1 R1 K2 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K3 ["_mouseClickedConnection"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K3 ["_mouseClickedConnection"]
  NAMECALL R1 R1 K2 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K4 ["_deactivationConnection"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K4 ["_deactivationConnection"]
  NAMECALL R1 R1 K2 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K9 ["Flags"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R5 R3 K10 ["getFFlagMaterialActionAsTool"]
  CALL R4 1 1
  GETTABLEKS R6 R0 K5 ["Src"]
  GETTABLEKS R5 R6 K11 ["Actions"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R7 R5 K12 ["DEPRECATED_SetMaterialAsTool"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R8 R5 K13 ["SetMaterialBrowserLayout"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R9 R5 K14 ["SetMaterialTileSize"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R10 R5 K15 ["SetViewType"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R13 R0 K5 ["Src"]
  GETTABLEKS R12 R13 K16 ["Controllers"]
  GETTABLEKS R11 R12 K17 ["GeneralServiceController"]
  CALL R10 1 1
  GETTABLEKS R12 R0 K5 ["Src"]
  GETTABLEKS R11 R12 K18 ["Util"]
  GETIMPORT R12 K4 [require]
  GETTABLEKS R13 R11 K19 ["DEPRECATED_SetHighlight"]
  CALL R12 1 1
  GETTABLEKS R14 R2 K20 ["ContextServices"]
  GETTABLEKS R13 R14 K21 ["ContextItem"]
  MOVE R15 R4
  CALL R15 0 1
  JUMPIFNOT R15 [+2]
  LOADNIL R14
  JUMP [+1]
  LOADK R14 K22 ["rbxasset://SystemCursors/Arrow"]
  MOVE R16 R4
  CALL R16 0 1
  JUMPIFNOT R16 [+2]
  LOADNIL R15
  JUMP [+1]
  LOADK R15 K23 ["rbxasset://textures/FillCursor.png"]
  LOADK R18 K24 ["PluginController"]
  NAMECALL R16 R13 K25 ["extend"]
  CALL R16 2 1
  DUPCLOSURE R17 K26 [PROTO_0]
  CAPTURE VAL R16
  SETTABLEKS R17 R16 K27 ["new"]
  DUPCLOSURE R17 K28 [PROTO_1]
  CAPTURE VAL R16
  CAPTURE VAL R10
  SETTABLEKS R17 R16 K29 ["mock"]
  DUPCLOSURE R17 K30 [PROTO_2]
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R9
  SETTABLEKS R17 R16 K31 ["initialize"]
  DUPCLOSURE R17 K32 [PROTO_3]
  SETTABLEKS R17 R16 K33 ["setMaterialTileSize"]
  DUPCLOSURE R17 K34 [PROTO_4]
  SETTABLEKS R17 R16 K35 ["setViewType"]
  DUPCLOSURE R17 K36 [PROTO_5]
  SETTABLEKS R17 R16 K37 ["setMaterialBrowserLayout"]
  DUPCLOSURE R17 K38 [PROTO_9]
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R15
  CAPTURE VAL R12
  CAPTURE VAL R14
  SETTABLEKS R17 R16 K39 ["DEPRECATED_toggleMaterialAsTool"]
  DUPCLOSURE R17 K40 [PROTO_10]
  SETTABLEKS R17 R16 K41 ["DEPRECATED_untoggleMaterialAsTool"]
  DUPCLOSURE R17 K42 [PROTO_11]
  SETTABLEKS R17 R16 K43 ["destroy"]
  RETURN R16 1
