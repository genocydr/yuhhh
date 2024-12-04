PROTO_0:
  LOADK R3 K0 ["ExplorerPluginButton"]
  RETURN R3 1

PROTO_1:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Description"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_2:
  LOADK R3 K0 ["ExplorerPluginToolbar"]
  RETURN R3 1

PROTO_3:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Title"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["build"]
  GETUPVAL R1 1
  CALL R0 1 1
  GETTABLEKS R1 R0 K1 ["pluginLoader"]
  NAMECALL R1 R1 K2 ["waitForUserInteraction"]
  CALL R1 1 1
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R2 2
  NAMECALL R2 R2 K3 ["Disconnect"]
  CALL R2 1 0
  GETUPVAL R2 3
  GETUPVAL R3 4
  MOVE R4 R0
  CALL R2 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["IsPlaceDocumentOpen"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_6:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Name"]
  SETTABLEKS R2 R0 K0 ["Name"]
  DUPTABLE R2 K6 [{"getName", "getDescription", "icon", "enabled", "clickableWhenViewportHidden"}]
  DUPCLOSURE R3 K7 [PROTO_0]
  SETTABLEKS R3 R2 K1 ["getName"]
  DUPCLOSURE R3 K8 [PROTO_1]
  SETTABLEKS R3 R2 K2 ["getDescription"]
  LOADK R3 K9 [""]
  SETTABLEKS R3 R2 K3 ["icon"]
  LOADB R3 0
  SETTABLEKS R3 R2 K4 ["enabled"]
  LOADB R3 1
  SETTABLEKS R3 R2 K5 ["clickableWhenViewportHidden"]
  DUPTABLE R3 K16 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "getToolbarName", "buttonInfo"}]
  SETTABLEKS R0 R3 K10 ["plugin"]
  LOADK R4 K17 ["ExplorerPlugin"]
  SETTABLEKS R4 R3 K11 ["pluginName"]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K12 ["translationResourceTable"]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K13 ["fallbackResourceTable"]
  DUPCLOSURE R4 K18 [PROTO_2]
  SETTABLEKS R4 R3 K14 ["getToolbarName"]
  SETTABLEKS R2 R3 K15 ["buttonInfo"]
  LOADB R4 1
  SETTABLEKS R4 R2 K4 ["enabled"]
  DUPTABLE R4 K23 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  LOADK R5 K17 ["ExplorerPlugin"]
  SETTABLEKS R5 R4 K19 ["id"]
  GETIMPORT R5 K26 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R6 K30 [Enum.InitialDockState.Right]
  LOADB R7 1
  LOADB R8 0
  LOADN R9 128
  LOADN R10 224
  LOADN R11 250
  LOADN R12 200
  CALL R5 7 1
  SETTABLEKS R5 R4 K20 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R5 K31 [PROTO_3]
  SETTABLEKS R5 R4 K21 ["getDockTitle"]
  GETIMPORT R5 K34 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R5 R4 K22 ["zIndexBehavior"]
  SETTABLEKS R4 R3 K35 ["dockWidgetInfo"]
  LOADNIL R4
  NEWCLOSURE R5 P4
  CAPTURE UPVAL U3
  CAPTURE VAL R3
  CAPTURE REF R4
  CAPTURE VAL R1
  CAPTURE VAL R0
  LOADK R8 K36 ["PlaceManager"]
  NAMECALL R6 R0 K37 ["GetPluginComponent"]
  CALL R6 2 1
  GETTABLEKS R7 R6 K38 ["PlaceDocPanelShown"]
  MOVE R9 R5
  NAMECALL R7 R7 K39 ["Connect"]
  CALL R7 2 1
  MOVE R4 R7
  GETIMPORT R7 K41 [pcall]
  NEWCLOSURE R8 P5
  CAPTURE VAL R6
  CALL R7 1 2
  JUMPIFNOT R7 [+20]
  JUMPIFNOT R8 [+19]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K42 ["build"]
  MOVE R10 R3
  CALL R9 1 1
  GETTABLEKS R10 R9 K43 ["pluginLoader"]
  NAMECALL R10 R10 K44 ["waitForUserInteraction"]
  CALL R10 1 1
  JUMPIF R10 [+1]
  JUMP [+7]
  NAMECALL R11 R4 K45 ["Disconnect"]
  CALL R11 1 0
  MOVE R11 R1
  MOVE R12 R0
  MOVE R13 R9
  CALL R11 2 0
  CLOSEUPVALS R4
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ExplorerPlugin"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K7 ["PluginLoader"]
  GETTABLEKS R2 R3 K8 ["PluginLoaderBuilder"]
  CALL R1 1 1
  GETTABLEKS R5 R0 K9 ["Src"]
  GETTABLEKS R4 R5 K10 ["Resources"]
  GETTABLEKS R3 R4 K11 ["Localization"]
  GETTABLEKS R2 R3 K12 ["SourceStrings"]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Resources"]
  GETTABLEKS R4 R5 K11 ["Localization"]
  GETTABLEKS R3 R4 K13 ["LocalizedStrings"]
  DUPCLOSURE R4 K14 [PROTO_6]
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R1
  RETURN R4 1
