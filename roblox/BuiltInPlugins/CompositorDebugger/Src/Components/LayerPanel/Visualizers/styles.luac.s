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
  LOADK R4 K10 [".BlendBase"]
  NEWTABLE R5 0 0
  NEWTABLE R6 0 3
  MOVE R7 R2
  LOADK R8 K11 ["> .Blend1D"]
  DUPTABLE R9 K18 [{"BackgroundColor3", "BackgroundTransparency", "BorderColor3", "BorderSizePixel", "Size", "Position"}]
  LOADK R10 K19 ["$BackgroundPaper"]
  SETTABLEKS R10 R9 K12 ["BackgroundColor3"]
  LOADN R10 0
  SETTABLEKS R10 R9 K13 ["BackgroundTransparency"]
  LOADK R10 K20 ["$TextPrimary"]
  SETTABLEKS R10 R9 K14 ["BorderColor3"]
  LOADN R10 1
  SETTABLEKS R10 R9 K15 ["BorderSizePixel"]
  GETIMPORT R10 K23 [UDim2.new]
  LOADN R11 1
  LOADN R12 226
  LOADN R13 0
  LOADN R14 9
  CALL R10 4 1
  SETTABLEKS R10 R9 K16 ["Size"]
  GETIMPORT R10 K23 [UDim2.new]
  LOADN R11 0
  LOADN R12 15
  LOADK R13 K24 [0.5]
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K17 ["Position"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K25 ["> .Blend2D"]
  DUPTABLE R10 K18 [{"BackgroundColor3", "BackgroundTransparency", "BorderColor3", "BorderSizePixel", "Size", "Position"}]
  LOADK R11 K19 ["$BackgroundPaper"]
  SETTABLEKS R11 R10 K12 ["BackgroundColor3"]
  LOADN R11 0
  SETTABLEKS R11 R10 K13 ["BackgroundTransparency"]
  LOADK R11 K20 ["$TextPrimary"]
  SETTABLEKS R11 R10 K14 ["BorderColor3"]
  LOADN R11 1
  SETTABLEKS R11 R10 K15 ["BorderSizePixel"]
  GETIMPORT R11 K23 [UDim2.new]
  LOADN R12 1
  LOADN R13 226
  LOADN R14 1
  LOADN R15 208
  CALL R11 4 1
  SETTABLEKS R11 R10 K16 ["Size"]
  GETIMPORT R11 K27 [UDim2.fromOffset]
  LOADN R12 15
  LOADN R13 33
  CALL R11 2 1
  SETTABLEKS R11 R10 K17 ["Position"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K28 ["> #Canvas"]
  NEWTABLE R11 0 0
  NEWTABLE R12 0 8
  MOVE R13 R2
  LOADK R14 K29 ["> #Grid"]
  DUPTABLE R15 K31 [{"ClipsDescendants", "Size"}]
  LOADB R16 1
  SETTABLEKS R16 R15 K30 ["ClipsDescendants"]
  GETIMPORT R16 K33 [UDim2.fromScale]
  LOADN R17 1
  LOADN R18 1
  CALL R16 2 1
  SETTABLEKS R16 R15 K16 ["Size"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K34 ["> #Reset"]
  DUPTABLE R16 K38 [{"Image", "Size", "Position", "ImageColor3", "AnchorPoint", "BackgroundTransparency"}]
  LOADK R17 K39 ["rbxasset://textures/CompositorDebugger/clear.png"]
  SETTABLEKS R17 R16 K35 ["Image"]
  GETIMPORT R17 K27 [UDim2.fromOffset]
  LOADN R18 12
  LOADN R19 12
  CALL R17 2 1
  SETTABLEKS R17 R16 K16 ["Size"]
  GETIMPORT R17 K23 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  LOADN R21 250
  CALL R17 4 1
  SETTABLEKS R17 R16 K17 ["Position"]
  LOADK R17 K20 ["$TextPrimary"]
  SETTABLEKS R17 R16 K36 ["ImageColor3"]
  GETIMPORT R17 K41 [Vector2.new]
  LOADN R18 1
  LOADN R19 1
  CALL R17 2 1
  SETTABLEKS R17 R16 K37 ["AnchorPoint"]
  LOADN R17 1
  SETTABLEKS R17 R16 K13 ["BackgroundTransparency"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K42 ["> .Dot"]
  DUPTABLE R17 K43 [{"Image", "Size", "ImageColor3", "AnchorPoint", "BackgroundTransparency"}]
  LOADK R18 K44 ["rbxasset://textures/CompositorDebugger/dot.png"]
  SETTABLEKS R18 R17 K35 ["Image"]
  GETIMPORT R18 K27 [UDim2.fromOffset]
  LOADN R19 9
  LOADN R20 9
  CALL R18 2 1
  SETTABLEKS R18 R17 K16 ["Size"]
  LOADK R18 K20 ["$TextPrimary"]
  SETTABLEKS R18 R17 K36 ["ImageColor3"]
  GETIMPORT R18 K41 [Vector2.new]
  LOADK R19 K24 [0.5]
  LOADK R20 K24 [0.5]
  CALL R18 2 1
  SETTABLEKS R18 R17 K37 ["AnchorPoint"]
  LOADN R18 1
  SETTABLEKS R18 R17 K13 ["BackgroundTransparency"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K45 ["> .Cursor"]
  DUPTABLE R18 K46 [{"Image", "ImageColor3"}]
  LOADK R19 K47 ["rbxasset://textures/CompositorDebugger/cursor.png"]
  SETTABLEKS R19 R18 K35 ["Image"]
  LOADK R19 K48 ["$Blue60"]
  SETTABLEKS R19 R18 K36 ["ImageColor3"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K49 [">> .Trail"]
  DUPTABLE R19 K51 [{"BackgroundColor3", "Width"}]
  LOADK R20 K48 ["$Blue60"]
  SETTABLEKS R20 R19 K12 ["BackgroundColor3"]
  LOADN R20 2
  SETTABLEKS R20 R19 K50 ["Width"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K52 ["> .Override"]
  DUPTABLE R20 K53 [{"ImageColor3"}]
  LOADK R21 K54 ["$TextError"]
  SETTABLEKS R21 R20 K36 ["ImageColor3"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K55 [">> .Axis"]
  DUPTABLE R21 K56 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R22 K20 ["$TextPrimary"]
  SETTABLEKS R22 R21 K12 ["BackgroundColor3"]
  LOADN R22 0
  SETTABLEKS R22 R21 K13 ["BackgroundTransparency"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K57 [">> .Grid"]
  DUPTABLE R22 K56 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R23 K58 ["$TextDisabled"]
  SETTABLEKS R23 R22 K12 ["BackgroundColor3"]
  LOADN R23 0
  SETTABLEKS R23 R22 K13 ["BackgroundTransparency"]
  CALL R20 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 -1
  SETLIST R6 R7 -1 [1]
  DUPTABLE R7 K60 [{"DotSize"}]
  LOADN R8 9
  SETTABLEKS R8 R7 K59 ["DotSize"]
  CALL R3 4 -1
  RETURN R3 -1
