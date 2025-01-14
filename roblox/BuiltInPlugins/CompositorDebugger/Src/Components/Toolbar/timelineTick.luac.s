PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 1
  NEWTABLE R4 4 0
  GETTABLEKS R5 R1 K2 ["ZIndex"]
  SETTABLEKS R5 R4 K2 ["ZIndex"]
  GETIMPORT R5 K5 [UDim2.new]
  LOADN R6 0
  LOADN R7 1
  LOADN R8 1
  LOADN R9 0
  CALL R5 4 1
  SETTABLEKS R5 R4 K6 ["Size"]
  GETTABLEKS R5 R1 K7 ["Position"]
  SETTABLEKS R5 R4 K7 ["Position"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K8 ["Tag"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K8 ["Tag"]
  GETTABLE R6 R1 R7
  SETTABLE R6 R4 R5
  DUPTABLE R5 K11 [{"Tick", "Label"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 1
  NEWTABLE R8 4 0
  GETIMPORT R9 K13 [UDim2.fromScale]
  LOADK R10 K14 [0.5]
  LOADN R11 1
  CALL R9 2 1
  SETTABLEKS R9 R8 K7 ["Position"]
  GETIMPORT R9 K16 [Vector2.new]
  LOADK R10 K14 [0.5]
  LOADN R11 1
  CALL R9 2 1
  SETTABLEKS R9 R8 K17 ["AnchorPoint"]
  LOADN R9 0
  SETTABLEKS R9 R8 K18 ["BorderSizePixel"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K8 ["Tag"]
  LOADK R10 K9 ["Tick"]
  SETTABLE R10 R8 R9
  CALL R6 2 1
  SETTABLEKS R6 R5 K9 ["Tick"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 2
  NEWTABLE R8 4 0
  GETIMPORT R9 K22 [Enum.AutomaticSize.XY]
  SETTABLEKS R9 R8 K20 ["AutomaticSize"]
  GETTABLEKS R11 R1 K9 ["Tick"]
  SUBRK R10 R23 K11 [{"Tick", "Label"}]
  FASTCALL1 TOSTRING R10 [+2]
  GETIMPORT R9 K25 [tostring]
  CALL R9 1 1
  SETTABLEKS R9 R8 K26 ["Text"]
  LOADN R9 2
  SETTABLEKS R9 R8 K2 ["ZIndex"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K8 ["Tag"]
  LOADK R10 K10 ["Label"]
  SETTABLE R10 R8 R9
  CALL R6 2 1
  SETTABLEKS R6 R5 K10 ["Label"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
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
  GETTABLEKS R3 R2 K9 ["UI"]
  GETTABLEKS R4 R3 K10 ["Pane"]
  GETTABLEKS R5 R3 K11 ["TextLabel"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K12 ["Src"]
  GETTABLEKS R7 R8 K13 ["Types"]
  CALL R6 1 1
  GETTABLEKS R7 R1 K14 ["PureComponent"]
  LOADK R9 K15 ["TimelineTick"]
  NAMECALL R7 R7 K16 ["extend"]
  CALL R7 2 1
  DUPCLOSURE R8 K17 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R5
  SETTABLEKS R8 R7 K18 ["render"]
  RETURN R7 1
