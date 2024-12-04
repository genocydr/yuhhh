MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleSheet"]
  DUPTABLE R3 K29 [{"InactiveLayer", "ActiveLayer", "LayerHover", "ActiveTimeBar", "InactiveTimeBar", "HistoryLegend1", "HistoryLegend2", "HistoryLegend3", "AdornmentDot1", "AdornmentDot2", "AdornmentDot3", "AdornmentDot4", "AdornmentDot5", "AdornmentDot6", "AdornmentDot7", "AdornmentDot8", "AdornmentDot9", "AdornmentDot10", "AdornmentDot11"}]
  GETIMPORT R4 K32 [Color3.fromHex]
  LOADK R5 K33 ["#989898"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K10 ["InactiveLayer"]
  GETIMPORT R4 K32 [Color3.fromHex]
  LOADK R5 K34 ["#1D1D1D"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K11 ["ActiveLayer"]
  GETIMPORT R4 K32 [Color3.fromHex]
  LOADK R5 K35 ["#E4EEFE"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K12 ["LayerHover"]
  GETIMPORT R4 K32 [Color3.fromHex]
  LOADK R5 K36 ["#008BDB"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K13 ["ActiveTimeBar"]
  GETIMPORT R4 K32 [Color3.fromHex]
  LOADK R5 K33 ["#989898"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K14 ["InactiveTimeBar"]
  GETIMPORT R4 K32 [Color3.fromHex]
  LOADK R5 K37 ["#E55681"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K15 ["HistoryLegend1"]
  GETIMPORT R4 K32 [Color3.fromHex]
  LOADK R5 K38 ["#03AF52"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K16 ["HistoryLegend2"]
  GETIMPORT R4 K32 [Color3.fromHex]
  LOADK R5 K39 ["#069DD0"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K17 ["HistoryLegend3"]
  GETIMPORT R4 K32 [Color3.fromHex]
  LOADK R5 K40 ["#C5A349"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K18 ["AdornmentDot1"]
  GETIMPORT R4 K32 [Color3.fromHex]
  LOADK R5 K41 ["#D97F16"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K19 ["AdornmentDot2"]
  GETIMPORT R4 K32 [Color3.fromHex]
  LOADK R5 K37 ["#E55681"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K20 ["AdornmentDot3"]
  GETIMPORT R4 K32 [Color3.fromHex]
  LOADK R5 K42 ["#DD31BE"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K21 ["AdornmentDot4"]
  GETIMPORT R4 K32 [Color3.fromHex]
  LOADK R5 K43 ["#8E41F1"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K22 ["AdornmentDot5"]
  GETIMPORT R4 K32 [Color3.fromHex]
  LOADK R5 K39 ["#069DD0"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K23 ["AdornmentDot6"]
  GETIMPORT R4 K32 [Color3.fromHex]
  LOADK R5 K44 ["#16BF9B"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K24 ["AdornmentDot7"]
  GETIMPORT R4 K32 [Color3.fromHex]
  LOADK R5 K38 ["#03AF52"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K25 ["AdornmentDot8"]
  GETIMPORT R4 K32 [Color3.fromHex]
  LOADK R5 K45 ["#6EB200"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K26 ["AdornmentDot9"]
  GETIMPORT R4 K32 [Color3.fromHex]
  LOADK R5 K46 ["#B2BF03"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K27 ["AdornmentDot10"]
  GETIMPORT R4 K32 [Color3.fromHex]
  LOADK R5 K47 ["#9E9700"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K28 ["AdornmentDot11"]
  MOVE R4 R2
  LOADK R5 K48 ["CompositorDebuggerLightTheme"]
  NEWTABLE R6 0 0
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1
