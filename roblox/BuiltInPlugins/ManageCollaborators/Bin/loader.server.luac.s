MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ImprovePluginSpeed_ManageCollaborators"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R0 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K8 ["Parent"]
  GETTABLEKS R1 R2 K9 ["defineLuaFlags"]
  CALL R0 1 0
  GETIMPORT R2 K7 [script]
  GETTABLEKS R1 R2 K8 ["Parent"]
  GETTABLEKS R0 R1 K8 ["Parent"]
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K10 ["Src"]
  GETTABLEKS R3 R4 K11 ["Util"]
  GETTABLEKS R2 R3 K12 ["DebugFlags"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K13 ["RunningUnderCLI"]
  CALL R2 0 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K14 ["PluginLoader"]
  GETTABLEKS R3 R4 K15 ["PluginLoaderBuilder"]
  CALL R2 1 1
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K16 ["Resources"]
  GETTABLEKS R4 R5 K17 ["Localization"]
  GETTABLEKS R3 R4 K18 ["SourceStrings"]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K16 ["Resources"]
  GETTABLEKS R5 R6 K17 ["Localization"]
  GETTABLEKS R4 R5 K19 ["LocalizedStrings"]
  DUPTABLE R5 K30 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "noToolbar", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
  GETIMPORT R6 K31 [plugin]
  SETTABLEKS R6 R5 K20 ["plugin"]
  LOADK R6 K32 ["ManageCollaborators"]
  SETTABLEKS R6 R5 K21 ["pluginName"]
  SETTABLEKS R4 R5 K22 ["translationResourceTable"]
  SETTABLEKS R3 R5 K23 ["fallbackResourceTable"]
  LOADNIL R6
  SETTABLEKS R6 R5 K24 ["overrideLocaleId"]
  LOADNIL R6
  SETTABLEKS R6 R5 K25 ["localizationNamespace"]
  LOADB R6 1
  SETTABLEKS R6 R5 K26 ["noToolbar"]
  LOADNIL R6
  SETTABLEKS R6 R5 K27 ["getToolbarName"]
  LOADNIL R6
  SETTABLEKS R6 R5 K28 ["buttonInfo"]
  LOADNIL R6
  SETTABLEKS R6 R5 K29 ["dockWidgetInfo"]
  GETTABLEKS R6 R2 K33 ["build"]
  MOVE R7 R5
  CALL R6 1 1
  GETTABLEKS R7 R6 K34 ["pluginLoader"]
  NAMECALL R7 R7 K35 ["waitForUserInteraction"]
  CALL R7 1 0
  GETIMPORT R7 K5 [require]
  GETIMPORT R10 K7 [script]
  GETTABLEKS R9 R10 K8 ["Parent"]
  GETTABLEKS R8 R9 K36 ["main"]
  CALL R7 1 1
  MOVE R8 R7
  GETIMPORT R9 K31 [plugin]
  MOVE R10 R6
  CALL R8 2 0
  RETURN R0 0
