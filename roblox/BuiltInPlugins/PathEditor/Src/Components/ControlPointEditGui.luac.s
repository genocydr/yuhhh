PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  NEWTABLE R2 0 0
  GETTABLEKS R3 R1 K1 ["SelectedObject"]
  JUMPIFNOT R3 [+8]
  GETTABLEKS R3 R1 K2 ["Path2DToolMode"]
  JUMPIFEQKS R3 K3 ["DoneEditing"] [+5]
  GETTABLEKS R3 R1 K2 ["Path2DToolMode"]
  JUMPIFNOTEQKS R3 K4 ["AddPoint"] [+3]
  LOADNIL R3
  RETURN R3 1
  GETIMPORT R3 K6 [pairs]
  GETTABLEKS R4 R1 K7 ["ControlPoints"]
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETTABLEKS R9 R1 K8 ["SelectedControlPointIndex"]
  JUMPIFEQ R9 R6 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  LOADB R9 0
  GETTABLEKS R10 R1 K8 ["SelectedControlPointIndex"]
  LOADN R11 0
  JUMPIFNOTLT R11 R10 [+10]
  GETTABLEKS R10 R1 K8 ["SelectedControlPointIndex"]
  GETTABLEKS R12 R1 K7 ["ControlPoints"]
  LENGTH R11 R12
  JUMPIFLE R10 R11 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  MOVE R10 R9
  JUMPIFNOT R10 [+13]
  LOADB R10 1
  GETTABLEKS R12 R1 K8 ["SelectedControlPointIndex"]
  SUBK R11 R12 K9 [1]
  JUMPIFEQ R11 R6 [+8]
  GETTABLEKS R12 R1 K8 ["SelectedControlPointIndex"]
  ADDK R11 R12 K9 [1]
  JUMPIFEQ R11 R6 [+2]
  LOADB R10 0 +1
  LOADB R10 1
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K10 ["createElement"]
  GETUPVAL R12 1
  DUPTABLE R13 K16 [{"index", "point", "showTangents", "showTangentsPhantom", "isSelected"}]
  SETTABLEKS R6 R13 K11 ["index"]
  SETTABLEKS R7 R13 K12 ["point"]
  SETTABLEKS R8 R13 K13 ["showTangents"]
  SETTABLEKS R10 R13 K14 ["showTangentsPhantom"]
  GETTABLEKS R15 R1 K8 ["SelectedControlPointIndex"]
  JUMPIFEQ R15 R6 [+2]
  LOADB R14 0 +1
  LOADB R14 1
  SETTABLEKS R14 R13 K15 ["isSelected"]
  CALL R11 2 1
  SETTABLE R11 R2 R6
  FORGLOOP R3 2 [-60]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K10 ["createElement"]
  GETIMPORT R5 K18 [game]
  LOADK R7 K19 ["PathEditorSurfaceGui"]
  NAMECALL R5 R5 K20 ["GetFastFlag"]
  CALL R5 2 1
  JUMPIFNOT R5 [+2]
  GETUPVAL R4 2
  JUMP [+1]
  LOADK R4 K21 ["ScreenGui"]
  DUPTABLE R5 K24 [{"DisplayOrder", "ZIndexBehavior"}]
  LOADN R6 2
  SETTABLEKS R6 R5 K22 ["DisplayOrder"]
  GETIMPORT R6 K27 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R6 R5 K23 ["ZIndexBehavior"]
  MOVE R6 R2
  CALL R3 3 -1
  RETURN R3 -1

PROTO_1:
  DUPTABLE R2 K5 [{"Refreshed", "SelectedObject", "Path2DToolMode", "ControlPoints", "SelectedControlPointIndex"}]
  GETTABLEKS R4 R0 K6 ["PathReducer"]
  GETTABLEKS R3 R4 K0 ["Refreshed"]
  SETTABLEKS R3 R2 K0 ["Refreshed"]
  GETTABLEKS R4 R0 K6 ["PathReducer"]
  GETTABLEKS R3 R4 K1 ["SelectedObject"]
  SETTABLEKS R3 R2 K1 ["SelectedObject"]
  GETTABLEKS R4 R0 K6 ["PathReducer"]
  GETTABLEKS R3 R4 K2 ["Path2DToolMode"]
  SETTABLEKS R3 R2 K2 ["Path2DToolMode"]
  GETTABLEKS R4 R0 K6 ["PathReducer"]
  GETTABLEKS R3 R4 K3 ["ControlPoints"]
  SETTABLEKS R3 R2 K3 ["ControlPoints"]
  GETTABLEKS R4 R0 K6 ["PathReducer"]
  GETTABLEKS R3 R4 K4 ["SelectedControlPointIndex"]
  SETTABLEKS R3 R2 K4 ["SelectedControlPointIndex"]
  RETURN R2 1

PROTO_2:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_3:
  DUPTABLE R1 K1 [{"dispatchAddControlPoint"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["dispatchAddControlPoint"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K7 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K11 ["ContextServices"]
  GETTABLEKS R6 R5 K12 ["withContext"]
  GETTABLEKS R8 R0 K5 ["Src"]
  GETTABLEKS R7 R8 K13 ["Thunks"]
  GETIMPORT R8 K4 [require]
  GETTABLEKS R9 R7 K14 ["AddControlPoint"]
  CALL R8 1 1
  GETTABLEKS R10 R0 K5 ["Src"]
  GETTABLEKS R9 R10 K15 ["Components"]
  GETIMPORT R10 K4 [require]
  GETTABLEKS R11 R9 K16 ["ControlPoint"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R12 R9 K17 ["GuiShim"]
  CALL R11 1 1
  GETTABLEKS R12 R2 K18 ["PureComponent"]
  LOADK R14 K19 ["ControlPointEditGui"]
  NAMECALL R12 R12 K20 ["extend"]
  CALL R12 2 1
  DUPCLOSURE R13 K21 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R11
  SETTABLEKS R13 R12 K22 ["render"]
  MOVE R13 R6
  NEWTABLE R14 0 0
  CALL R13 1 1
  MOVE R14 R12
  CALL R13 1 1
  MOVE R12 R13
  GETTABLEKS R13 R3 K23 ["connect"]
  DUPCLOSURE R14 K24 [PROTO_1]
  DUPCLOSURE R15 K25 [PROTO_3]
  CAPTURE VAL R8
  CALL R13 2 1
  MOVE R14 R12
  CALL R13 1 -1
  RETURN R13 -1