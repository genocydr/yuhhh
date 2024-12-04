PROTO_0:
  GETUPVAL R3 0
  JUMPIFNOT R3 [+2]
  LOADK R3 K0 ["assetManagerToolButton"]
  RETURN R3 1
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K1 ["Plugin"]
  LOADK R7 K2 ["Button"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_1:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Description"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_2:
  GETUPVAL R3 0
  JUMPIFNOT R3 [+2]
  LOADK R3 K0 ["assetManagerToolbar"]
  RETURN R3 1
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K1 ["Plugin"]
  LOADK R7 K2 ["Toolbar"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_3:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Name"]
  CALL R3 4 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Bin"]
  GETTABLEKS R3 R4 K7 ["Common"]
  GETTABLEKS R2 R3 K8 ["defineLuaFlags"]
  CALL R1 1 0
  GETIMPORT R1 K10 [game]
  LOADK R3 K11 ["DebugAssetMgInAssetDm"]
  NAMECALL R1 R1 K12 ["GetFastFlag"]
  CALL R1 2 1
  JUMPIF R1 [+1]
  RETURN R0 0
  GETIMPORT R1 K10 [game]
  LOADK R3 K13 ["EnableAssetManager"]
  NAMECALL R1 R1 K12 ["GetFastFlag"]
  CALL R1 2 1
  JUMPIF R1 [+1]
  RETURN R0 0
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K14 ["Packages"]
  GETTABLEKS R2 R3 K15 ["TestLoader"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K16 ["launch"]
  LOADK R3 K2 ["AssetManager"]
  GETTABLEKS R4 R0 K17 ["Src"]
  CALL R2 2 0
  GETTABLEKS R2 R1 K18 ["isCli"]
  CALL R2 0 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K20 [plugin]
  GETTABLEKS R3 R0 K21 ["Name"]
  SETTABLEKS R3 R2 K21 ["Name"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K14 ["Packages"]
  GETTABLEKS R4 R5 K22 ["PluginLoader"]
  GETTABLEKS R3 R4 K23 ["PluginLoaderBuilder"]
  CALL R2 1 1
  GETIMPORT R3 K10 [game]
  LOADK R5 K24 ["AssetManagerRibbonBar"]
  NAMECALL R3 R3 K12 ["GetFastFlag"]
  CALL R3 2 1
  DUPTABLE R4 K29 [{"getName", "getDescription", "icon", "enabled"}]
  DUPCLOSURE R5 K30 [PROTO_0]
  CAPTURE VAL R3
  SETTABLEKS R5 R4 K25 ["getName"]
  DUPCLOSURE R5 K31 [PROTO_1]
  SETTABLEKS R5 R4 K26 ["getDescription"]
  JUMPIFNOT R3 [+2]
  LOADK R5 K32 ["rbxlocaltheme://AssetManager"]
  JUMP [+1]
  LOADK R5 K33 ["rbxlocaltheme://GameSettings"]
  SETTABLEKS R5 R4 K27 ["icon"]
  LOADB R5 1
  SETTABLEKS R5 R4 K28 ["enabled"]
  GETTABLEKS R8 R0 K17 ["Src"]
  GETTABLEKS R7 R8 K34 ["Resources"]
  GETTABLEKS R6 R7 K35 ["Localization"]
  GETTABLEKS R5 R6 K36 ["SourceStrings"]
  GETTABLEKS R9 R0 K17 ["Src"]
  GETTABLEKS R8 R9 K34 ["Resources"]
  GETTABLEKS R7 R8 K35 ["Localization"]
  GETTABLEKS R6 R7 K37 ["LocalizedStrings"]
  DUPTABLE R7 K43 [{"plugin", "pluginName", "getToolbarName", "translationResourceTable", "fallbackResourceTable", "buttonInfo"}]
  GETIMPORT R8 K20 [plugin]
  SETTABLEKS R8 R7 K19 ["plugin"]
  LOADK R8 K2 ["AssetManager"]
  SETTABLEKS R8 R7 K38 ["pluginName"]
  DUPCLOSURE R8 K44 [PROTO_2]
  CAPTURE VAL R3
  SETTABLEKS R8 R7 K39 ["getToolbarName"]
  SETTABLEKS R6 R7 K40 ["translationResourceTable"]
  SETTABLEKS R5 R7 K41 ["fallbackResourceTable"]
  SETTABLEKS R4 R7 K42 ["buttonInfo"]
  DUPTABLE R8 K49 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  LOADK R9 K2 ["AssetManager"]
  SETTABLEKS R9 R8 K45 ["id"]
  GETIMPORT R9 K52 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R10 K56 [Enum.InitialDockState.Bottom]
  LOADB R11 0
  LOADB R12 0
  LOADN R13 128
  LOADN R14 224
  LOADN R15 250
  LOADN R16 200
  CALL R9 7 1
  SETTABLEKS R9 R8 K46 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R9 K57 [PROTO_3]
  SETTABLEKS R9 R8 K47 ["getDockTitle"]
  GETIMPORT R9 K60 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R9 R8 K48 ["zIndexBehavior"]
  SETTABLEKS R8 R7 K61 ["dockWidgetInfo"]
  GETTABLEKS R8 R2 K62 ["build"]
  MOVE R9 R7
  CALL R8 1 1
  GETTABLEKS R9 R8 K63 ["pluginLoader"]
  NAMECALL R9 R9 K64 ["waitForUserInteraction"]
  CALL R9 1 1
  JUMPIF R9 [+1]
  RETURN R0 0
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K6 ["Bin"]
  GETTABLEKS R12 R13 K7 ["Common"]
  GETTABLEKS R11 R12 K65 ["main"]
  CALL R10 1 1
  MOVE R11 R10
  GETIMPORT R12 K20 [plugin]
  MOVE R13 R8
  CALL R11 2 0
  RETURN R0 0
