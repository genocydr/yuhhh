PROTO_0:
  NEWTABLE R0 0 0
  GETIMPORT R1 K2 [debug.profilebegin]
  LOADK R2 K3 ["Find avatars"]
  CALL R1 1 0
  GETUPVAL R1 0
  NAMECALL R1 R1 K4 ["GetDescendants"]
  CALL R1 1 3
  FORGPREP R1
  GETUPVAL R6 1
  MOVE R7 R5
  CALL R6 1 1
  JUMPIFNOT R6 [+14]
  DUPTABLE R8 K7 [{"Key", "Avatar"}]
  NAMECALL R9 R5 K8 ["GetDebugId"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K5 ["Key"]
  SETTABLEKS R5 R8 K6 ["Avatar"]
  FASTCALL2 TABLE_INSERT R0 R8 [+4]
  MOVE R7 R0
  GETIMPORT R6 K11 [table.insert]
  CALL R6 2 0
  FORGLOOP R1 2 [-19]
  GETIMPORT R1 K13 [debug.profileend]
  CALL R1 0 0
  RETURN R0 1

PROTO_1:
  LOADK R3 K0 ["([.%%^$()%[%]+*-?])"]
  LOADK R4 K1 ["%%%1"]
  NAMECALL R1 R0 K2 ["gsub"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_2:
  GETTABLEKS R2 R0 K0 ["Avatar"]
  GETTABLEKS R1 R2 K1 ["Name"]
  GETUPVAL R3 0
  GETUPVAL R4 1
  CALL R3 1 -1
  NAMECALL R1 R1 K2 ["match"]
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_3:
  LENGTH R2 R1
  JUMPIFNOTEQKN R2 K0 [0] [+2]
  RETURN R0 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["filter"]
  MOVE R3 R0
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  GETUPVAL R1 0
  LOADK R3 K0 ["ImportPage"]
  NAMECALL R1 R1 K1 ["use"]
  CALL R1 2 1
  GETUPVAL R2 1
  NAMECALL R2 R2 K1 ["use"]
  CALL R2 1 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["useMemo"]
  GETUPVAL R4 3
  CALL R3 1 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["useState"]
  LOADK R5 K4 [""]
  CALL R4 1 2
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K5 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K10 [{"Title", "GoBack", "Search", "SetSearch"}]
  LOADK R11 K11 ["SelectScreen"]
  LOADK R12 K12 ["CurrentPlace"]
  NAMECALL R9 R2 K13 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K6 ["Title"]
  GETTABLEKS R9 R0 K7 ["GoBack"]
  SETTABLEKS R9 R8 K7 ["GoBack"]
  SETTABLEKS R4 R8 K8 ["Search"]
  SETTABLEKS R5 R8 K9 ["SetSearch"]
  DUPTABLE R9 K15 [{"Grid"}]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K5 ["createElement"]
  GETUPVAL R11 5
  DUPTABLE R12 K20 [{"Cells", "CellComponent", "CellPadding", "CellSize"}]
  LENGTH R14 R4
  JUMPIFNOTEQKN R14 K21 [0] [+3]
  MOVE R13 R3
  JUMP [+8]
  GETUPVAL R14 6
  GETTABLEKS R13 R14 K22 ["filter"]
  MOVE R14 R3
  NEWCLOSURE R15 P0
  CAPTURE UPVAL U7
  CAPTURE VAL R4
  CALL R13 2 1
  SETTABLEKS R13 R12 K16 ["Cells"]
  GETUPVAL R13 8
  SETTABLEKS R13 R12 K17 ["CellComponent"]
  GETTABLEKS R13 R1 K23 ["GridPadding"]
  SETTABLEKS R13 R12 K18 ["CellPadding"]
  GETIMPORT R13 K26 [UDim2.fromOffset]
  GETTABLEKS R15 R1 K27 ["Avatar"]
  GETTABLEKS R14 R15 K28 ["IconSize"]
  GETTABLEKS R19 R1 K27 ["Avatar"]
  GETTABLEKS R18 R19 K28 ["IconSize"]
  GETTABLEKS R20 R1 K27 ["Avatar"]
  GETTABLEKS R19 R20 K29 ["NameFontSize"]
  ADD R17 R18 R19
  GETTABLEKS R19 R1 K27 ["Avatar"]
  GETTABLEKS R18 R19 K30 ["NameLines"]
  ADD R16 R17 R18
  GETTABLEKS R18 R1 K27 ["Avatar"]
  GETTABLEKS R17 R18 K31 ["Padding"]
  ADD R15 R16 R17
  CALL R13 2 1
  SETTABLEKS R13 R12 K19 ["CellSize"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K14 ["Grid"]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Workspace"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["AvatarCompatibilityPreviewer"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["Dash"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R1 K10 ["Packages"]
  GETTABLEKS R4 R5 K12 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R1 K10 ["Packages"]
  GETTABLEKS R5 R6 K13 ["React"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R8 R1 K14 ["Src"]
  GETTABLEKS R7 R8 K15 ["Util"]
  GETTABLEKS R6 R7 K16 ["isAvatar"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R1 K14 ["Src"]
  GETTABLEKS R8 R9 K17 ["Resources"]
  GETTABLEKS R7 R8 K18 ["Theme"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETIMPORT R10 K5 [script]
  GETTABLEKS R9 R10 K19 ["Parent"]
  GETTABLEKS R8 R9 K20 ["AvatarCell"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETIMPORT R11 K5 [script]
  GETTABLEKS R10 R11 K19 ["Parent"]
  GETTABLEKS R9 R10 K21 ["ImportPage"]
  CALL R8 1 1
  GETTABLEKS R9 R3 K22 ["UI"]
  GETTABLEKS R10 R9 K23 ["Grid"]
  GETTABLEKS R12 R3 K24 ["ContextServices"]
  GETTABLEKS R11 R12 K25 ["Localization"]
  GETTABLEKS R13 R3 K24 ["ContextServices"]
  GETTABLEKS R12 R13 K26 ["Stylizer"]
  DUPCLOSURE R13 K27 [PROTO_0]
  CAPTURE VAL R0
  CAPTURE VAL R5
  DUPCLOSURE R14 K28 [PROTO_1]
  DUPCLOSURE R15 K29 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R14
  DUPCLOSURE R16 K30 [PROTO_4]
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R4
  CAPTURE VAL R13
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R2
  CAPTURE VAL R14
  CAPTURE VAL R7
  RETURN R16 1