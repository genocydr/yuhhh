PROTO_0:
  NEWTABLE R2 0 0
  SETTABLEKS R2 R0 K0 ["state"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R3 R0 K0 ["name"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["createElement"]
  LOADK R5 K2 ["ImageButton"]
  NEWTABLE R6 4 0
  GETIMPORT R7 K5 [UDim2.new]
  LOADK R8 K6 [0.5]
  LOADN R9 0
  LOADN R10 1
  LOADN R11 0
  CALL R7 4 1
  SETTABLEKS R7 R6 K7 ["Size"]
  SETTABLEKS R2 R6 K8 ["LayoutOrder"]
  GETUPVAL R8 1
  JUMPIFNOTEQ R8 R3 [+5]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K9 ["selectedButtonColor"]
  JUMP [+3]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K10 ["backgroundButtonColor"]
  SETTABLEKS R7 R6 K11 ["BackgroundColor3"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K12 ["Event"]
  GETTABLEKS R7 R8 K13 ["MouseButton1Click"]
  NEWCLOSURE R8 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R3
  SETTABLE R8 R6 R7
  DUPTABLE R7 K18 [{"Layout", "UICorner", "Icon", "Text"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K1 ["createElement"]
  LOADK R9 K19 ["UIListLayout"]
  DUPTABLE R10 K25 [{"FillDirection", "SortOrder", "VerticalAlignment", "HorizontalAlignment", "Padding"}]
  GETIMPORT R11 K28 [Enum.FillDirection.Horizontal]
  SETTABLEKS R11 R10 K20 ["FillDirection"]
  GETIMPORT R11 K29 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R11 R10 K21 ["SortOrder"]
  GETIMPORT R11 K31 [Enum.VerticalAlignment.Center]
  SETTABLEKS R11 R10 K22 ["VerticalAlignment"]
  GETIMPORT R11 K32 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R11 R10 K23 ["HorizontalAlignment"]
  GETIMPORT R11 K34 [UDim.new]
  LOADN R12 0
  LOADN R13 5
  CALL R11 2 1
  SETTABLEKS R11 R10 K24 ["Padding"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K14 ["Layout"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K1 ["createElement"]
  LOADK R9 K15 ["UICorner"]
  DUPTABLE R10 K36 [{"CornerRadius"}]
  GETIMPORT R11 K34 [UDim.new]
  LOADN R12 0
  LOADN R13 5
  CALL R11 2 1
  SETTABLEKS R11 R10 K35 ["CornerRadius"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K15 ["UICorner"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K1 ["createElement"]
  LOADK R9 K37 ["Frame"]
  DUPTABLE R10 K39 [{"Size", "LayoutOrder", "BackgroundTransparency"}]
  GETIMPORT R11 K5 [UDim2.new]
  LOADN R12 0
  LOADN R13 20
  LOADN R14 0
  LOADN R15 20
  CALL R11 4 1
  SETTABLEKS R11 R10 K7 ["Size"]
  LOADN R11 1
  SETTABLEKS R11 R10 K8 ["LayoutOrder"]
  LOADN R11 1
  SETTABLEKS R11 R10 K38 ["BackgroundTransparency"]
  NEWTABLE R11 0 1
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K1 ["createElement"]
  LOADK R13 K40 ["ImageLabel"]
  DUPTABLE R14 K43 [{"Image", "BackgroundTransparency", "Size", "LayoutOrder", "ImageColor3"}]
  SETTABLEKS R1 R14 K41 ["Image"]
  LOADN R15 1
  SETTABLEKS R15 R14 K38 ["BackgroundTransparency"]
  GETIMPORT R15 K5 [UDim2.new]
  LOADN R16 0
  LOADN R17 20
  LOADN R18 0
  LOADN R19 20
  CALL R15 4 1
  SETTABLEKS R15 R14 K7 ["Size"]
  LOADN R15 1
  SETTABLEKS R15 R14 K8 ["LayoutOrder"]
  GETUPVAL R16 1
  JUMPIFNOTEQ R16 R3 [+5]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K44 ["selectedTextColor"]
  JUMP [+3]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K45 ["textColor"]
  SETTABLEKS R15 R14 K42 ["ImageColor3"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  SETTABLEKS R8 R7 K16 ["Icon"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K1 ["createElement"]
  LOADK R9 K46 ["TextLabel"]
  DUPTABLE R10 K51 [{"BackgroundTransparency", "LayoutOrder", "Text", "AutomaticSize", "Font", "TextSize", "TextColor3"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K38 ["BackgroundTransparency"]
  LOADN R11 2
  SETTABLEKS R11 R10 K8 ["LayoutOrder"]
  GETUPVAL R11 4
  LOADK R13 K52 ["Audio"]
  MOVE R14 R3
  NAMECALL R11 R11 K53 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K17 ["Text"]
  GETIMPORT R11 K55 [Enum.AutomaticSize.X]
  SETTABLEKS R11 R10 K47 ["AutomaticSize"]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K56 ["FONT"]
  SETTABLEKS R11 R10 K48 ["Font"]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K57 ["FONT_SIZE_MEDIUM"]
  SETTABLEKS R11 R10 K49 ["TextSize"]
  GETUPVAL R12 1
  JUMPIFNOTEQ R12 R3 [+5]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K44 ["selectedTextColor"]
  JUMP [+3]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K45 ["textColor"]
  SETTABLEKS R11 R10 K50 ["TextColor3"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K17 ["Text"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["OnTabSelect"]
  GETTABLEKS R4 R1 K3 ["SelectedTab"]
  GETTABLEKS R6 R1 K4 ["Stylizer"]
  GETTABLEKS R5 R6 K5 ["audioTabs"]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["createElement"]
  LOADK R8 K7 ["Frame"]
  DUPTABLE R9 K10 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R10 K13 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 1
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K8 ["Size"]
  LOADN R10 1
  SETTABLEKS R10 R9 K9 ["BackgroundTransparency"]
  DUPTABLE R10 K17 [{"Layout", "SoundEffectTab", "MusicTab"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K6 ["createElement"]
  LOADK R12 K18 ["UIListLayout"]
  DUPTABLE R13 K23 [{"FillDirection", "SortOrder", "VerticalAlignment", "HorizontalAlignment"}]
  GETIMPORT R14 K26 [Enum.FillDirection.Horizontal]
  SETTABLEKS R14 R13 K19 ["FillDirection"]
  GETIMPORT R14 K28 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R14 R13 K20 ["SortOrder"]
  GETIMPORT R14 K30 [Enum.VerticalAlignment.Center]
  SETTABLEKS R14 R13 K21 ["VerticalAlignment"]
  GETIMPORT R14 K31 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R14 R13 K22 ["HorizontalAlignment"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K14 ["Layout"]
  MOVE R11 R6
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K32 ["SOUND_EFFECTS"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K33 ["SOUND_EFFECT_ICON"]
  LOADN R14 1
  CALL R11 3 1
  SETTABLEKS R11 R10 K15 ["SoundEffectTab"]
  MOVE R11 R6
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K34 ["MUSIC"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K35 ["MUSIC_ICON"]
  LOADN R14 2
  CALL R11 3 1
  SETTABLEKS R11 R10 K16 ["MusicTab"]
  CALL R7 3 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Packages"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K9 ["Core"]
  GETTABLEKS R4 R5 K10 ["Util"]
  GETTABLEKS R5 R3 K11 ["ContextServices"]
  GETTABLEKS R6 R5 K12 ["withContext"]
  GETIMPORT R7 K6 [require]
  GETTABLEKS R8 R4 K13 ["Constants"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R11 R0 K9 ["Core"]
  GETTABLEKS R10 R11 K14 ["Types"]
  GETTABLEKS R9 R10 K15 ["Category"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R12 R0 K9 ["Core"]
  GETTABLEKS R11 R12 K10 ["Util"]
  GETTABLEKS R10 R11 K16 ["Images"]
  CALL R9 1 1
  GETTABLEKS R10 R2 K17 ["PureComponent"]
  LOADK R12 K18 ["AudioTabs"]
  NAMECALL R10 R10 K19 ["extend"]
  CALL R10 2 1
  DUPCLOSURE R11 K20 [PROTO_0]
  SETTABLEKS R11 R10 K21 ["init"]
  DUPCLOSURE R11 K22 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R9
  SETTABLEKS R11 R10 K23 ["render"]
  MOVE R11 R6
  DUPTABLE R12 K26 [{"Stylizer", "Localization"}]
  GETTABLEKS R13 R5 K24 ["Stylizer"]
  SETTABLEKS R13 R12 K24 ["Stylizer"]
  GETTABLEKS R13 R5 K25 ["Localization"]
  SETTABLEKS R13 R12 K25 ["Localization"]
  CALL R11 1 1
  MOVE R12 R10
  CALL R11 1 1
  MOVE R10 R11
  RETURN R10 1
