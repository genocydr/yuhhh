PROTO_0:
  DUPTABLE R4 K4 [{"Key", "Position", "AssetInfo", "Size"}]
  SETTABLEKS R1 R4 K0 ["Key"]
  SETTABLEKS R2 R4 K1 ["Position"]
  SETTABLEKS R0 R4 K2 ["AssetInfo"]
  SETTABLEKS R3 R4 K3 ["Size"]
  RETURN R4 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["use"]
  CALL R2 0 1
  GETUPVAL R3 2
  MOVE R4 R2
  CALL R3 1 1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K2 ["createElement"]
  GETUPVAL R5 4
  NEWTABLE R6 2 0
  GETTABLEKS R7 R0 K3 ["LayoutOrder"]
  SETTABLEKS R7 R6 K3 ["LayoutOrder"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K4 ["Tag"]
  LOADK R9 K5 ["MainContents ContentList X-Top X-Column X-Center %*"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K4 ["Tag"]
  GETTABLE R11 R0 R12
  NAMECALL R9 R9 K6 ["format"]
  CALL R9 2 1
  MOVE R8 R9
  SETTABLE R8 R6 R7
  DUPTABLE R7 K9 [{"HeaderRow", "ListContainer"}]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K2 ["createElement"]
  GETUPVAL R9 5
  DUPTABLE R10 K10 [{"LayoutOrder"}]
  NAMECALL R11 R1 K11 ["getNextOrder"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K3 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K7 ["HeaderRow"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K2 ["createElement"]
  GETUPVAL R9 4
  NEWTABLE R10 2 0
  NAMECALL R11 R1 K11 ["getNextOrder"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K3 ["LayoutOrder"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K4 ["Tag"]
  LOADK R12 K12 ["ItemList"]
  SETTABLE R12 R10 R11
  DUPTABLE R11 K14 [{"List"}]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K2 ["createElement"]
  GETUPVAL R13 6
  DUPTABLE R14 K20 [{"LayoutOrder", "GetRowProps", "Rows", "RowComponent", "RowHeight", "ScrollingDirection"}]
  NAMECALL R15 R1 K11 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K3 ["LayoutOrder"]
  DUPCLOSURE R15 K21 [PROTO_0]
  SETTABLEKS R15 R14 K15 ["GetRowProps"]
  SETTABLEKS R3 R14 K16 ["Rows"]
  GETUPVAL R15 7
  SETTABLEKS R15 R14 K17 ["RowComponent"]
  GETUPVAL R15 8
  LOADK R17 K18 ["RowHeight"]
  NAMECALL R15 R15 K22 ["GetAttribute"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K18 ["RowHeight"]
  GETIMPORT R15 K25 [Enum.ScrollingDirection.XY]
  SETTABLEKS R15 R14 K19 ["ScrollingDirection"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K13 ["List"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K8 ["ListContainer"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
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
  GETTABLEKS R3 R2 K9 ["UI"]
  GETTABLEKS R4 R3 K10 ["Pane"]
  GETTABLEKS R5 R3 K11 ["List"]
  GETIMPORT R6 K5 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K12 ["HeaderRow"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K13 ["ItemRow"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K14 ["Src"]
  GETTABLEKS R10 R11 K15 ["Controllers"]
  GETTABLEKS R9 R10 K16 ["ItemsController"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K14 ["Src"]
  GETTABLEKS R11 R12 K17 ["Hooks"]
  GETTABLEKS R10 R11 K18 ["useItems"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R12 R0 K14 ["Src"]
  GETTABLEKS R11 R12 K19 ["Types"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETIMPORT R13 K1 [script]
  GETTABLEKS R12 R13 K20 ["styles"]
  CALL R11 1 1
  GETTABLEKS R13 R2 K21 ["Util"]
  GETTABLEKS R12 R13 K22 ["LayoutOrderIterator"]
  DUPCLOSURE R13 K23 [PROTO_1]
  CAPTURE VAL R12
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R11
  RETURN R13 1
