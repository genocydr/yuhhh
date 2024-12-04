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
  LOADK R4 K10 [".LayerTreeRow"]
  DUPTABLE R5 K15 [{"BorderSizePixel", "Size", "Padding", "Spacing"}]
  LOADN R6 0
  SETTABLEKS R6 R5 K11 ["BorderSizePixel"]
  GETIMPORT R6 K18 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 0
  LOADN R10 24
  CALL R6 4 1
  SETTABLEKS R6 R5 K12 ["Size"]
  DUPTABLE R6 K23 [{"Top", "Bottom", "Left", "Right"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K19 ["Top"]
  LOADN R7 1
  SETTABLEKS R7 R6 K20 ["Bottom"]
  LOADN R7 0
  SETTABLEKS R7 R6 K21 ["Left"]
  LOADN R7 0
  SETTABLEKS R7 R6 K22 ["Right"]
  SETTABLEKS R6 R5 K13 ["Padding"]
  LOADN R6 5
  SETTABLEKS R6 R5 K14 ["Spacing"]
  NEWTABLE R6 0 15
  MOVE R7 R2
  LOADK R8 K24 ["> .Client"]
  DUPTABLE R9 K27 [{"TextColor3", "ImageColor3"}]
  LOADK R10 K28 ["$Client"]
  SETTABLEKS R10 R9 K25 ["TextColor3"]
  LOADK R10 K28 ["$Client"]
  SETTABLEKS R10 R9 K26 ["ImageColor3"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K29 ["> .Server"]
  DUPTABLE R10 K27 [{"TextColor3", "ImageColor3"}]
  LOADK R11 K30 ["$Server"]
  SETTABLEKS R11 R10 K25 ["TextColor3"]
  LOADK R11 K30 ["$Server"]
  SETTABLEKS R11 R10 K26 ["ImageColor3"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K31 ["> #Toggle"]
  DUPTABLE R11 K32 [{"Size"}]
  LOADK R12 K33 ["$IconSize"]
  SETTABLEKS R12 R11 K12 ["Size"]
  NEWTABLE R12 0 1
  MOVE R13 R2
  LOADK R14 K34 ["> #ToggleButton"]
  DUPTABLE R15 K40 [{"Image", "Size", "ImageRectSize", "ImageColor3", "BackgroundTransparency", "Position", "AnchorPoint"}]
  LOADK R16 K41 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R16 R15 K35 ["Image"]
  LOADK R16 K33 ["$IconSize"]
  SETTABLEKS R16 R15 K12 ["Size"]
  GETIMPORT R16 K43 [Vector2.new]
  LOADN R17 12
  LOADN R18 12
  CALL R16 2 1
  SETTABLEKS R16 R15 K36 ["ImageRectSize"]
  LOADK R16 K44 ["$TextPrimary"]
  SETTABLEKS R16 R15 K26 ["ImageColor3"]
  LOADN R16 1
  SETTABLEKS R16 R15 K37 ["BackgroundTransparency"]
  GETIMPORT R16 K46 [UDim2.fromScale]
  LOADK R17 K47 [0.5]
  LOADK R18 K47 [0.5]
  CALL R16 2 1
  SETTABLEKS R16 R15 K38 ["Position"]
  GETIMPORT R16 K43 [Vector2.new]
  LOADK R17 K47 [0.5]
  LOADK R18 K47 [0.5]
  CALL R16 2 1
  SETTABLEKS R16 R15 K39 ["AnchorPoint"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K48 ["> .LayerIcon"]
  DUPTABLE R12 K49 [{"Image", "Size"}]
  LOADK R13 K50 ["rbxasset://textures/CompositorDebugger/default.png"]
  SETTABLEKS R13 R12 K35 ["Image"]
  LOADK R13 K33 ["$IconSize"]
  SETTABLEKS R13 R12 K12 ["Size"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K51 ["> .Blend1D"]
  DUPTABLE R13 K52 [{"Image"}]
  LOADK R14 K53 ["rbxasset://textures/CompositorDebugger/blend1d.png"]
  SETTABLEKS R14 R13 K35 ["Image"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K54 ["> .Blend2D"]
  DUPTABLE R14 K52 [{"Image"}]
  LOADK R15 K55 ["rbxasset://textures/CompositorDebugger/blend2d.png"]
  SETTABLEKS R15 R14 K35 ["Image"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K56 ["> .BlendSpace"]
  DUPTABLE R15 K52 [{"Image"}]
  LOADK R16 K55 ["rbxasset://textures/CompositorDebugger/blend2d.png"]
  SETTABLEKS R16 R15 K35 ["Image"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K57 ["> .ClipLayer"]
  DUPTABLE R16 K52 [{"Image"}]
  LOADK R17 K58 ["rbxasset://textures/CompositorDebugger/clip.png"]
  SETTABLEKS R17 R16 K35 ["Image"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K59 ["> .SelectLayer"]
  DUPTABLE R17 K52 [{"Image"}]
  LOADK R18 K60 ["rbxasset://textures/CompositorDebugger/select.png"]
  SETTABLEKS R18 R17 K35 ["Image"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K61 ["> .SequenceLayer"]
  DUPTABLE R18 K52 [{"Image"}]
  LOADK R19 K62 ["rbxasset://textures/CompositorDebugger/sequence.png"]
  SETTABLEKS R19 R18 K35 ["Image"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K63 ["> .Name"]
  DUPTABLE R19 K66 [{"TextTruncate", "TextXAlignment"}]
  GETIMPORT R20 K69 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R20 R19 K64 ["TextTruncate"]
  GETIMPORT R20 K70 [Enum.TextXAlignment.Left]
  SETTABLEKS R20 R19 K65 ["TextXAlignment"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K71 ["> .RigName"]
  DUPTABLE R20 K73 [{"Font"}]
  GETIMPORT R21 K75 [Enum.Font.SourceSansBold]
  SETTABLEKS R21 R20 K72 ["Font"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K76 ["> #Timestamp"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K77 ["> #ProgressBar"]
  DUPTABLE R25 K80 [{"BackgroundColor3", "BackgroundTransparency", "BorderColor3", "BorderSizePixel", "AnchorPoint", "Size", "Position"}]
  LOADK R26 K81 ["$BackgroundPaper"]
  SETTABLEKS R26 R25 K78 ["BackgroundColor3"]
  LOADN R26 0
  SETTABLEKS R26 R25 K37 ["BackgroundTransparency"]
  LOADK R26 K82 ["$TextSecondary"]
  SETTABLEKS R26 R25 K79 ["BorderColor3"]
  LOADN R26 1
  SETTABLEKS R26 R25 K11 ["BorderSizePixel"]
  GETIMPORT R26 K43 [Vector2.new]
  LOADK R27 K47 [0.5]
  LOADN R28 1
  CALL R26 2 1
  SETTABLEKS R26 R25 K39 ["AnchorPoint"]
  GETIMPORT R26 K18 [UDim2.new]
  LOADN R27 1
  LOADN R28 0
  LOADN R29 0
  LOADN R30 2
  CALL R26 4 1
  SETTABLEKS R26 R25 K12 ["Size"]
  GETIMPORT R26 K18 [UDim2.new]
  LOADK R27 K47 [0.5]
  LOADN R28 0
  LOADN R29 1
  LOADN R30 255
  CALL R26 4 1
  SETTABLEKS R26 R25 K38 ["Position"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K83 ["> #Adornment"]
  DUPTABLE R22 K84 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R23 K18 [UDim2.new]
  LOADN R24 0
  LOADN R25 12
  LOADN R26 1
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K12 ["Size"]
  LOADN R23 1
  SETTABLEKS R23 R22 K37 ["BackgroundTransparency"]
  NEWTABLE R23 0 2
  MOVE R24 R2
  LOADK R25 K85 ["> #EyeIcon"]
  DUPTABLE R26 K87 [{"Size", "Position", "AnchorPoint", "BackgroundTransparency", "ImageTransparency", "Image"}]
  LOADK R27 K33 ["$IconSize"]
  SETTABLEKS R27 R26 K12 ["Size"]
  GETIMPORT R27 K46 [UDim2.fromScale]
  LOADK R28 K47 [0.5]
  LOADK R29 K47 [0.5]
  CALL R27 2 1
  SETTABLEKS R27 R26 K38 ["Position"]
  GETIMPORT R27 K43 [Vector2.new]
  LOADK R28 K47 [0.5]
  LOADK R29 K47 [0.5]
  CALL R27 2 1
  SETTABLEKS R27 R26 K39 ["AnchorPoint"]
  LOADN R27 1
  SETTABLEKS R27 R26 K37 ["BackgroundTransparency"]
  LOADN R27 0
  SETTABLEKS R27 R26 K86 ["ImageTransparency"]
  LOADK R27 K88 ["rbxasset://textures/CompositorDebugger/eye.png"]
  SETTABLEKS R27 R26 K35 ["Image"]
  NEWTABLE R27 0 2
  MOVE R28 R2
  LOADK R29 K89 [".AdornmentOff"]
  DUPTABLE R30 K90 [{"ImageColor3"}]
  LOADK R31 K81 ["$BackgroundPaper"]
  SETTABLEKS R31 R30 K26 ["ImageColor3"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K91 [".AdornmentOn"]
  DUPTABLE R31 K90 [{"ImageColor3"}]
  LOADK R32 K44 ["$TextPrimary"]
  SETTABLEKS R32 R31 K26 ["ImageColor3"]
  CALL R29 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K92 ["> #Dot"]
  DUPTABLE R27 K87 [{"Size", "Position", "AnchorPoint", "BackgroundTransparency", "ImageTransparency", "Image"}]
  GETIMPORT R28 K94 [UDim2.fromOffset]
  LOADN R29 10
  LOADN R30 10
  CALL R28 2 1
  SETTABLEKS R28 R27 K12 ["Size"]
  GETIMPORT R28 K46 [UDim2.fromScale]
  LOADK R29 K47 [0.5]
  LOADK R30 K47 [0.5]
  CALL R28 2 1
  SETTABLEKS R28 R27 K38 ["Position"]
  GETIMPORT R28 K43 [Vector2.new]
  LOADK R29 K47 [0.5]
  LOADK R30 K47 [0.5]
  CALL R28 2 1
  SETTABLEKS R28 R27 K39 ["AnchorPoint"]
  LOADN R28 1
  SETTABLEKS R28 R27 K37 ["BackgroundTransparency"]
  LOADN R28 0
  SETTABLEKS R28 R27 K86 ["ImageTransparency"]
  LOADK R28 K95 ["rbxasset://textures/CompositorDebugger/adornmentDot.png"]
  SETTABLEKS R28 R27 K35 ["Image"]
  NEWTABLE R28 0 12
  MOVE R29 R2
  LOADK R30 K96 [".AdornmentDotOff"]
  DUPTABLE R31 K97 [{"ImageTransparency"}]
  LOADN R32 1
  SETTABLEKS R32 R31 K86 ["ImageTransparency"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K98 [".AdornmentDot1"]
  DUPTABLE R32 K90 [{"ImageColor3"}]
  LOADK R33 K99 ["$AdornmentDot1"]
  SETTABLEKS R33 R32 K26 ["ImageColor3"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K100 [".AdornmentDot2"]
  DUPTABLE R33 K90 [{"ImageColor3"}]
  LOADK R34 K101 ["$AdornmentDot2"]
  SETTABLEKS R34 R33 K26 ["ImageColor3"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K102 [".AdornmentDot3"]
  DUPTABLE R34 K90 [{"ImageColor3"}]
  LOADK R35 K103 ["$AdornmentDot3"]
  SETTABLEKS R35 R34 K26 ["ImageColor3"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K104 [".AdornmentDot4"]
  DUPTABLE R35 K90 [{"ImageColor3"}]
  LOADK R36 K105 ["$AdornmentDot4"]
  SETTABLEKS R36 R35 K26 ["ImageColor3"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K106 [".AdornmentDot5"]
  DUPTABLE R36 K90 [{"ImageColor3"}]
  LOADK R37 K107 ["$AdornmentDot5"]
  SETTABLEKS R37 R36 K26 ["ImageColor3"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K108 [".AdornmentDot6"]
  DUPTABLE R37 K90 [{"ImageColor3"}]
  LOADK R38 K109 ["$AdornmentDot6"]
  SETTABLEKS R38 R37 K26 ["ImageColor3"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K110 [".AdornmentDot7"]
  DUPTABLE R38 K90 [{"ImageColor3"}]
  LOADK R39 K111 ["$AdornmentDot7"]
  SETTABLEKS R39 R38 K26 ["ImageColor3"]
  CALL R36 2 1
  MOVE R37 R2
  LOADK R38 K112 [".AdornmentDot8"]
  DUPTABLE R39 K90 [{"ImageColor3"}]
  LOADK R40 K113 ["$AdornmentDot8"]
  SETTABLEKS R40 R39 K26 ["ImageColor3"]
  CALL R37 2 1
  MOVE R38 R2
  LOADK R39 K114 [".AdornmentDot9"]
  DUPTABLE R40 K90 [{"ImageColor3"}]
  LOADK R41 K115 ["$AdornmentDot9"]
  SETTABLEKS R41 R40 K26 ["ImageColor3"]
  CALL R38 2 1
  MOVE R39 R2
  LOADK R40 K116 [".AdornmentDot10"]
  DUPTABLE R41 K90 [{"ImageColor3"}]
  LOADK R42 K117 ["$AdornmentDot10"]
  SETTABLEKS R42 R41 K26 ["ImageColor3"]
  CALL R39 2 1
  MOVE R40 R2
  LOADK R41 K118 [".AdornmentDot11"]
  DUPTABLE R42 K90 [{"ImageColor3"}]
  LOADK R43 K119 ["$AdornmentDot11"]
  SETTABLEKS R43 R42 K26 ["ImageColor3"]
  CALL R40 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K120 [":hover"]
  DUPTABLE R23 K121 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R24 K122 ["$LayerHover"]
  SETTABLEKS R24 R23 K78 ["BackgroundColor3"]
  LOADN R24 0
  SETTABLEKS R24 R23 K37 ["BackgroundTransparency"]
  CALL R21 2 -1
  SETLIST R6 R7 -1 [1]
  DUPTABLE R7 K129 [{"Indent", "Client", "Server", "IconSize", "ExpandedOffset", "CollapsedOffset"}]
  LOADN R8 17
  SETTABLEKS R8 R7 K123 ["Indent"]
  GETIMPORT R8 K132 [Color3.fromHex]
  LOADK R9 K133 ["349AD5"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K124 ["Client"]
  GETIMPORT R8 K132 [Color3.fromHex]
  LOADK R9 K134 ["00CC67"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K125 ["Server"]
  GETIMPORT R8 K18 [UDim2.new]
  LOADN R9 0
  LOADN R10 12
  LOADN R11 0
  LOADN R12 12
  CALL R8 4 1
  SETTABLEKS R8 R7 K126 ["IconSize"]
  GETIMPORT R8 K43 [Vector2.new]
  LOADN R9 24
  LOADN R10 0
  CALL R8 2 1
  SETTABLEKS R8 R7 K127 ["ExpandedOffset"]
  GETIMPORT R8 K43 [Vector2.new]
  LOADN R9 12
  LOADN R10 0
  CALL R8 2 1
  SETTABLEKS R8 R7 K128 ["CollapsedOffset"]
  CALL R3 4 -1
  RETURN R3 -1
