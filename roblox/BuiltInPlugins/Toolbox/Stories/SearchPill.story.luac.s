PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R1 2 -1
  RETURN R1 -1

PROTO_1:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Clicked"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  NEWTABLE R2 0 0
  DUPTABLE R3 K2 [{"SearchPill"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K6 [{"AutomaticSize", "Text", "OnClick"}]
  GETIMPORT R7 K9 [Enum.AutomaticSize.XY]
  SETTABLEKS R7 R6 K3 ["AutomaticSize"]
  LOADK R7 K10 ["Clickable"]
  SETTABLEKS R7 R6 K4 ["Text"]
  DUPCLOSURE R7 K11 [PROTO_1]
  SETTABLEKS R7 R6 K5 ["OnClick"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K1 ["SearchPill"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  NEWTABLE R2 0 0
  DUPTABLE R3 K2 [{"SearchPill"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K5 [{"Text", "Size"}]
  LOADK R7 K6 ["Size 100x50"]
  SETTABLEKS R7 R6 K3 ["Text"]
  GETIMPORT R7 K9 [UDim2.new]
  LOADN R8 0
  LOADN R9 100
  LOADN R10 0
  LOADN R11 50
  CALL R7 4 1
  SETTABLEKS R7 R6 K4 ["Size"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K1 ["SearchPill"]
  CALL R0 3 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K7 ["Stories"]
  GETTABLEKS R4 R5 K8 ["ToolboxStoryWrapper"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R8 R0 K9 ["Core"]
  GETTABLEKS R7 R8 K10 ["Components"]
  GETTABLEKS R6 R7 K11 ["Categorization"]
  GETTABLEKS R5 R6 K12 ["SearchPill"]
  CALL R4 1 1
  DUPCLOSURE R5 K13 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  DUPTABLE R6 K16 [{"summary", "stories"}]
  LOADK R7 K17 ["A generic search pill."]
  SETTABLEKS R7 R6 K14 ["summary"]
  NEWTABLE R7 0 2
  DUPTABLE R8 K20 [{"name", "story"}]
  LOADK R9 K21 ["Clickable"]
  SETTABLEKS R9 R8 K18 ["name"]
  DUPCLOSURE R9 K22 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R4
  SETTABLEKS R9 R8 K19 ["story"]
  DUPTABLE R9 K20 [{"name", "story"}]
  LOADK R10 K23 ["Constant Size"]
  SETTABLEKS R10 R9 K18 ["name"]
  DUPCLOSURE R10 K24 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R4
  SETTABLEKS R10 R9 K19 ["story"]
  SETLIST R7 R8 2 [1]
  SETTABLEKS R7 R6 K15 ["stories"]
  RETURN R6 1
