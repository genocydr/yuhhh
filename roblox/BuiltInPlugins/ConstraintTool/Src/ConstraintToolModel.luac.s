PROTO_0:
  MOVE R11 R2
  LOADNIL R12
  LOADNIL R13
  FORGPREP R11
  GETUPVAL R17 0
  GETTABLE R16 R17 R14
  JUMPIFNOTEQKNIL R16 [+12]
  GETUPVAL R17 1
  GETTABLE R16 R17 R14
  JUMPIFNOTEQKNIL R16 [+8]
  GETIMPORT R16 K1 [error]
  LOADK R18 K2 ["Unexpected ConstraintToolModel prop `"]
  MOVE R19 R14
  LOADK R20 K3 ["`"]
  CONCAT R17 R18 R20
  CALL R16 1 0
  FORGLOOP R11 2 [-16]
  NEWTABLE R11 0 0
  GETUPVAL R12 1
  LOADNIL R13
  LOADNIL R14
  FORGPREP R12
  GETTABLE R17 R2 R15
  JUMPIFNOTEQKNIL R17 [+9]
  GETIMPORT R18 K1 [error]
  LOADK R20 K4 ["Required prop `"]
  MOVE R21 R15
  LOADK R22 K5 ["` missing from ConstraintToolModel props"]
  CONCAT R19 R20 R22
  CALL R18 1 0
  JUMP [+1]
  SETTABLE R17 R11 R15
  FORGLOOP R12 2 [-13]
  GETUPVAL R12 0
  LOADNIL R13
  LOADNIL R14
  FORGPREP R12
  GETTABLE R17 R2 R15
  JUMPIFEQKNIL R17 [+4]
  GETTABLE R17 R2 R15
  SETTABLE R17 R11 R15
  JUMP [+1]
  SETTABLE R16 R11 R15
  FORGLOOP R12 2 [-8]
  GETIMPORT R12 K8 [Instance.new]
  LOADK R13 K9 ["Folder"]
  CALL R12 1 1
  LOADK R13 K10 ["ConstraintTool"]
  SETTABLEKS R13 R12 K11 ["Name"]
  GETIMPORT R14 K13 [game]
  GETTABLEKS R13 R14 K14 ["CoreGui"]
  SETTABLEKS R13 R12 K15 ["Parent"]
  DUPTABLE R14 K40 [{"_draggerContext", "_draggerSchema", "_modelProps", "_closePluginCallback", "_requestRenderCallback", "_constraintToolVisualsFolder", "_markViewDirtyCallback", "_undoAttachmentStack", "_redoAttachmentStack", "_plugin", "_openedTimestamp", "_attachmentMover", "_attachmentArrowVisuals", "_partPassthroughEnabled", "_addMultipleConstraintsEnabled", "_ancestryChangedConnection", "_selectionHighlight", "_ghostAssembly", "_attachmentAdornment", "_initialInstanceAdornment", "_constraintType", "_tiltRotate", "_recordingIdentifier", "_lastDraggedInstanceDefaultOrientation"}]
  SETTABLEKS R0 R14 K16 ["_draggerContext"]
  SETTABLEKS R1 R14 K17 ["_draggerSchema"]
  SETTABLEKS R11 R14 K18 ["_modelProps"]
  SETTABLEKS R3 R14 K19 ["_closePluginCallback"]
  SETTABLEKS R9 R14 K20 ["_requestRenderCallback"]
  SETTABLEKS R12 R14 K21 ["_constraintToolVisualsFolder"]
  SETTABLEKS R10 R14 K22 ["_markViewDirtyCallback"]
  SETTABLEKS R4 R14 K23 ["_undoAttachmentStack"]
  SETTABLEKS R5 R14 K24 ["_redoAttachmentStack"]
  SETTABLEKS R7 R14 K25 ["_plugin"]
  GETIMPORT R15 K43 [os.clock]
  CALL R15 0 1
  SETTABLEKS R15 R14 K26 ["_openedTimestamp"]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K7 ["new"]
  CALL R15 0 1
  SETTABLEKS R15 R14 K27 ["_attachmentMover"]
  NEWTABLE R15 0 0
  SETTABLEKS R15 R14 K28 ["_attachmentArrowVisuals"]
  LOADB R15 0
  SETTABLEKS R15 R14 K29 ["_partPassthroughEnabled"]
  LOADB R15 0
  SETTABLEKS R15 R14 K30 ["_addMultipleConstraintsEnabled"]
  LOADNIL R15
  SETTABLEKS R15 R14 K31 ["_ancestryChangedConnection"]
  LOADNIL R15
  SETTABLEKS R15 R14 K32 ["_selectionHighlight"]
  LOADNIL R15
  SETTABLEKS R15 R14 K33 ["_ghostAssembly"]
  LOADNIL R15
  SETTABLEKS R15 R14 K34 ["_attachmentAdornment"]
  LOADNIL R15
  SETTABLEKS R15 R14 K35 ["_initialInstanceAdornment"]
  LOADNIL R15
  SETTABLEKS R15 R14 K36 ["_constraintType"]
  GETUPVAL R15 3
  SETTABLEKS R15 R14 K37 ["_tiltRotate"]
  LOADNIL R15
  SETTABLEKS R15 R14 K38 ["_recordingIdentifier"]
  LOADNIL R15
  SETTABLEKS R15 R14 K39 ["_lastDraggedInstanceDefaultOrientation"]
  GETUPVAL R15 4
  FASTCALL2 SETMETATABLE R14 R15 [+3]
  GETIMPORT R13 K45 [setmetatable]
  CALL R13 2 1
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K7 ["new"]
  GETTABLEKS R15 R13 K16 ["_draggerContext"]
  GETTABLEKS R16 R13 K17 ["_draggerSchema"]
  MOVE R17 R13
  CALL R14 3 1
  SETTABLEKS R14 R13 K46 ["_attachmentToolRenderer"]
  GETUPVAL R15 6
  GETTABLEKS R14 R15 K7 ["new"]
  MOVE R15 R13
  CALL R14 1 1
  SETTABLEKS R14 R13 K47 ["_attachmentToolAnimator"]
  SETUPVAL R6 7
  GETUPVAL R14 8
  JUMPIFNOT R14 [+12]
  GETTABLEKS R15 R13 K16 ["_draggerContext"]
  LOADK R17 K48 ["MultipleConstraintMode"]
  NAMECALL R15 R15 K49 ["getSetting"]
  CALL R15 2 1
  JUMPIFNOT R15 [+2]
  LOADB R14 1
  JUMP [+1]
  LOADB R14 0
  SETTABLEKS R14 R13 K30 ["_addMultipleConstraintsEnabled"]
  MOVE R14 R8
  MOVE R15 R13
  CALL R14 1 1
  GETTABLEKS R15 R14 K50 ["undo"]
  SETTABLEKS R15 R13 K51 ["_mainUndo"]
  RETURN R13 1

PROTO_1:
  GETTABLEKS R3 R0 K0 ["_undoAttachmentStack"]
  GETTABLEN R2 R3 1
  JUMPIFNOT R2 [+18]
  GETTABLEKS R4 R2 K1 ["attachment"]
  GETTABLEKS R3 R4 K2 ["Parent"]
  JUMPIFNOT R3 [+13]
  GETTABLEKS R3 R2 K3 ["type"]
  JUMPIFNOTEQKS R3 K4 ["initial"] [+10]
  GETTABLEKS R5 R2 K1 ["attachment"]
  NAMECALL R3 R0 K5 ["_selectInitialInstance"]
  CALL R3 2 0
  NAMECALL R3 R0 K6 ["_updateAttachment"]
  CALL R3 1 0
  RETURN R0 0
  JUMPIFNOT R1 [+9]
  GETTABLEKS R3 R1 K7 ["attachmentParent"]
  JUMPIFNOT R3 [+6]
  LOADN R5 0
  GETTABLEKS R6 R1 K7 ["attachmentParent"]
  NAMECALL R3 R0 K8 ["_setInitialInstanceTransparency"]
  CALL R3 3 0
  RETURN R0 0

PROTO_2:
  JUMPIFNOT R1 [+19]
  GETTABLEKS R2 R1 K0 ["type"]
  JUMPIFNOTEQKS R2 K1 ["initial"] [+10]
  GETTABLEKS R4 R1 K2 ["attachment"]
  NAMECALL R2 R0 K3 ["_selectInitialInstance"]
  CALL R2 2 0
  NAMECALL R2 R0 K4 ["_updateAttachment"]
  CALL R2 1 0
  RETURN R0 0
  NAMECALL R2 R0 K5 ["_clearInitialInstance"]
  CALL R2 1 0
  NAMECALL R2 R0 K6 ["_removeConstraintVisuals"]
  CALL R2 1 0
  RETURN R0 0

PROTO_3:
  GETIMPORT R1 K2 [Instance.new]
  LOADK R2 K3 ["SphereHandleAdornment"]
  CALL R1 1 1
  LOADB R2 1
  SETTABLEKS R2 R1 K4 ["AlwaysOnTop"]
  LOADN R2 1
  SETTABLEKS R2 R1 K5 ["ZIndex"]
  LOADK R2 K6 [0.14]
  SETTABLEKS R2 R1 K7 ["Radius"]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K8 ["Color3"]
  GETIMPORT R3 K10 [workspace]
  GETTABLEKS R2 R3 K11 ["Terrain"]
  SETTABLEKS R2 R1 K12 ["Adornee"]
  GETTABLEKS R2 R0 K13 ["_constraintToolVisualsFolder"]
  SETTABLEKS R2 R1 K14 ["Parent"]
  MOVE R4 R1
  NAMECALL R2 R0 K15 ["_createAttachmentAdornmentArrows"]
  CALL R2 2 0
  RETURN R1 1

PROTO_4:
  NAMECALL R1 R0 K0 ["_createAttachmentAdornment"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["_attachmentAdornment"]
  GETUPVAL R2 0
  NAMECALL R2 R2 K2 ["Get"]
  CALL R2 1 1
  LENGTH R3 R2
  JUMPIFNOTEQKN R3 K3 [1] [+11]
  GETTABLEN R3 R2 1
  LOADK R5 K4 ["Attachment"]
  NAMECALL R3 R3 K5 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+4]
  GETTABLEN R5 R2 1
  NAMECALL R3 R0 K6 ["_selectInitialInstance"]
  CALL R3 2 0
  RETURN R0 0

PROTO_5:
  GETIMPORT R1 K2 [Instance.new]
  LOADK R2 K3 ["Highlight"]
  CALL R1 1 1
  LOADN R2 1
  SETTABLEKS R2 R1 K4 ["FillTransparency"]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K5 ["OutlineColor"]
  GETIMPORT R2 K9 [Enum.HighlightDepthMode.AlwaysOnTop]
  SETTABLEKS R2 R1 K10 ["DepthMode"]
  GETTABLEKS R2 R0 K11 ["_constraintToolVisualsFolder"]
  SETTABLEKS R2 R1 K12 ["Parent"]
  SETTABLEKS R1 R0 K13 ["_selectionHighlight"]
  GETUPVAL R3 1
  GETTABLEKS R4 R0 K14 ["_constraintType"]
  GETTABLE R2 R3 R4
  JUMPIFNOT R2 [+17]
  GETUPVAL R2 2
  NAMECALL R2 R2 K15 ["Get"]
  CALL R2 1 1
  LENGTH R3 R2
  JUMPIFNOTEQKN R3 K16 [1] [+11]
  GETTABLEN R3 R2 1
  LOADK R5 K17 ["BasePart"]
  NAMECALL R3 R3 K18 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+4]
  GETTABLEN R5 R2 1
  NAMECALL R3 R0 K19 ["_selectInitialInstance"]
  CALL R3 2 0
  RETURN R0 0

