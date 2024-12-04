PROTO_0:
  DUPTABLE R1 K2 [{"tags", "_Ref"}]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K0 ["tags"]
  DUPTABLE R2 K4 [{"Filters"}]
  LOADNIL R3
  SETTABLEKS R3 R2 K3 ["Filters"]
  SETTABLEKS R2 R1 K1 ["_Ref"]
  SETTABLEKS R1 R0 K5 ["state"]
  RETURN R0 0

PROTO_1:
  DUPTABLE R1 K2 [{"Label", "Data"}]
  GETIMPORT R2 K5 [string.format]
  LOADK R3 K6 ["%s %s"]
  GETUPVAL R4 0
  JUMPIFEQKS R0 K7 ["Assigned"] [+3]
  JUMPIFNOTEQKS R0 K8 ["Unassigned"] [+8]
  GETUPVAL R5 1
  LOADK R7 K9 ["ScriptPane"]
  MOVE R8 R0
  NAMECALL R5 R5 K10 ["getText"]
  CALL R5 3 1
  JUMP [+1]
  MOVE R5 R0
  CALL R2 3 1
  SETTABLEKS R2 R1 K0 ["Label"]
  DUPTABLE R2 K13 [{"RigType", "InstanceName"}]
  GETUPVAL R3 0
  SETTABLEKS R3 R2 K11 ["RigType"]
  SETTABLEKS R0 R2 K12 ["InstanceName"]
  SETTABLEKS R2 R1 K1 ["Data"]
  RETURN R1 1

PROTO_2:
  GETTABLE R4 R1 R2
  GETUPVAL R5 0
  MOVE R6 R4
  CALL R5 1 1
  GETIMPORT R6 K2 [table.sort]
  MOVE R7 R5
  CALL R6 1 0
  GETUPVAL R6 1
  MOVE R7 R0
  GETUPVAL R8 2
  MOVE R9 R5
  NEWCLOSURE R10 P0
  CAPTURE VAL R2
  CAPTURE VAL R3
  CALL R8 2 -1
  CALL R6 -1 0
  RETURN R0 0

PROTO_3:
  NEWTABLE R2 0 0
  GETUPVAL R3 0
  MOVE R4 R2
  GETTABLEKS R5 R0 K0 ["rigFilters"]
  LOADK R6 K1 ["R6"]
  MOVE R7 R1
  CALL R3 4 0
  GETUPVAL R3 0
  MOVE R4 R2
  GETTABLEKS R5 R0 K0 ["rigFilters"]
  LOADK R6 K2 ["R15"]
  MOVE R7 R1
  CALL R3 4 0
  RETURN R2 1

