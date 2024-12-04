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
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K10 [".History"]
  NEWTABLE R5 0 0
  NEWTABLE R6 0 11
  MOVE R7 R2
  LOADK R8 K11 ["::UIPadding"]
  DUPTABLE R9 K14 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R10 K17 [UDim.new]
  LOADN R11 0
  LOADN R12 15
  CALL R10 2 1
  SETTABLEKS R10 R9 K12 ["PaddingLeft"]
  GETIMPORT R10 K17 [UDim.new]
  LOADN R11 0
  LOADN R12 15
  CALL R10 2 1
  SETTABLEKS R10 R9 K13 ["PaddingRight"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K18 ["> #Title"]
  DUPTABLE R10 K20 [{"Size"}]
  GETIMPORT R11 K22 [UDim2.new]
  LOADN R12 1
  LOADN R13 206
  LOADN R14 0
  LOADN R15 32
  CALL R11 4 1
  SETTABLEKS R11 R10 K19 ["Size"]
  NEWTABLE R11 0 1
  MOVE R12 R2
  LOADK R13 K23 ["> #FieldName"]
  DUPTABLE R14 K29 [{"AnchorPoint", "Position", "TextXAlignment", "TextYAlignment", "AutomaticSize"}]
  GETIMPORT R15 K31 [Vector2.new]
  LOADK R16 K32 [0.5]
  LOADK R17 K32 [0.5]
  CALL R15 2 1
  SETTABLEKS R15 R14 K24 ["AnchorPoint"]
  GETIMPORT R15 K34 [UDim2.fromScale]
  LOADK R16 K32 [0.5]
  LOADK R17 K32 [0.5]
  CALL R15 2 1
  SETTABLEKS R15 R14 K25 ["Position"]
  GETIMPORT R15 K37 [Enum.TextXAlignment.Center]
  SETTABLEKS R15 R14 K26 ["TextXAlignment"]
  GETIMPORT R15 K38 [Enum.TextYAlignment.Center]
  SETTABLEKS R15 R14 K27 ["TextYAlignment"]
  GETIMPORT R15 K40 [Enum.AutomaticSize.X]
  SETTABLEKS R15 R14 K28 ["AutomaticSize"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K41 ["> #Graph"]
  DUPTABLE R11 K44 [{"Size", "Position", "BackgroundColor3", "BackgroundTransparency"}]
  GETIMPORT R12 K22 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 1
  LOADN R16 192
  CALL R12 4 1
  SETTABLEKS R12 R11 K19 ["Size"]
  GETIMPORT R12 K46 [UDim2.fromOffset]
  LOADN R13 0
  LOADN R14 32
  CALL R12 2 1
  SETTABLEKS R12 R11 K25 ["Position"]
  LOADK R12 K47 ["$BackgroundPaper"]
  SETTABLEKS R12 R11 K42 ["BackgroundColor3"]
  LOADN R12 0
  SETTABLEKS R12 R11 K43 ["BackgroundTransparency"]
  NEWTABLE R12 0 4
  MOVE R13 R2
  LOADK R14 K48 ["> #Border"]
  DUPTABLE R15 K51 [{"Size", "BorderSizePixel", "BorderColor3", "BackgroundColor3", "BackgroundTransparency"}]
  GETIMPORT R16 K22 [UDim2.new]
  LOADN R17 1
  LOADN R18 206
  LOADN R19 1
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K19 ["Size"]
  LOADN R16 1
  SETTABLEKS R16 R15 K49 ["BorderSizePixel"]
  LOADK R16 K52 ["$TextPrimary"]
  SETTABLEKS R16 R15 K50 ["BorderColor3"]
  LOADK R16 K47 ["$BackgroundPaper"]
  SETTABLEKS R16 R15 K42 ["BackgroundColor3"]
  LOADN R16 0
  SETTABLEKS R16 R15 K43 ["BackgroundTransparency"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K53 ["> #Rulers"]
  DUPTABLE R16 K55 [{"Size", "Position", "ClipsDescendants"}]
  GETIMPORT R17 K22 [UDim2.new]
  LOADN R18 1
  LOADN R19 205
  LOADN R20 1
  LOADN R21 254
  CALL R17 4 1
  SETTABLEKS R17 R16 K19 ["Size"]
  GETIMPORT R17 K46 [UDim2.fromOffset]
  LOADN R18 1
  LOADN R19 1
  CALL R17 2 1
  SETTABLEKS R17 R16 K25 ["Position"]
  LOADB R17 1
  SETTABLEKS R17 R16 K54 ["ClipsDescendants"]
  NEWTABLE R17 0 2
  MOVE R18 R2
  LOADK R19 K56 ["> .Ruler"]
  DUPTABLE R20 K57 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
  LOADK R21 K58 ["$TextDisabled"]
  SETTABLEKS R21 R20 K42 ["BackgroundColor3"]
  LOADN R21 0
  SETTABLEKS R21 R20 K43 ["BackgroundTransparency"]
  LOADN R21 0
  SETTABLEKS R21 R20 K49 ["BorderSizePixel"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K59 ["> .Axis"]
  DUPTABLE R21 K60 [{"BackgroundColor3"}]
  LOADK R22 K52 ["$TextPrimary"]
  SETTABLEKS R22 R21 K42 ["BackgroundColor3"]
  CALL R19 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K61 ["> #Scale"]
  DUPTABLE R17 K62 [{"Size", "Position", "BackgroundTransparency"}]
  GETIMPORT R18 K22 [UDim2.new]
  LOADN R19 0
  LOADN R20 50
  LOADN R21 1
  LOADN R22 254
  CALL R18 4 1
  SETTABLEKS R18 R17 K19 ["Size"]
  GETIMPORT R18 K22 [UDim2.new]
  LOADN R19 1
  LOADN R20 208
  LOADN R21 0
  LOADN R22 1
  CALL R18 4 1
  SETTABLEKS R18 R17 K25 ["Position"]
  LOADN R18 1
  SETTABLEKS R18 R17 K43 ["BackgroundTransparency"]
  NEWTABLE R18 0 0
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K63 ["> #Canvas"]
  DUPTABLE R18 K62 [{"Size", "Position", "BackgroundTransparency"}]
  GETIMPORT R19 K22 [UDim2.new]
  LOADN R20 1
  LOADN R21 205
  LOADN R22 1
  LOADN R23 254
  CALL R19 4 1
  SETTABLEKS R19 R18 K19 ["Size"]
  GETIMPORT R19 K46 [UDim2.fromOffset]
  LOADN R20 1
  LOADN R21 1
  CALL R19 2 1
  SETTABLEKS R19 R18 K25 ["Position"]
  LOADN R19 1
  SETTABLEKS R19 R18 K43 ["BackgroundTransparency"]
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K64 ["> #NoHistoryData"]
  DUPTABLE R22 K65 [{"AnchorPoint", "Position", "TextXAlignment", "TextYAlignment"}]
  GETIMPORT R23 K31 [Vector2.new]
  LOADK R24 K32 [0.5]
  LOADK R25 K32 [0.5]
  CALL R23 2 1
  SETTABLEKS R23 R22 K24 ["AnchorPoint"]
  GETIMPORT R23 K34 [UDim2.fromScale]
  LOADK R24 K32 [0.5]
  LOADK R25 K32 [0.5]
  CALL R23 2 1
  SETTABLEKS R23 R22 K25 ["Position"]
  GETIMPORT R23 K37 [Enum.TextXAlignment.Center]
  SETTABLEKS R23 R22 K26 ["TextXAlignment"]
  GETIMPORT R23 K38 [Enum.TextYAlignment.Center]
  SETTABLEKS R23 R22 K27 ["TextYAlignment"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K66 ["> #LegendBar"]
  DUPTABLE R12 K67 [{"AnchorPoint", "Size", "Position"}]
  GETIMPORT R13 K31 [Vector2.new]
  LOADN R14 0
  LOADN R15 1
  CALL R13 2 1
  SETTABLEKS R13 R12 K24 ["AnchorPoint"]
  GETIMPORT R13 K22 [UDim2.new]
  LOADN R14 1
  LOADN R15 206
  LOADN R16 0
  LOADN R17 32
  CALL R13 4 1
  SETTABLEKS R13 R12 K19 ["Size"]
  GETIMPORT R13 K34 [UDim2.fromScale]
  LOADN R14 0
  LOADN R15 1
  CALL R13 2 1
  SETTABLEKS R13 R12 K25 ["Position"]
  NEWTABLE R13 0 0
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K68 [">> .GraphColor"]
  DUPTABLE R13 K60 [{"BackgroundColor3"}]
  LOADK R14 K69 ["$PrimaryMain"]
  SETTABLEKS R14 R13 K42 ["BackgroundColor3"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K70 [">> .GraphColor1"]
  DUPTABLE R14 K60 [{"BackgroundColor3"}]
  LOADK R15 K71 ["$HistoryLegend1"]
  SETTABLEKS R15 R14 K42 ["BackgroundColor3"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K72 [">> .GraphColor2"]
  DUPTABLE R15 K60 [{"BackgroundColor3"}]
  LOADK R16 K73 ["$HistoryLegend2"]
  SETTABLEKS R16 R15 K42 ["BackgroundColor3"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K74 [">> .GraphColor3"]
  DUPTABLE R16 K60 [{"BackgroundColor3"}]
  LOADK R17 K75 ["$HistoryLegend3"]
  SETTABLEKS R17 R16 K42 ["BackgroundColor3"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K76 [">> .LegendColor1"]
  DUPTABLE R17 K78 [{"TextColor3"}]
  LOADK R18 K71 ["$HistoryLegend1"]
  SETTABLEKS R18 R17 K77 ["TextColor3"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K79 [">> .LegendColor2"]
  DUPTABLE R18 K78 [{"TextColor3"}]
  LOADK R19 K73 ["$HistoryLegend2"]
  SETTABLEKS R19 R18 K77 ["TextColor3"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K80 [">> .LegendColor3"]
  DUPTABLE R19 K78 [{"TextColor3"}]
  LOADK R20 K75 ["$HistoryLegend3"]
  SETTABLEKS R20 R19 K77 ["TextColor3"]
  CALL R17 2 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