PROTO_6:
  GETIMPORT R2 K2 [Instance.new]
  LOADK R3 K3 ["CylinderHandleAdornment"]
  CALL R2 1 1
  LOADN R3 1
  SETTABLEKS R3 R2 K4 ["Height"]
  LOADK R3 K5 [0.02]
  SETTABLEKS R3 R2 K6 ["Radius"]
  LOADN R3 0
  SETTABLEKS R3 R2 K7 ["Transparency"]
  LOADB R3 1
  SETTABLEKS R3 R2 K8 ["AlwaysOnTop"]
  LOADN R3 1
  SETTABLEKS R3 R2 K9 ["ZIndex"]
  GETIMPORT R4 K11 [workspace]
  GETTABLEKS R3 R4 K12 ["Terrain"]
  SETTABLEKS R3 R2 K13 ["Adornee"]
  GETUPVAL R3 0
  SETTABLEKS R3 R2 K14 ["Color3"]
  GETTABLEKS R3 R0 K15 ["_constraintToolVisualsFolder"]
  SETTABLEKS R3 R2 K16 ["Parent"]
  GETIMPORT R3 K2 [Instance.new]
  LOADK R4 K3 ["CylinderHandleAdornment"]
  CALL R3 1 1
  LOADN R4 1
  SETTABLEKS R4 R3 K4 ["Height"]
  LOADK R4 K5 [0.02]
  SETTABLEKS R4 R3 K6 ["Radius"]
  LOADN R4 0
  SETTABLEKS R4 R3 K7 ["Transparency"]
  LOADB R4 1
  SETTABLEKS R4 R3 K8 ["AlwaysOnTop"]
  LOADN R4 1
  SETTABLEKS R4 R3 K9 ["ZIndex"]
  GETIMPORT R5 K11 [workspace]
  GETTABLEKS R4 R5 K12 ["Terrain"]
  SETTABLEKS R4 R3 K13 ["Adornee"]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K14 ["Color3"]
  GETTABLEKS R4 R0 K15 ["_constraintToolVisualsFolder"]
  SETTABLEKS R4 R3 K16 ["Parent"]
  GETIMPORT R4 K2 [Instance.new]
  LOADK R5 K17 ["ConeHandleAdornment"]
  CALL R4 1 1
  LOADK R5 K18 [0.2]
  SETTABLEKS R5 R4 K4 ["Height"]
  LOADK R5 K19 [0.05]
  SETTABLEKS R5 R4 K6 ["Radius"]
  LOADN R5 0
  SETTABLEKS R5 R4 K7 ["Transparency"]
  LOADB R5 1
  SETTABLEKS R5 R4 K8 ["AlwaysOnTop"]
  LOADN R5 1
  SETTABLEKS R5 R4 K9 ["ZIndex"]
  GETIMPORT R6 K11 [workspace]
  GETTABLEKS R5 R6 K12 ["Terrain"]
  SETTABLEKS R5 R4 K13 ["Adornee"]
  GETUPVAL R5 0
  SETTABLEKS R5 R4 K14 ["Color3"]
  GETTABLEKS R5 R0 K15 ["_constraintToolVisualsFolder"]
  SETTABLEKS R5 R4 K16 ["Parent"]
  GETIMPORT R5 K2 [Instance.new]
  LOADK R6 K17 ["ConeHandleAdornment"]
  CALL R5 1 1
  LOADK R6 K18 [0.2]
  SETTABLEKS R6 R5 K4 ["Height"]
  LOADK R6 K19 [0.05]
  SETTABLEKS R6 R5 K6 ["Radius"]
  LOADN R6 0
  SETTABLEKS R6 R5 K7 ["Transparency"]
  LOADB R6 1
  SETTABLEKS R6 R5 K8 ["AlwaysOnTop"]
  LOADN R6 1
  SETTABLEKS R6 R5 K9 ["ZIndex"]
  GETIMPORT R7 K11 [workspace]
  GETTABLEKS R6 R7 K12 ["Terrain"]
  SETTABLEKS R6 R5 K13 ["Adornee"]
  GETUPVAL R6 1
  SETTABLEKS R6 R5 K14 ["Color3"]
  GETTABLEKS R6 R0 K15 ["_constraintToolVisualsFolder"]
  SETTABLEKS R6 R5 K16 ["Parent"]
  LOADB R6 0
  SETTABLEKS R6 R1 K20 ["Visible"]
  LOADB R6 1
  SETTABLEKS R6 R1 K20 ["Visible"]
  GETTABLEKS R6 R0 K21 ["_attachmentArrowVisuals"]
  DUPTABLE R7 K26 [{"shaftRight", "shaftTop", "tipRight", "tipTop"}]
  SETTABLEKS R2 R7 K22 ["shaftRight"]
  SETTABLEKS R3 R7 K23 ["shaftTop"]
  SETTABLEKS R4 R7 K24 ["tipRight"]
  SETTABLEKS R5 R7 K25 ["tipTop"]
  SETTABLE R7 R6 R1
  MOVE R8 R1
  GETIMPORT R9 K28 [CFrame.new]
  LOADK R10 K29 [∞]
  LOADN R11 0
  LOADN R12 0
  CALL R9 3 -1
  NAMECALL R6 R0 K30 ["_orientAttachmentAdornment"]
  CALL R6 -1 0
  RETURN R0 0

PROTO_7:
  JUMPIF R2 [+11]
  LOADK R6 K0 ["Attachment"]
  NAMECALL R4 R1 K1 ["IsA"]
  CALL R4 2 1
  JUMPIFNOT R4 [+3]
  GETTABLEKS R3 R1 K2 ["WorldCFrame"]
  JUMPIF R3 [+2]
  GETTABLEKS R3 R1 K3 ["CFrame"]
  MOVE R2 R3
  GETTABLEKS R4 R0 K4 ["_attachmentArrowVisuals"]
  GETTABLE R3 R4 R1
  GETTABLEKS R4 R3 K5 ["shaftRight"]
  GETIMPORT R7 K7 [CFrame.Angles]
  LOADN R8 0
  LOADK R9 K8 [-1.5707963267949]
  LOADN R10 0
  CALL R7 3 1
  MUL R6 R2 R7
  GETIMPORT R7 K10 [CFrame.new]
  LOADN R8 0
  LOADN R9 0
  GETTABLEKS R13 R3 K5 ["shaftRight"]
  GETTABLEKS R12 R13 K12 ["Height"]
  MINUS R11 R12
  MULK R10 R11 K11 [0.15]
  CALL R7 3 1
  MUL R5 R6 R7
  SETTABLEKS R5 R4 K3 ["CFrame"]
  GETTABLEKS R4 R3 K13 ["shaftTop"]
  GETIMPORT R7 K7 [CFrame.Angles]
  LOADK R8 K14 [1.5707963267949]
  LOADN R9 0
  LOADN R10 0
  CALL R7 3 1
  MUL R6 R2 R7
  GETIMPORT R7 K10 [CFrame.new]
  LOADN R8 0
  LOADN R9 0
  GETTABLEKS R13 R3 K5 ["shaftRight"]
  GETTABLEKS R12 R13 K12 ["Height"]
  MINUS R11 R12
  MULK R10 R11 K11 [0.15]
  CALL R7 3 1
  MUL R5 R6 R7
  SETTABLEKS R5 R4 K3 ["CFrame"]
  GETTABLEKS R4 R3 K15 ["tipRight"]
  GETTABLEKS R7 R3 K5 ["shaftRight"]
  GETTABLEKS R6 R7 K3 ["CFrame"]
  GETIMPORT R7 K10 [CFrame.new]
  LOADN R8 0
  LOADN R9 0
  GETTABLEKS R13 R3 K5 ["shaftRight"]
  GETTABLEKS R12 R13 K12 ["Height"]
  MINUS R11 R12
  DIVK R10 R11 K16 [2]
  CALL R7 3 1
  MUL R5 R6 R7
  SETTABLEKS R5 R4 K3 ["CFrame"]
  GETTABLEKS R4 R3 K17 ["tipTop"]
  GETTABLEKS R7 R3 K13 ["shaftTop"]
  GETTABLEKS R6 R7 K3 ["CFrame"]
  GETIMPORT R7 K10 [CFrame.new]
  LOADN R8 0
  LOADN R9 0
  GETTABLEKS R13 R3 K13 ["shaftTop"]
  GETTABLEKS R12 R13 K12 ["Height"]
  MINUS R11 R12
  DIVK R10 R11 K16 [2]
  CALL R7 3 1
  MUL R5 R6 R7
  SETTABLEKS R5 R4 K3 ["CFrame"]
  LOADK R6 K0 ["Attachment"]
  NAMECALL R4 R1 K1 ["IsA"]
  CALL R4 2 1
  JUMPIFNOT R4 [+3]
  SETTABLEKS R2 R1 K2 ["WorldCFrame"]
  RETURN R0 0
  SETTABLEKS R2 R1 K3 ["CFrame"]
  RETURN R0 0

PROTO_8:
  GETTABLEKS R2 R0 K0 ["_mouseCursor"]
  JUMPIFEQ R2 R1 [+9]
  SETTABLEKS R1 R0 K0 ["_mouseCursor"]
  GETTABLEKS R2 R0 K1 ["_draggerContext"]
  MOVE R4 R1
  NAMECALL R2 R2 K2 ["setMouseIcon"]
  CALL R2 2 0
  RETURN R0 0