PROTO_4:
  GETTABLEKS R2 R0 K0 ["Filters"]
  GETTABLEKS R4 R1 K1 ["_Ref"]
  GETTABLEKS R3 R4 K0 ["Filters"]
  JUMPIFEQ R2 R3 [+37]
  GETTABLEKS R3 R0 K0 ["Filters"]
  GETTABLEKS R4 R0 K2 ["Localization"]
  NEWTABLE R5 0 0
  GETUPVAL R6 0
  MOVE R7 R5
  GETTABLEKS R8 R3 K3 ["rigFilters"]
  LOADK R9 K4 ["R6"]
  MOVE R10 R4
  CALL R6 4 0
  GETUPVAL R6 0
  MOVE R7 R5
  GETTABLEKS R8 R3 K3 ["rigFilters"]
  LOADK R9 K5 ["R15"]
  MOVE R10 R4
  CALL R6 4 0
  MOVE R2 R5
  DUPTABLE R3 K7 [{"tags", "_Ref"}]
  SETTABLEKS R2 R3 K6 ["tags"]
  GETUPVAL R4 1
  GETTABLEKS R5 R1 K1 ["_Ref"]
  DUPTABLE R6 K8 [{"Filters"}]
  GETTABLEKS R7 R0 K0 ["Filters"]
  SETTABLEKS R7 R6 K0 ["Filters"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K1 ["_Ref"]
  RETURN R3 1
  RETURN R0 0

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K4 [{"LayoutOrder", "Tag", "OnClosed"}]
  SETTABLEKS R1 R4 K1 ["LayoutOrder"]
  SETTABLEKS R0 R4 K2 ["Tag"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K5 ["OnFilterClosed"]
  SETTABLEKS R5 R4 K3 ["OnClosed"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_6:
  GETTABLEKS R1 R0 K0 ["state"]
  GETTABLEKS R2 R0 K1 ["props"]
  GETUPVAL R3 0
  GETTABLEKS R4 R1 K2 ["tags"]
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R2
  CALL R3 2 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 3
  DUPTABLE R6 K11 [{"LayoutOrder", "Size", "Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing", "ClipsDescendants"}]
  GETTABLEKS R7 R2 K4 ["LayoutOrder"]
  SETTABLEKS R7 R6 K4 ["LayoutOrder"]
  GETTABLEKS R7 R2 K5 ["Size"]
  SETTABLEKS R7 R6 K5 ["Size"]
  GETIMPORT R7 K15 [Enum.FillDirection.Horizontal]
  SETTABLEKS R7 R6 K6 ["Layout"]
  GETIMPORT R7 K17 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R7 R6 K7 ["HorizontalAlignment"]
  GETIMPORT R7 K19 [Enum.VerticalAlignment.Center]
  SETTABLEKS R7 R6 K8 ["VerticalAlignment"]
  LOADN R7 4
  SETTABLEKS R7 R6 K9 ["Spacing"]
  LOADB R7 1
  SETTABLEKS R7 R6 K10 ["ClipsDescendants"]
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["withContext"]
  GETTABLEKS R6 R3 K12 ["Dash"]
  GETTABLEKS R7 R6 K13 ["append"]
  GETTABLEKS R8 R6 K14 ["join"]
  GETTABLEKS R9 R6 K15 ["keys"]
  GETTABLEKS R10 R6 K16 ["map"]
  GETTABLEKS R11 R3 K17 ["UI"]
  GETTABLEKS R12 R11 K18 ["Pane"]
  GETTABLEKS R14 R0 K19 ["Src"]
  GETTABLEKS R13 R14 K20 ["Actions"]
  GETIMPORT R14 K5 [require]
  GETIMPORT R16 K1 [script]
  GETTABLEKS R15 R16 K21 ["TagComponent"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R17 R0 K19 ["Src"]
  GETTABLEKS R16 R17 K22 ["Types"]
  CALL R15 1 1
  GETTABLEKS R17 R0 K19 ["Src"]
  GETTABLEKS R16 R17 K23 ["Util"]
  GETTABLEKS R17 R1 K24 ["PureComponent"]
  LOADK R19 K25 ["TagsBar"]
  NAMECALL R17 R17 K26 ["extend"]
  CALL R17 2 1
  DUPCLOSURE R18 K27 [PROTO_0]
  SETTABLEKS R18 R17 K28 ["init"]
  DUPCLOSURE R18 K29 [PROTO_2]
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R10
  DUPCLOSURE R19 K30 [PROTO_3]
  CAPTURE VAL R18
  DUPCLOSURE R20 K31 [PROTO_4]
  CAPTURE VAL R18
  CAPTURE VAL R8
  SETTABLEKS R20 R17 K32 ["getDerivedStateFromProps"]
  DUPCLOSURE R20 K33 [PROTO_6]
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE VAL R14
  CAPTURE VAL R12
  SETTABLEKS R20 R17 K34 ["render"]
  MOVE R20 R5
  DUPTABLE R21 K38 [{"Analytics", "Localization", "Stylizer"}]
  GETTABLEKS R22 R4 K35 ["Analytics"]
  SETTABLEKS R22 R21 K35 ["Analytics"]
  GETTABLEKS R22 R4 K36 ["Localization"]
  SETTABLEKS R22 R21 K36 ["Localization"]
  GETTABLEKS R23 R3 K39 ["Style"]
  GETTABLEKS R22 R23 K37 ["Stylizer"]
  SETTABLEKS R22 R21 K37 ["Stylizer"]
  CALL R20 1 1
  MOVE R21 R17
  CALL R20 1 1
  MOVE R17 R20
  RETURN R17 1
