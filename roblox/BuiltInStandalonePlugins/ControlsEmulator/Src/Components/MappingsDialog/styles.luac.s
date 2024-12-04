MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["Styling"]
  GETTABLEKS R2 R3 K8 ["createStyleRule"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Resources"]
  GETTABLEKS R4 R5 K11 ["StyleConstants"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K12 ["minimumMappingsDialogSize"]
  MOVE R5 R2
  LOADK R6 K13 [".Component-MappingsDialog"]
  DUPTABLE R7 K18 [{"Position", "AnchorPoint", "BorderSizePixel", "Size"}]
  GETIMPORT R8 K21 [UDim2.new]
  LOADK R9 K22 [0.5]
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K14 ["Position"]
  GETIMPORT R8 K24 [Vector2.new]
  LOADK R9 K22 [0.5]
  LOADN R10 0
  CALL R8 2 1
  SETTABLEKS R8 R7 K15 ["AnchorPoint"]
  LOADN R8 0
  SETTABLEKS R8 R7 K16 ["BorderSizePixel"]
  GETIMPORT R8 K21 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 1
  GETTABLEKS R13 R3 K25 ["deviceHeaderHeight"]
  MINUS R12 R13
  CALL R8 4 1
  SETTABLEKS R8 R7 K17 ["Size"]
  NEWTABLE R8 0 5
  MOVE R9 R2
  LOADK R10 K26 ["> Frame"]
  NEWTABLE R11 0 0
  NEWTABLE R12 0 1
  MOVE R13 R2
  LOADK R14 K27 ["::UIListLayout"]
  DUPTABLE R15 K30 [{"FillDirection", "HorizontalAlignment"}]
  GETIMPORT R16 K33 [Enum.FillDirection.Horizontal]
  SETTABLEKS R16 R15 K28 ["FillDirection"]
  GETIMPORT R16 K35 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R16 R15 K29 ["HorizontalAlignment"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K36 [">> #HorizontalScrollingFrame"]
  DUPTABLE R12 K41 [{"CanvasSize", "AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness"}]
  GETIMPORT R13 K21 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 1
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K37 ["CanvasSize"]
  GETIMPORT R13 K44 [Enum.AutomaticSize.XY]
  SETTABLEKS R13 R12 K38 ["AutomaticCanvasSize"]
  GETIMPORT R13 K46 [Enum.ScrollingDirection.X]
  SETTABLEKS R13 R12 K39 ["ScrollingDirection"]
  LOADN R13 8
  SETTABLEKS R13 R12 K40 ["ScrollBarThickness"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K47 [">> #BlueprintAndListContainer"]
  NEWTABLE R13 0 0
  NEWTABLE R14 0 3
  MOVE R15 R2
  LOADK R16 K48 ["::UISizeConstraint"]
  DUPTABLE R17 K50 [{"MinSize"}]
  SETTABLEKS R4 R17 K49 ["MinSize"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K51 [">> #BlueprintContainer"]
  DUPTABLE R18 K52 [{"Size", "AnchorPoint"}]
  GETIMPORT R19 K21 [UDim2.new]
  LOADK R20 K22 [0.5]
  LOADN R21 0
  LOADN R22 1
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K17 ["Size"]
  GETIMPORT R19 K24 [Vector2.new]
  LOADK R20 K22 [0.5]
  LOADK R21 K22 [0.5]
  CALL R19 2 1
  SETTABLEKS R19 R18 K15 ["AnchorPoint"]
  NEWTABLE R19 0 3
  MOVE R20 R2
  LOADK R21 K27 ["::UIListLayout"]
  DUPTABLE R22 K54 [{"SortOrder", "FillDirection", "HorizontalAlignment"}]
  GETIMPORT R23 K56 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R23 R22 K53 ["SortOrder"]
  GETIMPORT R23 K33 [Enum.FillDirection.Horizontal]
  SETTABLEKS R23 R22 K28 ["FillDirection"]
  GETIMPORT R23 K35 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R23 R22 K29 ["HorizontalAlignment"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K57 ["::UIPadding"]
  DUPTABLE R23 K59 [{"PaddingTop"}]
  LOADK R24 K60 ["$BlueprintWithMappingsPadding"]
  SETTABLEKS R24 R23 K58 ["PaddingTop"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K61 [">> #DeviceBlueprint"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K48 ["::UISizeConstraint"]
  DUPTABLE R28 K63 [{"MaxSize"}]
  GETIMPORT R29 K24 [Vector2.new]
  LOADN R30 144
  LOADN R31 16
  CALL R29 2 1
  SETTABLEKS R29 R28 K62 ["MaxSize"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K64 [">> #ListScrollingContainer"]
  DUPTABLE R19 K65 [{"ScrollingDirection", "Size", "Position"}]
  GETIMPORT R20 K67 [Enum.ScrollingDirection.Y]
  SETTABLEKS R20 R19 K39 ["ScrollingDirection"]
  GETIMPORT R20 K21 [UDim2.new]
  LOADK R21 K22 [0.5]
  LOADN R22 0
  LOADN R23 1
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K17 ["Size"]
  GETIMPORT R20 K21 [UDim2.new]
  LOADK R21 K22 [0.5]
  LOADN R22 0
  LOADN R23 0
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K14 ["Position"]
  CALL R17 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K68 [">> .Component-ResetMappingsConfirmationDialog"]
  NEWTABLE R14 0 0
  NEWTABLE R15 0 1
  MOVE R16 R2
  LOADK R17 K69 [">> #DialogContents"]
  DUPTABLE R18 K71 [{"Size", "Position", "BackgroundColor3"}]
  GETIMPORT R19 K21 [UDim2.new]
  LOADN R20 0
  LOADN R21 194
  LOADN R22 0
  LOADN R23 100
  CALL R19 4 1
  SETTABLEKS R19 R18 K17 ["Size"]
  GETIMPORT R19 K21 [UDim2.new]
  LOADK R20 K22 [0.5]
  LOADN R21 159
  LOADN R22 0
  LOADN R23 100
  CALL R19 4 1
  SETTABLEKS R19 R18 K14 ["Position"]
  LOADK R19 K72 ["$FilledInputBackground"]
  SETTABLEKS R19 R18 K70 ["BackgroundColor3"]
  NEWTABLE R19 0 5
  MOVE R20 R2
  LOADK R21 K27 ["::UIListLayout"]
  DUPTABLE R22 K75 [{"SortOrder", "VerticalAlignment", "Padding"}]
  GETIMPORT R23 K56 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R23 R22 K53 ["SortOrder"]
  GETIMPORT R23 K76 [Enum.VerticalAlignment.Center]
  SETTABLEKS R23 R22 K73 ["VerticalAlignment"]
  GETIMPORT R23 K78 [UDim.new]
  LOADN R24 0
  LOADN R25 4
  CALL R23 2 1
  SETTABLEKS R23 R22 K74 ["Padding"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K79 ["::UICorner"]
  DUPTABLE R23 K81 [{"CornerRadius"}]
  GETIMPORT R24 K78 [UDim.new]
  LOADN R25 0
  LOADN R26 8
  CALL R24 2 1
  SETTABLEKS R24 R23 K80 ["CornerRadius"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K57 ["::UIPadding"]
  DUPTABLE R24 K85 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R25 K78 [UDim.new]
  LOADN R26 0
  LOADN R27 8
  CALL R25 2 1
  SETTABLEKS R25 R24 K82 ["PaddingLeft"]
  GETIMPORT R25 K78 [UDim.new]
  LOADN R26 0
  LOADN R27 8
  CALL R25 2 1
  SETTABLEKS R25 R24 K83 ["PaddingRight"]
  GETIMPORT R25 K78 [UDim.new]
  LOADN R26 0
  LOADN R27 8
  CALL R25 2 1
  SETTABLEKS R25 R24 K58 ["PaddingTop"]
  GETIMPORT R25 K78 [UDim.new]
  LOADN R26 0
  LOADN R27 8
  CALL R25 2 1
  SETTABLEKS R25 R24 K84 ["PaddingBottom"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K86 [">> #ConfirmationText"]
  DUPTABLE R25 K92 [{"BackgroundTransparency", "Size", "Position", "TextWrapped", "TextColor3", "TextXAlignment", "TextYAlignment"}]
  LOADN R26 1
  SETTABLEKS R26 R25 K87 ["BackgroundTransparency"]
  GETIMPORT R26 K21 [UDim2.new]
  LOADN R27 1
  LOADN R28 0
  LOADK R29 K22 [0.5]
  LOADN R30 0
  CALL R26 4 1
  SETTABLEKS R26 R25 K17 ["Size"]
  GETIMPORT R26 K21 [UDim2.new]
  LOADN R27 0
  LOADN R28 0
  LOADN R29 0
  LOADN R30 0
  CALL R26 4 1
  SETTABLEKS R26 R25 K14 ["Position"]
  LOADB R26 1
  SETTABLEKS R26 R25 K88 ["TextWrapped"]
  LOADK R26 K93 ["$TextPrimary"]
  SETTABLEKS R26 R25 K89 ["TextColor3"]
  GETIMPORT R26 K95 [Enum.TextXAlignment.Left]
  SETTABLEKS R26 R25 K90 ["TextXAlignment"]
  GETIMPORT R26 K96 [Enum.TextYAlignment.Center]
  SETTABLEKS R26 R25 K91 ["TextYAlignment"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K97 [">> #ButtonsContainer"]
  DUPTABLE R26 K98 [{"Size", "AutomaticSize", "BackgroundTransparency"}]
  GETIMPORT R27 K21 [UDim2.new]
  LOADN R28 1
  LOADN R29 0
  LOADN R30 0
  LOADN R31 0
  CALL R27 4 1
  SETTABLEKS R27 R26 K17 ["Size"]
  GETIMPORT R27 K99 [Enum.AutomaticSize.Y]
  SETTABLEKS R27 R26 K42 ["AutomaticSize"]
  LOADN R27 1
  SETTABLEKS R27 R26 K87 ["BackgroundTransparency"]
  NEWTABLE R27 0 2
  MOVE R28 R2
  LOADK R29 K27 ["::UIListLayout"]
  DUPTABLE R30 K100 [{"FillDirection", "SortOrder", "Padding", "HorizontalAlignment"}]
  GETIMPORT R31 K33 [Enum.FillDirection.Horizontal]
  SETTABLEKS R31 R30 K28 ["FillDirection"]
  GETIMPORT R31 K56 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R31 R30 K53 ["SortOrder"]
  GETIMPORT R31 K78 [UDim.new]
  LOADN R32 0
  LOADN R33 8
  CALL R31 2 1
  SETTABLEKS R31 R30 K74 ["Padding"]
  GETIMPORT R31 K35 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R31 R30 K29 ["HorizontalAlignment"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K101 [">> .Button"]
  DUPTABLE R31 K102 [{"Size", "BackgroundColor3", "TextColor3"}]
  GETIMPORT R32 K21 [UDim2.new]
  LOADN R33 0
  LOADN R34 78
  LOADN R35 0
  LOADN R36 32
  CALL R32 4 1
  SETTABLEKS R32 R31 K17 ["Size"]
  LOADK R32 K103 ["$PrimaryMain"]
  SETTABLEKS R32 R31 K70 ["BackgroundColor3"]
  LOADK R32 K93 ["$TextPrimary"]
  SETTABLEKS R32 R31 K89 ["TextColor3"]
  NEWTABLE R32 0 1
  MOVE R33 R2
  LOADK R34 K79 ["::UICorner"]
  DUPTABLE R35 K81 [{"CornerRadius"}]
  GETIMPORT R36 K78 [UDim.new]
  LOADN R37 0
  LOADN R38 8
  CALL R36 2 1
  SETTABLEKS R36 R35 K80 ["CornerRadius"]
  CALL R33 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K104 [">> .Component-MappingsCollisionsBanner"]
  NEWTABLE R15 0 0
  NEWTABLE R16 0 2
  MOVE R17 R2
  LOADK R18 K57 ["::UIPadding"]
  DUPTABLE R19 K59 [{"PaddingTop"}]
  GETIMPORT R20 K78 [UDim.new]
  LOADN R21 0
  LOADN R22 37
  CALL R20 2 1
  SETTABLEKS R20 R19 K58 ["PaddingTop"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K105 [">> #BannerContents"]
  DUPTABLE R20 K106 [{"Size", "BackgroundColor3", "BackgroundTransparency", "AnchorPoint", "Position", "TextXAlignment", "AutomaticSize"}]
  GETIMPORT R21 K21 [UDim2.new]
  LOADN R22 0
  LOADN R23 35
  LOADN R24 0
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K17 ["Size"]
  LOADK R21 K107 ["$WarningMain"]
  SETTABLEKS R21 R20 K70 ["BackgroundColor3"]
  LOADN R21 0
  SETTABLEKS R21 R20 K87 ["BackgroundTransparency"]
  GETIMPORT R21 K24 [Vector2.new]
  LOADK R22 K22 [0.5]
  LOADN R23 0
  CALL R21 2 1
  SETTABLEKS R21 R20 K15 ["AnchorPoint"]
  GETIMPORT R21 K21 [UDim2.new]
  LOADK R22 K22 [0.5]
  LOADN R23 0
  LOADN R24 0
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K14 ["Position"]
  GETIMPORT R21 K108 [Enum.TextXAlignment.Center]
  SETTABLEKS R21 R20 K90 ["TextXAlignment"]
  GETIMPORT R21 K44 [Enum.AutomaticSize.XY]
  SETTABLEKS R21 R20 K42 ["AutomaticSize"]
  NEWTABLE R21 0 3
  MOVE R22 R2
  LOADK R23 K57 ["::UIPadding"]
  DUPTABLE R24 K85 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R25 K78 [UDim.new]
  LOADN R26 0
  LOADN R27 5
  CALL R25 2 1
  SETTABLEKS R25 R24 K82 ["PaddingLeft"]
  GETIMPORT R25 K78 [UDim.new]
  LOADN R26 0
  LOADN R27 5
  CALL R25 2 1
  SETTABLEKS R25 R24 K83 ["PaddingRight"]
  GETIMPORT R25 K78 [UDim.new]
  LOADN R26 0
  LOADN R27 2
  CALL R25 2 1
  SETTABLEKS R25 R24 K58 ["PaddingTop"]
  GETIMPORT R25 K78 [UDim.new]
  LOADN R26 0
  LOADN R27 2
  CALL R25 2 1
  SETTABLEKS R25 R24 K84 ["PaddingBottom"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K79 ["::UICorner"]
  DUPTABLE R25 K81 [{"CornerRadius"}]
  GETIMPORT R26 K78 [UDim.new]
  LOADN R27 0
  LOADN R28 8
  CALL R26 2 1
  SETTABLEKS R26 R25 K80 ["CornerRadius"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K109 [">> #WarningText"]
  DUPTABLE R26 K110 [{"Size", "BackgroundTransparency", "TextWrapped", "AutomaticSize"}]
  GETIMPORT R27 K21 [UDim2.new]
  LOADN R28 1
  LOADN R29 0
  LOADN R30 0
  LOADN R31 0
  CALL R27 4 1
  SETTABLEKS R27 R26 K17 ["Size"]
  LOADN R27 1
  SETTABLEKS R27 R26 K87 ["BackgroundTransparency"]
  LOADB R27 1
  SETTABLEKS R27 R26 K88 ["TextWrapped"]
  GETIMPORT R27 K99 [Enum.AutomaticSize.Y]
  SETTABLEKS R27 R26 K42 ["AutomaticSize"]
  CALL R24 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 -1
  SETLIST R8 R9 -1 [1]
  CALL R5 3 -1
  RETURN R5 -1
