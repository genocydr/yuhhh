PROTO_0:
  GETUPVAL R2 0
  JUMPIFEQ R0 R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["findIndex"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["getEnumAsList"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["AssetType"]
  CALL R2 1 1
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CALL R1 2 -1
  RETURN R1 -1

PROTO_2:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K5 [{"FilterType", "Item", "LayoutOrder", "Activated"}]
  SETTABLEKS R0 R6 K1 ["FilterType"]
  SETTABLEKS R1 R6 K2 ["Item"]
  SETTABLEKS R2 R6 K3 ["LayoutOrder"]
  SETTABLEKS R3 R6 K4 ["Activated"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_3:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["hideSearchOptions"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["requestSearch"]
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  MOVE R4 R0
  NAMECALL R2 R2 K0 ["setAssetTypeFilter"]
  CALL R2 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R3 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["AssetInfoField"]
  GETTABLEKS R4 R5 K1 ["AssetType"]
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R3 4 -1
  RETURN R3 -1

PROTO_7:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["setSourceFilter"]
  CALL R1 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["setSource"]
  CALL R1 2 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["use"]
  CALL R2 0 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["use"]
  CALL R3 0 1
  GETUPVAL R4 3
  MOVE R5 R3
  CALL R4 1 1
  GETUPVAL R5 4
  MOVE R6 R3
  CALL R5 1 1
  NEWTABLE R6 0 0
  MOVE R7 R5
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  DUPTABLE R14 K4 [{"Key", "Text"}]
  GETTABLEKS R15 R11 K5 ["Id"]
  SETTABLEKS R15 R14 K2 ["Key"]
  GETTABLEKS R15 R11 K6 ["Name"]
  SETTABLEKS R15 R14 K3 ["Text"]
  FASTCALL2 TABLE_INSERT R6 R14 [+4]
  MOVE R13 R6
  GETIMPORT R12 K9 [table.insert]
  CALL R12 2 0
  FORGLOOP R7 2 [-16]
  DUPCLOSURE R7 K10 [PROTO_2]
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  NEWTABLE R8 0 2
  DUPTABLE R9 K12 [{"Text", "OnClick"}]
  LOADK R12 K13 ["SearchOptions"]
  LOADK R13 K14 ["Cancel"]
  NAMECALL R10 R2 K15 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K3 ["Text"]
  NEWCLOSURE R10 P1
  CAPTURE VAL R3
  SETTABLEKS R10 R9 K11 ["OnClick"]
  DUPTABLE R10 K17 [{"Text", "Tags", "OnClick"}]
  LOADK R13 K13 ["SearchOptions"]
  LOADK R14 K18 ["Search"]
  NAMECALL R11 R2 K15 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K3 ["Text"]
  LOADK R11 K19 ["PrimaryBrand"]
  SETTABLEKS R11 R10 K16 ["Tags"]
  NEWCLOSURE R11 P2
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K11 ["OnClick"]
  SETLIST R8 R9 2 [1]
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K20 ["createElement"]
  GETUPVAL R10 7
  NEWTABLE R11 2 0
  GETTABLEKS R12 R0 K21 ["LayoutOrder"]
  SETTABLEKS R12 R11 K21 ["LayoutOrder"]
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K22 ["Tag"]
  LOADK R13 K23 ["SearchOptions Explorer X-Column"]
  SETTABLE R13 R11 R12
  DUPTABLE R12 K26 [{"Contents", "Toolbar"}]
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K20 ["createElement"]
  GETUPVAL R14 7
  NEWTABLE R15 2 0
  NAMECALL R16 R1 K27 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K21 ["LayoutOrder"]
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K22 ["Tag"]
  LOADK R17 K28 ["SearchOptionsContents X-Top X-Column"]
  SETTABLE R17 R15 R16
  DUPTABLE R16 K34 [{"FilterHeader", "Filters", "Separator", "SourceHeader", "Sources"}]
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K20 ["createElement"]
  GETUPVAL R18 8
  NEWTABLE R19 4 0
  NAMECALL R20 R1 K27 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K21 ["LayoutOrder"]
  LOADK R22 K13 ["SearchOptions"]
  LOADK R23 K30 ["Filters"]
  NAMECALL R20 R2 K15 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K3 ["Text"]
  GETUPVAL R21 5
  GETTABLEKS R20 R21 K22 ["Tag"]
  LOADK R21 K35 ["SearchOptionHeading Left Bold X-Pad"]
  SETTABLE R21 R19 R20
  CALL R17 2 1
  SETTABLEKS R17 R16 K29 ["FilterHeader"]
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K20 ["createElement"]
  GETUPVAL R18 7
  NEWTABLE R19 2 0
  NAMECALL R20 R1 K27 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K21 ["LayoutOrder"]
  GETUPVAL R21 5
  GETTABLEKS R20 R21 K22 ["Tag"]
  LOADK R21 K36 ["FilterSection X-FitY X-Middle"]
  SETTABLE R21 R19 R20
  DUPTABLE R20 K38 [{"AssetTypeDropdown"}]
  GETUPVAL R22 5
  GETTABLEKS R21 R22 K20 ["createElement"]
  GETUPVAL R22 9
  NEWTABLE R23 8 0
  LOADK R26 K30 ["Filters"]
  LOADK R27 K39 ["AssetTypes"]
  NAMECALL R24 R2 K15 ["getText"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K40 ["PlaceholderText"]
  GETTABLEKS R26 R4 K13 ["SearchOptions"]
  GETTABLEKS R25 R26 K41 ["AssetType"]
  GETUPVAL R27 10
  GETTABLEKS R26 R27 K42 ["findIndex"]
  GETUPVAL R28 11
  GETTABLEKS R27 R28 K43 ["getEnumAsList"]
  GETUPVAL R29 11
  GETTABLEKS R28 R29 K41 ["AssetType"]
  CALL R27 1 1
  NEWCLOSURE R28 P3
  CAPTURE VAL R25
  CALL R26 2 1
  MOVE R24 R26
  SETTABLEKS R24 R23 K44 ["SelectedIndex"]
  GETUPVAL R25 11
  GETTABLEKS R24 R25 K43 ["getEnumAsList"]
  GETUPVAL R26 11
  GETTABLEKS R25 R26 K41 ["AssetType"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K45 ["Items"]
  NEWCLOSURE R24 P4
  CAPTURE VAL R3
  SETTABLEKS R24 R23 K46 ["OnItemActivated"]
  DUPCLOSURE R24 K47 [PROTO_6]
  CAPTURE VAL R7
  CAPTURE UPVAL U11
  SETTABLEKS R24 R23 K48 ["OnRenderItem"]
  GETUPVAL R24 12
  LOADK R26 K49 ["SearchFilterSize"]
  NAMECALL R24 R24 K50 ["GetAttribute"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K51 ["Size"]
  GETUPVAL R25 5
  GETTABLEKS R24 R25 K22 ["Tag"]
  LOADK R25 K52 [""]
  SETTABLE R25 R23 R24
  CALL R21 2 1
  SETTABLEKS R21 R20 K37 ["AssetTypeDropdown"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K30 ["Filters"]
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K20 ["createElement"]
  GETUPVAL R18 13
  DUPTABLE R19 K53 [{"LayoutOrder"}]
  NAMECALL R20 R1 K27 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K21 ["LayoutOrder"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K31 ["Separator"]
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K20 ["createElement"]
  GETUPVAL R18 8
  NEWTABLE R19 4 0
  NAMECALL R20 R1 K27 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K21 ["LayoutOrder"]
  LOADK R22 K13 ["SearchOptions"]
  LOADK R23 K54 ["Source"]
  NAMECALL R20 R2 K15 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K3 ["Text"]
  GETUPVAL R21 5
  GETTABLEKS R20 R21 K22 ["Tag"]
  LOADK R21 K35 ["SearchOptionHeading Left Bold X-Pad"]
  SETTABLE R21 R19 R20
  CALL R17 2 1
  SETTABLEKS R17 R16 K32 ["SourceHeader"]
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K20 ["createElement"]
  GETUPVAL R18 7
  NEWTABLE R19 2 0
  NAMECALL R20 R1 K27 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K21 ["LayoutOrder"]
  GETUPVAL R21 5
  GETTABLEKS R20 R21 K22 ["Tag"]
  LOADK R21 K55 ["SourceSection X-ColumnM X-Center"]
  SETTABLE R21 R19 R20
  DUPTABLE R20 K58 [{"TextFilterInputContainer", "RadioButtonListContainer"}]
  GETUPVAL R22 5
  GETTABLEKS R21 R22 K20 ["createElement"]
  GETUPVAL R22 7
  NEWTABLE R23 2 0
  GETTABLEKS R24 R0 K21 ["LayoutOrder"]
  SETTABLEKS R24 R23 K21 ["LayoutOrder"]
  GETUPVAL R25 5
  GETTABLEKS R24 R25 K22 ["Tag"]
  LOADK R25 K59 ["SearchPanel"]
  SETTABLE R25 R23 R24
  DUPTABLE R24 K61 [{"TextFilterInput"}]
  GETUPVAL R26 5
  GETTABLEKS R25 R26 K20 ["createElement"]
  GETUPVAL R26 14
  NEWTABLE R27 8 0
  NAMECALL R28 R1 K27 ["getNextOrder"]
  CALL R28 1 1
  SETTABLEKS R28 R27 K21 ["LayoutOrder"]
  LOADK R30 K13 ["SearchOptions"]
  LOADK R31 K62 ["FilterPlaceholder"]
  NAMECALL R28 R2 K15 ["getText"]
  CALL R28 3 1
  SETTABLEKS R28 R27 K40 ["PlaceholderText"]
  LOADB R28 1
  SETTABLEKS R28 R27 K63 ["IncrementalTextSearch"]
  NEWCLOSURE R28 P6
  CAPTURE VAL R3
  SETTABLEKS R28 R27 K64 ["OnSearchRequested"]
  LOADB R28 1
  SETTABLEKS R28 R27 K65 ["ShowSearchIcon"]
  LOADB R28 0
  SETTABLEKS R28 R27 K66 ["ShowSearchButton"]
  GETUPVAL R29 5
  GETTABLEKS R28 R29 K22 ["Tag"]
  LOADK R29 K67 ["X-AnchorCenter X-Pad"]
  SETTABLE R29 R27 R28
  CALL R25 2 1
  SETTABLEKS R25 R24 K60 ["TextFilterInput"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K56 ["TextFilterInputContainer"]
  GETUPVAL R22 5
  GETTABLEKS R21 R22 K20 ["createElement"]
  GETUPVAL R22 15
  NEWTABLE R23 2 0
  NAMECALL R24 R1 K27 ["getNextOrder"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K21 ["LayoutOrder"]
  GETUPVAL R25 5
  GETTABLEKS R24 R25 K22 ["Tag"]
  LOADK R25 K68 ["RadioList"]
  SETTABLE R25 R23 R24
  DUPTABLE R24 K70 [{"RadioButtonList"}]
  GETUPVAL R26 5
  GETTABLEKS R25 R26 K20 ["createElement"]
  GETUPVAL R26 16
  DUPTABLE R27 K75 [{"LayoutOrder", "Buttons", "SelectedKey", "OnClick", "FillDirection", "TextXAlignment"}]
  NAMECALL R28 R1 K27 ["getNextOrder"]
  CALL R28 1 1
  SETTABLEKS R28 R27 K21 ["LayoutOrder"]
  SETTABLEKS R6 R27 K71 ["Buttons"]
  GETTABLEKS R30 R4 K13 ["SearchOptions"]
  GETTABLEKS R29 R30 K54 ["Source"]
  GETTABLEKS R28 R29 K5 ["Id"]
  SETTABLEKS R28 R27 K72 ["SelectedKey"]
  NEWCLOSURE R28 P7
  CAPTURE VAL R3
  SETTABLEKS R28 R27 K11 ["OnClick"]
  GETIMPORT R28 K78 [Enum.FillDirection.Vertical]
  SETTABLEKS R28 R27 K73 ["FillDirection"]
  GETIMPORT R28 K80 [Enum.TextXAlignment.Left]
  SETTABLEKS R28 R27 K74 ["TextXAlignment"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K69 ["RadioButtonList"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K57 ["RadioButtonListContainer"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K33 ["Sources"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K24 ["Contents"]
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K20 ["createElement"]
  GETUPVAL R14 17
  DUPTABLE R15 K81 [{"LayoutOrder", "Buttons"}]
  NAMECALL R16 R1 K27 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K21 ["LayoutOrder"]
  SETTABLEKS R8 R15 K71 ["Buttons"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K25 ["Toolbar"]
  CALL R9 3 -1
  RETURN R9 -1

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
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Dash"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["Localization"]
  GETTABLEKS R6 R2 K12 ["UI"]
  GETTABLEKS R7 R6 K13 ["Pane"]
  GETTABLEKS R8 R6 K14 ["ScrollingFrame"]
  GETTABLEKS R9 R6 K15 ["RadioButtonList"]
  GETTABLEKS R10 R6 K16 ["SearchBar"]
  GETTABLEKS R11 R6 K17 ["SelectInput"]
  GETTABLEKS R12 R6 K18 ["Separator"]
  GETTABLEKS R13 R6 K19 ["TextLabel"]
  GETIMPORT R14 K5 [require]
  GETTABLEKS R18 R0 K20 ["Src"]
  GETTABLEKS R17 R18 K21 ["Components"]
  GETTABLEKS R16 R17 K22 ["Shared"]
  GETTABLEKS R15 R16 K23 ["SearchFilterItem"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R19 R0 K20 ["Src"]
  GETTABLEKS R18 R19 K21 ["Components"]
  GETTABLEKS R17 R18 K22 ["Shared"]
  GETTABLEKS R16 R17 K24 ["Toolbar"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K20 ["Src"]
  GETTABLEKS R18 R19 K25 ["Controllers"]
  GETTABLEKS R17 R18 K26 ["SearchController"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K20 ["Src"]
  GETTABLEKS R19 R20 K27 ["Hooks"]
  GETTABLEKS R18 R19 K28 ["useSearchInfo"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K20 ["Src"]
  GETTABLEKS R20 R21 K27 ["Hooks"]
  GETTABLEKS R19 R20 K29 ["useSearchSourceList"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R21 R0 K20 ["Src"]
  GETTABLEKS R20 R21 K30 ["Types"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R23 R0 K20 ["Src"]
  GETTABLEKS R22 R23 K31 ["Resources"]
  GETTABLEKS R21 R22 K32 ["PluginStyles"]
  CALL R20 1 1
  GETTABLEKS R22 R2 K33 ["Util"]
  GETTABLEKS R21 R22 K34 ["LayoutOrderIterator"]
  DUPCLOSURE R22 K35 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R19
  DUPCLOSURE R23 K36 [PROTO_9]
  CAPTURE VAL R21
  CAPTURE VAL R5
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R18
  CAPTURE VAL R1
  CAPTURE VAL R14
  CAPTURE VAL R7
  CAPTURE VAL R13
  CAPTURE VAL R11
  CAPTURE VAL R3
  CAPTURE VAL R19
  CAPTURE VAL R20
  CAPTURE VAL R12
  CAPTURE VAL R10
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R15
  RETURN R23 1
