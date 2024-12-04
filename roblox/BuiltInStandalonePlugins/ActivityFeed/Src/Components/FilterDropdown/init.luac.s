PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["X"]
  RETURN R0 1

PROTO_1:
  NEWTABLE R0 0 0
  GETIMPORT R1 K1 [pairs]
  GETUPVAL R4 0
  GETTABLEKS R2 R4 K2 ["items"]
  CALL R1 1 3
  FORGPREP_NEXT R1
  SETTABLE R4 R0 R5
  FORGLOOP R1 2 [-2]
  RETURN R0 1

PROTO_2:
  NEWTABLE R0 0 0
  GETIMPORT R1 K1 [pairs]
  GETUPVAL R4 0
  GETTABLEKS R2 R4 K2 ["items"]
  CALL R1 1 3
  FORGPREP_NEXT R1
  FASTCALL2 TABLE_INSERT R0 R5 [+5]
  MOVE R7 R0
  MOVE R8 R5
  GETIMPORT R6 K5 [table.insert]
  CALL R6 2 0
  FORGLOOP R1 2 [-8]
  RETURN R0 1

PROTO_3:
  GETUPVAL R2 0
  LOADB R3 0
  CALL R2 1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["onChanged"]
  GETUPVAL R4 2
  GETTABLE R3 R4 R0
  CALL R2 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["AbsoluteSize"]
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  LOADB R2 0
  CALL R1 1 2
  GETUPVAL R3 1
  CALL R3 0 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["useState"]
  GETIMPORT R5 K3 [Vector2.new]
  LOADN R6 0
  LOADN R7 0
  CALL R5 2 -1
  CALL R4 -1 2
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["useMemo"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R4
  NEWTABLE R8 0 1
  MOVE R9 R4
  SETLIST R8 R9 1 [1]
  CALL R6 2 1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K4 ["useMemo"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R0
  NEWTABLE R9 0 1
  GETTABLEKS R10 R0 K5 ["items"]
  SETLIST R9 R10 1 [1]
  CALL R7 2 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K4 ["useMemo"]
  NEWCLOSURE R9 P2
  CAPTURE VAL R0
  NEWTABLE R10 0 1
  GETTABLEKS R11 R0 K5 ["items"]
  SETLIST R10 R11 1 [1]
  CALL R8 2 1
  NEWCLOSURE R9 P3
  CAPTURE VAL R2
  CAPTURE VAL R0
  CAPTURE VAL R7
  NEWCLOSURE R10 P4
  CAPTURE VAL R2
  NEWCLOSURE R11 P5
  CAPTURE VAL R2
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K6 ["createElement"]
  LOADK R13 K7 ["Frame"]
  NEWTABLE R14 8 0
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K8 ["Tag"]
  GETUPVAL R16 2
  LOADK R17 K9 ["Component-FilterDropdown"]
  GETTABLEKS R19 R3 K10 ["enabled"]
  JUMPIFNOT R19 [+2]
  LOADK R18 K11 ["ContentHovered"]
  JUMP [+1]
  LOADNIL R18
  CALL R16 2 1
  SETTABLE R16 R14 R15
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K12 ["Event"]
  GETTABLEKS R15 R16 K13 ["MouseEnter"]
  GETTABLEKS R16 R3 K14 ["enable"]
  SETTABLE R16 R14 R15
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K12 ["Event"]
  GETTABLEKS R15 R16 K15 ["MouseLeave"]
  GETTABLEKS R16 R3 K16 ["disable"]
  SETTABLE R16 R14 R15
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K17 ["Change"]
  GETTABLEKS R15 R16 K18 ["AbsoluteSize"]
  NEWCLOSURE R16 P6
  CAPTURE VAL R5
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R0 K19 ["layoutOrder"]
  SETTABLEKS R15 R14 K20 ["LayoutOrder"]
  DUPTABLE R15 K23 [{"Content", "Menu"}]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K6 ["createElement"]
  LOADK R17 K24 ["TextButton"]
  NEWTABLE R18 4 0
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K8 ["Tag"]
  GETUPVAL R20 2
  LOADK R21 K25 ["X-Row"]
  LOADK R22 K26 ["CX-Invisible"]
  CALL R20 2 1
  SETTABLE R20 R18 R19
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K12 ["Event"]
  GETTABLEKS R19 R20 K27 ["Activated"]
  SETTABLE R11 R18 R19
  LOADK R19 K28 [""]
  SETTABLEKS R19 R18 K29 ["Text"]
  DUPTABLE R19 K32 [{"Selected", "DropdownIconContainer"}]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K6 ["createElement"]
  LOADK R21 K33 ["TextLabel"]
  NEWTABLE R22 4 0
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K8 ["Tag"]
  GETUPVAL R24 2
  LOADK R25 K34 ["X-Fit"]
  LOADK R26 K26 ["CX-Invisible"]
  CALL R24 2 1
  SETTABLE R24 R22 R23
  GETTABLEKS R24 R0 K35 ["selectedItemIndex"]
  GETTABLE R23 R8 R24
  SETTABLEKS R23 R22 K29 ["Text"]
  GETUPVAL R23 3
  NAMECALL R23 R23 K36 ["getNextOrder"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K20 ["LayoutOrder"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K30 ["Selected"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K6 ["createElement"]
  LOADK R21 K7 ["Frame"]
  NEWTABLE R22 2 0
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K8 ["Tag"]
  GETUPVAL R24 2
  LOADK R25 K26 ["CX-Invisible"]
  CALL R24 1 1
  SETTABLE R24 R22 R23
  GETUPVAL R23 3
  NAMECALL R23 R23 K36 ["getNextOrder"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K20 ["LayoutOrder"]
  DUPTABLE R23 K38 [{"DropdownIcon"}]
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K6 ["createElement"]
  LOADK R25 K39 ["ImageLabel"]
  NEWTABLE R26 0 0
  CALL R24 2 1
  SETTABLEKS R24 R23 K37 ["DropdownIcon"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K31 ["DropdownIconContainer"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K21 ["Content"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K6 ["createElement"]
  GETUPVAL R17 4
  DUPTABLE R18 K45 [{"Items", "Width", "Hide", "OnItemActivated", "OnFocusLost"}]
  SETTABLEKS R8 R18 K40 ["Items"]
  SETTABLEKS R6 R18 K41 ["Width"]
  NOT R19 R1
  SETTABLEKS R19 R18 K42 ["Hide"]
  SETTABLEKS R9 R18 K43 ["OnItemActivated"]
  SETTABLEKS R10 R18 K44 ["OnFocusLost"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K22 ["Menu"]
  CALL R12 3 -1
  RETURN R12 -1

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
  GETTABLEKS R3 R4 K7 ["ReactUtils"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K9 ["Styling"]
  GETTABLEKS R4 R5 K10 ["joinTags"]
  GETTABLEKS R5 R2 K11 ["useToggleState"]
  GETTABLEKS R7 R3 K12 ["Util"]
  GETTABLEKS R6 R7 K13 ["LayoutOrderIterator"]
  GETTABLEKS R7 R6 K14 ["new"]
  CALL R7 0 1
  GETTABLEKS R8 R3 K15 ["UI"]
  GETTABLEKS R9 R8 K16 ["DropdownMenu"]
  DUPCLOSURE R10 K17 [PROTO_7]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R9
  RETURN R10 1
