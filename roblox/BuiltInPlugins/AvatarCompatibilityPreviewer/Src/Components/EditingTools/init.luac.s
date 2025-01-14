PROTO_0:
  LOADB R1 1
  JUMPIFEQKS R0 K0 ["attachments"] [+5]
  JUMPIFEQKS R0 K1 ["none"] [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["dummy"]
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Deactivate"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  JUMPIFNOTEQKS R0 K0 ["none"] [+2]
  RETURN R0 0
  GETUPVAL R0 1
  LOADB R2 1
  NAMECALL R0 R0 K1 ["Activate"]
  CALL R0 2 0
  NEWCLOSURE R0 P0
  CAPTURE UPVAL U1
  RETURN R0 1

PROTO_4:
  GETUPVAL R0 0
  LOADK R1 K0 ["none"]
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  NOT R1 R0
  RETURN R1 1

PROTO_6:
  GETUPVAL R0 0
  DUPCLOSURE R1 K0 [PROTO_5]
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  JUMPIFNOTEQ R0 R2 [+3]
  LOADK R1 K0 ["none"]
  RETURN R1 1
  GETUPVAL R1 0
  RETURN R1 1

PROTO_8:
  GETUPVAL R0 0
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U1
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  DUPTABLE R3 K7 [{"Type", "Tooltip", "Icon", "Selected", "OnClick", "Enabled", "TooltipDescription"}]
  LOADK R4 K8 ["Button"]
  SETTABLEKS R4 R3 K0 ["Type"]
  SETTABLEKS R2 R3 K1 ["Tooltip"]
  SETTABLEKS R1 R3 K2 ["Icon"]
  GETUPVAL R5 0
  JUMPIFEQ R5 R0 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  SETTABLEKS R4 R3 K3 ["Selected"]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  SETTABLEKS R4 R3 K4 ["OnClick"]
  LOADNIL R4
  SETTABLEKS R4 R3 K5 ["Enabled"]
  LOADNIL R4
  SETTABLEKS R4 R3 K6 ["TooltipDescription"]
  RETURN R3 1

PROTO_10:
  GETUPVAL R2 0
  CALL R2 0 1
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["AvatarPreviewerEditingTools_Dev is not enabled"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K3 ["use"]
  CALL R1 1 1
  GETUPVAL R2 2
  LOADK R4 K4 ["EditingTools"]
  NAMECALL R2 R2 K3 ["use"]
  CALL R2 2 1
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K5 ["useState"]
  LOADK R4 K6 ["none"]
  CALL R3 1 2
  GETUPVAL R5 4
  NAMECALL R5 R5 K3 ["use"]
  CALL R5 1 1
  NAMECALL R5 R5 K7 ["get"]
  CALL R5 1 1
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K8 ["useEffect"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R3
  CAPTURE VAL R5
  NEWTABLE R8 0 1
  JUMPIFEQKS R3 K6 ["none"] [+2]
  LOADB R9 0 +1
  LOADB R9 1
  SETLIST R8 R9 1 [1]
  CALL R6 2 0
  GETUPVAL R6 5
  GETTABLEKS R7 R5 K9 ["Deactivation"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R4
  NEWTABLE R9 0 0
  CALL R6 3 0
  GETUPVAL R6 6
  GETUPVAL R7 7
  MOVE R8 R3
  CALL R6 2 2
  NEWTABLE R8 0 1
  DUPTABLE R9 K15 [{"Type", "Tooltip", "Icon", "Selected", "OnClick"}]
  LOADK R10 K16 ["Button"]
  SETTABLEKS R10 R9 K10 ["Type"]
  LOADK R12 K4 ["EditingTools"]
  LOADK R13 K17 ["ShowAccessories"]
  NAMECALL R10 R1 K18 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K11 ["Tooltip"]
  GETTABLEKS R10 R2 K19 ["ShowClothingImage"]
  SETTABLEKS R10 R9 K12 ["Icon"]
  SETTABLEKS R6 R9 K13 ["Selected"]
  NEWCLOSURE R10 P2
  CAPTURE VAL R7
  SETTABLEKS R10 R9 K14 ["OnClick"]
  SETLIST R8 R9 1 [1]
  NEWCLOSURE R9 P3
  CAPTURE VAL R3
  CAPTURE VAL R4
  GETUPVAL R10 8
  GETTABLEKS R11 R0 K20 ["worldModel"]
  LOADK R12 K21 ["InitialCageMeshesData"]
  LOADNIL R13
  CALL R10 3 2
  GETUPVAL R12 8
  GETTABLEKS R13 R0 K20 ["worldModel"]
  LOADK R14 K22 ["CageChangeHistory"]
  LOADNIL R15
  CALL R12 3 2
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K23 ["createElement"]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K24 ["Fragment"]
  NEWTABLE R16 0 0
  NEWTABLE R17 4 0
  GETUPVAL R20 9
  GETTABLEKS R19 R20 K25 ["EDITING_TOOLS_GUI_NAMES"]
  GETTABLEKS R18 R19 K26 ["EditingToolbar"]
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K23 ["createElement"]
  GETUPVAL R21 10
  GETTABLEKS R20 R21 K27 ["Toolbar"]
  DUPTABLE R21 K30 [{"InitialPosition", "VerticalItems"}]
  LOADK R22 K31 ["Top"]
  SETTABLEKS R22 R21 K28 ["InitialPosition"]
  NEWTABLE R22 0 2
  MOVE R23 R9
  LOADK R24 K32 ["attachments"]
  GETTABLEKS R25 R2 K33 ["AttachmentToolImage"]
  LOADK R28 K4 ["EditingTools"]
  LOADK R29 K34 ["AttachmentsTool"]
  NAMECALL R26 R1 K18 ["getText"]
  CALL R26 3 -1
  CALL R23 -1 1
  MOVE R24 R9
  LOADK R25 K35 ["cage"]
  GETTABLEKS R26 R2 K36 ["CageEditingToolImage"]
  LOADK R29 K4 ["EditingTools"]
  LOADK R30 K37 ["CageTool"]
  NAMECALL R27 R1 K18 ["getText"]
  CALL R27 3 -1
  CALL R24 -1 1
  SETLIST R22 R23 2 [1]
  SETTABLEKS R22 R21 K29 ["VerticalItems"]
  CALL R19 2 1
  SETTABLE R19 R17 R18
  LOADB R18 0
  JUMPIFEQKS R3 K6 ["none"] [+45]
  JUMPIFNOTEQKS R3 K32 ["attachments"] [+14]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K23 ["createElement"]
  GETUPVAL R19 11
  DUPTABLE R20 K39 [{"worldModel", "additionalToolbarItems"}]
  GETTABLEKS R21 R0 K20 ["worldModel"]
  SETTABLEKS R21 R20 K20 ["worldModel"]
  SETTABLEKS R8 R20 K38 ["additionalToolbarItems"]
  CALL R18 2 1
  JUMP [+29]
  GETUPVAL R19 12
  CALL R19 0 1
  JUMPIFNOT R19 [+23]
  JUMPIFNOTEQKS R3 K35 ["cage"] [+22]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K23 ["createElement"]
  GETUPVAL R19 13
  DUPTABLE R20 K45 [{"mannequin", "additionalToolbarItems", "initialMeshesData", "setInitialMeshesData", "changeHistory", "setChangeHistory"}]
  GETTABLEKS R21 R0 K20 ["worldModel"]
  SETTABLEKS R21 R20 K40 ["mannequin"]
  SETTABLEKS R8 R20 K38 ["additionalToolbarItems"]
  SETTABLEKS R10 R20 K41 ["initialMeshesData"]
  SETTABLEKS R11 R20 K42 ["setInitialMeshesData"]
  SETTABLEKS R12 R20 K43 ["changeHistory"]
  SETTABLEKS R13 R20 K44 ["setChangeHistory"]
  CALL R18 2 1
  JUMP [+3]
  GETUPVAL R18 14
  MOVE R19 R3
  CALL R18 1 1
  SETTABLEKS R18 R17 K46 ["Tool"]
  LOADB R18 0
  JUMPIFEQKS R3 K6 ["none"] [+13]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K23 ["createElement"]
  GETUPVAL R19 15
  DUPTABLE R20 K48 [{"worldModel", "includeAccessories"}]
  GETTABLEKS R21 R0 K20 ["worldModel"]
  SETTABLEKS R21 R20 K20 ["worldModel"]
  SETTABLEKS R6 R20 K47 ["includeAccessories"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K49 ["RepresentEditorStateOnWorldModel"]
  LOADB R18 0
  JUMPIFEQKS R3 K6 ["none"] [+11]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K23 ["createElement"]
  GETUPVAL R19 16
  DUPTABLE R20 K51 [{"dummy"}]
  GETTABLEKS R21 R0 K20 ["worldModel"]
  SETTABLEKS R21 R20 K50 ["dummy"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K52 ["BindFocusOnPVInstance"]
  CALL R14 3 -1
  RETURN R14 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["ViewportToolingFramework"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Util"]
  GETTABLEKS R5 R6 K12 ["Constants"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K13 ["Resources"]
  GETTABLEKS R6 R7 K14 ["Theme"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K15 ["Types"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K11 ["Util"]
  GETTABLEKS R8 R9 K16 ["exhaustiveMatch"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K10 ["Src"]
  GETTABLEKS R10 R11 K17 ["Hooks"]
  GETTABLEKS R9 R10 K18 ["useEventConnection"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K10 ["Src"]
  GETTABLEKS R11 R12 K17 ["Hooks"]
  GETTABLEKS R10 R11 K19 ["useKeyedState"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K10 ["Src"]
  GETTABLEKS R12 R13 K17 ["Hooks"]
  GETTABLEKS R11 R12 K20 ["useSerializedState"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETIMPORT R13 K1 [script]
  GETTABLEKS R12 R13 K21 ["AttachmentTool"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETIMPORT R14 K1 [script]
  GETTABLEKS R13 R14 K22 ["CageEditingTool"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETIMPORT R15 K1 [script]
  GETTABLEKS R14 R15 K23 ["RepresentEditorStateOnWorldModel"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETIMPORT R16 K1 [script]
  GETTABLEKS R15 R16 K24 ["useBindFocusOnPVInstance"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K10 ["Src"]
  GETTABLEKS R17 R18 K25 ["Flags"]
  GETTABLEKS R16 R17 K26 ["getFFlagAvatarPreviewerEditingTools"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K10 ["Src"]
  GETTABLEKS R18 R19 K25 ["Flags"]
  GETTABLEKS R17 R18 K27 ["getFFlagAvatarPreviewerCageEditingTools"]
  CALL R16 1 1
  GETTABLEKS R17 R1 K28 ["ContextServices"]
  GETTABLEKS R18 R17 K29 ["Localization"]
  GETTABLEKS R19 R17 K30 ["Plugin"]
  GETTABLEKS R20 R17 K31 ["Stylizer"]
  DUPCLOSURE R21 K32 [PROTO_0]
  DUPCLOSURE R22 K33 [PROTO_1]
  CAPTURE VAL R14
  DUPCLOSURE R23 K34 [PROTO_10]
  CAPTURE VAL R15
  CAPTURE VAL R18
  CAPTURE VAL R20
  CAPTURE VAL R2
  CAPTURE VAL R19
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R21
  CAPTURE VAL R10
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R11
  CAPTURE VAL R16
  CAPTURE VAL R12
  CAPTURE VAL R7
  CAPTURE VAL R13
  CAPTURE VAL R22
  RETURN R23 1
