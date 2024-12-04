MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AttenuationCurveEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Bin"]
  GETTABLEKS R3 R4 K7 ["Common"]
  GETTABLEKS R2 R3 K8 ["defineLuaFlags"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K11 ["Styling"]
  GETTABLEKS R3 R4 K12 ["createStyleRule"]
  GETTABLEKS R5 R2 K11 ["Styling"]
  GETTABLEKS R4 R5 K13 ["createStyleSheet"]
  GETIMPORT R5 K15 [game]
  LOADK R7 K16 ["ImprovedCursors"]
  NAMECALL R5 R5 K17 ["GetFastFlag"]
  CALL R5 2 1
  DUPTABLE R6 K25 [{"ColorCurve", "ColorCurveEnd", "ColorKeypoint", "ColorKeypointSelected", "ColorKeypointHovered", "ColorKeypointPressed", "CursorOpenedHand"}]
  GETIMPORT R7 K28 [Color3.fromRGB]
  LOADN R8 225
  LOADN R9 100
  LOADN R10 100
  CALL R7 3 1
  SETTABLEKS R7 R6 K18 ["ColorCurve"]
  GETIMPORT R7 K28 [Color3.fromRGB]
  LOADN R8 150
  LOADN R9 150
  LOADN R10 150
  CALL R7 3 1
  SETTABLEKS R7 R6 K19 ["ColorCurveEnd"]
  GETIMPORT R7 K28 [Color3.fromRGB]
  LOADN R8 225
  LOADN R9 100
  LOADN R10 100
  CALL R7 3 1
  SETTABLEKS R7 R6 K20 ["ColorKeypoint"]
  GETIMPORT R7 K28 [Color3.fromRGB]
  LOADN R8 255
  LOADN R9 200
  LOADN R10 150
  CALL R7 3 1
  SETTABLEKS R7 R6 K21 ["ColorKeypointSelected"]
  GETIMPORT R7 K28 [Color3.fromRGB]
  LOADN R8 255
  LOADN R9 150
  LOADN R10 150
  CALL R7 3 1
  SETTABLEKS R7 R6 K22 ["ColorKeypointHovered"]
  GETIMPORT R7 K28 [Color3.fromRGB]
  LOADN R8 150
  LOADN R9 50
  LOADN R10 50
  CALL R7 3 1
  SETTABLEKS R7 R6 K23 ["ColorKeypointPressed"]
  JUMPIFNOT R5 [+2]
  LOADK R7 K29 ["rbxasset://textures/Cursors/DragDetector/HoverCursor.png"]
  JUMP [+1]
  LOADK R7 K30 ["rbxasset://textures/advCursor-openedHand.png"]
  SETTABLEKS R7 R6 K24 ["CursorOpenedHand"]
  NEWTABLE R7 0 10
  MOVE R8 R3
  LOADK R9 K31 [".GridLine"]
  DUPTABLE R10 K35 [{"BorderSizePixel", "ZIndex", "BackgroundColor3"}]
  LOADN R11 0
  SETTABLEKS R11 R10 K32 ["BorderSizePixel"]
  LOADN R11 2
  SETTABLEKS R11 R10 K33 ["ZIndex"]
  LOADK R11 K36 ["$ColorGridLine"]
  SETTABLEKS R11 R10 K34 ["BackgroundColor3"]
  CALL R8 2 1
  MOVE R9 R3
  LOADK R10 K37 [".GridLabel"]
  DUPTABLE R11 K40 [{"BackgroundTransparency", "TextColor3"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K38 ["BackgroundTransparency"]
  LOADK R12 K36 ["$ColorGridLine"]
  SETTABLEKS R12 R11 K39 ["TextColor3"]
  CALL R9 2 1
  MOVE R10 R3
  LOADK R11 K41 [".CurvePointOuter"]
  DUPTABLE R12 K45 [{"AnchorPoint", "BackgroundTransparency", "ImageColor3", "Size", "ZIndex"}]
  GETIMPORT R13 K48 [Vector2.new]
  LOADK R14 K49 [0.5]
  LOADK R15 K49 [0.5]
  CALL R13 2 1
  SETTABLEKS R13 R12 K42 ["AnchorPoint"]
  LOADN R13 1
  SETTABLEKS R13 R12 K38 ["BackgroundTransparency"]
  GETIMPORT R13 K50 [Color3.new]
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  CALL R13 3 1
  SETTABLEKS R13 R12 K43 ["ImageColor3"]
  GETIMPORT R13 K53 [UDim2.fromOffset]
  LOADN R14 14
  LOADN R15 14
  CALL R13 2 1
  SETTABLEKS R13 R12 K44 ["Size"]
  LOADN R13 4
  SETTABLEKS R13 R12 K33 ["ZIndex"]
  NEWTABLE R13 0 1
  MOVE R14 R3
  LOADK R15 K54 [".Selected, .Hovered, .Pressed"]
  DUPTABLE R16 K56 [{"Image", "ImageColor3"}]
  LOADK R17 K57 ["rbxasset://textures/smallWhiteCircle.png"]
  SETTABLEKS R17 R16 K55 ["Image"]
  LOADK R17 K58 ["$ColorKeypointHighlight"]
  SETTABLEKS R17 R16 K43 ["ImageColor3"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R3
  LOADK R12 K59 [".CurvePoint"]
  DUPTABLE R13 K61 [{"AnchorPoint", "BackgroundTransparency", "Image", "ImageColor3", "Position", "Size", "ZIndex"}]
  GETIMPORT R14 K48 [Vector2.new]
  LOADK R15 K49 [0.5]
  LOADK R16 K49 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K42 ["AnchorPoint"]
  LOADN R14 1
  SETTABLEKS R14 R13 K38 ["BackgroundTransparency"]
  LOADK R14 K57 ["rbxasset://textures/smallWhiteCircle.png"]
  SETTABLEKS R14 R13 K55 ["Image"]
  LOADK R14 K62 ["$ColorKeypoint"]
  SETTABLEKS R14 R13 K43 ["ImageColor3"]
  GETIMPORT R14 K64 [UDim2.fromScale]
  LOADK R15 K49 [0.5]
  LOADK R16 K49 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K60 ["Position"]
  GETIMPORT R14 K53 [UDim2.fromOffset]
  LOADN R15 10
  LOADN R16 10
  CALL R14 2 1
  SETTABLEKS R14 R13 K44 ["Size"]
  LOADN R14 5
  SETTABLEKS R14 R13 K33 ["ZIndex"]
  NEWTABLE R14 0 2
  MOVE R15 R3
  LOADK R16 K65 [".Pressed"]
  DUPTABLE R17 K66 [{"ImageColor3"}]
  LOADK R18 K67 ["$ColorKeypointPressed"]
  SETTABLEKS R18 R17 K43 ["ImageColor3"]
  CALL R15 2 1
  MOVE R16 R3
  LOADK R17 K68 [".Hovered"]
  DUPTABLE R18 K66 [{"ImageColor3"}]
  LOADK R19 K69 ["$ColorKeypointHovered"]
  SETTABLEKS R19 R18 K43 ["ImageColor3"]
  CALL R16 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R3
  LOADK R13 K70 [".GhostPoint"]
  DUPTABLE R14 K72 [{"AnchorPoint", "BackgroundTransparency", "Image", "ImageColor3", "ImageTransparency", "Size", "ZIndex"}]
  GETIMPORT R15 K48 [Vector2.new]
  LOADK R16 K49 [0.5]
  LOADK R17 K49 [0.5]
  CALL R15 2 1
  SETTABLEKS R15 R14 K42 ["AnchorPoint"]
  LOADN R15 1
  SETTABLEKS R15 R14 K38 ["BackgroundTransparency"]
  LOADK R15 K57 ["rbxasset://textures/smallWhiteCircle.png"]
  SETTABLEKS R15 R14 K55 ["Image"]
  LOADK R15 K36 ["$ColorGridLine"]
  SETTABLEKS R15 R14 K43 ["ImageColor3"]
  LOADK R15 K49 [0.5]
  SETTABLEKS R15 R14 K71 ["ImageTransparency"]
  GETIMPORT R15 K53 [UDim2.fromOffset]
  LOADN R16 6
  LOADN R17 6
  CALL R15 2 1
  SETTABLEKS R15 R14 K44 ["Size"]
  LOADN R15 4
  SETTABLEKS R15 R14 K33 ["ZIndex"]
  CALL R12 2 1
  MOVE R13 R3
  LOADK R14 K73 [".CurveLinePath2D"]
  DUPTABLE R15 K75 [{"ZIndex", "Thickness", "Color3"}]
  LOADN R16 4
  SETTABLEKS R16 R15 K33 ["ZIndex"]
  LOADN R16 2
  SETTABLEKS R16 R15 K74 ["Thickness"]
  LOADK R16 K76 ["$ColorCurve"]
  SETTABLEKS R16 R15 K26 ["Color3"]
  CALL R13 2 1
  MOVE R14 R3
  LOADK R15 K77 [".GhostLinePath2D"]
  DUPTABLE R16 K75 [{"ZIndex", "Thickness", "Color3"}]
  LOADN R17 4
  SETTABLEKS R17 R16 K33 ["ZIndex"]
  LOADN R17 1
  SETTABLEKS R17 R16 K74 ["Thickness"]
  LOADK R17 K78 ["$ColorCurveEnd"]
  SETTABLEKS R17 R16 K26 ["Color3"]
  CALL R14 2 1
  MOVE R15 R3
  LOADK R16 K79 [".ScrollbarFrame"]
  DUPTABLE R17 K80 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R18 K81 [0.6]
  SETTABLEKS R18 R17 K38 ["BackgroundTransparency"]
  GETIMPORT R18 K28 [Color3.fromRGB]
  LOADN R19 0
  LOADN R20 0
  LOADN R21 0
  CALL R18 3 1
  SETTABLEKS R18 R17 K34 ["BackgroundColor3"]
  CALL R15 2 1
  MOVE R16 R3
  LOADK R17 K82 [".ScrollbarButton"]
  DUPTABLE R18 K84 [{"BackgroundColor3", "BorderColor3", "TextColor3"}]
  LOADK R19 K85 ["$ColorScrollbarButton"]
  SETTABLEKS R19 R18 K34 ["BackgroundColor3"]
  LOADK R19 K86 ["$ColorScrollbarButtonBorder"]
  SETTABLEKS R19 R18 K83 ["BorderColor3"]
  LOADK R19 K87 ["$ColorScrollbarButtonText"]
  SETTABLEKS R19 R18 K39 ["TextColor3"]
  NEWTABLE R19 0 2
  MOVE R20 R3
  LOADK R21 K68 [".Hovered"]
  DUPTABLE R22 K88 [{"BackgroundColor3"}]
  LOADK R23 K89 ["$ColorScrollbarButtonHovered"]
  SETTABLEKS R23 R22 K34 ["BackgroundColor3"]
  CALL R20 2 1
  MOVE R21 R3
  LOADK R22 K65 [".Pressed"]
  DUPTABLE R23 K88 [{"BackgroundColor3"}]
  LOADK R24 K90 ["$ColorScrollbarButtonPressed"]
  SETTABLEKS R24 R23 K34 ["BackgroundColor3"]
  CALL R21 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R3
  LOADK R18 K91 ["TextLabel, TextButton, TextBox"]
  DUPTABLE R19 K94 [{"Font", "TextSize"}]
  GETIMPORT R20 K97 [Enum.Font.SourceSans]
  SETTABLEKS R20 R19 K92 ["Font"]
  LOADN R20 15
  SETTABLEKS R20 R19 K93 ["TextSize"]
  CALL R17 2 -1
  SETLIST R7 R8 -1 [1]
  MOVE R8 R4
  LOADK R9 K2 ["AttenuationCurveEditor"]
  MOVE R10 R7
  MOVE R11 R6
  CALL R8 3 -1
  RETURN R8 -1
