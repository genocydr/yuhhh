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
  LOADK R5 K13 [".Component-WidgetBody"]
  DUPTABLE R6 K17 [{"BorderSizePixel", "TextColor3", "Size"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K14 ["BorderSizePixel"]
  LOADK R7 K18 ["$TextPrimary"]
  SETTABLEKS R7 R6 K15 ["TextColor3"]
  GETIMPORT R7 K21 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 1
  LOADN R11 0
  CALL R7 4 1
  SETTABLEKS R7 R6 K16 ["Size"]
  NEWTABLE R7 0 3
  MOVE R8 R2
  LOADK R9 K22 [":: UIListLayout"]
  DUPTABLE R10 K27 [{"FillDirection", "VerticalFlex", "SortOrder", "ItemLineAlignment"}]
  GETIMPORT R11 K30 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K23 ["FillDirection"]
  GETIMPORT R11 K33 [Enum.UIFlexAlignment.None]
  SETTABLEKS R11 R10 K24 ["VerticalFlex"]
  GETIMPORT R11 K35 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R11 R10 K25 ["SortOrder"]
  GETIMPORT R11 K37 [Enum.ItemLineAlignment.Start]
  SETTABLEKS R11 R10 K26 ["ItemLineAlignment"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K38 ["> .ResultsLine"]
  DUPTABLE R11 K41 [{"BackgroundTransparency", "Size", "BackgroundColor3"}]
  LOADN R12 0
  SETTABLEKS R12 R11 K39 ["BackgroundTransparency"]
  GETIMPORT R12 K21 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  GETTABLEKS R16 R3 K42 ["widgetHeaderLineHeight"]
  CALL R12 4 1
  SETTABLEKS R12 R11 K16 ["Size"]
  LOADK R12 K43 ["$ForegroundContrast"]
  SETTABLEKS R12 R11 K40 ["BackgroundColor3"]
  NEWTABLE R12 0 2
  MOVE R13 R2
  LOADK R14 K44 ["::UIListLayout"]
  DUPTABLE R15 K47 [{"FillDirection", "SortOrder", "HorizontalAlignment", "VerticalAlignment"}]
  GETIMPORT R16 K49 [Enum.FillDirection.Horizontal]
  SETTABLEKS R16 R15 K23 ["FillDirection"]
  GETIMPORT R16 K35 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R16 R15 K25 ["SortOrder"]
  GETIMPORT R16 K51 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R16 R15 K45 ["HorizontalAlignment"]
  GETIMPORT R16 K53 [Enum.VerticalAlignment.Center]
  SETTABLEKS R16 R15 K46 ["VerticalAlignment"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K54 ["> .ResultsText"]
  DUPTABLE R16 K57 [{"BackgroundColor3", "TextColor3", "TextXAlignment", "TextSize"}]
  LOADK R17 K58 ["$BackgroundDefault"]
  SETTABLEKS R17 R16 K40 ["BackgroundColor3"]
  LOADK R17 K59 ["$TextSecondary"]
  SETTABLEKS R17 R16 K15 ["TextColor3"]
  GETIMPORT R17 K60 [Enum.TextXAlignment.Left]
  SETTABLEKS R17 R16 K55 ["TextXAlignment"]
  GETTABLEKS R17 R3 K61 ["labelTextSize"]
  SETTABLEKS R17 R16 K56 ["TextSize"]
  NEWTABLE R17 0 2
  MOVE R18 R2
  LOADK R19 K62 ["::UIPadding"]
  DUPTABLE R20 K65 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R21 K67 [UDim.new]
  LOADN R22 0
  LOADN R23 15
  CALL R21 2 1
  SETTABLEKS R21 R20 K63 ["PaddingLeft"]
  GETIMPORT R21 K67 [UDim.new]
  LOADN R22 0
  LOADN R23 10
  CALL R21 2 1
  SETTABLEKS R21 R20 K64 ["PaddingRight"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K68 ["::UIFlexItem"]
  DUPTABLE R21 K70 [{"FlexMode"}]
  GETIMPORT R22 K73 [Enum.UIFlexMode.Fill]
  SETTABLEKS R22 R21 K69 ["FlexMode"]
  CALL R19 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K74 [".ResultsTree"]
  DUPTABLE R12 K75 [{"BackgroundColor3", "BorderSizePixel", "BackgroundTransparency"}]
  LOADK R13 K58 ["$BackgroundDefault"]
  SETTABLEKS R13 R12 K40 ["BackgroundColor3"]
  LOADN R13 0
  SETTABLEKS R13 R12 K14 ["BorderSizePixel"]
  LOADN R13 0
  SETTABLEKS R13 R12 K39 ["BackgroundTransparency"]
  CALL R10 2 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
