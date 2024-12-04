PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["ActivateAsync"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Util"]
  GETTABLEKS R1 R2 K1 ["StudioUri"]
  GETTABLEKS R0 R1 K2 ["fromAction"]
  LOADK R1 K3 ["MeshImporter"]
  LOADK R2 K4 ["Toggle"]
  CALL R0 2 1
  GETUPVAL R1 1
  LOADK R3 K5 ["Actions"]
  NAMECALL R1 R1 K6 ["GetPluginComponent"]
  CALL R1 2 1
  GETIMPORT R2 K9 [task.spawn]
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  CALL R2 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["ContextServices"]
  GETTABLEKS R0 R1 K1 ["Localization"]
  NAMECALL R0 R0 K2 ["use"]
  CALL R0 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["ContextServices"]
  GETTABLEKS R1 R2 K3 ["Stylizer"]
  LOADK R3 K4 ["SimpleSelectScreen"]
  NAMECALL R1 R1 K2 ["use"]
  CALL R1 2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["Util"]
  GETTABLEKS R3 R4 K6 ["LayoutOrderIterator"]
  GETTABLEKS R2 R3 K7 ["new"]
  CALL R2 0 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["ContextServices"]
  GETTABLEKS R3 R4 K8 ["Plugin"]
  NAMECALL R3 R3 K2 ["use"]
  CALL R3 1 1
  NAMECALL R3 R3 K9 ["get"]
  CALL R3 1 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K10 ["useCallback"]
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R3
  NEWTABLE R6 0 1
  MOVE R7 R3
  SETLIST R6 R7 1 [1]
  CALL R4 2 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K11 ["createElement"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K12 ["UI"]
  GETTABLEKS R6 R7 K13 ["Pane"]
  DUPTABLE R7 K18 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "BackgroundColor3"}]
  GETIMPORT R8 K22 [Enum.FillDirection.Vertical]
  SETTABLEKS R8 R7 K14 ["Layout"]
  GETIMPORT R8 K24 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R8 R7 K15 ["HorizontalAlignment"]
  GETIMPORT R8 K25 [Enum.VerticalAlignment.Center]
  SETTABLEKS R8 R7 K16 ["VerticalAlignment"]
  GETTABLEKS R8 R1 K26 ["BackgroundColor"]
  SETTABLEKS R8 R7 K17 ["BackgroundColor3"]
  DUPTABLE R8 K28 [{"Buttons"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K11 ["createElement"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K12 ["UI"]
  GETTABLEKS R10 R11 K13 ["Pane"]
  DUPTABLE R11 K32 [{"AutomaticSize", "Layout", "Spacing", "HorizontalAlignment", "LayoutOrder"}]
  GETIMPORT R12 K34 [Enum.AutomaticSize.XY]
  SETTABLEKS R12 R11 K29 ["AutomaticSize"]
  GETIMPORT R12 K22 [Enum.FillDirection.Vertical]
  SETTABLEKS R12 R11 K14 ["Layout"]
  LOADN R12 20
  SETTABLEKS R12 R11 K30 ["Spacing"]
  GETIMPORT R12 K24 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R12 R11 K15 ["HorizontalAlignment"]
  NAMECALL R12 R2 K35 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K31 ["LayoutOrder"]
  DUPTABLE R12 K40 [{"Frame", "SelectHint", "SplitLabel", "Import3D"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K11 ["createElement"]
  LOADK R14 K36 ["Frame"]
  DUPTABLE R15 K42 [{"AutomaticSize", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R16 K34 [Enum.AutomaticSize.XY]
  SETTABLEKS R16 R15 K29 ["AutomaticSize"]
  GETTABLEKS R16 R1 K43 ["ImageBackgroundColor"]
  SETTABLEKS R16 R15 K17 ["BackgroundColor3"]
  LOADN R16 0
  SETTABLEKS R16 R15 K41 ["BorderSizePixel"]
  DUPTABLE R16 K47 [{"UICorner", "UIPadding", "Image"}]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K11 ["createElement"]
  LOADK R18 K44 ["UICorner"]
  DUPTABLE R19 K49 [{"CornerRadius"}]
  GETIMPORT R20 K51 [UDim.new]
  LOADK R21 K52 [0.5]
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K48 ["CornerRadius"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K44 ["UICorner"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K11 ["createElement"]
  LOADK R18 K45 ["UIPadding"]
  DUPTABLE R19 K57 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R20 K51 [UDim.new]
  LOADN R21 0
  LOADN R22 10
  CALL R20 2 1
  SETTABLEKS R20 R19 K53 ["PaddingTop"]
  GETIMPORT R20 K51 [UDim.new]
  LOADN R21 0
  LOADN R22 10
  CALL R20 2 1
  SETTABLEKS R20 R19 K54 ["PaddingBottom"]
  GETIMPORT R20 K51 [UDim.new]
  LOADN R21 0
  LOADN R22 10
  CALL R20 2 1
  SETTABLEKS R20 R19 K55 ["PaddingLeft"]
  GETIMPORT R20 K51 [UDim.new]
  LOADN R21 0
  LOADN R22 10
  CALL R20 2 1
  SETTABLEKS R20 R19 K56 ["PaddingRight"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K45 ["UIPadding"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K11 ["createElement"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K12 ["UI"]
  GETTABLEKS R18 R19 K46 ["Image"]
  DUPTABLE R19 K60 [{"AutomaticSize", "LayoutOrder", "Image", "ImageColor3", "Size"}]
  GETIMPORT R20 K34 [Enum.AutomaticSize.XY]
  SETTABLEKS R20 R19 K29 ["AutomaticSize"]
  NAMECALL R20 R2 K35 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K31 ["LayoutOrder"]
  LOADK R20 K61 ["rbxassetid://6022668945"]
  SETTABLEKS R20 R19 K46 ["Image"]
  GETTABLEKS R20 R1 K62 ["IconColor"]
  SETTABLEKS R20 R19 K58 ["ImageColor3"]
  GETTABLEKS R20 R1 K63 ["ImageSize"]
  SETTABLEKS R20 R19 K59 ["Size"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K46 ["Image"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K36 ["Frame"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K11 ["createElement"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K12 ["UI"]
  GETTABLEKS R14 R15 K64 ["TextLabel"]
  DUPTABLE R15 K68 [{"AutomaticSize", "LayoutOrder", "TextWrapped", "FontFace", "Text"}]
  GETIMPORT R16 K34 [Enum.AutomaticSize.XY]
  SETTABLEKS R16 R15 K29 ["AutomaticSize"]
  NAMECALL R16 R2 K35 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K31 ["LayoutOrder"]
  LOADB R16 1
  SETTABLEKS R16 R15 K65 ["TextWrapped"]
  GETTABLEKS R16 R1 K66 ["FontFace"]
  SETTABLEKS R16 R15 K66 ["FontFace"]
  LOADK R18 K69 ["SelectScreen"]
  LOADK R19 K37 ["SelectHint"]
  NAMECALL R16 R0 K70 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K67 ["Text"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K37 ["SelectHint"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K11 ["createElement"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K12 ["UI"]
  GETTABLEKS R14 R15 K13 ["Pane"]
  DUPTABLE R15 K71 [{"Layout", "HorizontalAlignment", "Spacing", "LayoutOrder", "AutomaticSize"}]
  GETIMPORT R16 K73 [Enum.FillDirection.Horizontal]
  SETTABLEKS R16 R15 K14 ["Layout"]
  GETIMPORT R16 K24 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R16 R15 K15 ["HorizontalAlignment"]
  GETTABLEKS R16 R1 K30 ["Spacing"]
  SETTABLEKS R16 R15 K30 ["Spacing"]
  NAMECALL R16 R2 K35 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K31 ["LayoutOrder"]
  GETIMPORT R16 K34 [Enum.AutomaticSize.XY]
  SETTABLEKS R16 R15 K29 ["AutomaticSize"]
  DUPTABLE R16 K77 [{"LeftLabel", "OrLabel", "RightLabel"}]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K11 ["createElement"]
  LOADK R18 K36 ["Frame"]
  DUPTABLE R19 K78 [{"LayoutOrder", "BackgroundColor3", "BorderSizePixel", "Size"}]
  NAMECALL R20 R2 K35 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K31 ["LayoutOrder"]
  GETTABLEKS R20 R1 K79 ["LineColor"]
  SETTABLEKS R20 R19 K17 ["BackgroundColor3"]
  LOADN R20 0
  SETTABLEKS R20 R19 K41 ["BorderSizePixel"]
  GETTABLEKS R20 R1 K80 ["LineSize"]
  SETTABLEKS R20 R19 K59 ["Size"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K74 ["LeftLabel"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K11 ["createElement"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K12 ["UI"]
  GETTABLEKS R18 R19 K64 ["TextLabel"]
  DUPTABLE R19 K81 [{"AutomaticSize", "LayoutOrder", "Text"}]
  GETIMPORT R20 K34 [Enum.AutomaticSize.XY]
  SETTABLEKS R20 R19 K29 ["AutomaticSize"]
  NAMECALL R20 R2 K35 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K31 ["LayoutOrder"]
  LOADK R22 K69 ["SelectScreen"]
  LOADK R23 K82 ["Or"]
  NAMECALL R20 R0 K70 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K67 ["Text"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K75 ["OrLabel"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K11 ["createElement"]
  LOADK R18 K36 ["Frame"]
  DUPTABLE R19 K78 [{"LayoutOrder", "BackgroundColor3", "BorderSizePixel", "Size"}]
  NAMECALL R20 R2 K35 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K31 ["LayoutOrder"]
  GETTABLEKS R20 R1 K79 ["LineColor"]
  SETTABLEKS R20 R19 K17 ["BackgroundColor3"]
  LOADN R20 0
  SETTABLEKS R20 R19 K41 ["BorderSizePixel"]
  GETTABLEKS R20 R1 K80 ["LineSize"]
  SETTABLEKS R20 R19 K59 ["Size"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K76 ["RightLabel"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K38 ["SplitLabel"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K11 ["createElement"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K12 ["UI"]
  GETTABLEKS R14 R15 K83 ["IconButton"]
  DUPTABLE R15 K88 [{"AutomaticSize", "LayoutOrder", "Cursor", "OnClick", "Size", "Padding", "Spacing", "Text", "Style"}]
  GETIMPORT R16 K34 [Enum.AutomaticSize.XY]
  SETTABLEKS R16 R15 K29 ["AutomaticSize"]
  NAMECALL R16 R2 K35 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K31 ["LayoutOrder"]
  LOADK R16 K89 ["PointingHand"]
  SETTABLEKS R16 R15 K84 ["Cursor"]
  SETTABLEKS R4 R15 K85 ["OnClick"]
  GETIMPORT R16 K92 [UDim2.fromOffset]
  LOADN R17 0
  GETTABLEKS R18 R1 K93 ["ButtonHeight"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K59 ["Size"]
  LOADN R16 5
  SETTABLEKS R16 R15 K86 ["Padding"]
  LOADN R16 5
  SETTABLEKS R16 R15 K30 ["Spacing"]
  LOADK R18 K69 ["SelectScreen"]
  LOADK R19 K94 ["Import3DFile"]
  NAMECALL R16 R0 K70 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K67 ["Text"]
  LOADK R16 K95 ["PrimaryBrand"]
  SETTABLEKS R16 R15 K87 ["Style"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K39 ["Import3D"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K27 ["Buttons"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Resources"]
  GETTABLEKS R4 R5 K11 ["Theme"]
  CALL R3 1 1
  DUPCLOSURE R4 K12 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R1
  RETURN R4 1
