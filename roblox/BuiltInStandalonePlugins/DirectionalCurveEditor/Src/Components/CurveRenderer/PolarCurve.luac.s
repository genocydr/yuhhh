PROTO_0:
  GETTABLEKS R1 R0 K0 ["CurveHook"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["makePolarCurve"]
  GETTABLEKS R3 R1 K2 ["keypoints"]
  LOADB R4 0
  GETTABLEKS R5 R0 K3 ["PlotAbsoluteSize"]
  CALL R2 3 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["makePolarCurve"]
  GETTABLEKS R4 R1 K2 ["keypoints"]
  LOADB R5 1
  GETTABLEKS R6 R0 K3 ["PlotAbsoluteSize"]
  CALL R3 3 1
  NEWTABLE R4 0 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K7 [{"ControlPoints", "Tag"}]
  SETTABLEKS R2 R7 K5 ["ControlPoints"]
  LOADK R8 K8 ["CurveLinePath2D"]
  SETTABLEKS R8 R7 K6 ["Tag"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K9 ["CurveLeft"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K7 [{"ControlPoints", "Tag"}]
  SETTABLEKS R3 R7 K5 ["ControlPoints"]
  LOADK R8 K8 ["CurveLinePath2D"]
  SETTABLEKS R8 R7 K6 ["Tag"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K10 ["CurveRight"]
  GETTABLEKS R6 R1 K2 ["keypoints"]
  LENGTH R5 R6
  LOADN R6 0
  JUMPIFNOTLT R6 R5 [+78]
  GETTABLEKS R6 R1 K2 ["keypoints"]
  GETTABLEN R5 R6 1
  GETIMPORT R6 K13 [Vector2.new]
  GETTABLEKS R8 R5 K14 ["X"]
  MINUS R7 R8
  GETTABLEKS R8 R5 K15 ["Y"]
  CALL R6 2 1
  GETTABLEKS R8 R1 K2 ["keypoints"]
  GETTABLEKS R10 R1 K2 ["keypoints"]
  LENGTH R9 R10
  GETTABLE R7 R8 R9
  GETIMPORT R8 K13 [Vector2.new]
  GETTABLEKS R10 R7 K14 ["X"]
  SUBRK R9 R16 K10 ["CurveRight"]
  GETTABLEKS R10 R7 K15 ["Y"]
  CALL R8 2 1
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K4 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K7 [{"ControlPoints", "Tag"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K1 ["makePolarCurve"]
  NEWTABLE R13 0 2
  MOVE R14 R6
  MOVE R15 R5
  SETLIST R13 R14 2 [1]
  LOADB R14 1
  GETTABLEKS R15 R0 K3 ["PlotAbsoluteSize"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K5 ["ControlPoints"]
  LOADK R12 K17 ["EndLinePath2D"]
  SETTABLEKS R12 R11 K6 ["Tag"]
  CALL R9 2 1
  SETTABLEKS R9 R4 K18 ["EndLine1"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K4 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K7 [{"ControlPoints", "Tag"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K1 ["makePolarCurve"]
  NEWTABLE R13 0 2
  MOVE R14 R7
  MOVE R15 R8
  SETLIST R13 R14 2 [1]
  LOADB R14 1
  GETTABLEKS R15 R0 K3 ["PlotAbsoluteSize"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K5 ["ControlPoints"]
  LOADK R12 K17 ["EndLinePath2D"]
  SETTABLEKS R12 R11 K6 ["Tag"]
  CALL R9 2 1
  SETTABLEKS R9 R4 K19 ["EndLine2"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["createElement"]
  GETUPVAL R6 3
  DUPTABLE R7 K22 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R8 K25 [UDim2.fromScale]
  LOADN R9 1
  LOADN R10 1
  CALL R8 2 1
  SETTABLEKS R8 R7 K20 ["Size"]
  LOADN R8 1
  SETTABLEKS R8 R7 K21 ["BackgroundTransparency"]
  MOVE R8 R4
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K1 [script]
  LOADK R3 K3 ["DirectionalCurveEditor"]
  NAMECALL R1 R1 K4 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R1 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R1 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K10 ["UI"]
  GETTABLEKS R4 R5 K11 ["Pane"]
  GETIMPORT R5 K6 [require]
  GETTABLEKS R6 R0 K12 ["PlotRectUtil"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R7 R0 K13 ["Path2DWrapper"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R1 K14 ["Src"]
  GETTABLEKS R8 R9 K15 ["Types"]
  CALL R7 1 1
  DUPCLOSURE R8 K16 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R4
  RETURN R8 1
