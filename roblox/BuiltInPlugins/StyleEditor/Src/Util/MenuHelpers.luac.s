PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["GetClassIcon"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R1 K1 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CALL R1 1 2
  JUMPIFNOT R1 [+3]
  GETTABLEKS R3 R2 K2 ["Image"]
  RETURN R3 1
  LOADNIL R3
  RETURN R3 1

PROTO_2:
  DUPTABLE R1 K5 [{"Id", "Text", "Icon", "OnItemClicked", "Data"}]
  GETTABLEKS R2 R0 K6 ["Name"]
  SETTABLEKS R2 R1 K0 ["Id"]
  GETUPVAL R2 0
  LOADK R4 K7 ["Category"]
  GETTABLEKS R5 R0 K6 ["Name"]
  NAMECALL R2 R2 K8 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K1 ["Text"]
  GETTABLEKS R2 R0 K2 ["Icon"]
  SETTABLEKS R2 R1 K2 ["Icon"]
  GETUPVAL R2 1
  SETTABLEKS R2 R1 K3 ["OnItemClicked"]
  DUPTABLE R2 K9 [{"Category"}]
  GETTABLEKS R3 R0 K6 ["Name"]
  SETTABLEKS R3 R2 K7 ["Category"]
  SETTABLEKS R2 R1 K4 ["Data"]
  RETURN R1 1

PROTO_3:
  GETUPVAL R2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["StyleSheetCategories"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  DUPTABLE R1 K4 [{"Id", "Text", "OnItemClicked", "Data"}]
  SETTABLEKS R0 R1 K0 ["Id"]
  SETTABLEKS R0 R1 K1 ["Text"]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K2 ["OnItemClicked"]
  DUPTABLE R2 K6 [{"Type"}]
  SETTABLEKS R0 R2 K5 ["Type"]
  SETTABLEKS R2 R1 K3 ["Data"]
  RETURN R1 1

PROTO_5:
  GETUPVAL R2 0
  MOVE R3 R0
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  CALL R2 2 -1
  RETURN R2 -1

PROTO_6:
  DUPTABLE R1 K5 [{"Id", "Text", "Icon", "OnItemClicked", "Data"}]
  SETTABLEKS R0 R1 K0 ["Id"]
  SETTABLEKS R0 R1 K1 ["Text"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["getClassIcon"]
  MOVE R3 R0
  CALL R2 1 1
  SETTABLEKS R2 R1 K2 ["Icon"]
  GETUPVAL R2 1
  SETTABLEKS R2 R1 K3 ["OnItemClicked"]
  DUPTABLE R2 K8 [{"Selector"}]
  SETTABLEKS R0 R2 K7 ["Selector"]
  SETTABLEKS R2 R1 K4 ["Data"]
  RETURN R1 1

PROTO_7:
  GETUPVAL R2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["Classes"]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R2 2 -1
  RETURN R2 -1

PROTO_8:
  GETTABLEKS R1 R0 K0 ["Children"]
  JUMPIFNOT R1 [+12]
  GETUPVAL R1 0
  MOVE R2 R0
  DUPTABLE R3 K1 [{"Children"}]
  GETUPVAL R4 1
  GETUPVAL R5 2
  GETTABLEKS R6 R0 K0 ["Children"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K0 ["Children"]
  CALL R1 2 -1
  RETURN R1 -1
  GETUPVAL R1 0
  MOVE R2 R0
  DUPTABLE R3 K3 [{"Data"}]
  DUPTABLE R4 K5 [{"Selector"}]
  GETUPVAL R6 2
  GETTABLEKS R8 R0 K2 ["Data"]
  GETTABLEKS R7 R8 K4 ["Selector"]
  CONCAT R5 R6 R7
  SETTABLEKS R5 R4 K4 ["Selector"]
  SETTABLEKS R4 R3 K2 ["Data"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_9:
  GETUPVAL R2 0
  MOVE R3 R1
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CALL R2 2 -1
  RETURN R2 -1

PROTO_10:
  DUPTABLE R1 K5 [{"Id", "Text", "Icon", "OnItemClicked", "Data"}]
  SETTABLEKS R0 R1 K0 ["Id"]
  SETTABLEKS R0 R1 K1 ["Text"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["getClassIcon"]
  MOVE R3 R0
  CALL R2 1 1
  SETTABLEKS R2 R1 K2 ["Icon"]
  GETUPVAL R2 1
  SETTABLEKS R2 R1 K3 ["OnItemClicked"]
  DUPTABLE R2 K8 [{"Selector"}]
  LOADK R4 K9 ["::"]
  MOVE R5 R0
  CONCAT R3 R4 R5
  SETTABLEKS R3 R2 K7 ["Selector"]
  SETTABLEKS R2 R1 K4 ["Data"]
  RETURN R1 1

PROTO_11:
  DUPTABLE R1 K5 [{"Id", "Text", "Icon", "OnItemClicked", "Data"}]
  SETTABLEKS R0 R1 K0 ["Id"]
  SETTABLEKS R0 R1 K1 ["Text"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K6 ["Selectors"]
  GETTABLEKS R2 R3 K7 ["GuiState"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K2 ["Icon"]
  GETUPVAL R2 1
  SETTABLEKS R2 R1 K3 ["OnItemClicked"]
  DUPTABLE R2 K9 [{"Selector"}]
  LOADK R4 K10 [":"]
  MOVE R5 R0
  CONCAT R3 R4 R5
  SETTABLEKS R3 R2 K8 ["Selector"]
  SETTABLEKS R2 R1 K4 ["Data"]
  RETURN R1 1

PROTO_12:
  DUPCLOSURE R3 K0 [PROTO_9]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R3
  LOADK R6 K1 ["StyleRule"]
  NAMECALL R4 R0 K2 ["IsA"]
  CALL R4 2 1
  GETUPVAL R5 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K3 ["PseudoInstances"]
  NEWCLOSURE R7 P1
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  CALL R5 2 1
  GETUPVAL R6 0
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K4 ["GuiStates"]
  NEWCLOSURE R8 P2
  CAPTURE UPVAL U3
  CAPTURE VAL R1
  CALL R6 2 1
  DUPTABLE R7 K10 [{"Id", "Icon", "Text", "OnItemClicked", "Data"}]
  LOADK R8 K11 ["Name"]
  SETTABLEKS R8 R7 K5 ["Id"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K12 ["Selectors"]
  GETTABLEKS R8 R9 K11 ["Name"]
  CALL R8 0 1
  SETTABLEKS R8 R7 K6 ["Icon"]
  LOADK R10 K13 ["ContextMenu"]
  LOADK R11 K14 ["New.Name"]
  NAMECALL R8 R2 K15 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K7 ["Text"]
  SETTABLEKS R1 R7 K8 ["OnItemClicked"]
  DUPTABLE R8 K17 [{"Selector"}]
  LOADK R9 K18 ["#Name"]
  SETTABLEKS R9 R8 K16 ["Selector"]
  SETTABLEKS R8 R7 K9 ["Data"]
  DUPTABLE R8 K19 [{"Id", "Text", "Icon", "OnItemClicked", "Data"}]
  LOADK R9 K20 ["Tag"]
  SETTABLEKS R9 R8 K5 ["Id"]
  LOADK R11 K13 ["ContextMenu"]
  LOADK R12 K21 ["New.Tag"]
  NAMECALL R9 R2 K15 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K7 ["Text"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K12 ["Selectors"]
  GETTABLEKS R9 R10 K20 ["Tag"]
  CALL R9 0 1
  SETTABLEKS R9 R8 K6 ["Icon"]
  SETTABLEKS R1 R8 K8 ["OnItemClicked"]
  DUPTABLE R9 K17 [{"Selector"}]
  LOADK R10 K22 [".Tag"]
  SETTABLEKS R10 R9 K16 ["Selector"]
  SETTABLEKS R9 R8 K9 ["Data"]
  DUPTABLE R9 K24 [{"Id", "Icon", "Text", "OnItemClicked", "Children"}]
  LOADK R10 K25 ["Class"]
  SETTABLEKS R10 R9 K5 ["Id"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K12 ["Selectors"]
  GETTABLEKS R10 R11 K25 ["Class"]
  CALL R10 0 1
  SETTABLEKS R10 R9 K6 ["Icon"]
  LOADK R12 K13 ["ContextMenu"]
  LOADK R13 K26 ["New.Class"]
  NAMECALL R10 R2 K15 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K7 ["Text"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K27 ["noop"]
  SETTABLEKS R10 R9 K8 ["OnItemClicked"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K28 ["getClassTypeActions"]
  MOVE R11 R1
  MOVE R12 R2
  CALL R10 2 1
  SETTABLEKS R10 R9 K23 ["Children"]
  DUPTABLE R10 K29 [{"Id", "Text", "OnItemClicked", "Data"}]
  LOADK R11 K30 ["Empty"]
  SETTABLEKS R11 R10 K5 ["Id"]
  LOADK R13 K13 ["ContextMenu"]
  LOADK R14 K31 ["New.Empty"]
  NAMECALL R11 R2 K15 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K7 ["Text"]
  SETTABLEKS R1 R10 K8 ["OnItemClicked"]
  DUPTABLE R11 K17 [{"Selector"}]
  LOADK R12 K32 [""]
  SETTABLEKS R12 R11 K16 ["Selector"]
  SETTABLEKS R11 R10 K9 ["Data"]
  DUPTABLE R11 K33 [{"Id", "Text", "Icon", "Children"}]
  LOADK R12 K34 ["New"]
  SETTABLEKS R12 R11 K5 ["Id"]
  LOADK R14 K13 ["ContextMenu"]
  LOADK R15 K34 ["New"]
  NAMECALL R12 R2 K15 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K7 ["Text"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K35 ["new"]
  CALL R12 0 1
  SETTABLEKS R12 R11 K6 ["Icon"]
  NEWTABLE R12 0 9
  MOVE R13 R7
  MOVE R14 R8
  MOVE R15 R9
  DUPTABLE R16 K36 [{"Id", "Icon", "Text", "Children"}]
  LOADK R17 K37 ["PseudoInstance"]
  SETTABLEKS R17 R16 K5 ["Id"]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K12 ["Selectors"]
  GETTABLEKS R17 R18 K37 ["PseudoInstance"]
  CALL R17 0 1
  SETTABLEKS R17 R16 K6 ["Icon"]
  LOADK R19 K13 ["ContextMenu"]
  LOADK R20 K38 ["New.PseudoInstance"]
  NAMECALL R17 R2 K15 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K7 ["Text"]
  SETTABLEKS R5 R16 K23 ["Children"]
  DUPTABLE R17 K36 [{"Id", "Icon", "Text", "Children"}]
  LOADK R18 K39 ["GuiState"]
  SETTABLEKS R18 R17 K5 ["Id"]
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K12 ["Selectors"]
  GETTABLEKS R18 R19 K39 ["GuiState"]
  CALL R18 0 1
  SETTABLEKS R18 R17 K6 ["Icon"]
  LOADK R20 K13 ["ContextMenu"]
  LOADK R21 K40 ["New.GuiState"]
  NAMECALL R18 R2 K15 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K7 ["Text"]
  SETTABLEKS R6 R17 K23 ["Children"]
  DUPTABLE R18 K42 [{"Id", "Icon", "Enabled", "Text", "Children"}]
  LOADK R19 K43 ["Enumerator"]
  SETTABLEKS R19 R18 K5 ["Id"]
  GETUPVAL R21 3
  GETTABLEKS R20 R21 K12 ["Selectors"]
  GETTABLEKS R19 R20 K43 ["Enumerator"]
  CALL R19 0 1
  SETTABLEKS R19 R18 K6 ["Icon"]
  SETTABLEKS R4 R18 K41 ["Enabled"]
  LOADK R21 K13 ["ContextMenu"]
  LOADK R22 K44 ["New.Enumerator"]
  NAMECALL R19 R2 K15 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K7 ["Text"]
  JUMPIFNOT R4 [+18]
  NEWTABLE R20 0 4
  MOVE R21 R7
  MOVE R22 R8
  MOVE R23 R9
  MOVE R24 R10
  SETLIST R20 R21 4 [1]
  GETUPVAL R21 0
  MOVE R22 R20
  LOADK R24 K45 [","]
  NEWCLOSURE R23 P3
  CAPTURE UPVAL U1
  CAPTURE VAL R3
  CAPTURE VAL R24
  CALL R21 2 1
  MOVE R19 R21
  JUMP [+1]
  LOADNIL R19
  SETTABLEKS R19 R18 K23 ["Children"]
  DUPTABLE R19 K36 [{"Id", "Icon", "Text", "Children"}]
  LOADK R20 K46 ["Child"]
  SETTABLEKS R20 R19 K5 ["Id"]
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K12 ["Selectors"]
  GETTABLEKS R20 R21 K46 ["Child"]
  CALL R20 0 1
  SETTABLEKS R20 R19 K6 ["Icon"]
  LOADK R22 K13 ["ContextMenu"]
  LOADK R23 K47 ["New.Child"]
  NAMECALL R20 R2 K15 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K7 ["Text"]
  NEWTABLE R21 0 4
  MOVE R22 R7
  MOVE R23 R8
  MOVE R24 R9
  MOVE R25 R10
  SETLIST R21 R22 4 [1]
  GETUPVAL R22 0
  MOVE R23 R21
  LOADK R25 K48 [">"]
  NEWCLOSURE R24 P3
  CAPTURE UPVAL U1
  CAPTURE VAL R3
  CAPTURE VAL R25
  CALL R22 2 1
  MOVE R20 R22
  SETTABLEKS R20 R19 K23 ["Children"]
  DUPTABLE R20 K36 [{"Id", "Icon", "Text", "Children"}]
  LOADK R21 K49 ["Descendant"]
  SETTABLEKS R21 R20 K5 ["Id"]
  GETUPVAL R23 3
  GETTABLEKS R22 R23 K12 ["Selectors"]
  GETTABLEKS R21 R22 K49 ["Descendant"]
  CALL R21 0 1
  SETTABLEKS R21 R20 K6 ["Icon"]
  LOADK R23 K13 ["ContextMenu"]
  LOADK R24 K50 ["New.Descendant"]
  NAMECALL R21 R2 K15 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K7 ["Text"]
  NEWTABLE R22 0 4
  MOVE R23 R7
  MOVE R24 R8
  MOVE R25 R9
  MOVE R26 R10
  SETLIST R22 R23 4 [1]
  GETUPVAL R23 0
  MOVE R24 R22
  LOADK R26 K51 [">>"]
  NEWCLOSURE R25 P3
  CAPTURE UPVAL U1
  CAPTURE VAL R3
  CAPTURE VAL R26
  CALL R23 2 1
  MOVE R21 R23
  SETTABLEKS R21 R20 K23 ["Children"]
  MOVE R21 R10
  SETLIST R12 R13 9 [1]
  SETTABLEKS R12 R11 K23 ["Children"]
  RETURN R11 1

PROTO_13:
  DUPTABLE R2 K4 [{"Id", "Text", "Icon", "OnItemClicked"}]
  LOADK R3 K5 ["Rename"]
  SETTABLEKS R3 R2 K0 ["Id"]
  LOADK R5 K6 ["ContextMenu"]
  LOADK R6 K5 ["Rename"]
  NAMECALL R3 R1 K7 ["getText"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K1 ["Text"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["edit"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K2 ["Icon"]
  SETTABLEKS R0 R2 K3 ["OnItemClicked"]
  RETURN R2 1

PROTO_14:
  GETUPVAL R5 0
  GETTABLEKS R2 R5 K0 ["Id"]
  LOADK R3 K1 ["/"]
  GETTABLEKS R4 R0 K0 ["Id"]
  CONCAT R1 R2 R4
  SETTABLEKS R1 R0 K0 ["Id"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["buildMenu"]
  MOVE R2 R0
  CALL R1 1 1
  MOVE R0 R1
  RETURN R0 1

PROTO_15:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["filterHiddenActions"]
  GETTABLEKS R2 R0 K1 ["Children"]
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  CALL R1 1 1
  GETUPVAL R2 1
  MOVE R3 R1
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CALL R2 2 1
  GETUPVAL R3 2
  MOVE R4 R0
  MOVE R5 R2
  CALL R3 2 1
  LOADNIL R4
  SETTABLEKS R4 R3 K1 ["Children"]
  RETURN R3 1

PROTO_16:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_17:
  GETTABLEKS R2 R0 K0 ["OnItemClicked"]
  JUMPIFNOT R2 [+5]
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETTABLEKS R3 R0 K0 ["OnItemClicked"]
  GETTABLEKS R3 R0 K1 ["Children"]
  JUMPIFNOT R3 [+13]
  GETTABLEKS R3 R0 K1 ["Children"]
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K2 ["decorateClickHandlers"]
  MOVE R9 R7
  MOVE R10 R1
  CALL R8 2 0
  FORGLOOP R3 2 [-7]
  RETURN R0 0

PROTO_18:
  GETUPVAL R1 0
  GETUPVAL R3 1
  DUPTABLE R4 K2 [{"path", "data"}]
  GETTABLEKS R5 R0 K3 ["Id"]
  SETTABLEKS R5 R4 K0 ["path"]
  GETTABLEKS R5 R0 K4 ["Data"]
  SETTABLEKS R5 R4 K1 ["data"]
  CALL R3 1 -1
  NAMECALL R1 R1 K5 ["logTelemetryEvent"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["decorateClickHandlers"]
  MOVE R3 R0
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CALL R2 2 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["buildMenu"]
  MOVE R3 R1
  CALL R2 1 1
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R2
  CALL R3 2 0
  RETURN R0 0

PROTO_21:
  GETTABLEKS R2 R0 K0 ["Hidden"]
  JUMPIFNOTEQKB R2 TRUE [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_22:
  GETUPVAL R1 0
  MOVE R2 R0
  DUPCLOSURE R3 K0 [PROTO_21]
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K9 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Rodux"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R1 K9 ["Packages"]
  GETTABLEKS R5 R6 K12 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R6 R4 K13 ["UI"]
  GETTABLEKS R5 R6 K14 ["showContextMenu"]
  GETIMPORT R6 K8 [require]
  GETTABLEKS R8 R1 K9 ["Packages"]
  GETTABLEKS R7 R8 K15 ["Dash"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K16 ["map"]
  GETTABLEKS R8 R6 K17 ["filter"]
  GETTABLEKS R9 R6 K18 ["join"]
  GETIMPORT R10 K8 [require]
  GETTABLEKS R14 R1 K19 ["Src"]
  GETTABLEKS R13 R14 K20 ["Resources"]
  GETTABLEKS R12 R13 K21 ["Telemetry"]
  GETTABLEKS R11 R12 K22 ["ContextMenuItemClickedEvent"]
  CALL R10 1 1
  GETIMPORT R11 K8 [require]
  GETTABLEKS R15 R1 K19 ["Src"]
  GETTABLEKS R14 R15 K23 ["Contexts"]
  GETTABLEKS R13 R14 K21 ["Telemetry"]
  GETTABLEKS R12 R13 K24 ["Types"]
  CALL R11 1 1
  GETIMPORT R12 K8 [require]
  GETTABLEKS R14 R1 K19 ["Src"]
  GETTABLEKS R13 R14 K24 ["Types"]
  CALL R12 1 1
  GETIMPORT R13 K8 [require]
  GETTABLEKS R16 R1 K19 ["Src"]
  GETTABLEKS R15 R16 K20 ["Resources"]
  GETTABLEKS R14 R15 K25 ["ModernIcons"]
  CALL R13 1 1
  NEWTABLE R14 32 0
  NEWTABLE R15 0 8
  LOADK R16 K26 ["CanvasGroup"]
  LOADK R17 K27 ["ImageButton"]
  LOADK R18 K28 ["ImageLabel"]
  LOADK R19 K29 ["ScrollingFrame"]
  LOADK R20 K30 ["Frame"]
  LOADK R21 K31 ["TextBox"]
  LOADK R22 K32 ["TextButton"]
  LOADK R23 K33 ["TextLabel"]
  SETLIST R15 R16 8 [1]
  SETTABLEKS R15 R14 K34 ["Classes"]
  NEWTABLE R15 0 12
  LOADK R16 K35 ["UIAspectRatioConstraint"]
  LOADK R17 K36 ["UICorner"]
  LOADK R18 K37 ["UIGradient"]
  LOADK R19 K38 ["UIGridLayout"]
  LOADK R20 K39 ["UIListLayout"]
  LOADK R21 K40 ["UIPadding"]
  LOADK R22 K41 ["UIPageLayout"]
  LOADK R23 K42 ["UIScale"]
  LOADK R24 K43 ["UISizeConstraint"]
  LOADK R25 K44 ["UIStroke"]
  LOADK R26 K45 ["UITableLayout"]
  LOADK R27 K46 ["UITextSizeConstraint"]
  SETLIST R15 R16 12 [1]
  SETTABLEKS R15 R14 K47 ["PseudoInstances"]
  NEWTABLE R15 0 3
  LOADK R16 K48 ["hover"]
  LOADK R17 K49 ["idle"]
  LOADK R18 K50 ["pressed"]
  SETLIST R15 R16 3 [1]
  SETTABLEKS R15 R14 K51 ["GuiStates"]
  NEWTABLE R15 0 15
  LOADK R16 K52 ["string"]
  LOADK R17 K53 ["boolean"]
  LOADK R18 K54 ["number"]
  LOADK R19 K55 ["UDim"]
  LOADK R20 K56 ["UDim2"]
  LOADK R21 K57 ["BrickColor"]
  LOADK R22 K58 ["Color3"]
  LOADK R23 K59 ["Vector2"]
  LOADK R24 K60 ["Vector3"]
  LOADK R25 K61 ["CFrame"]
  LOADK R26 K62 ["ColorSequence"]
  LOADK R27 K63 ["NumberSequence"]
  LOADK R28 K64 ["NumberRange"]
  LOADK R29 K65 ["Rect"]
  LOADK R30 K66 ["Font"]
  SETLIST R15 R16 15 [1]
  SETTABLEKS R15 R14 K67 ["AttributeTypes"]
  DUPCLOSURE R15 K68 [PROTO_1]
  CAPTURE VAL R0
  SETTABLEKS R15 R14 K69 ["getClassIcon"]
  NEWTABLE R15 0 3
  DUPTABLE R16 K72 [{"Name", "Icon"}]
  LOADK R17 K73 ["Tokens"]
  SETTABLEKS R17 R16 K70 ["Name"]
  GETTABLEKS R18 R13 K74 ["Standard"]
  GETTABLEKS R17 R18 K75 ["TokenSheet"]
  CALL R17 0 1
  SETTABLEKS R17 R16 K71 ["Icon"]
  DUPTABLE R17 K72 [{"Name", "Icon"}]
  LOADK R18 K76 ["Themes"]
  SETTABLEKS R18 R17 K70 ["Name"]
  GETTABLEKS R19 R13 K74 ["Standard"]
  GETTABLEKS R18 R19 K77 ["ThemeSheet"]
  CALL R18 0 1
  SETTABLEKS R18 R17 K71 ["Icon"]
  DUPTABLE R18 K72 [{"Name", "Icon"}]
  LOADK R19 K78 ["Designs"]
  SETTABLEKS R19 R18 K70 ["Name"]
  GETTABLEKS R20 R13 K74 ["Standard"]
  GETTABLEKS R19 R20 K79 ["DesignSheet"]
  CALL R19 0 1
  SETTABLEKS R19 R18 K71 ["Icon"]
  SETLIST R15 R16 3 [1]
  SETTABLEKS R15 R14 K80 ["StyleSheetCategories"]
  NEWTABLE R15 0 1
  NEWTABLE R16 4 0
  LOADK R17 K81 ["Menu"]
  SETTABLEKS R17 R16 K82 ["Id"]
  DUPTABLE R17 K84 [{"Image"}]
  GETTABLEKS R18 R13 K85 ["more"]
  CALL R18 0 1
  SETTABLEKS R18 R17 K83 ["Image"]
  SETTABLEKS R17 R16 K71 ["Icon"]
  GETTABLEKS R17 R2 K86 ["Tag"]
  LOADK R18 K87 ["Contrast IconOnly"]
  SETTABLE R18 R16 R17
  SETLIST R15 R16 1 [1]
  SETTABLEKS R15 R14 K88 ["MoreAction"]
  NEWTABLE R15 0 1
  NEWTABLE R16 4 0
  LOADK R17 K81 ["Menu"]
  SETTABLEKS R17 R16 K82 ["Id"]
  DUPTABLE R17 K84 [{"Image"}]
  GETTABLEKS R18 R13 K85 ["more"]
  CALL R18 0 1
  SETTABLEKS R18 R17 K83 ["Image"]
  SETTABLEKS R17 R16 K71 ["Icon"]
  GETTABLEKS R17 R2 K86 ["Tag"]
  LOADK R18 K89 ["IconOnly SecondaryHoverBackground"]
  SETTABLE R18 R16 R17
  SETLIST R15 R16 1 [1]
  SETTABLEKS R15 R14 K90 ["FullSpanMoreAction"]
  DUPCLOSURE R15 K91 [PROTO_3]
  CAPTURE VAL R7
  CAPTURE VAL R14
  SETTABLEKS R15 R14 K92 ["getStyleSheetCategoryActions"]
  DUPCLOSURE R15 K93 [PROTO_5]
  CAPTURE VAL R7
  SETTABLEKS R15 R14 K94 ["getAttributeTypeActions"]
  DUPCLOSURE R15 K95 [PROTO_7]
  CAPTURE VAL R7
  CAPTURE VAL R14
  SETTABLEKS R15 R14 K96 ["getClassTypeActions"]
  DUPCLOSURE R15 K97 [PROTO_12]
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R14
  CAPTURE VAL R13
  CAPTURE VAL R6
  SETTABLEKS R15 R14 K98 ["getNewSelectorAction"]
  DUPCLOSURE R15 K99 [PROTO_13]
  CAPTURE VAL R13
  SETTABLEKS R15 R14 K100 ["getRenameAction"]
  DUPCLOSURE R15 K101 [PROTO_15]
  CAPTURE VAL R14
  CAPTURE VAL R7
  CAPTURE VAL R9
  SETTABLEKS R15 R14 K102 ["buildMenu"]
  DUPCLOSURE R15 K103 [PROTO_17]
  CAPTURE VAL R14
  SETTABLEKS R15 R14 K104 ["decorateClickHandlers"]
  DUPCLOSURE R15 K105 [PROTO_19]
  CAPTURE VAL R14
  CAPTURE VAL R10
  SETTABLEKS R15 R14 K106 ["trackClicks"]
  DUPCLOSURE R15 K107 [PROTO_20]
  CAPTURE VAL R14
  CAPTURE VAL R5
  SETTABLEKS R15 R14 K14 ["showContextMenu"]
  DUPCLOSURE R15 K108 [PROTO_22]
  CAPTURE VAL R8
  SETTABLEKS R15 R14 K109 ["filterHiddenActions"]
  RETURN R14 1
