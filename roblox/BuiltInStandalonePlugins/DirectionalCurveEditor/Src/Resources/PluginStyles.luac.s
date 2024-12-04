MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["DirectionalCurveEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Bin"]
  GETTABLEKS R3 R4 K7 ["Common"]
  GETTABLEKS R2 R3 K8 ["defineLuaFlags"]
  CALL R1 1 0
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K9 ["Packages"]
  GETTABLEKS R2 R3 K10 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K11 ["Styling"]
  GETTABLEKS R2 R3 K12 ["createStyleRule"]
  GETTABLEKS R4 R1 K11 ["Styling"]
  GETTABLEKS R3 R4 K13 ["createStyleSheet"]
  GETIMPORT R4 K15 [game]
  LOADK R6 K16 ["ImprovedCursors"]
  NAMECALL R4 R4 K17 ["GetFastFlag"]
  CALL R4 2 1
  DUPTABLE R5 K27 [{"ColorCurve", "ColorCurveEnd", "ColorKeypoint", "ColorKeypointSelected", "ColorControlPoint", "ColorControlPointSelected", "ColorControlPointHovered", "ColorControlPointPressed", "CursorOpenedHand"}]
  GETIMPORT R6 K30 [Color3.fromRGB]
  LOADN R7 255
  LOADN R8 100
  LOADN R9 100
  CALL R6 3 1
  SETTABLEKS R6 R5 K18 ["ColorCurve"]
  GETIMPORT R6 K30 [Color3.fromRGB]
  LOADN R7 150
  LOADN R8 150
  LOADN R9 150
  CALL R6 3 1
  SETTABLEKS R6 R5 K19 ["ColorCurveEnd"]
  GETIMPORT R6 K30 [Color3.fromRGB]
  LOADN R7 252
  LOADN R8 116
  LOADN R9 116
  CALL R6 3 1
  SETTABLEKS R6 R5 K20 ["ColorKeypoint"]
  GETIMPORT R6 K30 [Color3.fromRGB]
  LOADN R7 255
  LOADN R8 0
  LOADN R9 0
  CALL R6 3 1
  SETTABLEKS R6 R5 K21 ["ColorKeypointSelected"]
  GETIMPORT R6 K30 [Color3.fromRGB]
  LOADN R7 225
  LOADN R8 100
  LOADN R9 100
  CALL R6 3 1
  SETTABLEKS R6 R5 K22 ["ColorControlPoint"]
  GETIMPORT R6 K30 [Color3.fromRGB]
  LOADN R7 255
  LOADN R8 200
  LOADN R9 150
  CALL R6 3 1
  SETTABLEKS R6 R5 K23 ["ColorControlPointSelected"]
  GETIMPORT R6 K30 [Color3.fromRGB]
  LOADN R7 255
  LOADN R8 150
  LOADN R9 150
  CALL R6 3 1
  SETTABLEKS R6 R5 K24 ["ColorControlPointHovered"]
  GETIMPORT R6 K30 [Color3.fromRGB]
  LOADN R7 150
  LOADN R8 50
  LOADN R9 50
  CALL R6 3 1
  SETTABLEKS R6 R5 K25 ["ColorControlPointPressed"]
  JUMPIFNOT R4 [+2]
  LOADK R6 K31 ["rbxasset://textures/Cursors/DragDetector/HoverCursor.png"]
  JUMP [+1]
  LOADK R6 K32 ["rbxasset://textures/advCursor-openedHand.png"]
  SETTABLEKS R6 R5 K26 ["CursorOpenedHand"]
  NEWTABLE R6 0 8
  MOVE R7 R2
  LOADK R8 K33 [".GridLine"]
  DUPTABLE R9 K37 [{"BorderSizePixel", "ZIndex", "BackgroundColor3"}]
  LOADN R10 0
  SETTABLEKS R10 R9 K34 ["BorderSizePixel"]
  LOADN R10 2
  SETTABLEKS R10 R9 K35 ["ZIndex"]
  LOADK R10 K38 ["$ColorGridLine"]
  SETTABLEKS R10 R9 K36 ["BackgroundColor3"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K39 [".GridLinePath2D"]
  DUPTABLE R10 K41 [{"ZIndex", "Thickness", "Color3"}]
  LOADN R11 255
  SETTABLEKS R11 R10 K35 ["ZIndex"]
  LOADN R11 1
  SETTABLEKS R11 R10 K40 ["Thickness"]
  LOADK R11 K42 ["$ColorGridLinePath"]
  SETTABLEKS R11 R10 K28 ["Color3"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K43 [".GridLabel"]
  DUPTABLE R11 K46 [{"BackgroundTransparency", "TextColor3"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K44 ["BackgroundTransparency"]
  LOADK R12 K38 ["$ColorGridLine"]
  SETTABLEKS R12 R11 K45 ["TextColor3"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K47 [".CurveLinePath2D"]
  DUPTABLE R12 K41 [{"ZIndex", "Thickness", "Color3"}]
  LOADN R13 4
  SETTABLEKS R13 R12 K35 ["ZIndex"]
  LOADN R13 2
  SETTABLEKS R13 R12 K40 ["Thickness"]
  LOADK R13 K48 ["$ColorCurve"]
  SETTABLEKS R13 R12 K28 ["Color3"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K49 [".EndLinePath2D"]
  DUPTABLE R13 K41 [{"ZIndex", "Thickness", "Color3"}]
  LOADN R14 4
  SETTABLEKS R14 R13 K35 ["ZIndex"]
  LOADN R14 1
  SETTABLEKS R14 R13 K40 ["Thickness"]
  LOADK R14 K50 ["$ColorCurveEnd"]
  SETTABLEKS R14 R13 K28 ["Color3"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K51 ["TextLabel, TextButton, TextBox"]
  DUPTABLE R14 K54 [{"Font", "TextSize"}]
  GETIMPORT R15 K57 [Enum.Font.SourceSans]
  SETTABLEKS R15 R14 K52 ["Font"]
  LOADN R15 15
  SETTABLEKS R15 R14 K53 ["TextSize"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K58 [".CurvePointOuter"]
  DUPTABLE R15 K62 [{"AnchorPoint", "BackgroundTransparency", "ImageColor3", "Size", "ZIndex"}]
  GETIMPORT R16 K65 [Vector2.new]
  LOADK R17 K66 [0.5]
  LOADK R18 K66 [0.5]
  CALL R16 2 1
  SETTABLEKS R16 R15 K59 ["AnchorPoint"]
  LOADN R16 1
  SETTABLEKS R16 R15 K44 ["BackgroundTransparency"]
  GETIMPORT R16 K67 [Color3.new]
  LOADN R17 0
  LOADN R18 0
  LOADN R19 0
  CALL R16 3 1
  SETTABLEKS R16 R15 K60 ["ImageColor3"]
  GETIMPORT R16 K70 [UDim2.fromOffset]
  LOADN R17 14
  LOADN R18 14
  CALL R16 2 1
  SETTABLEKS R16 R15 K61 ["Size"]
  LOADN R16 4
  SETTABLEKS R16 R15 K35 ["ZIndex"]
  NEWTABLE R16 0 1
  MOVE R17 R2
  LOADK R18 K71 [".Selected, .Hovered, .Pressed"]
  DUPTABLE R19 K73 [{"Image", "ImageColor3"}]
  LOADK R20 K74 ["rbxasset://textures/smallWhiteCircle.png"]
  SETTABLEKS R20 R19 K72 ["Image"]
  LOADK R20 K75 ["$ColorControlPointHighlight"]
  SETTABLEKS R20 R19 K60 ["ImageColor3"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K76 [".CurvePoint"]
  DUPTABLE R16 K78 [{"AnchorPoint", "BackgroundTransparency", "Image", "ImageColor3", "Position", "Size", "ZIndex"}]
  GETIMPORT R17 K65 [Vector2.new]
  LOADK R18 K66 [0.5]
  LOADK R19 K66 [0.5]
  CALL R17 2 1
  SETTABLEKS R17 R16 K59 ["AnchorPoint"]
  LOADN R17 1
  SETTABLEKS R17 R16 K44 ["BackgroundTransparency"]
  LOADK R17 K74 ["rbxasset://textures/smallWhiteCircle.png"]
  SETTABLEKS R17 R16 K72 ["Image"]
  LOADK R17 K79 ["$ColorControlPoint"]
  SETTABLEKS R17 R16 K60 ["ImageColor3"]
  GETIMPORT R17 K81 [UDim2.fromScale]
  LOADK R18 K66 [0.5]
  LOADK R19 K66 [0.5]
  CALL R17 2 1
  SETTABLEKS R17 R16 K77 ["Position"]
  GETIMPORT R17 K70 [UDim2.fromOffset]
  LOADN R18 10
  LOADN R19 10
  CALL R17 2 1
  SETTABLEKS R17 R16 K61 ["Size"]
  LOADN R17 5
  SETTABLEKS R17 R16 K35 ["ZIndex"]
  NEWTABLE R17 0 2
  MOVE R18 R2
  LOADK R19 K82 [".Pressed"]
  DUPTABLE R20 K83 [{"ImageColor3"}]
  LOADK R21 K84 ["$ColorControlPointPressed"]
  SETTABLEKS R21 R20 K60 ["ImageColor3"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K85 [".Hovered"]
  DUPTABLE R21 K83 [{"ImageColor3"}]
  LOADK R22 K86 ["$ColorControlPointHovered"]
  SETTABLEKS R22 R21 K60 ["ImageColor3"]
  CALL R19 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 -1
  SETLIST R6 R7 -1 [1]
  MOVE R7 R3
  LOADK R8 K2 ["DirectionalCurveEditor"]
  MOVE R9 R6
  MOVE R10 R5
  CALL R7 3 -1
  RETURN R7 -1