PROTO_9:
  LOADK R3 K0 ["rbxasset://textures/ConstraintCursor.png"]
  NAMECALL R1 R0 K1 ["setMouseCursor"]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R3 R0 K2 ["_constraintType"]
  GETTABLE R1 R2 R3
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["createElement"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["Portal"]
  DUPTABLE R3 K6 [{"target"}]
  GETTABLEKS R4 R0 K7 ["_draggerContext"]
  NAMECALL R4 R4 K8 ["getGuiParent"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K5 ["target"]
  DUPTABLE R4 K10 [{"DraggerUI"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["createElement"]
  LOADK R6 K11 ["Folder"]
  NEWTABLE R7 0 0
  GETTABLEKS R8 R0 K12 ["_attachmentToolRenderer"]
  NAMECALL R8 R8 K13 ["render"]
  CALL R8 1 -1
  CALL R5 -1 1
  SETTABLEKS R5 R4 K9 ["DraggerUI"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_10:
  GETTABLEKS R1 R0 K0 ["_draggerContext"]
  NAMECALL R1 R1 K1 ["isSimulating"]
  CALL R1 1 1
  JUMPIFNOT R1 [+3]
  GETTABLEKS R1 R0 K2 ["_markViewDirtyCallback"]
  CALL R1 0 0
  GETTABLEKS R1 R0 K3 ["_plugin"]
  NAMECALL R1 R1 K4 ["GetSelectedRibbonTool"]
  CALL R1 1 1
  GETIMPORT R2 K8 [Enum.RibbonTool.None]
  JUMPIFEQ R1 R2 [+13]
  GETIMPORT R2 K11 [os.clock]
  CALL R2 0 1
  GETTABLEKS R3 R0 K12 ["_openedTimestamp"]
  SUB R1 R2 R3
  LOADK R2 K13 [0.0166666666666667]
  JUMPIFNOTLT R2 R1 [+4]
  NAMECALL R1 R0 K14 ["_processDeselected"]
  CALL R1 1 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R1 R0 K0 ["_draggerSchema"]
  RETURN R1 1

PROTO_12:
  GETTABLEKS R2 R0 K0 ["_modelProps"]
  GETTABLEKS R1 R2 K1 ["AllowDragSelect"]
  RETURN R1 1

PROTO_13:
  GETTABLEKS R2 R0 K0 ["_modelProps"]
  GETTABLEKS R1 R2 K1 ["ShowDragSelect"]
  RETURN R1 1

PROTO_14:
  GETTABLEKS R2 R0 K0 ["_modelProps"]
  GETTABLEKS R1 R2 K1 ["ShowLocalSpaceIndicator"]
  RETURN R1 1

PROTO_15:
  GETTABLEKS R2 R0 K0 ["_modelProps"]
  GETTABLEKS R1 R2 K1 ["ShowSelectionDot"]
  RETURN R1 1

PROTO_16:
  GETTABLEKS R2 R0 K0 ["_modelProps"]
  GETTABLEKS R1 R2 K1 ["UseCollisionsTransparency"]
  RETURN R1 1

PROTO_17:
  GETTABLEKS R1 R0 K0 ["_draggerContext"]
  NAMECALL R1 R1 K1 ["shouldAlignDraggedObjects"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_18:
  NEWTABLE R1 0 0
  GETTABLEKS R2 R0 K0 ["_partPassthroughEnabled"]
  JUMPIFNOT R2 [+13]
  GETTABLEKS R2 R0 K1 ["_initialInstance"]
  JUMPIFNOT R2 [+10]
  GETTABLEKS R5 R0 K1 ["_initialInstance"]
  GETTABLEKS R4 R5 K2 ["Parent"]
  FASTCALL2 TABLE_INSERT R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K5 [table.insert]
  CALL R2 2 0
  GETUPVAL R2 0
  JUMPIFNOT R2 [+11]
  GETTABLEKS R2 R0 K6 ["_ghostAssembly"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R4 R0 K6 ["_ghostAssembly"]
  FASTCALL2 TABLE_INSERT R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K5 [table.insert]
  CALL R2 2 0
  RETURN R1 1

PROTO_19:
  MOVE R3 R2
  JUMPIF R3 [+4]
  GETTABLEKS R4 R0 K0 ["_initialInstance"]
  GETTABLEKS R3 R4 K1 ["Parent"]
  JUMPIFNOT R3 [+5]
  GETUPVAL R5 0
  GETTABLEKS R6 R0 K2 ["_constraintType"]
  GETTABLE R4 R5 R6
  JUMPIFNOT R4 [+1]
  RETURN R0 0
  SETTABLEKS R1 R3 K3 ["LocalTransparencyModifier"]
  NAMECALL R4 R3 K4 ["GetChildren"]
  CALL R4 1 3
  FORGPREP R4
  LOADK R11 K5 ["Decal"]
  NAMECALL R9 R8 K6 ["IsA"]
  CALL R9 2 1
  JUMPIFNOT R9 [+2]
  SETTABLEKS R1 R8 K3 ["LocalTransparencyModifier"]
  FORGLOOP R4 2 [-8]
  RETURN R0 0

PROTO_20:
  GETUPVAL R5 0
  GETTABLE R4 R5 R0
  LOADK R6 K0 [{1, 0, 0}]
  NAMECALL R4 R4 K1 ["Dot"]
  CALL R4 2 1
  FASTCALL1 MATH_ABS R4 [+2]
  GETIMPORT R3 K4 [math.abs]
  CALL R3 1 1
  GETUPVAL R6 0
  GETTABLE R5 R6 R1
  LOADK R7 K0 [{1, 0, 0}]
  NAMECALL R5 R5 K1 ["Dot"]
  CALL R5 2 1
  FASTCALL1 MATH_ABS R5 [+2]
  GETIMPORT R4 K4 [math.abs]
  CALL R4 1 1
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_21:
  GETUPVAL R5 0
  GETTABLE R4 R5 R0
  LOADK R6 K0 [{0, 1, 0}]
  NAMECALL R4 R4 K1 ["Dot"]
  CALL R4 2 1
  FASTCALL1 MATH_ABS R4 [+2]
  GETIMPORT R3 K4 [math.abs]
  CALL R3 1 1
  GETUPVAL R6 0
  GETTABLE R5 R6 R1
  LOADK R7 K0 [{0, 1, 0}]
  NAMECALL R5 R5 K1 ["Dot"]
  CALL R5 2 1
  FASTCALL1 MATH_ABS R5 [+2]
  GETIMPORT R4 K4 [math.abs]
  CALL R4 1 1
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_22:
  GETIMPORT R1 K2 [table.create]
  LOADN R2 3
  CALL R1 1 1
  NEWTABLE R2 0 3
  GETTABLEKS R3 R0 K3 ["XVector"]
  GETTABLEKS R4 R0 K4 ["YVector"]
  GETTABLEKS R5 R0 K5 ["ZVector"]
  SETLIST R2 R3 3 [1]
  NEWTABLE R3 0 3
  LOADN R4 1
  LOADN R5 2
  LOADN R6 3
  SETLIST R3 R4 3 [1]
  GETIMPORT R4 K7 [table.sort]
  MOVE R5 R3
  NEWCLOSURE R6 P0
  CAPTURE VAL R2
  CALL R4 2 0
  GETIMPORT R4 K9 [table.remove]
  MOVE R5 R3
  CALL R4 1 1
  LOADK R6 K10 [{1, 0, 0}]
  LOADK R8 K10 [{1, 0, 0}]
  GETTABLE R10 R2 R4
  NAMECALL R8 R8 K11 ["Dot"]
  CALL R8 2 1
  FASTCALL1 MATH_SIGN R8 [+2]
  GETIMPORT R7 K14 [math.sign]
  CALL R7 1 1
  MUL R5 R6 R7
  SETTABLE R5 R1 R4
  GETIMPORT R5 K7 [table.sort]
  MOVE R6 R3
  NEWCLOSURE R7 P1
  CAPTURE VAL R2
  CALL R5 2 0
  GETIMPORT R5 K9 [table.remove]
  MOVE R6 R3
  CALL R5 1 1
  MOVE R4 R5
  LOADK R6 K15 [{0, 1, 0}]
  LOADK R8 K15 [{0, 1, 0}]
  GETTABLE R10 R2 R4
  NAMECALL R8 R8 K11 ["Dot"]
  CALL R8 2 1
  FASTCALL1 MATH_SIGN R8 [+2]
  GETIMPORT R7 K14 [math.sign]
  CALL R7 1 1
  MUL R5 R6 R7
  SETTABLE R5 R1 R4
  GETIMPORT R5 K9 [table.remove]
  MOVE R6 R3
  CALL R5 1 1
  MOVE R4 R5
  LOADK R6 K16 [{0, 0, 1}]
  LOADK R8 K16 [{0, 0, 1}]
  GETTABLE R10 R2 R4
  NAMECALL R8 R8 K11 ["Dot"]
  CALL R8 2 1
  FASTCALL1 MATH_SIGN R8 [+2]
  GETIMPORT R7 K14 [math.sign]
  CALL R7 1 1
  MUL R5 R6 R7
  SETTABLE R5 R1 R4
  GETIMPORT R5 K19 [CFrame.fromMatrix]
  GETTABLEKS R6 R0 K20 ["Position"]
  GETTABLEN R7 R1 1
  GETTABLEN R8 R1 2
  GETTABLEN R9 R1 3
  CALL R5 4 -1
  RETURN R5 -1

PROTO_23:
  GETTABLEKS R1 R0 K0 ["_draggerContext"]
  NAMECALL R1 R1 K1 ["getMouseRay"]
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R4 R0 K2 ["_constraintType"]
  GETTABLE R2 R3 R4
  JUMPIFNOT R2 [+107]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["raycast"]
  MOVE R3 R1
  NEWTABLE R4 0 0
  CALL R2 2 1
  JUMPIFNOT R2 [+43]
  GETTABLEKS R3 R0 K4 ["_selectionHighlight"]
  GETTABLEKS R4 R2 K5 ["Instance"]
  SETTABLEKS R4 R3 K6 ["Adornee"]
  GETTABLEKS R3 R0 K7 ["_constraintConnectionVisual"]
  JUMPIFNOT R3 [+34]
  GETTABLEKS R5 R2 K8 ["Position"]
  GETTABLEKS R7 R0 K9 ["_initialInstance"]
  GETTABLEKS R6 R7 K8 ["Position"]
  SUB R4 R5 R6
  GETTABLEKS R3 R4 K10 ["Magnitude"]
  GETTABLEKS R4 R0 K7 ["_constraintConnectionVisual"]
  GETIMPORT R6 K13 [CFrame.lookAt]
  GETTABLEKS R8 R0 K9 ["_initialInstance"]
  GETTABLEKS R7 R8 K8 ["Position"]
  GETTABLEKS R8 R2 K8 ["Position"]
  CALL R6 2 1
  GETIMPORT R7 K15 [CFrame.new]
  LOADN R8 0
  LOADN R9 0
  MINUS R11 R3
  MULK R10 R11 K16 [0.5]
  CALL R7 3 1
  MUL R5 R6 R7
  SETTABLEKS R5 R4 K11 ["CFrame"]
  GETTABLEKS R4 R0 K7 ["_constraintConnectionVisual"]
  SETTABLEKS R3 R4 K17 ["Height"]
  GETTABLEKS R3 R0 K7 ["_constraintConnectionVisual"]
  JUMPIFNOT R3 [+38]
  GETUPVAL R3 2
  NAMECALL R4 R0 K18 ["_canMouseDown"]
  CALL R4 1 1
  JUMPIF R4 [+2]
  GETUPVAL R3 3
  JUMP [+27]
  GETTABLEKS R4 R0 K9 ["_initialInstance"]
  JUMPIFNOT R4 [+24]
  GETTABLEKS R4 R0 K19 ["_currentHoveringInstance"]
  JUMPIFNOT R4 [+21]
  GETTABLEKS R5 R0 K19 ["_currentHoveringInstance"]
  GETTABLEKS R4 R5 K20 ["AssemblyRootPart"]
  GETTABLEKS R6 R0 K9 ["_initialInstance"]
  GETTABLEKS R5 R6 K20 ["AssemblyRootPart"]
  JUMPIFEQ R4 R5 [+11]
  GETTABLEKS R5 R0 K19 ["_currentHoveringInstance"]
  GETTABLEKS R4 R5 K21 ["Anchored"]
  JUMPIFNOT R4 [+6]
  GETTABLEKS R5 R0 K9 ["_initialInstance"]
  GETTABLEKS R4 R5 K21 ["Anchored"]
  JUMPIFNOT R4 [+1]
  GETUPVAL R3 4
  GETTABLEKS R4 R0 K7 ["_constraintConnectionVisual"]
  SETTABLEKS R3 R4 K22 ["Color3"]
  GETTABLEKS R3 R0 K4 ["_selectionHighlight"]
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  SETTABLEKS R4 R3 K23 ["Enabled"]
  MOVE R3 R2
  JUMPIFNOT R3 [+2]
  GETTABLEKS R3 R2 K5 ["Instance"]
  SETTABLEKS R3 R0 K19 ["_currentHoveringInstance"]
  RETURN R0 0
  LOADNIL R2
  GETTABLEKS R3 R0 K24 ["_lastDragTarget"]
  JUMPIFNOT R3 [+4]
  GETTABLEKS R3 R0 K24 ["_lastDragTarget"]
  GETTABLEKS R2 R3 K25 ["targetMatrix"]
  GETTABLEKS R3 R0 K26 ["_tiltRotate"]
  GETUPVAL R4 5
  JUMPIF R4 [+19]
  GETTABLEKS R4 R0 K9 ["_initialInstance"]
  JUMPIFNOT R4 [+16]
  GETTABLEKS R4 R0 K9 ["_initialInstance"]
  LOADK R6 K27 ["Attachment"]
  NAMECALL R4 R4 K28 ["IsA"]
  CALL R4 2 1
  JUMPIFNOT R4 [+9]
  GETUPVAL R4 6
  GETTABLEKS R7 R0 K9 ["_initialInstance"]
  GETTABLEKS R6 R7 K11 ["CFrame"]
  GETTABLEKS R5 R6 K29 ["Rotation"]
  CALL R4 1 1
  MUL R3 R3 R4
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K30 ["getDragTarget"]
  NAMECALL R5 R0 K31 ["getRaycastIgnoreList"]
  CALL R5 1 1
  GETIMPORT R6 K33 [CFrame.identity]
  GETIMPORT R7 K36 [Vector3.zero]
  GETIMPORT R8 K36 [Vector3.zero]
  GETIMPORT R9 K36 [Vector3.zero]
  MOVE R10 R1
  GETTABLEKS R12 R0 K0 ["_draggerContext"]
  NAMECALL R12 R12 K37 ["shouldGridSnap"]
  CALL R12 1 1
  JUMPIFNOT R12 [+6]
  GETTABLEKS R11 R0 K0 ["_draggerContext"]
  NAMECALL R11 R11 K38 ["getGridSize"]
  CALL R11 1 1
  JUMP [+1]
  LOADNIL R11
  MOVE R12 R3
  MOVE R13 R2
  NAMECALL R14 R0 K39 ["shouldAlignDraggedObjects"]
  CALL R14 1 1
  JUMPIFNOT R14 [+6]
  GETTABLEKS R15 R0 K0 ["_draggerContext"]
  NAMECALL R15 R15 K40 ["isAltKeyDown"]
  CALL R15 1 1
  NOT R14 R15
  LOADB R15 0
  GETTABLEKS R16 R0 K0 ["_draggerContext"]
  NAMECALL R16 R16 K41 ["getSoftSnapMarginFactor"]
  CALL R16 1 1
  GETTABLEKS R17 R0 K0 ["_draggerContext"]
  NAMECALL R17 R17 K42 ["shouldPartSnap"]
  CALL R17 1 1
  LOADB R18 1
  CALL R4 14 1
  GETTABLEKS R5 R0 K0 ["_draggerContext"]
  GETTABLEKS R7 R1 K43 ["Origin"]
  GETTABLEKS R8 R1 K44 ["Direction"]
  GETIMPORT R9 K46 [RaycastParams.new]
  CALL R9 0 -1
  NAMECALL R5 R5 K47 ["gizmoRaycast"]
  CALL R5 -1 1
  LOADNIL R6
  LOADNIL R7
  JUMPIFNOT R5 [+25]
  GETTABLEKS R8 R5 K5 ["Instance"]
  JUMPIFNOT R8 [+22]
  GETTABLEKS R8 R5 K5 ["Instance"]
  LOADK R10 K27 ["Attachment"]
  NAMECALL R8 R8 K28 ["IsA"]
  CALL R8 2 1
  JUMPIFNOT R8 [+15]
  GETTABLEKS R8 R5 K5 ["Instance"]
  GETTABLEKS R9 R0 K9 ["_initialInstance"]
  JUMPIFEQ R8 R9 [+10]
  GETTABLEKS R8 R0 K2 ["_constraintType"]
  JUMPIFEQKS R8 K27 ["Attachment"] [+6]
  GETTABLEKS R7 R5 K5 ["Instance"]
  GETTABLEKS R6 R7 K48 ["WorldCFrame"]
  JUMP [+8]
  JUMPIFNOT R4 [+7]
  GETTABLEKS R8 R4 K49 ["targetPart"]
  JUMPIFNOT R8 [+4]
  GETTABLEKS R7 R4 K49 ["targetPart"]
  GETTABLEKS R6 R4 K50 ["mainCFrame"]
  GETUPVAL R8 7
  JUMPIFNOT R8 [+30]
  GETUPVAL R8 8
  JUMPIF R8 [+1]
  JUMP [+3]
  GETTABLEKS R8 R0 K9 ["_initialInstance"]
  JUMPIF R8 [+24]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K3 ["raycast"]
  MOVE R9 R1
  NEWTABLE R10 0 0
  CALL R8 2 1
  JUMPIFNOT R8 [+16]
  GETTABLEKS R9 R0 K51 ["_lastNormal"]
  GETTABLEKS R10 R8 K52 ["Normal"]
  JUMPIFEQ R9 R10 [+7]
  GETTABLEKS R10 R4 K53 ["baseCFrame"]
  GETTABLEKS R9 R10 K29 ["Rotation"]
  SETTABLEKS R9 R0 K54 ["_lastDraggedInstanceDefaultOrientation"]
  GETTABLEKS R9 R8 K52 ["Normal"]
  SETTABLEKS R9 R0 K51 ["_lastNormal"]
  JUMPIFNOT R4 [+5]
  GETTABLEKS R8 R4 K49 ["targetPart"]
  JUMPIFNOT R8 [+2]
  SETTABLEKS R4 R0 K24 ["_lastDragTarget"]
  GETTABLEKS R8 R0 K9 ["_initialInstance"]
  JUMPIFNOT R8 [+14]
  GETUPVAL R8 9
  JUMPIFNOT R8 [+7]
  JUMPIFNOT R4 [+11]
  GETTABLEKS R8 R4 K53 ["baseCFrame"]
  GETTABLEKS R9 R0 K26 ["_tiltRotate"]
  MUL R6 R8 R9
  JUMP [+5]
  GETTABLEKS R8 R4 K53 ["baseCFrame"]
  GETTABLEKS R9 R0 K26 ["_tiltRotate"]
  MUL R6 R8 R9
  SETTABLEKS R7 R0 K19 ["_currentHoveringInstance"]
  GETTABLEKS R8 R0 K4 ["_selectionHighlight"]
  JUMPIFNOTEQKNIL R7 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  SETTABLEKS R9 R8 K23 ["Enabled"]
  GETTABLEKS R8 R0 K4 ["_selectionHighlight"]
  SETTABLEKS R7 R8 K6 ["Adornee"]
  JUMPIFNOT R7 [+199]
  GETUPVAL R8 10
  JUMPIFNOT R8 [+78]
  GETTABLEKS R8 R0 K55 ["_ghostAssembly"]
  JUMPIFNOT R8 [+4]
  GETTABLEKS R8 R0 K56 ["_lastHoveringInstance"]
  JUMPIFEQ R8 R7 [+72]
  GETTABLEKS R8 R0 K55 ["_ghostAssembly"]
  JUMPIFNOT R8 [+8]
  GETTABLEKS R8 R0 K55 ["_ghostAssembly"]
  NAMECALL R8 R8 K57 ["Destroy"]
  CALL R8 1 0
  LOADNIL R8
  SETTABLEKS R8 R0 K55 ["_ghostAssembly"]
  GETTABLEKS R8 R0 K9 ["_initialInstance"]
  JUMPIFNOT R8 [+57]
  GETIMPORT R8 K58 [Instance.new]
  LOADK R9 K59 ["Model"]
  CALL R8 1 1
  SETTABLEKS R8 R0 K55 ["_ghostAssembly"]
  GETTABLEKS R8 R0 K55 ["_ghostAssembly"]
  LOADK R9 K60 ["GhostAssembly"]
  SETTABLEKS R9 R8 K61 ["Name"]
  GETTABLEKS R8 R0 K55 ["_ghostAssembly"]
  LOADB R9 0
  SETTABLEKS R9 R8 K62 ["Archivable"]
  GETTABLEKS R8 R0 K55 ["_ghostAssembly"]
  GETIMPORT R10 K64 [workspace]
  GETTABLEKS R9 R10 K65 ["CurrentCamera"]
  SETTABLEKS R9 R8 K66 ["Parent"]
  GETTABLEKS R9 R0 K9 ["_initialInstance"]
  GETTABLEKS R8 R9 K66 ["Parent"]
  NAMECALL R8 R8 K67 ["Clone"]
  CALL R8 1 1
  GETTABLEKS R9 R0 K55 ["_ghostAssembly"]
  SETTABLEKS R9 R8 K66 ["Parent"]
  GETTABLEKS R9 R0 K55 ["_ghostAssembly"]
  SETTABLEKS R8 R9 K68 ["PrimaryPart"]
  GETTABLEKS R10 R0 K9 ["_initialInstance"]
  GETTABLEKS R9 R10 K66 ["Parent"]
  LOADB R11 1
  NAMECALL R9 R9 K69 ["GetConnectedParts"]
  CALL R9 2 3
  FORGPREP R9
  NAMECALL R14 R13 K67 ["Clone"]
  CALL R14 1 1
  GETTABLEKS R15 R0 K55 ["_ghostAssembly"]
  SETTABLEKS R15 R14 K66 ["Parent"]
  FORGLOOP R9 2 [-8]
  GETTABLEKS R8 R0 K70 ["_attachmentAdornment"]
  NAMECALL R10 R0 K18 ["_canMouseDown"]
  CALL R10 1 1
  JUMPIFNOT R10 [+2]
  GETUPVAL R9 11
  JUMPIF R9 [+1]
  GETUPVAL R9 12
  SETTABLEKS R9 R8 K22 ["Color3"]
  GETUPVAL R8 7
  JUMPIFNOT R8 [+14]
  GETTABLEKS R8 R0 K54 ["_lastDraggedInstanceDefaultOrientation"]
  JUMPIFNOT R8 [+11]
  GETIMPORT R9 K15 [CFrame.new]
  GETTABLEKS R10 R6 K8 ["Position"]
  CALL R9 1 1
  GETTABLEKS R10 R0 K54 ["_lastDraggedInstanceDefaultOrientation"]
  MUL R8 R9 R10
  GETTABLEKS R9 R0 K26 ["_tiltRotate"]
  MUL R6 R8 R9
  GETTABLEKS R8 R0 K71 ["_attachmentToolAnimator"]
  NAMECALL R8 R8 K72 ["inProgress"]
  CALL R8 1 1
  JUMPIF R8 [+6]
  GETTABLEKS R10 R0 K70 ["_attachmentAdornment"]
  MOVE R11 R6
  NAMECALL R8 R0 K73 ["_orientAttachmentAdornment"]
  CALL R8 3 0
  GETTABLEKS R8 R0 K9 ["_initialInstance"]
  JUMPIFNOT R8 [+77]
  GETTABLEKS R9 R0 K9 ["_initialInstance"]
  GETTABLEKS R8 R9 K48 ["WorldCFrame"]
  GETTABLEKS R12 R0 K9 ["_initialInstance"]
  GETTABLEKS R11 R12 K66 ["Parent"]
  GETTABLEKS R10 R11 K11 ["CFrame"]
  NAMECALL R8 R8 K74 ["ToObjectSpace"]
  CALL R8 2 1
  GETTABLEKS R11 R6 K75 ["p"]
  GETTABLEKS R14 R0 K9 ["_initialInstance"]
  GETTABLEKS R13 R14 K48 ["WorldCFrame"]
  GETTABLEKS R12 R13 K75 ["p"]
  SUB R10 R11 R12
  GETTABLEKS R9 R10 K10 ["Magnitude"]
  GETTABLEKS R10 R0 K7 ["_constraintConnectionVisual"]
  GETIMPORT R12 K13 [CFrame.lookAt]
  GETTABLEKS R15 R0 K9 ["_initialInstance"]
  GETTABLEKS R14 R15 K48 ["WorldCFrame"]
  GETTABLEKS R13 R14 K75 ["p"]
  GETTABLEKS R14 R6 K75 ["p"]
  CALL R12 2 1
  GETIMPORT R13 K15 [CFrame.new]
  LOADN R14 0
  LOADN R15 0
  MINUS R17 R9
  MULK R16 R17 K16 [0.5]
  CALL R13 3 1
  MUL R11 R12 R13
  SETTABLEKS R11 R10 K11 ["CFrame"]
  GETTABLEKS R10 R0 K7 ["_constraintConnectionVisual"]
  SETTABLEKS R9 R10 K17 ["Height"]
  GETTABLEKS R13 R0 K76 ["_partPassthroughEnabled"]
  JUMPIFNOT R13 [+2]
  LOADK R12 K16 [0.5]
  JUMP [+1]
  LOADN R12 0
  NAMECALL R10 R0 K77 ["_setInitialInstanceTransparency"]
  CALL R10 2 0
  GETTABLEKS R12 R0 K78 ["_initialInstanceAdornment"]
  GETTABLEKS R14 R0 K9 ["_initialInstance"]
  GETTABLEKS R13 R14 K48 ["WorldCFrame"]
  NAMECALL R10 R0 K73 ["_orientAttachmentAdornment"]
  CALL R10 3 0
  GETUPVAL R10 10
  JUMPIFNOT R10 [+6]
  GETTABLEKS R10 R0 K55 ["_ghostAssembly"]
  MUL R12 R6 R8
  NAMECALL R10 R10 K79 ["SetPrimaryPartCFrame"]
  CALL R10 2 0
  RETURN R0 0

PROTO_24:
  LOADNIL R2
  GETTABLEKS R3 R0 K0 ["_lastDragTarget"]
  JUMPIFNOT R3 [+4]
  GETTABLEKS R3 R0 K0 ["_lastDragTarget"]
  GETTABLEKS R2 R3 K1 ["targetMatrix"]
  LOADNIL R3
  GETUPVAL R4 0
  JUMPIFNOT R4 [+52]
  LOADNIL R4
  GETTABLEKS R5 R0 K2 ["_lastDraggedInstanceDefaultOrientation"]
  JUMPIFNOT R5 [+36]
  LOADK R5 K3 [{0, 1, 0}]
  JUMPIFEQ R1 R5 [+34]
  GETTABLEKS R5 R0 K4 ["_draggerContext"]
  NAMECALL R5 R5 K5 ["getCameraCFrame"]
  CALL R5 1 1
  MOVE R7 R1
  NAMECALL R5 R5 K6 ["VectorToWorldSpace"]
  CALL R5 2 1
  LOADK R6 K7 [-∞]
  GETIMPORT R7 K9 [ipairs]
  GETUPVAL R8 1
  CALL R7 1 3
  FORGPREP_INEXT R7
  GETTABLEKS R12 R0 K2 ["_lastDraggedInstanceDefaultOrientation"]
  MOVE R14 R11
  NAMECALL R12 R12 K6 ["VectorToWorldSpace"]
  CALL R12 2 1
  MOVE R14 R5
  NAMECALL R12 R12 K10 ["Dot"]
  CALL R12 2 1
  JUMPIFNOTLT R6 R12 [+3]
  MOVE R4 R11
  MOVE R6 R12
  FORGLOOP R7 2 [inext] [-15]
  ORK R4 R4 K3 [{0, 1, 0}]
  JUMP [+1]
  MOVE R4 R1
  GETUPVAL R5 2
  GETIMPORT R6 K13 [CFrame.fromAxisAngle]
  MOVE R7 R4
  LOADK R8 K14 [1.5707963267949]
  CALL R6 2 -1
  CALL R5 -1 1
  GETTABLEKS R6 R0 K15 ["_tiltRotate"]
  MUL R3 R5 R6
  JUMP [+48]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K16 ["updateTiltRotate"]
  GETTABLEKS R5 R0 K4 ["_draggerContext"]
  NAMECALL R5 R5 K5 ["getCameraCFrame"]
  CALL R5 1 1
  GETTABLEKS R6 R0 K4 ["_draggerContext"]
  NAMECALL R6 R6 K17 ["getMouseRay"]
  CALL R6 1 1
  NAMECALL R7 R0 K18 ["getRaycastIgnoreList"]
  CALL R7 1 1
  GETIMPORT R8 K20 [CFrame.identity]
  MOVE R9 R2
  GETTABLEKS R10 R0 K15 ["_tiltRotate"]
  MOVE R11 R1
  NAMECALL R12 R0 K21 ["shouldAlignDraggedObjects"]
  CALL R12 1 1
  JUMPIFNOT R12 [+6]
  GETTABLEKS R13 R0 K4 ["_draggerContext"]
  NAMECALL R13 R13 K22 ["isAltKeyDown"]
  CALL R13 1 1
  NOT R12 R13
  GETTABLEKS R14 R0 K4 ["_draggerContext"]
  NAMECALL R14 R14 K23 ["shouldGridSnap"]
  CALL R14 1 1
  JUMPIFNOT R14 [+6]
  GETTABLEKS R13 R0 K4 ["_draggerContext"]
  NAMECALL R13 R13 K24 ["getGridSize"]
  CALL R13 1 1
  JUMP [+1]
  LOADNIL R13
  LOADB R14 1
  CALL R4 10 1
  MOVE R3 R4
  GETTABLEKS R4 R0 K0 ["_lastDragTarget"]
  JUMPIFNOT R4 [+28]
  GETUPVAL R4 0
  JUMPIFNOT R4 [+19]
  GETTABLEKS R4 R0 K2 ["_lastDraggedInstanceDefaultOrientation"]
  JUMPIFNOT R4 [+16]
  GETTABLEKS R4 R0 K25 ["_attachmentToolAnimator"]
  GETIMPORT R6 K27 [CFrame.new]
  GETTABLEKS R9 R0 K0 ["_lastDragTarget"]
  GETTABLEKS R8 R9 K28 ["baseCFrame"]
  GETTABLEKS R7 R8 K29 ["Position"]
  CALL R6 1 1
  GETTABLEKS R7 R0 K2 ["_lastDraggedInstanceDefaultOrientation"]
  MUL R5 R6 R7
  SETTABLEKS R5 R4 K30 ["_overrideBaseRotation"]
  GETTABLEKS R4 R0 K25 ["_attachmentToolAnimator"]
  MOVE R6 R3
  NAMECALL R4 R4 K31 ["beginAnimation"]
  CALL R4 2 0
  JUMP [+2]
  SETTABLEKS R3 R0 K15 ["_tiltRotate"]
  NAMECALL R4 R0 K32 ["_updateAttachment"]
  CALL R4 1 0
  NAMECALL R4 R0 K33 ["_scheduleRender"]
  CALL R4 1 0
  RETURN R0 0

PROTO_25:
  GETTABLEKS R1 R0 K0 ["_initialInstance"]
  NAMECALL R2 R0 K1 ["_clearInitialInstance"]
  CALL R2 1 0
  JUMPIFNOT R1 [+8]
  GETUPVAL R3 0
  GETTABLEKS R4 R0 K2 ["_constraintType"]
  GETTABLE R2 R3 R4
  JUMPIF R2 [+3]
  NAMECALL R2 R1 K3 ["Destroy"]
  CALL R2 1 0
  GETUPVAL R2 1
  JUMPIFNOT R2 [+11]
  GETTABLEKS R2 R0 K4 ["_ghostAssembly"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R2 R0 K4 ["_ghostAssembly"]
  NAMECALL R2 R2 K3 ["Destroy"]
  CALL R2 1 0
  LOADNIL R2
  SETTABLEKS R2 R0 K4 ["_ghostAssembly"]
  GETTABLEKS R3 R0 K5 ["_constraintToolVisualsFolder"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R0 K5 ["_constraintToolVisualsFolder"]
  NAMECALL R2 R2 K3 ["Destroy"]
  CALL R2 1 0
  NAMECALL R2 R0 K7 ["_removeAttachmentAdorns"]
  CALL R2 1 0
  NAMECALL R2 R0 K8 ["_removeConstraintVisuals"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K9 ["_closePluginCallback"]
  CALL R2 0 0
  RETURN R0 0

PROTO_26:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["_processSelectionChanged"]
  CALL R0 1 0
  RETURN R0 0

PROTO_27:
  GETTABLEKS R2 R0 K0 ["_modelProps"]
  GETTABLEKS R1 R2 K1 ["ShowPivotIndicator"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K2 ["_draggerContext"]
  LOADB R3 1
  NAMECALL R1 R1 K3 ["setPivotIndicator"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K4 ["_oldShowPivot"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["SelectionChanged"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K6 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K7 ["_selectionChangedConnection"]
  RETURN R0 0

PROTO_28:
  GETTABLEKS R1 R0 K0 ["_isMouseDown"]
  JUMPIFNOT R1 [+3]
  NAMECALL R1 R0 K1 ["_processMouseUp"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K2 ["_modelProps"]
  GETTABLEKS R1 R2 K3 ["ShowPivotIndicator"]
  JUMPIFNOT R1 [+7]
  GETTABLEKS R1 R0 K4 ["_draggerContext"]
  GETTABLEKS R3 R0 K5 ["_oldShowPivot"]
  NAMECALL R1 R1 K6 ["setPivotIndicator"]
  CALL R1 2 0
  GETTABLEKS R1 R0 K7 ["_selectionChangedConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K7 ["_selectionChangedConnection"]
  NAMECALL R1 R1 K8 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K7 ["_selectionChangedConnection"]
  LOADNIL R1
  SETTABLEKS R1 R0 K9 ["_recordingIdentifier"]
  NAMECALL R1 R0 K10 ["_closeTool"]
  CALL R1 1 0
  RETURN R0 0

PROTO_29:
  NAMECALL R1 R0 K0 ["_scheduleRender"]
  CALL R1 1 0
  RETURN R0 0

PROTO_30:
  SETTABLEKS R1 R0 K0 ["_constraintType"]
  RETURN R0 0

PROTO_31:
  GETUPVAL R2 0
  GETTABLEKS R3 R0 K0 ["_constraintType"]
  GETTABLE R1 R2 R3
  RETURN R1 1

PROTO_32:
  GETIMPORT R1 K2 [Instance.new]
  LOADK R2 K3 ["CylinderHandleAdornment"]
  CALL R1 1 1
  LOADB R2 1
  SETTABLEKS R2 R1 K4 ["AlwaysOnTop"]
  GETIMPORT R3 K6 [workspace]
  GETTABLEKS R2 R3 K7 ["Terrain"]
  SETTABLEKS R2 R1 K8 ["Adornee"]
  LOADN R2 0
  SETTABLEKS R2 R1 K9 ["ZIndex"]
  LOADK R2 K10 [0.05]
  SETTABLEKS R2 R1 K11 ["Radius"]
  GETTABLEKS R2 R0 K12 ["_constraintToolVisualsFolder"]
  SETTABLEKS R2 R1 K13 ["Parent"]
  SETTABLEKS R1 R0 K14 ["_constraintConnectionVisual"]
  RETURN R0 0

PROTO_33:
  GETTABLEKS R1 R0 K0 ["_constraintConnectionVisual"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["_constraintConnectionVisual"]
  NAMECALL R1 R1 K1 ["Destroy"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_constraintConnectionVisual"]
  RETURN R0 0

PROTO_34:
  GETTABLEKS R1 R0 K0 ["_attachmentArrowVisuals"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  NAMECALL R6 R4 K1 ["Destroy"]
  CALL R6 1 0
  MOVE R6 R5
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  NAMECALL R11 R10 K1 ["Destroy"]
  CALL R11 1 0
  FORGLOOP R6 2 [-4]
  FORGLOOP R1 2 [-13]
  GETIMPORT R1 K4 [table.clear]
  GETTABLEKS R2 R0 K0 ["_attachmentArrowVisuals"]
  CALL R1 1 0
  RETURN R0 0

PROTO_35:
  GETIMPORT R2 K3 [Enum.KeyCode.R]
  JUMPIFNOTEQ R1 R2 [+6]
  LOADK R4 K4 [{0, 1, 0}]
  NAMECALL R2 R0 K5 ["_rotateAttachment"]
  CALL R2 2 0
  RETURN R0 0
  GETIMPORT R2 K7 [Enum.KeyCode.T]
  JUMPIFNOTEQ R1 R2 [+6]
  LOADK R4 K8 [{1, 0, 0}]
  NAMECALL R2 R0 K5 ["_rotateAttachment"]
  CALL R2 2 0
  RETURN R0 0
  GETIMPORT R2 K10 [Enum.KeyCode.H]
  JUMPIFNOTEQ R1 R2 [+18]
  GETTABLEKS R2 R0 K11 ["_draggerContext"]
  LOADK R4 K12 ["HotkeyUsageHidden"]
  GETTABLEKS R6 R0 K11 ["_draggerContext"]
  LOADK R8 K12 ["HotkeyUsageHidden"]
  NAMECALL R6 R6 K13 ["getSetting"]
  CALL R6 2 1
  NOT R5 R6
  NAMECALL R2 R2 K14 ["setSetting"]
  CALL R2 3 0
  NAMECALL R2 R0 K15 ["_scheduleRender"]
  CALL R2 1 0
  RETURN R0 0
  GETIMPORT R2 K17 [Enum.KeyCode.G]
  JUMPIFNOTEQ R1 R2 [+15]
  GETUPVAL R2 0
  JUMPIFNOT R2 [+12]
  GETTABLEKS R3 R0 K18 ["_partPassthroughEnabled"]
  NOT R2 R3
  SETTABLEKS R2 R0 K18 ["_partPassthroughEnabled"]
  NAMECALL R2 R0 K19 ["_updateAttachment"]
  CALL R2 1 0
  NAMECALL R2 R0 K15 ["_scheduleRender"]
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R2 1
  JUMPIFNOT R2 [+24]
  GETIMPORT R2 K21 [Enum.KeyCode.M]
  JUMPIFNOTEQ R1 R2 [+21]
  GETTABLEKS R3 R0 K22 ["_addMultipleConstraintsEnabled"]
  NOT R2 R3
  SETTABLEKS R2 R0 K22 ["_addMultipleConstraintsEnabled"]
  GETTABLEKS R2 R0 K11 ["_draggerContext"]
  LOADK R4 K23 ["MultipleConstraintMode"]
  GETTABLEKS R5 R0 K22 ["_addMultipleConstraintsEnabled"]
  NAMECALL R2 R2 K14 ["setSetting"]
  CALL R2 3 0
  NAMECALL R2 R0 K19 ["_updateAttachment"]
  CALL R2 1 0
  NAMECALL R2 R0 K15 ["_scheduleRender"]
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R3 2
  GETTABLE R2 R3 R1
  JUMPIFNOT R2 [+6]
  NAMECALL R2 R0 K19 ["_updateAttachment"]
  CALL R2 1 0
  NAMECALL R2 R0 K15 ["_scheduleRender"]
  CALL R2 1 0
  RETURN R0 0

PROTO_36:
  GETUPVAL R3 0
  GETTABLE R2 R3 R1
  JUMPIFNOT R2 [+6]
  NAMECALL R2 R0 K0 ["_updateAttachment"]
  CALL R2 1 0
  NAMECALL R2 R0 K1 ["_scheduleRender"]
  CALL R2 1 0
  RETURN R0 0

PROTO_37:
  GETTABLEKS R1 R0 K0 ["_ancestryChangedConnection"]
  JUMPIFNOT R1 [+48]
  GETUPVAL R2 0
  GETTABLEKS R3 R0 K1 ["_constraintType"]
  GETTABLE R1 R2 R3
  JUMPIF R1 [+25]
  GETTABLEKS R2 R0 K2 ["_attachmentArrowVisuals"]
  GETTABLEKS R3 R0 K3 ["_initialInstanceAdornment"]
  GETTABLE R1 R2 R3
  MOVE R2 R1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  NAMECALL R7 R6 K4 ["Destroy"]
  CALL R7 1 0
  FORGLOOP R2 2 [-4]
  GETTABLEKS R2 R0 K3 ["_initialInstanceAdornment"]
  NAMECALL R2 R2 K4 ["Destroy"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K2 ["_attachmentArrowVisuals"]
  GETTABLEKS R3 R0 K3 ["_initialInstanceAdornment"]
  LOADNIL R4
  SETTABLE R4 R2 R3
  LOADN R3 0
  NAMECALL R1 R0 K5 ["_setInitialInstanceTransparency"]
  CALL R1 2 0
  GETTABLEKS R1 R0 K0 ["_ancestryChangedConnection"]
  NAMECALL R1 R1 K6 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_ancestryChangedConnection"]
  LOADNIL R1
  SETTABLEKS R1 R0 K7 ["_initialInstance"]
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["_initialInstanceAdornment"]
  RETURN R0 0

PROTO_38:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Parent"]
  JUMPIFNOT R0 [+7]
  GETUPVAL R0 0
  GETIMPORT R2 K2 [workspace]
  NAMECALL R0 R0 K3 ["IsDescendantOf"]
  CALL R0 2 1
  JUMPIF R0 [+8]
  GETUPVAL R0 1
  NAMECALL R0 R0 K4 ["_clearInitialInstance"]
  CALL R0 1 0
  GETUPVAL R0 1
  NAMECALL R0 R0 K5 ["_removeConstraintVisuals"]
  CALL R0 1 0
  RETURN R0 0

PROTO_39:
  NAMECALL R2 R0 K0 ["_clearInitialInstance"]
  CALL R2 1 0
  SETTABLEKS R1 R0 K1 ["_initialInstance"]
  GETTABLEKS R2 R1 K2 ["AncestryChanged"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  NAMECALL R2 R2 K3 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K4 ["_ancestryChangedConnection"]
  GETUPVAL R3 0
  GETTABLEKS R4 R0 K5 ["_constraintType"]
  GETTABLE R2 R3 R4
  JUMPIF R2 [+5]
  NAMECALL R2 R0 K6 ["_createAttachmentAdornment"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K7 ["_initialInstanceAdornment"]
  NAMECALL R2 R0 K8 ["_createConstraintVisuals"]
  CALL R2 1 0
  RETURN R0 0

PROTO_40:
  NAMECALL R1 R0 K0 ["_getConstraintData"]
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R4 R0 K1 ["_constraintType"]
  GETTABLE R2 R3 R4
  GETTABLEKS R3 R0 K2 ["_currentHoveringInstance"]
  JUMPIF R3 [+2]
  LOADB R3 0
  RETURN R3 1
  JUMPIFNOT R1 [+37]
  GETTABLEKS R3 R1 K3 ["Attachments"]
  JUMPIFNOTEQKN R3 K4 [2] [+34]
  GETTABLEKS R3 R0 K5 ["_initialInstance"]
  JUMPIFNOT R3 [+30]
  GETTABLEKS R3 R1 K6 ["IgnoreSamePartCheck"]
  JUMPIF R3 [+27]
  GETTABLEKS R3 R0 K2 ["_currentHoveringInstance"]
  LOADK R6 K7 ["Attachment"]
  NAMECALL R4 R3 K8 ["IsA"]
  CALL R4 2 1
  JUMPIFNOT R4 [+2]
  GETTABLEKS R3 R3 K9 ["Parent"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R4 R0 K5 ["_initialInstance"]
  GETTABLEKS R5 R0 K2 ["_currentHoveringInstance"]
  JUMPIFNOTEQ R4 R5 [+3]
  LOADB R4 0
  RETURN R4 1
  JUMPIF R2 [+8]
  GETTABLEKS R5 R0 K5 ["_initialInstance"]
  GETTABLEKS R4 R5 K9 ["Parent"]
  JUMPIFNOTEQ R4 R3 [+3]
  LOADB R4 0
  RETURN R4 1
  LOADB R3 1
  RETURN R3 1

PROTO_41:
  GETTABLEKS R1 R0 K0 ["_isMouseDown"]
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["_isMouseDown"]
  NAMECALL R1 R0 K1 ["_canMouseDown"]
  CALL R1 1 1
  JUMPIF R1 [+1]
  RETURN R0 0
  LOADNIL R1
  GETUPVAL R2 0
  GETUPVAL R4 1
  LOADK R5 K2 ["Placing Constraint"]
  NAMECALL R2 R2 K3 ["TryBeginRecording"]
  CALL R2 3 1
  GETIMPORT R3 K7 [Enum.FinishRecordingOperation.Commit]
  NAMECALL R4 R0 K8 ["_getConstraintData"]
  CALL R4 1 1
  LOADK R5 K9 ["default"]
  LOADB R6 0
  LOADB R7 1
  GETUPVAL R9 2
  GETTABLEKS R10 R0 K10 ["_constraintType"]
  GETTABLE R8 R9 R10
  JUMPIFNOT R8 [+43]
  GETTABLEKS R8 R0 K11 ["_initialInstance"]
  JUMPIFNOT R8 [+32]
  GETIMPORT R8 K14 [Instance.new]
  GETTABLEKS R9 R0 K10 ["_constraintType"]
  GETTABLEKS R10 R0 K11 ["_initialInstance"]
  CALL R8 2 1
  MOVE R1 R8
  GETTABLEKS R8 R0 K11 ["_initialInstance"]
  SETTABLEKS R8 R1 K15 ["Part0"]
  GETTABLEKS R8 R0 K16 ["_currentHoveringInstance"]
  SETTABLEKS R8 R1 K17 ["Part1"]
  GETUPVAL R8 3
  NEWTABLE R10 0 1
  MOVE R11 R1
  SETLIST R10 R11 1 [1]
  NAMECALL R8 R8 K18 ["Set"]
  CALL R8 2 0
  NAMECALL R8 R0 K19 ["_clearInitialInstance"]
  CALL R8 1 0
  NAMECALL R8 R0 K20 ["_removeConstraintVisuals"]
  CALL R8 1 0
  JUMP [+211]
  GETTABLEKS R10 R0 K16 ["_currentHoveringInstance"]
  NAMECALL R8 R0 K21 ["_selectInitialInstance"]
  CALL R8 2 0
  GETIMPORT R3 K23 [Enum.FinishRecordingOperation.Cancel]
  JUMP [+203]
  GETTABLEKS R8 R0 K16 ["_currentHoveringInstance"]
  LOADK R10 K24 ["Attachment"]
  NAMECALL R8 R8 K25 ["IsA"]
  CALL R8 2 1
  JUMPIFNOT R8 [+6]
  GETTABLEKS R1 R0 K16 ["_currentHoveringInstance"]
  GETUPVAL R8 4
  JUMPIFNOT R8 [+35]
  LOADB R7 0
  JUMP [+33]
  GETIMPORT R8 K14 [Instance.new]
  LOADK R9 K24 ["Attachment"]
  CALL R8 1 1
  MOVE R1 R8
  GETTABLEKS R9 R0 K16 ["_currentHoveringInstance"]
  GETTABLEKS R8 R9 K26 ["CFrame"]
  GETTABLEKS R11 R0 K27 ["_attachmentAdornment"]
  GETTABLEKS R10 R11 K26 ["CFrame"]
  NAMECALL R8 R8 K28 ["ToObjectSpace"]
  CALL R8 2 1
  SETTABLEKS R8 R1 K26 ["CFrame"]
  GETTABLEKS R8 R0 K16 ["_currentHoveringInstance"]
  SETTABLEKS R8 R1 K29 ["Parent"]
  GETUPVAL R8 5
  JUMPIFNOT R8 [+9]
  GETUPVAL R8 3
  NEWTABLE R10 0 1
  MOVE R11 R1
  SETLIST R10 R11 1 [1]
  NAMECALL R8 R8 K18 ["Set"]
  CALL R8 2 0
  LOADNIL R8
  GETTABLEKS R9 R4 K30 ["Attachments"]
  JUMPIFNOTEQKN R9 K31 [2] [+104]
  GETTABLEKS R9 R0 K11 ["_initialInstance"]
  JUMPIFNOT R9 [+75]
  GETUPVAL R9 4
  JUMPIFNOT R9 [+4]
  JUMPIFNOT R7 [+3]
  LOADK R9 K32 ["Attachment1"]
  SETTABLEKS R9 R1 K33 ["Name"]
  GETIMPORT R9 K14 [Instance.new]
  GETTABLEKS R10 R0 K10 ["_constraintType"]
  GETTABLEKS R12 R0 K11 ["_initialInstance"]
  GETTABLEKS R11 R12 K29 ["Parent"]
  CALL R9 2 1
  MOVE R8 R9
  GETTABLEKS R9 R0 K11 ["_initialInstance"]
  SETTABLEKS R9 R8 K34 ["Attachment0"]
  SETTABLEKS R1 R8 K32 ["Attachment1"]
  GETTABLEKS R12 R1 K35 ["WorldCFrame"]
  GETTABLEKS R11 R12 K36 ["p"]
  GETTABLEKS R14 R0 K11 ["_initialInstance"]
  GETTABLEKS R13 R14 K35 ["WorldCFrame"]
  GETTABLEKS R12 R13 K36 ["p"]
  SUB R10 R11 R12
  GETTABLEKS R9 R10 K37 ["Magnitude"]
  GETTABLEKS R10 R0 K10 ["_constraintType"]
  JUMPIFEQKS R10 K38 ["RopeConstraint"] [+5]
  GETTABLEKS R10 R0 K10 ["_constraintType"]
  JUMPIFNOTEQKS R10 K39 ["RodConstraint"] [+4]
  SETTABLEKS R9 R8 K40 ["Length"]
  JUMP [+6]
  GETTABLEKS R10 R0 K10 ["_constraintType"]
  JUMPIFNOTEQKS R10 K41 ["SpringConstraint"] [+3]
  SETTABLEKS R9 R8 K42 ["FreeLength"]
  GETUPVAL R10 6
  JUMPIFNOT R10 [+8]
  GETTABLEKS R10 R0 K43 ["_ghostAssembly"]
  NAMECALL R10 R10 K44 ["Destroy"]
  CALL R10 1 0
  LOADNIL R10
  SETTABLEKS R10 R0 K43 ["_ghostAssembly"]
  GETUPVAL R10 7
  JUMPIFNOT R10 [+4]
  GETIMPORT R10 K46 [CFrame.identity]
  SETTABLEKS R10 R0 K47 ["_tiltRotate"]
  NAMECALL R10 R0 K19 ["_clearInitialInstance"]
  CALL R10 1 0
  NAMECALL R10 R0 K20 ["_removeConstraintVisuals"]
  CALL R10 1 0
  JUMP [+49]
  GETUPVAL R9 4
  JUMPIFNOT R9 [+4]
  JUMPIFNOT R7 [+3]
  LOADK R9 K34 ["Attachment0"]
  SETTABLEKS R9 R1 K33 ["Name"]
  LOADK R5 K48 ["initial"]
  MOVE R11 R1
  NAMECALL R9 R0 K21 ["_selectInitialInstance"]
  CALL R9 2 0
  GETUPVAL R9 7
  JUMPIFNOT R9 [+36]
  GETTABLEKS R10 R0 K49 ["_lastDraggedInstanceDefaultOrientation"]
  GETTABLEKS R11 R0 K47 ["_tiltRotate"]
  MUL R9 R10 R11
  SETTABLEKS R9 R0 K49 ["_lastDraggedInstanceDefaultOrientation"]
  GETIMPORT R9 K46 [CFrame.identity]
  SETTABLEKS R9 R0 K47 ["_tiltRotate"]
  JUMP [+24]
  GETTABLEKS R9 R4 K30 ["Attachments"]
  JUMPIFNOTEQKN R9 K50 [1] [+21]
  GETTABLEKS R9 R0 K10 ["_constraintType"]
  JUMPIFEQKS R9 K24 ["Attachment"] [+17]
  GETIMPORT R9 K14 [Instance.new]
  GETTABLEKS R10 R0 K10 ["_constraintType"]
  GETTABLEKS R11 R1 K29 ["Parent"]
  CALL R9 2 1
  MOVE R8 R9
  SETTABLEKS R1 R8 K34 ["Attachment0"]
  NAMECALL R9 R0 K19 ["_clearInitialInstance"]
  CALL R9 1 0
  NAMECALL R9 R0 K20 ["_removeConstraintVisuals"]
  CALL R9 1 0
  GETUPVAL R9 5
  JUMPIFNOT R9 [+11]
  JUMPIFNOT R8 [+10]
  LOADB R6 1
  GETUPVAL R9 3
  NEWTABLE R11 0 1
  MOVE R12 R8
  SETLIST R11 R12 1 [1]
  NAMECALL R9 R9 K18 ["Set"]
  CALL R9 2 0
  JUMPIFNOT R8 [+11]
  GETTABLEKS R9 R4 K51 ["Properties"]
  JUMPIFNOT R9 [+8]
  GETTABLEKS R9 R4 K51 ["Properties"]
  LOADNIL R10
  LOADNIL R11
  FORGPREP R9
  SETTABLE R13 R8 R12
  FORGLOOP R9 2 [-2]
  JUMPIFNOT R1 [+16]
  GETTABLEKS R9 R0 K52 ["_undoAttachmentStack"]
  LOADN R10 1
  DUPTABLE R11 K56 [{"attachment", "attachmentParent", "type"}]
  SETTABLEKS R1 R11 K53 ["attachment"]
  GETTABLEKS R12 R1 K29 ["Parent"]
  SETTABLEKS R12 R11 K54 ["attachmentParent"]
  SETTABLEKS R5 R11 K55 ["type"]
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R8 K59 [table.insert]
  CALL R8 3 0
  GETUPVAL R8 8
  JUMPIFNOT R8 [+8]
  JUMPIFNOT R2 [+13]
  GETUPVAL R8 0
  MOVE R10 R2
  MOVE R11 R3
  NAMECALL R8 R8 K60 ["FinishRecording"]
  CALL R8 3 0
  JUMP [+6]
  GETUPVAL R8 0
  MOVE R10 R2
  MOVE R11 R3
  NAMECALL R8 R8 K60 ["FinishRecording"]
  CALL R8 3 0
  NAMECALL R8 R0 K61 ["_updateAttachment"]
  CALL R8 1 0
  GETUPVAL R8 9
  JUMPIFNOT R8 [+7]
  JUMPIFNOT R6 [+6]
  GETTABLEKS R8 R0 K62 ["_addMultipleConstraintsEnabled"]
  JUMPIF R8 [+3]
  NAMECALL R8 R0 K63 ["_processDeselected"]
  CALL R8 1 0
  RETURN R0 0

PROTO_42:
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["_isMouseDown"]
  GETTABLEKS R1 R0 K1 ["_recordingIdentifier"]
  JUMPIFNOT R1 [+10]
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K1 ["_recordingIdentifier"]
  NAMECALL R1 R1 K2 ["IsRecordingInProgress"]
  CALL R1 2 1
  JUMPIFNOT R1 [+3]
  LOADNIL R1
  SETTABLEKS R1 R0 K1 ["_recordingIdentifier"]
  RETURN R0 0

PROTO_43:
  NAMECALL R1 R0 K0 ["_updateAttachment"]
  CALL R1 1 0
  NAMECALL R1 R0 K1 ["_scheduleRender"]
  CALL R1 1 0
  RETURN R0 0

PROTO_44:
  GETTABLEKS R1 R0 K0 ["_requestRenderCallback"]
  CALL R1 0 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ChangeHistoryService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["Selection"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [script]
  LOADK R4 K7 ["ConstraintTool"]
  NAMECALL R2 R2 K8 ["FindFirstAncestor"]
  CALL R2 2 1
  GETTABLEKS R4 R2 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["DraggerFramework"]
  GETIMPORT R4 K12 [require]
  GETTABLEKS R6 R2 K9 ["Packages"]
  GETTABLEKS R5 R6 K13 ["Roact"]
  CALL R4 1 1
  GETIMPORT R5 K12 [require]
  GETTABLEKS R8 R2 K14 ["Src"]
  GETTABLEKS R7 R8 K15 ["Resources"]
  GETTABLEKS R6 R7 K16 ["ConstraintData"]
  CALL R5 1 1
  GETIMPORT R6 K12 [require]
  GETTABLEKS R9 R2 K14 ["Src"]
  GETTABLEKS R8 R9 K17 ["Util"]
  GETTABLEKS R7 R8 K18 ["AttachmentMover"]
  CALL R6 1 1
  GETIMPORT R7 K12 [require]
  GETTABLEKS R9 R3 K19 ["Utility"]
  GETTABLEKS R8 R9 K20 ["DragHelper"]
  CALL R7 1 1
  GETIMPORT R8 K12 [require]
  GETTABLEKS R10 R3 K19 ["Utility"]
  GETTABLEKS R9 R10 K21 ["roundRotation"]
  CALL R8 1 1
  GETIMPORT R9 K12 [require]
  GETTABLEKS R12 R2 K14 ["Src"]
  GETTABLEKS R11 R12 K17 ["Util"]
  GETTABLEKS R10 R11 K22 ["AttachmentToolRenderer"]
  CALL R9 1 1
  GETIMPORT R10 K12 [require]
  GETTABLEKS R13 R2 K14 ["Src"]
  GETTABLEKS R12 R13 K17 ["Util"]
  GETTABLEKS R11 R12 K23 ["AttachmentToolAnimator"]
  CALL R10 1 1
  GETIMPORT R11 K1 [game]
  LOADK R13 K24 ["EnableConstraintToolGhostAssemblyFeature"]
  NAMECALL R11 R11 K25 ["GetFastFlag"]
  CALL R11 2 1
  GETIMPORT R12 K1 [game]
  LOADK R14 K26 ["EnableConstraintToolPartPassthroughFeature"]
  NAMECALL R12 R12 K25 ["GetFastFlag"]
  CALL R12 2 1
  GETIMPORT R13 K1 [game]
  LOADK R15 K27 ["SimFlipConstraintTool"]
  NAMECALL R13 R13 K25 ["GetFastFlag"]
  CALL R13 2 1
  GETIMPORT R14 K1 [game]
  LOADK R16 K28 ["SimFixConstraintSelection"]
  NAMECALL R14 R14 K25 ["GetFastFlag"]
  CALL R14 2 1
  GETIMPORT R15 K1 [game]
  LOADK R17 K29 ["SimMultipleConstraintMode"]
  NAMECALL R15 R15 K25 ["GetFastFlag"]
  CALL R15 2 1
  GETIMPORT R16 K1 [game]
  LOADK R18 K30 ["SimUseExistingAttachmentName"]
  NAMECALL R16 R16 K25 ["GetFastFlag"]
  CALL R16 2 1
  GETIMPORT R17 K1 [game]
  LOADK R19 K31 ["SimPreserveOrientationOnFace"]
  NAMECALL R17 R17 K25 ["GetFastFlag"]
  CALL R17 2 1
  GETIMPORT R18 K1 [game]
  LOADK R20 K32 ["SimPreserveFirstAttachmentOrientation"]
  NAMECALL R18 R18 K25 ["GetFastFlag"]
  CALL R18 2 1
  GETIMPORT R19 K1 [game]
  LOADK R21 K33 ["SimConstraintToolRuntimeUndoFix"]
  NAMECALL R19 R19 K25 ["GetFastFlag"]
  CALL R19 2 1
  GETIMPORT R20 K1 [game]
  LOADK R22 K34 ["SimTwoAttachmentFixOutputSpam"]
  NAMECALL R20 R20 K25 ["GetFastFlag"]
  CALL R20 2 1
  NEWTABLE R21 64 0
  SETTABLEKS R21 R21 K35 ["__index"]
  LOADNIL R22
  GETIMPORT R23 K38 [Color3.fromRGB]
  LOADN R24 255
  LOADN R25 255
  LOADN R26 0
  CALL R23 3 1
  GETIMPORT R24 K38 [Color3.fromRGB]
  LOADN R25 255
  LOADN R26 170
  LOADN R27 0
  CALL R24 3 1
  GETIMPORT R25 K38 [Color3.fromRGB]
  LOADN R26 0
  LOADN R27 255
  LOADN R28 0
  CALL R25 3 1
  GETIMPORT R26 K38 [Color3.fromRGB]
  LOADN R27 255
  LOADN R28 0
  LOADN R29 0
  CALL R26 3 1
  GETIMPORT R27 K38 [Color3.fromRGB]
  LOADN R28 121
  LOADN R29 172
  LOADN R30 255
  CALL R27 3 1
  GETIMPORT R28 K38 [Color3.fromRGB]
  LOADN R29 255
  LOADN R30 0
  LOADN R31 0
  CALL R28 3 1
  GETIMPORT R29 K38 [Color3.fromRGB]
  LOADN R30 108
  LOADN R31 107
  LOADN R32 107
  CALL R29 3 1
  GETIMPORT R30 K41 [table.freeze]
  DUPTABLE R31 K47 [{"AllowDragSelect", "ShowLocalSpaceIndicator", "WasAutoSelected", "ShowPivotIndicator", "ShowDragSelect"}]
  LOADB R32 1
  SETTABLEKS R32 R31 K42 ["AllowDragSelect"]
  LOADB R32 0
  SETTABLEKS R32 R31 K43 ["ShowLocalSpaceIndicator"]
  LOADB R32 0
  SETTABLEKS R32 R31 K44 ["WasAutoSelected"]
  LOADB R32 0
  SETTABLEKS R32 R31 K45 ["ShowPivotIndicator"]
  LOADB R32 1
  SETTABLEKS R32 R31 K46 ["ShowDragSelect"]
  CALL R30 1 1
  GETIMPORT R31 K41 [table.freeze]
  DUPTABLE R32 K49 [{"AnalyticsName"}]
  LOADB R33 1
  SETTABLEKS R33 R32 K48 ["AnalyticsName"]
  CALL R31 1 1
  GETIMPORT R32 K41 [table.freeze]
  DUPTABLE R33 K52 [{"WeldConstraint", "NoCollisionConstraint"}]
  LOADB R34 1
  SETTABLEKS R34 R33 K50 ["WeldConstraint"]
  LOADB R34 1
  SETTABLEKS R34 R33 K51 ["NoCollisionConstraint"]
  CALL R32 1 1
  GETIMPORT R33 K41 [table.freeze]
  NEWTABLE R34 0 6
  LOADK R35 K53 [{1, 0, 0}]
  LOADK R36 K54 [{-1, 0, 0}]
  LOADK R37 K55 [{0, 1, 0}]
  LOADK R38 K56 [{0, -1, 0}]
  LOADK R39 K57 [{0, 0, 1}]
  LOADK R40 K58 [{0, 0, -1}]
  SETLIST R34 R35 6 [1]
  CALL R33 1 1
  GETIMPORT R34 K61 [CFrame.new]
  LOADN R35 0
  LOADN R36 0
  LOADN R37 0
  LOADN R38 0
  LOADN R39 1
  LOADN R40 0
  LOADN R41 255
  LOADN R42 0
  LOADN R43 0
  LOADN R44 0
  LOADN R45 0
  LOADN R46 1
  CALL R34 12 1
  JUMPIFNOT R13 [+16]
  GETIMPORT R35 K61 [CFrame.new]
  LOADN R36 0
  LOADN R37 0
  LOADN R38 0
  LOADN R39 0
  LOADN R40 1
  LOADN R41 0
  LOADN R42 1
  LOADN R43 0
  LOADN R44 0
  LOADN R45 0
  LOADN R46 0
  LOADN R47 255
  CALL R35 12 1
  MOVE R34 R35
  NEWCLOSURE R35 P0
  CAPTURE VAL R30
  CAPTURE VAL R31
  CAPTURE VAL R6
  CAPTURE REF R34
  CAPTURE VAL R21
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE REF R22
  CAPTURE VAL R15
  SETTABLEKS R35 R21 K60 ["new"]
  DUPCLOSURE R35 K62 [PROTO_1]
  SETTABLEKS R35 R21 K63 ["_onUndo"]
  DUPCLOSURE R35 K64 [PROTO_2]
  SETTABLEKS R35 R21 K65 ["_onRedo"]
  DUPCLOSURE R35 K66 [PROTO_3]
  CAPTURE VAL R25
  SETTABLEKS R35 R21 K67 ["_createAttachmentAdornment"]
  DUPCLOSURE R35 K68 [PROTO_4]
  CAPTURE VAL R1
  SETTABLEKS R35 R21 K69 ["_initAttachmentAdornment"]
  DUPCLOSURE R35 K70 [PROTO_5]
  CAPTURE VAL R27
  CAPTURE VAL R32
  CAPTURE VAL R1
  SETTABLEKS R35 R21 K71 ["_initSelectionHighlight"]
  DUPCLOSURE R35 K72 [PROTO_6]
  CAPTURE VAL R23
  CAPTURE VAL R24
  SETTABLEKS R35 R21 K73 ["_createAttachmentAdornmentArrows"]
  DUPCLOSURE R35 K74 [PROTO_7]
  SETTABLEKS R35 R21 K75 ["_orientAttachmentAdornment"]
  DUPCLOSURE R35 K76 [PROTO_8]
  SETTABLEKS R35 R21 K77 ["setMouseCursor"]
  DUPCLOSURE R35 K78 [PROTO_9]
  CAPTURE VAL R32
  CAPTURE VAL R4
  SETTABLEKS R35 R21 K79 ["render"]
  DUPCLOSURE R35 K80 [PROTO_10]
  SETTABLEKS R35 R21 K81 ["update"]
  DUPCLOSURE R35 K82 [PROTO_11]
  SETTABLEKS R35 R21 K83 ["getSchema"]
  DUPCLOSURE R35 K84 [PROTO_12]
  SETTABLEKS R35 R21 K85 ["doesAllowDragSelect"]
  DUPCLOSURE R35 K86 [PROTO_13]
  SETTABLEKS R35 R21 K87 ["shouldShowDragSelect"]
  DUPCLOSURE R35 K88 [PROTO_14]
  SETTABLEKS R35 R21 K89 ["shouldShowLocalSpaceIndicator"]
  DUPCLOSURE R35 K90 [PROTO_15]
  SETTABLEKS R35 R21 K91 ["shouldShowSelectionDot"]
  DUPCLOSURE R35 K92 [PROTO_16]
  SETTABLEKS R35 R21 K93 ["shouldUseCollisionTransparency"]
  DUPCLOSURE R35 K94 [PROTO_17]
  SETTABLEKS R35 R21 K95 ["shouldAlignDraggedObjects"]
  DUPCLOSURE R35 K96 [PROTO_18]
  CAPTURE VAL R11
  SETTABLEKS R35 R21 K97 ["getRaycastIgnoreList"]
  DUPCLOSURE R35 K98 [PROTO_19]
  CAPTURE VAL R32
  SETTABLEKS R35 R21 K99 ["_setInitialInstanceTransparency"]
  DUPCLOSURE R35 K100 [PROTO_22]
  DUPCLOSURE R36 K101 [PROTO_23]
  CAPTURE VAL R32
  CAPTURE VAL R7
  CAPTURE VAL R27
  CAPTURE VAL R28
  CAPTURE VAL R29
  CAPTURE VAL R13
  CAPTURE VAL R35
  CAPTURE VAL R17
  CAPTURE VAL R18
  CAPTURE VAL R20
  CAPTURE VAL R11
  CAPTURE VAL R25
  CAPTURE VAL R26
  SETTABLEKS R36 R21 K102 ["_updateAttachment"]
  DUPCLOSURE R36 K103 [PROTO_24]
  CAPTURE VAL R17
  CAPTURE VAL R33
  CAPTURE VAL R8
  CAPTURE VAL R7
  SETTABLEKS R36 R21 K104 ["_rotateAttachment"]
  DUPCLOSURE R36 K105 [PROTO_25]
  CAPTURE VAL R32
  CAPTURE VAL R11
  SETTABLEKS R36 R21 K106 ["_closeTool"]
  DUPCLOSURE R36 K107 [PROTO_27]
  CAPTURE VAL R1
  SETTABLEKS R36 R21 K108 ["_processSelected"]
  DUPCLOSURE R36 K109 [PROTO_28]
  SETTABLEKS R36 R21 K110 ["_processDeselected"]
  DUPCLOSURE R36 K111 [PROTO_29]
  SETTABLEKS R36 R21 K112 ["_processSelectionChanged"]
  DUPCLOSURE R36 K113 [PROTO_30]
  SETTABLEKS R36 R21 K114 ["_setConstraintType"]
  DUPCLOSURE R36 K115 [PROTO_31]
  CAPTURE VAL R5
  SETTABLEKS R36 R21 K116 ["_getConstraintData"]
  DUPCLOSURE R36 K117 [PROTO_32]
  SETTABLEKS R36 R21 K118 ["_createConstraintVisuals"]
  DUPCLOSURE R36 K119 [PROTO_33]
  SETTABLEKS R36 R21 K120 ["_removeConstraintVisuals"]
  DUPCLOSURE R36 K121 [PROTO_34]
  SETTABLEKS R36 R21 K122 ["_removeAttachmentAdorns"]
  GETIMPORT R36 K41 [table.freeze]
  NEWTABLE R37 8 0
  GETIMPORT R38 K126 [Enum.KeyCode.RightShift]
  LOADB R39 1
  SETTABLE R39 R37 R38
  GETIMPORT R38 K128 [Enum.KeyCode.LeftShift]
  LOADB R39 1
  SETTABLE R39 R37 R38
  GETIMPORT R38 K130 [Enum.KeyCode.RightControl]
  LOADB R39 1
  SETTABLE R39 R37 R38
  GETIMPORT R38 K132 [Enum.KeyCode.LeftControl]
  LOADB R39 1
  SETTABLE R39 R37 R38
  GETIMPORT R38 K134 [Enum.KeyCode.RightAlt]
  LOADB R39 1
  SETTABLE R39 R37 R38
  GETIMPORT R38 K136 [Enum.KeyCode.LeftAlt]
  LOADB R39 1
  SETTABLE R39 R37 R38
  CALL R36 1 1
  DUPCLOSURE R37 K137 [PROTO_35]
  CAPTURE VAL R12
  CAPTURE VAL R15
  CAPTURE VAL R36
  SETTABLEKS R37 R21 K138 ["_processKeyDown"]
  DUPCLOSURE R37 K139 [PROTO_36]
  CAPTURE VAL R36
  SETTABLEKS R37 R21 K140 ["_processKeyUp"]
  DUPCLOSURE R37 K141 [PROTO_37]
  CAPTURE VAL R32
  SETTABLEKS R37 R21 K142 ["_clearInitialInstance"]
  DUPCLOSURE R37 K143 [PROTO_39]
  CAPTURE VAL R32
  SETTABLEKS R37 R21 K144 ["_selectInitialInstance"]
  DUPCLOSURE R37 K145 [PROTO_40]
  CAPTURE VAL R32
  SETTABLEKS R37 R21 K146 ["_canMouseDown"]
  NEWCLOSURE R37 P37
  CAPTURE VAL R0
  CAPTURE REF R22
  CAPTURE VAL R32
  CAPTURE VAL R1
  CAPTURE VAL R16
  CAPTURE VAL R14
  CAPTURE VAL R11
  CAPTURE VAL R18
  CAPTURE VAL R19
  CAPTURE VAL R15
  SETTABLEKS R37 R21 K147 ["_processMouseDown"]
  DUPCLOSURE R37 K148 [PROTO_42]
  CAPTURE VAL R0
  SETTABLEKS R37 R21 K149 ["_processMouseUp"]
  DUPCLOSURE R37 K150 [PROTO_43]
  SETTABLEKS R37 R21 K151 ["_processViewChanged"]
  DUPCLOSURE R37 K152 [PROTO_44]
  SETTABLEKS R37 R21 K153 ["_scheduleRender"]
  CLOSEUPVALS R22
  RETURN R21 1
