PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Title"]
  GETTABLEKS R4 R1 K3 ["Header"]
  GETTABLEKS R5 R1 K4 ["Entries"]
  GETTABLEKS R6 R1 K5 ["Buttons"]
  GETTABLEKS R7 R1 K6 ["OnButtonClicked"]
  GETTABLEKS R8 R1 K7 ["OnClose"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K8 ["new"]
  CALL R9 0 1
  DUPTABLE R10 K11 [{"Layout", "Padding", "Header"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K12 ["createElement"]
  LOADK R12 K13 ["UIListLayout"]
  DUPTABLE R13 K15 [{"Padding", "SortOrder"}]
  GETIMPORT R14 K17 [UDim.new]
  LOADN R15 0
  LOADN R16 45
  CALL R14 2 1
  SETTABLEKS R14 R13 K10 ["Padding"]
  GETIMPORT R14 K20 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R14 R13 K14 ["SortOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K9 ["Layout"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K12 ["createElement"]
  LOADK R12 K21 ["UIPadding"]
  DUPTABLE R13 K25 [{"PaddingTop", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R14 K17 [UDim.new]
  LOADN R15 0
  LOADN R16 10
  CALL R14 2 1
  SETTABLEKS R14 R13 K22 ["PaddingTop"]
  GETIMPORT R14 K17 [UDim.new]
  LOADN R15 0
  LOADN R16 30
  CALL R14 2 1
  SETTABLEKS R14 R13 K23 ["PaddingLeft"]
  GETIMPORT R14 K17 [UDim.new]
  LOADN R15 0
  LOADN R16 30
  CALL R14 2 1
  SETTABLEKS R14 R13 K24 ["PaddingRight"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K10 ["Padding"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K12 ["createElement"]
  LOADK R12 K26 ["TextLabel"]
  DUPTABLE R13 K35 [{"LayoutOrder", "AutomaticSize", "BackgroundTransparency", "Text", "TextXAlignment", "TextWrapped", "Font", "TextSize", "TextColor3"}]
  NAMECALL R14 R9 K36 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K19 ["LayoutOrder"]
  GETIMPORT R14 K38 [Enum.AutomaticSize.XY]
  SETTABLEKS R14 R13 K27 ["AutomaticSize"]
  LOADN R14 1
  SETTABLEKS R14 R13 K28 ["BackgroundTransparency"]
  SETTABLEKS R4 R13 K29 ["Text"]
  GETIMPORT R14 K40 [Enum.TextXAlignment.Left]
  SETTABLEKS R14 R13 K30 ["TextXAlignment"]
  LOADB R14 1
  SETTABLEKS R14 R13 K31 ["TextWrapped"]
  GETTABLEKS R15 R2 K41 ["listDialog"]
  GETTABLEKS R14 R15 K42 ["font"]
  SETTABLEKS R14 R13 K32 ["Font"]
  LOADN R14 22
  SETTABLEKS R14 R13 K33 ["TextSize"]
  GETTABLEKS R15 R2 K41 ["listDialog"]
  GETTABLEKS R14 R15 K43 ["textColor"]
  SETTABLEKS R14 R13 K34 ["TextColor3"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K3 ["Header"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K12 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K46 [{"Items", "LayoutOrder", "TextTruncate"}]
  SETTABLEKS R5 R13 K44 ["Items"]
  NAMECALL R14 R9 K36 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K19 ["LayoutOrder"]
  GETIMPORT R14 K48 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R14 R13 K45 ["TextTruncate"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K49 ["List"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K12 ["createElement"]
  GETUPVAL R12 3
  DUPTABLE R13 K55 [{"Title", "Modal", "Buttons", "MinContentSize", "ButtonHorizontalAlignment", "Style", "OnButtonPressed", "OnClose"}]
  SETTABLEKS R3 R13 K2 ["Title"]
  LOADB R14 1
  SETTABLEKS R14 R13 K50 ["Modal"]
  SETTABLEKS R6 R13 K5 ["Buttons"]
  GETTABLEKS R15 R0 K0 ["props"]
  GETTABLEKS R14 R15 K56 ["minContentSize"]
  JUMPIF R14 [+5]
  GETIMPORT R14 K58 [Vector2.new]
  LOADN R15 194
  LOADN R16 220
  CALL R14 2 1
  SETTABLEKS R14 R13 K51 ["MinContentSize"]
  GETIMPORT R14 K61 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R14 R13 K52 ["ButtonHorizontalAlignment"]
  LOADK R14 K62 ["LargeCenterButtons"]
  SETTABLEKS R14 R13 K53 ["Style"]
  SETTABLEKS R7 R13 K54 ["OnButtonPressed"]
  SETTABLEKS R8 R13 K7 ["OnClose"]
  MOVE R14 R10
  CALL R11 3 -1
  RETURN R11 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETTABLEKS R5 R2 K10 ["UI"]
  GETTABLEKS R6 R5 K11 ["BulletList"]
  GETTABLEKS R8 R2 K12 ["Util"]
  GETTABLEKS R7 R8 K13 ["LayoutOrderIterator"]
  GETTABLEKS R8 R5 K14 ["StyledDialog"]
  GETTABLEKS R9 R1 K15 ["PureComponent"]
  LOADK R11 K16 ["ListDialog"]
  NAMECALL R9 R9 K17 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K18 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R8
  SETTABLEKS R10 R9 K19 ["render"]
  MOVE R10 R4
  DUPTABLE R11 K21 [{"Stylizer"}]
  GETTABLEKS R12 R3 K20 ["Stylizer"]
  SETTABLEKS R12 R11 K20 ["Stylizer"]
  CALL R10 1 1
  MOVE R11 R9
  CALL R10 1 1
  MOVE R9 R10
  RETURN R9 1
