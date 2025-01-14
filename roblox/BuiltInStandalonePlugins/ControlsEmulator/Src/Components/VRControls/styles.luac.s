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
  MOVE R4 R2
  LOADK R5 K12 [".Component-VRControls"]
  DUPTABLE R6 K14 [{"Size"}]
  GETIMPORT R7 K17 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  GETTABLEKS R11 R3 K18 ["vrControlsHeight"]
  CALL R7 4 1
  SETTABLEKS R7 R6 K13 ["Size"]
  NEWTABLE R7 0 3
  MOVE R8 R2
  LOADK R9 K19 ["::UIListLayout"]
  DUPTABLE R10 K23 [{"SortOrder", "HorizontalAlignment", "FillDirection"}]
  GETIMPORT R11 K26 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R11 R10 K20 ["SortOrder"]
  GETIMPORT R11 K28 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R11 R10 K21 ["HorizontalAlignment"]
  GETIMPORT R11 K30 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K22 ["FillDirection"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K31 [">> TextLabel, >> TextButton"]
  DUPTABLE R11 K33 [{"TextColor3"}]
  LOADK R12 K34 ["$TextPrimary"]
  SETTABLEKS R12 R11 K32 ["TextColor3"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K35 [">> #InnerContainer"]
  DUPTABLE R12 K38 [{"Size", "AutomaticSize", "BorderSizePixel"}]
  GETIMPORT R13 K17 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K13 ["Size"]
  GETIMPORT R13 K40 [Enum.AutomaticSize.Y]
  SETTABLEKS R13 R12 K36 ["AutomaticSize"]
  LOADN R13 0
  SETTABLEKS R13 R12 K37 ["BorderSizePixel"]
  NEWTABLE R13 0 5
  MOVE R14 R2
  LOADK R15 K41 ["::UISizeConstraint"]
  DUPTABLE R16 K43 [{"MaxSize"}]
  GETIMPORT R17 K45 [Vector2.new]
  LOADN R18 88
  LOADN R19 1
  CALL R17 2 1
  SETTABLEKS R17 R16 K42 ["MaxSize"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K46 [">> #Separator"]
  DUPTABLE R17 K48 [{"Size", "BorderSizePixel", "BorderColor3"}]
  GETIMPORT R18 K17 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K13 ["Size"]
  LOADN R18 1
  SETTABLEKS R18 R17 K37 ["BorderSizePixel"]
  LOADK R18 K49 ["$SeparatorColor"]
  SETTABLEKS R18 R17 K47 ["BorderColor3"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K50 [">> #Controls"]
  DUPTABLE R18 K38 [{"Size", "AutomaticSize", "BorderSizePixel"}]
  GETIMPORT R19 K17 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K13 ["Size"]
  GETIMPORT R19 K40 [Enum.AutomaticSize.Y]
  SETTABLEKS R19 R18 K36 ["AutomaticSize"]
  LOADN R19 0
  SETTABLEKS R19 R18 K37 ["BorderSizePixel"]
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K51 [">> #Label"]
  DUPTABLE R22 K52 [{"AutomaticSize", "BorderSizePixel"}]
  GETIMPORT R23 K54 [Enum.AutomaticSize.XY]
  SETTABLEKS R23 R22 K36 ["AutomaticSize"]
  LOADN R23 0
  SETTABLEKS R23 R22 K37 ["BorderSizePixel"]
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K55 ["::UIPadding"]
  DUPTABLE R26 K58 [{"PaddingTop", "PaddingBottom"}]
  GETIMPORT R27 K60 [UDim.new]
  LOADN R28 0
  LOADN R29 10
  CALL R27 2 1
  SETTABLEKS R27 R26 K56 ["PaddingTop"]
  GETIMPORT R27 K60 [UDim.new]
  LOADN R28 0
  LOADN R29 3
  CALL R27 2 1
  SETTABLEKS R27 R26 K57 ["PaddingBottom"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K61 [">> #TooltipButton"]
  DUPTABLE R19 K66 [{"Size", "Position", "BorderSizePixel", "TextSize", "BorderMode", "TextXAlignment"}]
  GETIMPORT R20 K17 [UDim2.new]
  LOADN R21 0
  LOADN R22 20
  LOADN R23 0
  LOADN R24 20
  CALL R20 4 1
  SETTABLEKS R20 R19 K13 ["Size"]
  GETIMPORT R20 K17 [UDim2.new]
  LOADN R21 1
  LOADN R22 231
  LOADN R23 0
  LOADN R24 10
  CALL R20 4 1
  SETTABLEKS R20 R19 K62 ["Position"]
  LOADN R20 5
  SETTABLEKS R20 R19 K37 ["BorderSizePixel"]
  LOADN R20 20
  SETTABLEKS R20 R19 K63 ["TextSize"]
  GETIMPORT R20 K68 [Enum.BorderMode.Inset]
  SETTABLEKS R20 R19 K64 ["BorderMode"]
  GETIMPORT R20 K69 [Enum.TextXAlignment.Center]
  SETTABLEKS R20 R19 K65 ["TextXAlignment"]
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K70 ["::UIStroke"]
  DUPTABLE R23 K74 [{"Color", "ApplyStrokeMode", "Thickness"}]
  LOADK R24 K34 ["$TextPrimary"]
  SETTABLEKS R24 R23 K71 ["Color"]
  GETIMPORT R24 K76 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R24 R23 K72 ["ApplyStrokeMode"]
  LOADN R24 1
  SETTABLEKS R24 R23 K73 ["Thickness"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K77 [">> #Tooltip"]
  DUPTABLE R20 K82 [{"Size", "AutomaticSize", "Position", "AnchorPoint", "BackgroundColor3", "BorderSizePixel", "BorderColor3", "TextColor3", "TextSize", "TextWrapped", "TextXAlignment", "ZIndex"}]
  GETIMPORT R21 K17 [UDim2.new]
  LOADN R22 0
  LOADN R23 84
  LOADN R24 0
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K13 ["Size"]
  GETIMPORT R21 K40 [Enum.AutomaticSize.Y]
  SETTABLEKS R21 R20 K36 ["AutomaticSize"]
  GETIMPORT R21 K17 [UDim2.new]
  LOADN R22 1
  LOADN R23 251
  LOADN R24 0
  LOADN R25 1
  CALL R21 4 1
  SETTABLEKS R21 R20 K62 ["Position"]
  GETIMPORT R21 K45 [Vector2.new]
  LOADN R22 1
  LOADN R23 1
  CALL R21 2 1
  SETTABLEKS R21 R20 K78 ["AnchorPoint"]
  LOADK R21 K83 ["$InfoTooltipBackgroundColor"]
  SETTABLEKS R21 R20 K79 ["BackgroundColor3"]
  LOADN R21 1
  SETTABLEKS R21 R20 K37 ["BorderSizePixel"]
  LOADK R21 K34 ["$TextPrimary"]
  SETTABLEKS R21 R20 K47 ["BorderColor3"]
  LOADK R21 K34 ["$TextPrimary"]
  SETTABLEKS R21 R20 K32 ["TextColor3"]
  LOADN R21 14
  SETTABLEKS R21 R20 K63 ["TextSize"]
  LOADB R21 0
  SETTABLEKS R21 R20 K80 ["TextWrapped"]
  GETIMPORT R21 K85 [Enum.TextXAlignment.Left]
  SETTABLEKS R21 R20 K65 ["TextXAlignment"]
  GETTABLEKS R22 R3 K86 ["ZIndexData"]
  GETTABLEKS R21 R22 K87 ["VRCONTROLS_TOOLTIP"]
  SETTABLEKS R21 R20 K81 ["ZIndex"]
  NEWTABLE R21 0 8
  MOVE R22 R2
  LOADK R23 K88 ["::UICorner"]
  DUPTABLE R24 K90 [{"CornerRadius"}]
  GETIMPORT R25 K60 [UDim.new]
  LOADN R26 0
  LOADN R27 5
  CALL R25 2 1
  SETTABLEKS R25 R24 K89 ["CornerRadius"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K70 ["::UIStroke"]
  DUPTABLE R25 K74 [{"Color", "ApplyStrokeMode", "Thickness"}]
  LOADK R26 K34 ["$TextPrimary"]
  SETTABLEKS R26 R25 K71 ["Color"]
  GETIMPORT R26 K76 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R26 R25 K72 ["ApplyStrokeMode"]
  LOADN R26 1
  SETTABLEKS R26 R25 K73 ["Thickness"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K19 ["::UIListLayout"]
  DUPTABLE R26 K92 [{"SortOrder", "HorizontalAlignment", "FillDirection", "Padding"}]
  GETIMPORT R27 K26 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R27 R26 K20 ["SortOrder"]
  GETIMPORT R27 K93 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R27 R26 K21 ["HorizontalAlignment"]
  GETIMPORT R27 K30 [Enum.FillDirection.Vertical]
  SETTABLEKS R27 R26 K22 ["FillDirection"]
  GETIMPORT R27 K60 [UDim.new]
  LOADN R28 0
  LOADN R29 5
  CALL R27 2 1
  SETTABLEKS R27 R26 K91 ["Padding"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K55 ["::UIPadding"]
  DUPTABLE R27 K96 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  LOADK R28 K97 ["$TooltipPadding"]
  SETTABLEKS R28 R27 K56 ["PaddingTop"]
  LOADK R28 K97 ["$TooltipPadding"]
  SETTABLEKS R28 R27 K57 ["PaddingBottom"]
  LOADK R28 K97 ["$TooltipPadding"]
  SETTABLEKS R28 R27 K94 ["PaddingLeft"]
  GETIMPORT R28 K60 [UDim.new]
  LOADN R29 0
  LOADN R30 5
  CALL R28 2 1
  SETTABLEKS R28 R27 K95 ["PaddingRight"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K98 [">> TextLabel"]
  DUPTABLE R28 K99 [{"TextColor3", "TextWrapped", "TextXAlignment", "AutomaticSize", "Size"}]
  LOADK R29 K34 ["$TextPrimary"]
  SETTABLEKS R29 R28 K32 ["TextColor3"]
  LOADB R29 0
  SETTABLEKS R29 R28 K80 ["TextWrapped"]
  GETIMPORT R29 K85 [Enum.TextXAlignment.Left]
  SETTABLEKS R29 R28 K65 ["TextXAlignment"]
  GETIMPORT R29 K40 [Enum.AutomaticSize.Y]
  SETTABLEKS R29 R28 K36 ["AutomaticSize"]
  GETIMPORT R29 K17 [UDim2.new]
  LOADK R30 K100 [0.5]
  LOADN R31 0
  LOADN R32 0
  LOADN R33 0
  CALL R29 4 1
  SETTABLEKS R29 R28 K13 ["Size"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K101 [">> #MouseMapping1"]
  DUPTABLE R29 K102 [{"Size", "TextWrapped"}]
  GETIMPORT R30 K17 [UDim2.new]
  LOADN R31 1
  LOADN R32 0
  LOADN R33 0
  LOADN R34 0
  CALL R30 4 1
  SETTABLEKS R30 R29 K13 ["Size"]
  LOADB R30 0
  SETTABLEKS R30 R29 K80 ["TextWrapped"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K103 [">> #MouseMapping2"]
  DUPTABLE R30 K102 [{"Size", "TextWrapped"}]
  GETIMPORT R31 K17 [UDim2.new]
  LOADN R32 1
  LOADN R33 0
  LOADN R34 0
  LOADN R35 0
  CALL R31 4 1
  SETTABLEKS R31 R30 K13 ["Size"]
  LOADB R31 0
  SETTABLEKS R31 R30 K80 ["TextWrapped"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K104 [">> .Component-VRMappingLabel"]
  DUPTABLE R31 K106 [{"AutomaticSize", "BackgroundTransparency"}]
  GETIMPORT R32 K54 [Enum.AutomaticSize.XY]
  SETTABLEKS R32 R31 K36 ["AutomaticSize"]
  LOADN R32 1
  SETTABLEKS R32 R31 K105 ["BackgroundTransparency"]
  NEWTABLE R32 0 3
  MOVE R33 R2
  LOADK R34 K19 ["::UIListLayout"]
  DUPTABLE R35 K107 [{"SortOrder", "HorizontalAlignment", "FillDirection", "Padding", "TextWrapped"}]
  GETIMPORT R36 K26 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R36 R35 K20 ["SortOrder"]
  GETIMPORT R36 K93 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R36 R35 K21 ["HorizontalAlignment"]
  GETIMPORT R36 K109 [Enum.FillDirection.Horizontal]
  SETTABLEKS R36 R35 K22 ["FillDirection"]
  GETIMPORT R36 K60 [UDim.new]
  LOADN R37 0
  LOADN R38 5
  CALL R36 2 1
  SETTABLEKS R36 R35 K91 ["Padding"]
  LOADB R36 1
  SETTABLEKS R36 R35 K80 ["TextWrapped"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K110 [">> #LeftText"]
  DUPTABLE R36 K14 [{"Size"}]
  GETIMPORT R37 K17 [UDim2.new]
  LOADK R38 K111 [0.4]
  LOADN R39 0
  LOADN R40 0
  LOADN R41 0
  CALL R37 4 1
  SETTABLEKS R37 R36 K13 ["Size"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K112 [">> #RightText"]
  DUPTABLE R37 K33 [{"TextColor3"}]
  LOADK R38 K113 ["$TextSecondary"]
  SETTABLEKS R38 R37 K32 ["TextColor3"]
  CALL R35 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
