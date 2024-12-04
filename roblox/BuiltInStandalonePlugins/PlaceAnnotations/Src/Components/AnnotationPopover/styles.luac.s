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
  MOVE R3 R2
  LOADK R4 K9 [".Component-AnnotationPopover"]
  NEWTABLE R5 0 0
  NEWTABLE R6 0 2
  MOVE R7 R2
  LOADK R8 K10 ["> #Header"]
  DUPTABLE R9 K14 [{"BackgroundTransparency", "Size", "AutomaticSize"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K11 ["BackgroundTransparency"]
  GETIMPORT R10 K17 [UDim2.fromScale]
  LOADN R11 1
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K12 ["Size"]
  GETIMPORT R10 K20 [Enum.AutomaticSize.Y]
  SETTABLEKS R10 R9 K13 ["AutomaticSize"]
  NEWTABLE R10 0 3
  MOVE R11 R2
  LOADK R12 K21 ["::UIPadding"]
  DUPTABLE R13 K24 [{"PaddingTop", "PaddingBottom"}]
  GETIMPORT R14 K27 [UDim.new]
  LOADN R15 0
  LOADN R16 10
  CALL R14 2 1
  SETTABLEKS R14 R13 K22 ["PaddingTop"]
  GETIMPORT R14 K27 [UDim.new]
  LOADN R15 0
  LOADN R16 8
  CALL R14 2 1
  SETTABLEKS R14 R13 K23 ["PaddingBottom"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K28 ["::UIListLayout"]
  DUPTABLE R14 K33 [{"FillDirection", "HorizontalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R15 K35 [Enum.FillDirection.Vertical]
  SETTABLEKS R15 R14 K29 ["FillDirection"]
  GETIMPORT R15 K37 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R15 R14 K30 ["HorizontalAlignment"]
  GETIMPORT R15 K39 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R15 R14 K31 ["SortOrder"]
  GETIMPORT R15 K27 [UDim.new]
  LOADN R16 0
  LOADN R17 20
  CALL R15 2 1
  SETTABLEKS R15 R14 K32 ["Padding"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K40 ["> #Navigation"]
  DUPTABLE R15 K41 [{"BackgroundTransparency", "Size"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K11 ["BackgroundTransparency"]
  GETIMPORT R16 K42 [UDim2.new]
  LOADN R17 1
  LOADN R18 246
  LOADN R19 0
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K12 ["Size"]
  NEWTABLE R16 0 4
  MOVE R17 R2
  LOADK R18 K43 ["> TextLabel"]
  DUPTABLE R19 K52 [{"TextColor3", "AutomaticSize", "Size", "Font", "AnchorPoint", "Position", "BackgroundTransparency", "TextSize", "TextXAlignment", "TextTruncate", "TextWrapped"}]
  LOADK R20 K53 ["$TextPrimary"]
  SETTABLEKS R20 R19 K44 ["TextColor3"]
  GETIMPORT R20 K20 [Enum.AutomaticSize.Y]
  SETTABLEKS R20 R19 K13 ["AutomaticSize"]
  GETIMPORT R20 K42 [UDim2.new]
  LOADN R21 1
  LOADN R22 200
  LOADN R23 0
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K12 ["Size"]
  LOADK R20 K54 ["$FontBold"]
  SETTABLEKS R20 R19 K45 ["Font"]
  GETIMPORT R20 K56 [Vector2.new]
  LOADN R21 0
  LOADK R22 K57 [0.5]
  CALL R20 2 1
  SETTABLEKS R20 R19 K46 ["AnchorPoint"]
  GETIMPORT R20 K17 [UDim2.fromScale]
  LOADN R21 0
  LOADK R22 K57 [0.5]
  CALL R20 2 1
  SETTABLEKS R20 R19 K47 ["Position"]
  LOADN R20 1
  SETTABLEKS R20 R19 K11 ["BackgroundTransparency"]
  LOADK R20 K58 ["$FontSizeM"]
  SETTABLEKS R20 R19 K48 ["TextSize"]
  GETIMPORT R20 K60 [Enum.TextXAlignment.Left]
  SETTABLEKS R20 R19 K49 ["TextXAlignment"]
  GETIMPORT R20 K62 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R20 R19 K50 ["TextTruncate"]
  LOADB R20 0
  SETTABLEKS R20 R19 K51 ["TextWrapped"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K63 [">> ImageButton"]
  DUPTABLE R20 K65 [{"AnchorPoint", "BackgroundTransparency", "BorderSizePixel"}]
  GETIMPORT R21 K56 [Vector2.new]
  LOADN R22 0
  LOADK R23 K57 [0.5]
  CALL R21 2 1
  SETTABLEKS R21 R20 K46 ["AnchorPoint"]
  LOADN R21 1
  SETTABLEKS R21 R20 K11 ["BackgroundTransparency"]
  LOADN R21 0
  SETTABLEKS R21 R20 K64 ["BorderSizePixel"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K66 ["> #MoreIcon"]
  DUPTABLE R21 K68 [{"Image", "Size", "Position"}]
  LOADK R22 K69 ["$MoreIcon"]
  SETTABLEKS R22 R21 K67 ["Image"]
  GETIMPORT R22 K71 [UDim2.fromOffset]
  LOADN R23 16
  LOADN R24 16
  CALL R22 2 1
  SETTABLEKS R22 R21 K12 ["Size"]
  GETIMPORT R22 K42 [UDim2.new]
  LOADN R23 1
  LOADN R24 204
  LOADK R25 K57 [0.5]
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K47 ["Position"]
  NEWTABLE R22 0 2
  MOVE R23 R2
  LOADK R24 K72 [":hover"]
  DUPTABLE R25 K74 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADN R26 0
  SETTABLEKS R26 R25 K11 ["BackgroundTransparency"]
  LOADK R26 K75 ["$ResolveIconBase"]
  SETTABLEKS R26 R25 K73 ["BackgroundColor3"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K76 [":pressed"]
  DUPTABLE R26 K74 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADN R27 0
  SETTABLEKS R27 R26 K11 ["BackgroundTransparency"]
  LOADK R27 K77 ["$ResolveIconSelected"]
  SETTABLEKS R27 R26 K73 ["BackgroundColor3"]
  CALL R24 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K78 ["> #ResolveButton"]
  DUPTABLE R22 K79 [{"Position", "AnchorPoint"}]
  GETIMPORT R23 K42 [UDim2.new]
  LOADN R24 1
  LOADN R25 0
  LOADK R26 K57 [0.5]
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K47 ["Position"]
  GETIMPORT R23 K56 [Vector2.new]
  LOADN R24 1
  LOADK R25 K57 [0.5]
  CALL R23 2 1
  SETTABLEKS R23 R22 K46 ["AnchorPoint"]
  CALL R20 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K80 ["> #ReplyError"]
  DUPTABLE R10 K14 [{"BackgroundTransparency", "Size", "AutomaticSize"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K11 ["BackgroundTransparency"]
  GETIMPORT R11 K17 [UDim2.fromScale]
  LOADN R12 1
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K12 ["Size"]
  GETIMPORT R11 K20 [Enum.AutomaticSize.Y]
  SETTABLEKS R11 R10 K13 ["AutomaticSize"]
  NEWTABLE R11 0 1
  MOVE R12 R2
  LOADK R13 K21 ["::UIPadding"]
  DUPTABLE R14 K82 [{"PaddingLeft"}]
  GETIMPORT R15 K27 [UDim.new]
  LOADN R16 0
  LOADN R17 42
  CALL R15 2 1
  SETTABLEKS R15 R14 K81 ["PaddingLeft"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
