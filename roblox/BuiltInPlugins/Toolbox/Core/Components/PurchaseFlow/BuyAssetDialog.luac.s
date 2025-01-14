PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Localization"]
  NAMECALL R1 R1 K1 ["use"]
  CALL R1 1 1
  GETUPVAL R2 1
  NAMECALL R2 R2 K1 ["use"]
  CALL R2 1 1
  GETTABLEKS R3 R0 K2 ["CreatorName"]
  GETTABLEKS R4 R0 K3 ["Name"]
  GETTABLEKS R5 R0 K4 ["OnButtonClicked"]
  GETTABLEKS R6 R0 K5 ["OnClose"]
  GETTABLEKS R7 R0 K6 ["Price"]
  GETTABLEKS R8 R0 K7 ["Thumbnail"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K8 ["new"]
  CALL R9 0 1
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K9 ["IMAGE_SIZE"]
  GETTABLEKS R12 R13 K10 ["X"]
  GETTABLEKS R11 R12 K11 ["Offset"]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K12 ["PROMPT_SIZE"]
  GETTABLEKS R13 R14 K10 ["X"]
  GETTABLEKS R12 R13 K11 ["Offset"]
  ADD R10 R11 R12
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K12 ["PROMPT_SIZE"]
  GETTABLEKS R13 R14 K13 ["Y"]
  GETTABLEKS R12 R13 K11 ["Offset"]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K14 ["BALANCE_SIZE"]
  GETTABLEKS R14 R15 K13 ["Y"]
  GETTABLEKS R13 R14 K11 ["Offset"]
  ADD R11 R12 R13
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K15 ["createElement"]
  GETUPVAL R13 5
  DUPTABLE R14 K20 [{"Buttons", "MinContentSize", "OnButtonPressed", "OnClose", "Title"}]
  NEWTABLE R15 0 2
  DUPTABLE R16 K23 [{"Key", "Text"}]
  LOADB R17 0
  SETTABLEKS R17 R16 K21 ["Key"]
  LOADK R19 K24 ["Purchase"]
  LOADK R20 K25 ["Cancel"]
  NAMECALL R17 R1 K26 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K22 ["Text"]
  DUPTABLE R17 K28 [{"Key", "Style", "Text"}]
  LOADB R18 1
  SETTABLEKS R18 R17 K21 ["Key"]
  LOADK R18 K29 ["RoundPrimary"]
  SETTABLEKS R18 R17 K27 ["Style"]
  LOADK R20 K24 ["Purchase"]
  LOADK R21 K30 ["Buy"]
  NAMECALL R18 R1 K26 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K22 ["Text"]
  SETLIST R15 R16 2 [1]
  SETTABLEKS R15 R14 K16 ["Buttons"]
  GETIMPORT R15 K32 [Vector2.new]
  MOVE R16 R10
  MOVE R17 R11
  CALL R15 2 1
  SETTABLEKS R15 R14 K17 ["MinContentSize"]
  SETTABLEKS R5 R14 K18 ["OnButtonPressed"]
  SETTABLEKS R6 R14 K5 ["OnClose"]
  LOADK R17 K24 ["Purchase"]
  LOADK R18 K33 ["BuyTitle"]
  NAMECALL R15 R1 K26 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K19 ["Title"]
  DUPTABLE R15 K35 [{"Container"}]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K15 ["createElement"]
  GETUPVAL R17 6
  DUPTABLE R18 K41 [{"AutomaticSize", "Layout", "LayoutOrder", "Spacing", "VerticalAlignment"}]
  GETIMPORT R19 K44 [Enum.AutomaticSize.XY]
  SETTABLEKS R19 R18 K36 ["AutomaticSize"]
  GETIMPORT R19 K47 [Enum.FillDirection.Horizontal]
  SETTABLEKS R19 R18 K37 ["Layout"]
  GETTABLEKS R19 R0 K38 ["LayoutOrder"]
  SETTABLEKS R19 R18 K38 ["LayoutOrder"]
  LOADN R19 12
  SETTABLEKS R19 R18 K39 ["Spacing"]
  GETIMPORT R19 K49 [Enum.VerticalAlignment.Top]
  SETTABLEKS R19 R18 K40 ["VerticalAlignment"]
  DUPTABLE R19 K51 [{"Thumbnail", "Prompt"}]
  GETUPVAL R21 4
  GETTABLEKS R20 R21 K15 ["createElement"]
  LOADK R21 K52 ["ImageLabel"]
  DUPTABLE R22 K56 [{"BackgroundTransparency", "Image", "LayoutOrder", "Size"}]
  LOADN R23 1
  SETTABLEKS R23 R22 K53 ["BackgroundTransparency"]
  SETTABLEKS R8 R22 K54 ["Image"]
  NAMECALL R23 R9 K57 ["getNextOrder"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K38 ["LayoutOrder"]
  GETUPVAL R24 3
  GETTABLEKS R23 R24 K9 ["IMAGE_SIZE"]
  SETTABLEKS R23 R22 K55 ["Size"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K7 ["Thumbnail"]
  GETUPVAL R21 4
  GETTABLEKS R20 R21 K15 ["createElement"]
  GETUPVAL R21 7
  DUPTABLE R22 K62 [{"AutomaticSize", "Size", "LayoutOrder", "Text", "TextColor", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
  GETIMPORT R23 K63 [Enum.AutomaticSize.Y]
  SETTABLEKS R23 R22 K36 ["AutomaticSize"]
  GETIMPORT R23 K65 [UDim2.new]
  LOADN R24 0
  GETUPVAL R28 3
  GETTABLEKS R27 R28 K12 ["PROMPT_SIZE"]
  GETTABLEKS R26 R27 K10 ["X"]
  GETTABLEKS R25 R26 K11 ["Offset"]
  LOADN R26 0
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K55 ["Size"]
  NAMECALL R23 R9 K57 ["getNextOrder"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K38 ["LayoutOrder"]
  LOADK R25 K24 ["Purchase"]
  LOADK R26 K66 ["FiatBuyPrompt"]
  DUPTABLE R27 K70 [{"name", "creator", "price"}]
  SETTABLEKS R4 R27 K67 ["name"]
  SETTABLEKS R3 R27 K68 ["creator"]
  SETTABLEKS R7 R27 K69 ["price"]
  NAMECALL R23 R1 K26 ["getText"]
  CALL R23 4 1
  SETTABLEKS R23 R22 K22 ["Text"]
  GETTABLEKS R24 R2 K71 ["purchaseDialog"]
  GETTABLEKS R23 R24 K72 ["promptText"]
  SETTABLEKS R23 R22 K58 ["TextColor"]
  LOADB R23 1
  SETTABLEKS R23 R22 K59 ["TextWrapped"]
  GETIMPORT R23 K74 [Enum.TextXAlignment.Left]
  SETTABLEKS R23 R22 K60 ["TextXAlignment"]
  GETIMPORT R23 K75 [Enum.TextYAlignment.Top]
  SETTABLEKS R23 R22 K61 ["TextYAlignment"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K50 ["Prompt"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K34 ["Container"]
  CALL R12 3 -1
  RETURN R12 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Packages"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["UI"]
  GETTABLEKS R6 R3 K9 ["UI"]
  GETTABLEKS R5 R6 K10 ["Pane"]
  GETTABLEKS R6 R4 K11 ["StyledDialog"]
  GETTABLEKS R7 R4 K12 ["TextLabel"]
  GETIMPORT R8 K6 [require]
  GETTABLEKS R12 R0 K13 ["Core"]
  GETTABLEKS R11 R12 K14 ["Components"]
  GETTABLEKS R10 R11 K15 ["PurchaseFlow"]
  GETTABLEKS R9 R10 K16 ["PurchaseDialog"]
  CALL R8 1 1
  GETTABLEKS R10 R0 K13 ["Core"]
  GETTABLEKS R9 R10 K17 ["Util"]
  GETIMPORT R10 K6 [require]
  GETTABLEKS R11 R9 K18 ["Constants"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETTABLEKS R12 R9 K19 ["LayoutOrderIterator"]
  CALL R11 1 1
  GETTABLEKS R12 R10 K20 ["Dialog"]
  GETTABLEKS R14 R3 K21 ["ContextServices"]
  GETTABLEKS R13 R14 K22 ["Stylizer"]
  GETTABLEKS R14 R3 K21 ["ContextServices"]
  GETTABLEKS R15 R14 K23 ["withContext"]
  GETIMPORT R16 K6 [require]
  GETTABLEKS R19 R0 K13 ["Core"]
  GETTABLEKS R18 R19 K24 ["Types"]
  GETTABLEKS R17 R18 K25 ["MarketplaceFiatServiceTypes"]
  CALL R16 1 1
  DUPCLOSURE R17 K26 [PROTO_0]
  CAPTURE VAL R14
  CAPTURE VAL R13
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R7
  RETURN R17 1
