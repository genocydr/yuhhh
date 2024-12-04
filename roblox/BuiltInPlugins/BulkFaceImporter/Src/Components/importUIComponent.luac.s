PROTO_0:
  GETUPVAL R1 0
  NEWTABLE R3 1 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["state"]
  GETTABLE R5 R6 R0
  NOT R4 R5
  SETTABLE R4 R3 R0
  NAMECALL R1 R1 K1 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"canceled"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["canceled"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  GETIMPORT R0 K4 [print]
  LOADK R1 K5 ["Cancel"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["importAvatars"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  DUPTABLE R1 K6 [{"keepBody", "enabled", "objectName", "canceled", "completed", "progress"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["keepBody"]
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["enabled"]
  LOADK R2 K7 [""]
  SETTABLEKS R2 R1 K2 ["objectName"]
  LOADB R2 0
  SETTABLEKS R2 R1 K3 ["canceled"]
  LOADB R2 0
  SETTABLEKS R2 R1 K4 ["completed"]
  LOADN R2 0
  SETTABLEKS R2 R1 K5 ["progress"]
  SETTABLEKS R1 R0 K8 ["state"]
  LOADK R1 K7 [""]
  SETTABLEKS R1 R0 K9 ["bundleIDs"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K10 ["setKeepBody"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K11 ["close"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K12 ["cancelUploadProcess"]
  NEWCLOSURE R1 P3
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K13 ["importAvatars"]
  NEWCLOSURE R1 P4
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K14 ["changeAvatarBody"]
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["bundleIDs"]
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K4 [{"BackgroundColor", "Layout", "LayoutOrder"}]
  GETIMPORT R4 K7 [Color3.fromRGB]
  LOADN R5 100
  LOADN R6 100
  LOADN R7 100
  CALL R4 3 1
  SETTABLEKS R4 R3 K1 ["BackgroundColor"]
  GETIMPORT R4 K11 [Enum.FillDirection.Vertical]
  SETTABLEKS R4 R3 K2 ["Layout"]
  LOADN R4 1
  SETTABLEKS R4 R3 K3 ["LayoutOrder"]
  DUPTABLE R4 K16 [{"First", "Second", "Third", "Fourth"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K19 [{"Padding", "AutomaticSize", "LayoutOrder", "Layout"}]
  LOADN R8 5
  SETTABLEKS R8 R7 K17 ["Padding"]
  GETIMPORT R8 K21 [Enum.AutomaticSize.XY]
  SETTABLEKS R8 R7 K18 ["AutomaticSize"]
  LOADN R8 1
  SETTABLEKS R8 R7 K3 ["LayoutOrder"]
  GETIMPORT R8 K23 [Enum.FillDirection.Horizontal]
  SETTABLEKS R8 R7 K2 ["Layout"]
  DUPTABLE R8 K25 [{"Button"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K30 [{"OnClick", "Style", "Size", "Text", "LayoutOrder"}]
  GETTABLEKS R12 R0 K31 ["importAvatars"]
  SETTABLEKS R12 R11 K26 ["OnClick"]
  LOADK R12 K32 ["RoundPrimary"]
  SETTABLEKS R12 R11 K27 ["Style"]
  GETIMPORT R12 K35 [UDim2.fromOffset]
  LOADN R13 200
  LOADN R14 70
  CALL R12 2 1
  SETTABLEKS R12 R11 K28 ["Size"]
  LOADK R12 K36 ["Import Avatars"]
  SETTABLEKS R12 R11 K29 ["Text"]
  LOADN R12 1
  SETTABLEKS R12 R11 K3 ["LayoutOrder"]
  DUPTABLE R12 K38 [{"progressWindow"}]
  LOADB R13 0
  GETTABLEKS R15 R0 K39 ["state"]
  GETTABLEKS R14 R15 K40 ["enabled"]
  JUMPIFNOTEQKB R14 TRUE [+174]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K0 ["createElement"]
  GETUPVAL R14 3
  DUPTABLE R15 K45 [{"Title", "Enabled", "Size", "OnClose", "Modal"}]
  LOADK R16 K46 ["Uploading"]
  SETTABLEKS R16 R15 K41 ["Title"]
  GETTABLEKS R17 R0 K39 ["state"]
  GETTABLEKS R16 R17 K40 ["enabled"]
  SETTABLEKS R16 R15 K42 ["Enabled"]
  GETIMPORT R16 K49 [Vector2.new]
  LOADN R17 94
  LOADN R18 90
  CALL R16 2 1
  SETTABLEKS R16 R15 K28 ["Size"]
  GETTABLEKS R16 R0 K50 ["close"]
  SETTABLEKS R16 R15 K43 ["OnClose"]
  LOADB R16 1
  SETTABLEKS R16 R15 K44 ["Modal"]
  NEWTABLE R16 0 1
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K0 ["createElement"]
  LOADK R18 K51 ["Frame"]
  DUPTABLE R19 K54 [{"Size", "Position", "BackgroundColor3", "LayoutOrder"}]
  GETIMPORT R20 K55 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 1
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K28 ["Size"]
  GETIMPORT R20 K55 [UDim2.new]
  LOADN R21 0
  LOADN R22 0
  LOADN R23 0
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K52 ["Position"]
  GETIMPORT R20 K7 [Color3.fromRGB]
  LOADN R21 100
  LOADN R22 100
  LOADN R23 100
  CALL R20 3 1
  SETTABLEKS R20 R19 K53 ["BackgroundColor3"]
  LOADN R20 1
  SETTABLEKS R20 R19 K3 ["LayoutOrder"]
  NEWTABLE R20 1 3
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K0 ["createElement"]
  LOADK R25 K56 ["UIListLayout"]
  DUPTABLE R26 K60 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment", "Padding"}]
  GETIMPORT R27 K11 [Enum.FillDirection.Vertical]
  SETTABLEKS R27 R26 K9 ["FillDirection"]
  GETIMPORT R27 K62 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R27 R26 K57 ["HorizontalAlignment"]
  GETIMPORT R27 K63 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R27 R26 K58 ["SortOrder"]
  GETIMPORT R27 K64 [Enum.VerticalAlignment.Center]
  SETTABLEKS R27 R26 K59 ["VerticalAlignment"]
  GETIMPORT R27 K66 [UDim.new]
  LOADN R28 0
  LOADN R29 10
  CALL R27 2 1
  SETTABLEKS R27 R26 K17 ["Padding"]
  CALL R24 2 1
  SETTABLEKS R24 R20 K56 ["UIListLayout"]
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K0 ["createElement"]
  GETUPVAL R22 4
  DUPTABLE R23 K68 [{"AutomaticSize", "Text", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R24 K21 [Enum.AutomaticSize.XY]
  SETTABLEKS R24 R23 K18 ["AutomaticSize"]
  GETTABLEKS R25 R0 K39 ["state"]
  GETTABLEKS R24 R25 K69 ["objectName"]
  SETTABLEKS R24 R23 K29 ["Text"]
  LOADN R24 1
  SETTABLEKS R24 R23 K67 ["BackgroundTransparency"]
  LOADN R24 1
  SETTABLEKS R24 R23 K3 ["LayoutOrder"]
  CALL R21 2 1
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K0 ["createElement"]
  GETUPVAL R23 5
  DUPTABLE R24 K71 [{"LayoutOrder", "Size", "Progress"}]
  LOADN R25 2
  SETTABLEKS R25 R24 K3 ["LayoutOrder"]
  GETIMPORT R25 K35 [UDim2.fromOffset]
  LOADN R26 150
  LOADN R27 10
  CALL R25 2 1
  SETTABLEKS R25 R24 K28 ["Size"]
  GETTABLEKS R26 R0 K39 ["state"]
  GETTABLEKS R25 R26 K72 ["progress"]
  SETTABLEKS R25 R24 K70 ["Progress"]
  CALL R22 2 1
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K0 ["createElement"]
  GETUPVAL R24 2
  DUPTABLE R25 K30 [{"OnClick", "Style", "Size", "Text", "LayoutOrder"}]
  GETTABLEKS R26 R0 K73 ["cancelUploadProcess"]
  SETTABLEKS R26 R25 K26 ["OnClick"]
  LOADK R26 K74 ["Round"]
  SETTABLEKS R26 R25 K27 ["Style"]
  GETIMPORT R26 K35 [UDim2.fromOffset]
  LOADN R27 90
  LOADN R28 20
  CALL R26 2 1
  SETTABLEKS R26 R25 K28 ["Size"]
  LOADK R26 K75 ["Cancel"]
  SETTABLEKS R26 R25 K29 ["Text"]
  LOADN R26 3
  SETTABLEKS R26 R25 K3 ["LayoutOrder"]
  CALL R23 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  SETTABLEKS R13 R12 K37 ["progressWindow"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K24 ["Button"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K12 ["First"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K76 [{"Padding", "AutomaticSize", "LayoutOrder"}]
  LOADN R8 10
  SETTABLEKS R8 R7 K17 ["Padding"]
  GETIMPORT R8 K21 [Enum.AutomaticSize.XY]
  SETTABLEKS R8 R7 K18 ["AutomaticSize"]
  LOADN R8 2
  SETTABLEKS R8 R7 K3 ["LayoutOrder"]
  NEWTABLE R8 0 1
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  GETUPVAL R10 6
  DUPTABLE R11 K79 [{"Checked", "Key", "LayoutOrder", "OnClick", "Text"}]
  GETTABLEKS R13 R0 K39 ["state"]
  GETTABLEKS R12 R13 K80 ["keepBody"]
  SETTABLEKS R12 R11 K77 ["Checked"]
  LOADK R12 K80 ["keepBody"]
  SETTABLEKS R12 R11 K78 ["Key"]
  LOADN R12 1
  SETTABLEKS R12 R11 K3 ["LayoutOrder"]
  GETTABLEKS R12 R0 K81 ["setKeepBody"]
  SETTABLEKS R12 R11 K26 ["OnClick"]
  LOADK R12 K82 ["Keep body"]
  SETTABLEKS R12 R11 K29 ["Text"]
  CALL R9 2 -1
  SETLIST R8 R9 -1 [1]
  CALL R5 3 1
  SETTABLEKS R5 R4 K13 ["Second"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K19 [{"Padding", "AutomaticSize", "LayoutOrder", "Layout"}]
  LOADN R8 10
  SETTABLEKS R8 R7 K17 ["Padding"]
  GETIMPORT R8 K21 [Enum.AutomaticSize.XY]
  SETTABLEKS R8 R7 K18 ["AutomaticSize"]
  LOADN R8 3
  SETTABLEKS R8 R7 K3 ["LayoutOrder"]
  GETIMPORT R8 K11 [Enum.FillDirection.Vertical]
  SETTABLEKS R8 R7 K2 ["Layout"]
  DUPTABLE R8 K84 [{"Button2"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K30 [{"OnClick", "Style", "Size", "Text", "LayoutOrder"}]
  GETTABLEKS R12 R0 K85 ["changeAvatarBody"]
  SETTABLEKS R12 R11 K26 ["OnClick"]
  LOADK R12 K32 ["RoundPrimary"]
  SETTABLEKS R12 R11 K27 ["Style"]
  GETIMPORT R12 K35 [UDim2.fromOffset]
  LOADN R13 200
  LOADN R14 30
  CALL R12 2 1
  SETTABLEKS R12 R11 K28 ["Size"]
  LOADK R12 K86 ["Change Avatar Body"]
  SETTABLEKS R12 R11 K29 ["Text"]
  LOADN R12 1
  SETTABLEKS R12 R11 K3 ["LayoutOrder"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K83 ["Button2"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K14 ["Third"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K19 [{"Padding", "AutomaticSize", "LayoutOrder", "Layout"}]
  LOADN R8 10
  SETTABLEKS R8 R7 K17 ["Padding"]
  GETIMPORT R8 K21 [Enum.AutomaticSize.XY]
  SETTABLEKS R8 R7 K18 ["AutomaticSize"]
  LOADN R8 4
  SETTABLEKS R8 R7 K3 ["LayoutOrder"]
  GETIMPORT R8 K11 [Enum.FillDirection.Vertical]
  SETTABLEKS R8 R7 K2 ["Layout"]
  NEWTABLE R8 0 1
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  GETUPVAL R10 7
  DUPTABLE R11 K89 [{"Size", "Style", "PlaceholderText", "OnTextChanged", "LayoutOrder"}]
  GETIMPORT R12 K35 [UDim2.fromOffset]
  LOADN R13 200
  LOADN R14 30
  CALL R12 2 1
  SETTABLEKS R12 R11 K28 ["Size"]
  LOADK R12 K90 ["FilledRoundedBorder"]
  SETTABLEKS R12 R11 K27 ["Style"]
  LOADK R12 K91 ["Input avatar bundle ID here"]
  SETTABLEKS R12 R11 K87 ["PlaceholderText"]
  NEWCLOSURE R12 P0
  CAPTURE VAL R0
  SETTABLEKS R12 R11 K88 ["OnTextChanged"]
  LOADN R12 1
  SETTABLEKS R12 R11 K3 ["LayoutOrder"]
  CALL R9 2 -1
  SETLIST R8 R9 -1 [1]
  CALL R5 3 1
  SETTABLEKS R5 R4 K15 ["Fourth"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["UI"]
  GETTABLEKS R4 R3 K9 ["Pane"]
  GETTABLEKS R5 R3 K10 ["Button"]
  GETTABLEKS R6 R3 K11 ["Checkbox"]
  GETTABLEKS R7 R3 K12 ["TextLabel"]
  GETTABLEKS R8 R3 K13 ["DEPRECATED_TextInput"]
  GETIMPORT R9 K4 [require]
  GETIMPORT R12 K1 [script]
  GETTABLEKS R11 R12 K2 ["Parent"]
  GETTABLEKS R10 R11 K14 ["multipleFBXimporter"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETIMPORT R13 K1 [script]
  GETTABLEKS R12 R13 K2 ["Parent"]
  GETTABLEKS R11 R12 K15 ["setTestAvatarBody"]
  CALL R10 1 1
  GETTABLEKS R11 R3 K16 ["Dialog"]
  GETTABLEKS R12 R3 K17 ["LoadingBar"]
  GETTABLEKS R13 R1 K18 ["PureComponent"]
  LOADK R15 K19 ["importUIComponent"]
  NAMECALL R13 R13 K20 ["extend"]
  CALL R13 2 1
  DUPCLOSURE R14 K21 [PROTO_5]
  CAPTURE VAL R9
  CAPTURE VAL R10
  SETTABLEKS R14 R13 K22 ["init"]
  DUPCLOSURE R14 K23 [PROTO_7]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R11
  CAPTURE VAL R7
  CAPTURE VAL R12
  CAPTURE VAL R6
  CAPTURE VAL R8
  SETTABLEKS R14 R13 K24 ["render"]
  RETURN R13 1