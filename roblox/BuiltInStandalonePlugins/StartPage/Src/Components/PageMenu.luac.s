PROTO_0:
  GETUPVAL R2 0
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["You can only use PageItem with FFlagLuaStartPageAddingRecentsPage on"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETUPVAL R1 1
  LOADK R2 K3 ["PointingHand"]
  CALL R1 1 2
  GETUPVAL R3 2
  NAMECALL R3 R3 K4 ["use"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K5 ["Selected"]
  JUMPIFNOT R5 [+2]
  LOADK R4 K6 ["StartPage-Selected"]
  JUMP [+1]
  LOADK R4 K7 ["StartPage-MenuBackground"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K8 ["createElement"]
  LOADK R6 K9 ["ImageButton"]
  NEWTABLE R7 8 0
  GETTABLEKS R8 R0 K10 ["LayoutOrder"]
  SETTABLEKS R8 R7 K10 ["LayoutOrder"]
  GETUPVAL R8 4
  SETTABLEKS R8 R7 K11 ["Size"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K12 ["Event"]
  GETTABLEKS R8 R9 K13 ["Activated"]
  GETTABLEKS R9 R0 K14 ["OnActivated"]
  SETTABLE R9 R7 R8
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K12 ["Event"]
  GETTABLEKS R8 R9 K15 ["MouseEnter"]
  SETTABLE R1 R7 R8
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K12 ["Event"]
  GETTABLEKS R8 R9 K16 ["MouseLeave"]
  SETTABLE R2 R7 R8
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K17 ["Tag"]
  GETUPVAL R9 5
  LOADK R10 K18 ["X-Row X-Left X-PadL StartPage-RoundedCorner8"]
  MOVE R11 R4
  CALL R9 2 1
  SETTABLE R9 R7 R8
  DUPTABLE R8 K21 [{"Icon", "Label"}]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K8 ["createElement"]
  LOADK R10 K22 ["Frame"]
  NEWTABLE R11 1 0
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K17 ["Tag"]
  LOADK R13 K23 ["X-FitX X-Left X-Middle X-Transparent"]
  SETTABLE R13 R11 R12
  NEWTABLE R12 0 1
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K8 ["createElement"]
  GETUPVAL R14 6
  NEWTABLE R15 1 0
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K17 ["Tag"]
  GETTABLEKS R18 R0 K24 ["Page"]
  GETTABLEKS R17 R18 K17 ["Tag"]
  SETTABLE R17 R15 R16
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  SETTABLEKS R9 R8 K19 ["Icon"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K8 ["createElement"]
  LOADK R10 K22 ["Frame"]
  NEWTABLE R11 1 0
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K17 ["Tag"]
  LOADK R13 K23 ["X-FitX X-Left X-Middle X-Transparent"]
  SETTABLE R13 R11 R12
  NEWTABLE R12 0 1
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K8 ["createElement"]
  LOADK R14 K25 ["TextLabel"]
  NEWTABLE R15 4 0
  LOADK R18 K26 ["Plugin"]
  GETTABLEKS R20 R0 K24 ["Page"]
  GETTABLEKS R19 R20 K27 ["TextKey"]
  NAMECALL R16 R3 K28 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K29 ["Text"]
  GETIMPORT R16 K33 [Enum.TextXAlignment.Left]
  SETTABLEKS R16 R15 K31 ["TextXAlignment"]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K17 ["Tag"]
  LOADK R17 K34 ["X-Fit X-Pad StartPage-TextColor X-Transparent StartPage-FontBold StartPage-TextSize"]
  SETTABLE R17 R15 R16
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  SETTABLEKS R9 R8 K20 ["Label"]
  CALL R5 3 -1
  RETURN R5 -1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnPageSwap"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnPageSwap"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 1
  CALL R2 0 1
  GETUPVAL R3 2
  LOADK R4 K1 ["PointingHand"]
  CALL R3 1 2
  NEWTABLE R5 0 0
  GETTABLEKS R6 R0 K2 ["Pages"]
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETUPVAL R11 3
  JUMPIFNOT R11 [+29]
  MOVE R12 R5
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K3 ["createElement"]
  GETUPVAL R14 5
  DUPTABLE R15 K8 [{"LayoutOrder", "Page", "Selected", "OnActivated"}]
  SETTABLEKS R9 R15 K4 ["LayoutOrder"]
  SETTABLEKS R10 R15 K5 ["Page"]
  GETTABLEKS R17 R0 K9 ["SelectedPage"]
  JUMPIFEQ R17 R10 [+2]
  LOADB R16 0 +1
  LOADB R16 1
  SETTABLEKS R16 R15 K6 ["Selected"]
  NEWCLOSURE R16 P0
  CAPTURE VAL R0
  CAPTURE VAL R10
  SETTABLEKS R16 R15 K7 ["OnActivated"]
  CALL R13 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R11 K12 [table.insert]
  CALL R11 -1 0
  JUMP [+134]
  GETTABLEKS R12 R0 K9 ["SelectedPage"]
  JUMPIFNOTEQ R10 R12 [+3]
  LOADK R11 K13 ["StartPage-Selected"]
  JUMP [+1]
  LOADK R11 K14 ["StartPage-MenuBackground"]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K3 ["createElement"]
  LOADK R15 K15 ["ImageButton"]
  NEWTABLE R16 8 0
  SETTABLEKS R9 R16 K4 ["LayoutOrder"]
  GETIMPORT R17 K18 [UDim2.new]
  LOADN R18 0
  LOADN R19 3
  LOADN R20 0
  LOADN R21 48
  CALL R17 4 1
  SETTABLEKS R17 R16 K19 ["Size"]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K20 ["Event"]
  GETTABLEKS R17 R18 K21 ["Activated"]
  NEWCLOSURE R18 P1
  CAPTURE VAL R0
  CAPTURE VAL R10
  SETTABLE R18 R16 R17
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K20 ["Event"]
  GETTABLEKS R17 R18 K22 ["MouseEnter"]
  SETTABLE R3 R16 R17
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K20 ["Event"]
  GETTABLEKS R17 R18 K23 ["MouseLeave"]
  SETTABLE R4 R16 R17
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K24 ["Tag"]
  GETUPVAL R18 6
  LOADK R19 K25 ["X-Row X-Left X-PadL StartPage-RoundedCorner8"]
  MOVE R20 R11
  CALL R18 2 1
  SETTABLE R18 R16 R17
  DUPTABLE R17 K28 [{"Icon", "Label"}]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K3 ["createElement"]
  LOADK R19 K29 ["Frame"]
  NEWTABLE R20 1 0
  GETUPVAL R22 4
  GETTABLEKS R21 R22 K24 ["Tag"]
  LOADK R22 K30 ["X-FitX X-Left X-Middle X-Transparent"]
  SETTABLE R22 R20 R21
  NEWTABLE R21 0 1
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K3 ["createElement"]
  GETUPVAL R23 7
  NEWTABLE R24 1 0
  GETUPVAL R26 4
  GETTABLEKS R25 R26 K24 ["Tag"]
  GETTABLEKS R26 R10 K24 ["Tag"]
  SETTABLE R26 R24 R25
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  SETTABLEKS R18 R17 K26 ["Icon"]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K3 ["createElement"]
  LOADK R19 K29 ["Frame"]
  NEWTABLE R20 1 0
  GETUPVAL R22 4
  GETTABLEKS R21 R22 K24 ["Tag"]
  LOADK R22 K30 ["X-FitX X-Left X-Middle X-Transparent"]
  SETTABLE R22 R20 R21
  NEWTABLE R21 0 1
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K3 ["createElement"]
  LOADK R23 K31 ["TextLabel"]
  NEWTABLE R24 4 0
  LOADK R27 K32 ["Plugin"]
  GETTABLEKS R28 R10 K33 ["TextKey"]
  NAMECALL R25 R1 K34 ["getText"]
  CALL R25 3 1
  SETTABLEKS R25 R24 K35 ["Text"]
  GETIMPORT R25 K39 [Enum.TextXAlignment.Left]
  SETTABLEKS R25 R24 K37 ["TextXAlignment"]
  GETUPVAL R26 4
  GETTABLEKS R25 R26 K24 ["Tag"]
  LOADK R26 K40 ["X-Fit X-Pad StartPage-TextColor X-Transparent StartPage-FontBold StartPage-TextSize"]
  SETTABLE R26 R24 R25
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  SETTABLEKS R18 R17 K27 ["Label"]
  CALL R14 3 1
  FASTCALL2 TABLE_INSERT R5 R14 [+4]
  MOVE R13 R5
  GETIMPORT R12 K12 [table.insert]
  CALL R12 2 0
  FORGLOOP R6 2 [-166]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K3 ["createElement"]
  LOADK R7 K29 ["Frame"]
  NEWTABLE R8 4 0
  GETTABLEKS R9 R0 K41 ["Position"]
  SETTABLEKS R9 R8 K41 ["Position"]
  GETTABLEKS R9 R0 K19 ["Size"]
  SETTABLEKS R9 R8 K19 ["Size"]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K24 ["Tag"]
  LOADK R10 K42 ["X-Pad X-Top X-Left X-Corner StartPage-MenuBackground"]
  SETTABLE R10 R8 R9
  NEWTABLE R9 0 1
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K3 ["createElement"]
  LOADK R11 K29 ["Frame"]
  NEWTABLE R12 4 0
  GETIMPORT R13 K18 [UDim2.new]
  LOADN R14 0
  LOADN R15 12
  LOADN R16 0
  LOADN R17 12
  CALL R13 4 1
  SETTABLEKS R13 R12 K41 ["Position"]
  GETIMPORT R13 K18 [UDim2.new]
  LOADN R14 1
  LOADN R15 192
  LOADN R16 1
  LOADN R17 192
  CALL R13 4 1
  SETTABLEKS R13 R12 K19 ["Size"]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K24 ["Tag"]
  LOADK R14 K43 ["X-Fit X-Column X-Transparent"]
  SETTABLE R14 R12 R13
  DUPTABLE R13 K45 [{"NewButton", "Pages"}]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K3 ["createElement"]
  LOADK R15 K29 ["Frame"]
  NEWTABLE R16 4 0
  GETIMPORT R17 K18 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  LOADN R21 80
  CALL R17 4 1
  SETTABLEKS R17 R16 K19 ["Size"]
  MOVE R17 R2
  CALL R17 0 1
  SETTABLEKS R17 R16 K4 ["LayoutOrder"]
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K24 ["Tag"]
  LOADK R18 K46 ["X-Transparent"]
  SETTABLE R18 R16 R17
  NEWTABLE R17 0 1
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K3 ["createElement"]
  GETUPVAL R19 8
  DUPTABLE R20 K47 [{"Size"}]
  GETIMPORT R21 K18 [UDim2.new]
  LOADN R22 0
  LOADN R23 3
  LOADN R24 0
  LOADN R25 48
  CALL R21 4 1
  SETTABLEKS R21 R20 K19 ["Size"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  SETTABLEKS R14 R13 K44 ["NewButton"]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K3 ["createElement"]
  LOADK R15 K29 ["Frame"]
  NEWTABLE R16 2 0
  MOVE R17 R2
  CALL R17 0 1
  SETTABLEKS R17 R16 K4 ["LayoutOrder"]
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K24 ["Tag"]
  LOADK R18 K48 ["X-Fit X-Top X-Left X-ColumnS X-Transparent"]
  SETTABLE R18 R16 R17
  MOVE R17 R5
  CALL R14 3 1
  SETTABLEKS R14 R13 K2 ["Pages"]
  CALL R10 3 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
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
  GETTABLEKS R4 R2 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["counter"]
  GETTABLEKS R5 R2 K11 ["ContextServices"]
  GETTABLEKS R4 R5 K12 ["Localization"]
  GETTABLEKS R5 R2 K13 ["UI"]
  GETTABLEKS R6 R5 K14 ["Image"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K15 ["Src"]
  GETTABLEKS R9 R10 K16 ["SharedFlags"]
  GETTABLEKS R8 R9 K17 ["getFFlagLuaStartPageAddingRecentsPage"]
  CALL R7 1 1
  CALL R7 0 1
  GETTABLEKS R9 R0 K15 ["Src"]
  GETTABLEKS R8 R9 K18 ["Components"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R8 K19 ["NewButton"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K15 ["Src"]
  GETTABLEKS R12 R13 K20 ["Hooks"]
  GETTABLEKS R11 R12 K21 ["useCursor"]
  CALL R10 1 1
  GETTABLEKS R12 R2 K22 ["Styling"]
  GETTABLEKS R11 R12 K23 ["joinTags"]
  GETIMPORT R12 K5 [require]
  GETTABLEKS R14 R0 K15 ["Src"]
  GETTABLEKS R13 R14 K24 ["Types"]
  CALL R12 1 1
  GETIMPORT R13 K27 [UDim2.new]
  LOADN R14 0
  LOADN R15 3
  LOADN R16 0
  LOADN R17 48
  CALL R13 4 1
  DUPCLOSURE R14 K28 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R10
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R13
  CAPTURE VAL R11
  CAPTURE VAL R6
  DUPCLOSURE R15 K29 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R10
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R14
  CAPTURE VAL R11
  CAPTURE VAL R6
  CAPTURE VAL R9
  RETURN R15 1