MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["FindReplaceAll"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["Resources"]
  GETTABLEKS R4 R5 K12 ["StyleConstants"]
  CALL R3 1 1
  MOVE R4 R2
  LOADK R5 K13 [".Component-WidgetHeader"]
  DUPTABLE R6 K19 [{"BackgroundColor3", "BorderSizePixel", "TextColor3", "Size", "TextSize"}]
  LOADK R7 K20 ["$ForegroundContrast"]
  SETTABLEKS R7 R6 K14 ["BackgroundColor3"]
  LOADN R7 0
  SETTABLEKS R7 R6 K15 ["BorderSizePixel"]
  LOADK R7 K21 ["$TextPrimary"]
  SETTABLEKS R7 R6 K16 ["TextColor3"]
  GETIMPORT R7 K24 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  GETTABLEKS R11 R3 K25 ["widgetHeaderHeight"]
  CALL R7 4 1
  SETTABLEKS R7 R6 K17 ["Size"]
  GETTABLEKS R7 R3 K26 ["inputTextSize"]
  SETTABLEKS R7 R6 K18 ["TextSize"]
  NEWTABLE R7 0 4
  MOVE R8 R2
  LOADK R9 K27 [":: UIListLayout"]
  DUPTABLE R10 K33 [{"Padding", "FillDirection", "VerticalFlex", "SortOrder", "ItemLineAlignment"}]
  GETIMPORT R11 K35 [UDim.new]
  LOADN R12 0
  LOADN R13 5
  CALL R11 2 1
  SETTABLEKS R11 R10 K28 ["Padding"]
  GETIMPORT R11 K38 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K29 ["FillDirection"]
  GETIMPORT R11 K41 [Enum.UIFlexAlignment.None]
  SETTABLEKS R11 R10 K30 ["VerticalFlex"]
  GETIMPORT R11 K43 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R11 R10 K31 ["SortOrder"]
  GETIMPORT R11 K45 [Enum.ItemLineAlignment.Start]
  SETTABLEKS R11 R10 K32 ["ItemLineAlignment"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K46 ["> .FindLine"]
  DUPTABLE R11 K48 [{"Position", "Size"}]
  GETIMPORT R12 K24 [UDim2.new]
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K47 ["Position"]
  GETIMPORT R12 K24 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  GETTABLEKS R16 R3 K49 ["widgetHeaderLineHeight"]
  CALL R12 4 1
  SETTABLEKS R12 R11 K17 ["Size"]
  NEWTABLE R12 0 13
  MOVE R13 R2
  LOADK R14 K50 ["::UIListLayout"]
  DUPTABLE R15 K53 [{"FillDirection", "Padding", "SortOrder", "HorizontalAlignment", "VerticalAlignment"}]
  GETIMPORT R16 K55 [Enum.FillDirection.Horizontal]
  SETTABLEKS R16 R15 K29 ["FillDirection"]
  GETIMPORT R16 K35 [UDim.new]
  LOADN R17 0
  LOADN R18 7
  CALL R16 2 1
  SETTABLEKS R16 R15 K28 ["Padding"]
  GETIMPORT R16 K43 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R16 R15 K31 ["SortOrder"]
  GETIMPORT R16 K57 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R16 R15 K51 ["HorizontalAlignment"]
  GETIMPORT R16 K59 [Enum.VerticalAlignment.Center]
  SETTABLEKS R16 R15 K52 ["VerticalAlignment"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K60 ["::UIPadding"]
  DUPTABLE R16 K64 [{"PaddingLeft", "PaddingRight", "PaddingTop"}]
  GETIMPORT R17 K35 [UDim.new]
  LOADN R18 0
  LOADN R19 5
  CALL R17 2 1
  SETTABLEKS R17 R16 K61 ["PaddingLeft"]
  GETIMPORT R17 K35 [UDim.new]
  LOADN R18 0
  LOADN R19 10
  CALL R17 2 1
  SETTABLEKS R17 R16 K62 ["PaddingRight"]
  GETIMPORT R17 K35 [UDim.new]
  LOADN R18 0
  LOADN R19 10
  CALL R17 2 1
  SETTABLEKS R17 R16 K63 ["PaddingTop"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K65 ["> .CheckButton ::UIPadding, > .ToggleButton ::UIPadding"]
  DUPTABLE R17 K66 [{"PaddingLeft"}]
  GETIMPORT R18 K35 [UDim.new]
  LOADN R19 0
  LOADN R20 5
  CALL R18 2 1
  SETTABLEKS R18 R17 K61 ["PaddingLeft"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K67 ["> .ToggleButton >> ImageButton, > .PushButton >> ImageButton"]
  DUPTABLE R18 K68 [{"BackgroundColor3"}]
  LOADK R19 K20 ["$ForegroundContrast"]
  SETTABLEKS R19 R18 K14 ["BackgroundColor3"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K69 ["> #ToggleShowReplaceButton >> ImageButton"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 2
  MOVE R21 R2
  LOADK R22 K70 [".Checked"]
  DUPTABLE R23 K72 [{"Image"}]
  LOADK R24 K73 ["$CollapseReplaceInput"]
  SETTABLEKS R24 R23 K71 ["Image"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K74 [".Unchecked"]
  DUPTABLE R24 K72 [{"Image"}]
  LOADK R25 K75 ["$ExpandReplaceInput"]
  SETTABLEKS R25 R24 K71 ["Image"]
  CALL R22 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K76 ["> .SearchBar"]
  DUPTABLE R20 K78 [{"BackgroundColor3", "TextColor3", "Height"}]
  LOADK R21 K79 ["$BackgroundDefault"]
  SETTABLEKS R21 R20 K14 ["BackgroundColor3"]
  LOADK R21 K21 ["$TextPrimary"]
  SETTABLEKS R21 R20 K16 ["TextColor3"]
  GETTABLEKS R21 R3 K49 ["widgetHeaderLineHeight"]
  SETTABLEKS R21 R20 K77 ["Height"]
  NEWTABLE R21 0 2
  MOVE R22 R2
  LOADK R23 K60 ["::UIPadding"]
  DUPTABLE R24 K80 [{"PaddingRight"}]
  GETIMPORT R25 K35 [UDim.new]
  LOADN R26 0
  LOADN R27 5
  CALL R25 2 1
  SETTABLEKS R25 R24 K62 ["PaddingRight"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K81 ["::UIFlexItem"]
  DUPTABLE R25 K83 [{"FlexMode"}]
  GETIMPORT R26 K86 [Enum.UIFlexMode.Fill]
  SETTABLEKS R26 R25 K82 ["FlexMode"]
  CALL R23 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K87 ["> .CheckButton >> ImageButton"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 2
  MOVE R23 R2
  LOADK R24 K70 [".Checked"]
  DUPTABLE R25 K68 [{"BackgroundColor3"}]
  LOADK R26 K88 ["$ForegroundMain"]
  SETTABLEKS R26 R25 K14 ["BackgroundColor3"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K74 [".Unchecked"]
  DUPTABLE R26 K68 [{"BackgroundColor3"}]
  LOADK R27 K20 ["$ForegroundContrast"]
  SETTABLEKS R27 R26 K14 ["BackgroundColor3"]
  CALL R24 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K89 ["> #MatchCaseCheckButton >> ImageButton"]
  DUPTABLE R22 K72 [{"Image"}]
  LOADK R23 K90 ["$MatchCase"]
  SETTABLEKS R23 R22 K71 ["Image"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K91 ["> #MatchWholeWordCheckButton >> ImageButton"]
  DUPTABLE R23 K72 [{"Image"}]
  LOADK R24 K92 ["$MatchWholeWord"]
  SETTABLEKS R24 R23 K71 ["Image"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K93 ["> #MatchRegExCheckButton >> ImageButton"]
  DUPTABLE R24 K72 [{"Image"}]
  LOADK R25 K94 ["$RegularExpression"]
  SETTABLEKS R25 R24 K71 ["Image"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K95 ["> #FindPreviousButton >> ImageButton"]
  DUPTABLE R25 K72 [{"Image"}]
  LOADK R26 K96 ["$FindPrevious"]
  SETTABLEKS R26 R25 K71 ["Image"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K97 ["> #FindNextButton >> ImageButton"]
  DUPTABLE R26 K72 [{"Image"}]
  LOADK R27 K98 ["$FindNext"]
  SETTABLEKS R27 R26 K71 ["Image"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K99 ["> #ToggleFilterButton >> ImageButton"]
  DUPTABLE R27 K72 [{"Image"}]
  LOADK R28 K100 ["$Filter"]
  SETTABLEKS R28 R27 K71 ["Image"]
  CALL R25 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K101 ["> .ReplaceLine"]
  DUPTABLE R12 K102 [{"Size"}]
  GETIMPORT R13 K24 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  GETTABLEKS R17 R3 K49 ["widgetHeaderLineHeight"]
  CALL R13 4 1
  SETTABLEKS R13 R12 K17 ["Size"]
  NEWTABLE R13 0 4
  MOVE R14 R2
  LOADK R15 K50 ["::UIListLayout"]
  DUPTABLE R16 K103 [{"FillDirection", "SortOrder", "HorizontalAlignment", "VerticalAlignment"}]
  GETIMPORT R17 K55 [Enum.FillDirection.Horizontal]
  SETTABLEKS R17 R16 K29 ["FillDirection"]
  GETIMPORT R17 K43 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R17 R16 K31 ["SortOrder"]
  GETIMPORT R17 K57 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R17 R16 K51 ["HorizontalAlignment"]
  GETIMPORT R17 K59 [Enum.VerticalAlignment.Center]
  SETTABLEKS R17 R16 K52 ["VerticalAlignment"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K60 ["::UIPadding"]
  DUPTABLE R17 K105 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R18 K35 [UDim.new]
  LOADN R19 0
  LOADN R20 30
  CALL R18 2 1
  SETTABLEKS R18 R17 K61 ["PaddingLeft"]
  GETIMPORT R18 K35 [UDim.new]
  LOADN R19 0
  LOADN R20 10
  CALL R18 2 1
  SETTABLEKS R18 R17 K62 ["PaddingRight"]
  GETIMPORT R18 K35 [UDim.new]
  LOADN R19 0
  LOADN R20 10
  CALL R18 2 1
  SETTABLEKS R18 R17 K63 ["PaddingTop"]
  GETIMPORT R18 K35 [UDim.new]
  LOADN R19 0
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K104 ["PaddingBottom"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K106 ["> .ReplaceInput"]
  DUPTABLE R18 K107 [{"BackgroundColor3", "TextColor3"}]
  LOADK R19 K79 ["$BackgroundDefault"]
  SETTABLEKS R19 R18 K14 ["BackgroundColor3"]
  LOADK R19 K21 ["$TextPrimary"]
  SETTABLEKS R19 R18 K16 ["TextColor3"]
  NEWTABLE R19 0 2
  MOVE R20 R2
  LOADK R21 K60 ["::UIPadding"]
  DUPTABLE R22 K80 [{"PaddingRight"}]
  GETIMPORT R23 K35 [UDim.new]
  LOADN R24 0
  LOADN R25 5
  CALL R23 2 1
  SETTABLEKS R23 R22 K62 ["PaddingRight"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K81 ["::UIFlexItem"]
  DUPTABLE R23 K83 [{"FlexMode"}]
  GETIMPORT R24 K86 [Enum.UIFlexMode.Fill]
  SETTABLEKS R24 R23 K82 ["FlexMode"]
  CALL R21 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K108 ["> .Compact"]
  DUPTABLE R19 K68 [{"BackgroundColor3"}]
  LOADK R20 K20 ["$ForegroundContrast"]
  SETTABLEKS R20 R19 K14 ["BackgroundColor3"]
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K60 ["::UIPadding"]
  DUPTABLE R23 K66 [{"PaddingLeft"}]
  GETIMPORT R24 K35 [UDim.new]
  LOADN R25 0
  LOADN R26 10
  CALL R24 2 1
  SETTABLEKS R24 R23 K61 ["PaddingLeft"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K109 ["> .FilterLine"]
  DUPTABLE R13 K102 [{"Size"}]
  GETIMPORT R14 K24 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 0
  LOADN R19 2
  GETTABLEKS R20 R3 K49 ["widgetHeaderLineHeight"]
  MUL R18 R19 R20
  CALL R14 4 1
  SETTABLEKS R14 R13 K17 ["Size"]
  NEWTABLE R14 0 4
  MOVE R15 R2
  LOADK R16 K50 ["::UIListLayout"]
  DUPTABLE R17 K103 [{"FillDirection", "SortOrder", "HorizontalAlignment", "VerticalAlignment"}]
  GETIMPORT R18 K38 [Enum.FillDirection.Vertical]
  SETTABLEKS R18 R17 K29 ["FillDirection"]
  GETIMPORT R18 K43 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R18 R17 K31 ["SortOrder"]
  GETIMPORT R18 K57 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R18 R17 K51 ["HorizontalAlignment"]
  GETIMPORT R18 K59 [Enum.VerticalAlignment.Center]
  SETTABLEKS R18 R17 K52 ["VerticalAlignment"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K60 ["::UIPadding"]
  DUPTABLE R18 K105 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R19 K35 [UDim.new]
  LOADN R20 0
  LOADN R21 5
  CALL R19 2 1
  SETTABLEKS R19 R18 K61 ["PaddingLeft"]
  GETIMPORT R19 K35 [UDim.new]
  LOADN R20 0
  LOADN R21 5
  CALL R19 2 1
  SETTABLEKS R19 R18 K62 ["PaddingRight"]
  GETIMPORT R19 K35 [UDim.new]
  LOADN R20 0
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K63 ["PaddingTop"]
  GETIMPORT R19 K35 [UDim.new]
  LOADN R20 0
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K104 ["PaddingBottom"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K110 ["> .FilterLabel"]
  DUPTABLE R19 K112 [{"Size", "TextXAlignment", "TextSize", "TextColor3"}]
  GETIMPORT R20 K24 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 0
  GETTABLEKS R24 R3 K49 ["widgetHeaderLineHeight"]
  CALL R20 4 1
  SETTABLEKS R20 R19 K17 ["Size"]
  GETIMPORT R20 K113 [Enum.TextXAlignment.Left]
  SETTABLEKS R20 R19 K111 ["TextXAlignment"]
  GETTABLEKS R20 R3 K114 ["labelTextSize"]
  SETTABLEKS R20 R19 K18 ["TextSize"]
  LOADK R20 K115 ["$TextSecondary"]
  SETTABLEKS R20 R19 K16 ["TextColor3"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K116 ["> .FilterInput"]
  DUPTABLE R20 K117 [{"BackgroundColor3", "TextColor3", "Size"}]
  LOADK R21 K79 ["$BackgroundDefault"]
  SETTABLEKS R21 R20 K14 ["BackgroundColor3"]
  LOADK R21 K21 ["$TextPrimary"]
  SETTABLEKS R21 R20 K16 ["TextColor3"]
  GETIMPORT R21 K24 [UDim2.new]
  LOADN R22 1
  LOADN R23 0
  LOADN R24 0
  GETTABLEKS R25 R3 K49 ["widgetHeaderLineHeight"]
  CALL R21 4 1
  SETTABLEKS R21 R20 K17 ["Size"]
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K118 [">> TextBox"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K81 ["::UIFlexItem"]
  DUPTABLE R28 K83 [{"FlexMode"}]
  GETIMPORT R29 K86 [Enum.UIFlexMode.Fill]
  SETTABLEKS R29 R28 K82 ["FlexMode"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
