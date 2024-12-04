PROTO_0:
  GETUPVAL R3 0
  NEWTABLE R4 0 1
  GETUPVAL R5 1
  SETLIST R4 R5 1 [1]
  LOADN R5 1
  CALL R3 2 -1
  NAMECALL R1 R0 K0 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["fakeAsset"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  SETTABLEKS R2 R0 K1 ["storeSetup"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["createElement"]
  GETUPVAL R3 2
  MOVE R4 R0
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  DUPTABLE R2 K2 [{"fakeAsset"}]
  GETUPVAL R3 2
  SETTABLEKS R3 R2 K1 ["fakeAsset"]
  DUPTABLE R3 K4 [{"Asset"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 3
  DUPTABLE R6 K9 [{"asset", "assetData", "assetId", "LayoutOrder"}]
  GETUPVAL R7 2
  SETTABLEKS R7 R6 K5 ["asset"]
  GETUPVAL R7 2
  SETTABLEKS R7 R6 K6 ["assetData"]
  LOADK R7 K10 [123456]
  SETTABLEKS R7 R6 K7 ["assetId"]
  LOADN R7 1
  SETTABLEKS R7 R6 K8 ["LayoutOrder"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K3 ["Asset"]
  CALL R0 3 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  DUPTABLE R2 K2 [{"fakeAsset"}]
  GETUPVAL R3 2
  SETTABLEKS R3 R2 K1 ["fakeAsset"]
  NEWTABLE R3 0 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K3 ["Frame"]
  DUPTABLE R6 K6 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R7 K9 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  LOADN R11 250
  CALL R7 4 1
  SETTABLEKS R7 R6 K4 ["Size"]
  LOADN R7 1
  SETTABLEKS R7 R6 K5 ["BackgroundTransparency"]
  DUPTABLE R7 K12 [{"Layout", "Asset"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  LOADK R9 K13 ["UIListLayout"]
  DUPTABLE R10 K16 [{"VerticalAlignment", "HorizontalAlignment"}]
  GETIMPORT R11 K19 [Enum.VerticalAlignment.Center]
  SETTABLEKS R11 R10 K14 ["VerticalAlignment"]
  GETIMPORT R11 K20 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R11 R10 K15 ["HorizontalAlignment"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K10 ["Layout"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K26 [{"asset", "assetData", "assetId", "isHovered", "LayoutOrder"}]
  GETUPVAL R11 2
  SETTABLEKS R11 R10 K21 ["asset"]
  GETUPVAL R11 2
  SETTABLEKS R11 R10 K22 ["assetData"]
  LOADK R11 K27 [123456]
  SETTABLEKS R11 R10 K23 ["assetId"]
  LOADB R11 1
  SETTABLEKS R11 R10 K24 ["isHovered"]
  LOADN R11 1
  SETTABLEKS R11 R10 K25 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K11 ["Asset"]
  CALL R4 3 -1
  SETLIST R3 R4 -1 [1]
  CALL R0 3 0
  RETURN R0 0

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
  GETTABLEKS R7 R0 K7 ["Core"]
  GETTABLEKS R6 R7 K8 ["Components"]
  GETTABLEKS R5 R6 K9 ["Asset"]
  GETTABLEKS R4 R5 K9 ["Asset"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K10 ["Stories"]
  GETTABLEKS R5 R6 K11 ["ToolboxStoryWrapper"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K12 ["TestUtils"]
  GETTABLEKS R6 R7 K13 ["MockItems"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K7 ["Core"]
  GETTABLEKS R8 R9 K14 ["Actions"]
  GETTABLEKS R7 R8 K15 ["GetAssets"]
  CALL R6 1 1
  DUPCLOSURE R7 K16 [PROTO_1]
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R4
  GETTABLEKS R8 R5 K17 ["getSimpleAsset"]
  LOADK R9 K18 [123456]
  CALL R8 1 1
  DUPTABLE R9 K22 [{"name", "summary", "stories"}]
  LOADK R10 K9 ["Asset"]
  SETTABLEKS R10 R9 K19 ["name"]
  LOADK R10 K23 ["An asset used in the grid view."]
  SETTABLEKS R10 R9 K20 ["summary"]
  NEWTABLE R10 0 2
  DUPTABLE R11 K25 [{"name", "story"}]
  LOADK R12 K9 ["Asset"]
  SETTABLEKS R12 R11 K19 ["name"]
  DUPCLOSURE R12 K26 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R3
  SETTABLEKS R12 R11 K24 ["story"]
  DUPTABLE R12 K25 [{"name", "story"}]
  LOADK R13 K27 ["Asset hovered"]
  SETTABLEKS R13 R12 K19 ["name"]
  DUPCLOSURE R13 K28 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R3
  SETTABLEKS R13 R12 K24 ["story"]
  SETLIST R10 R11 2 [1]
  SETTABLEKS R10 R9 K21 ["stories"]
  RETURN R9 1
