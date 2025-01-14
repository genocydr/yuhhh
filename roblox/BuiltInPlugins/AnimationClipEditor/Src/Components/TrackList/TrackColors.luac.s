PROTO_0:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["Tracks"]
  GETTABLEKS R4 R2 K2 ["TopTrackIndex"]
  GETTABLEKS R5 R2 K3 ["MaxHeight"]
  MOVE R6 R4
  LOADN R7 0
  DUPTABLE R8 K5 [{"Layout"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K6 ["createElement"]
  LOADK R10 K7 ["UIListLayout"]
  DUPTABLE R11 K10 [{"SortOrder", "FillDirection"}]
  GETIMPORT R12 K13 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R12 R11 K8 ["SortOrder"]
  GETIMPORT R12 K15 [Enum.FillDirection.Vertical]
  SETTABLEKS R12 R11 K9 ["FillDirection"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K4 ["Layout"]
  MOVE R11 R4
  LENGTH R9 R3
  LOADN R10 1
  FORNPREP R9
  JUMPIFLT R5 R7 [+70]
  MODK R13 R11 K16 [2]
  JUMPIFEQKN R13 K17 [0] [+2]
  LOADB R12 0 +1
  LOADB R12 1
  GETTABLE R13 R3 R11
  LOADN R14 1
  JUMPIFNOT R13 [+9]
  GETTABLEKS R15 R13 K18 ["Expanded"]
  JUMPIFNOT R15 [+6]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K19 ["getExpandedSize"]
  MOVE R16 R13
  CALL R15 1 1
  MOVE R14 R15
  LOADN R17 1
  MOVE R15 R14
  LOADN R16 1
  FORNPREP R15
  JUMPIFLT R5 R7 [+46]
  MOVE R19 R8
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K6 ["createElement"]
  LOADK R21 K20 ["Frame"]
  DUPTABLE R22 K24 [{"Size", "BackgroundColor3", "BorderSizePixel", "LayoutOrder"}]
  GETIMPORT R23 K27 [UDim2.new]
  LOADN R24 1
  LOADN R25 0
  LOADN R26 0
  GETUPVAL R28 2
  GETTABLEKS R27 R28 K28 ["TRACK_HEIGHT"]
  CALL R23 4 1
  SETTABLEKS R23 R22 K21 ["Size"]
  JUMPIFNOT R12 [+5]
  GETTABLEKS R24 R1 K29 ["trackTheme"]
  GETTABLEKS R23 R24 K30 ["shadedBackgroundColor"]
  JUMPIF R23 [+4]
  GETTABLEKS R24 R1 K29 ["trackTheme"]
  GETTABLEKS R23 R24 K31 ["backgroundColor"]
  SETTABLEKS R23 R22 K22 ["BackgroundColor3"]
  LOADN R23 0
  SETTABLEKS R23 R22 K23 ["BorderSizePixel"]
  SETTABLEKS R6 R22 K12 ["LayoutOrder"]
  CALL R20 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R18 K34 [table.insert]
  CALL R18 -1 0
  ADDK R6 R6 K35 [1]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K28 ["TRACK_HEIGHT"]
  ADD R7 R7 R18
  FORNLOOP R15
  FORNLOOP R9
  RETURN R8 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  MOVE R5 R2
  NAMECALL R3 R0 K2 ["renderTracks"]
  CALL R3 2 1
  GETTABLEKS R4 R1 K3 ["Position"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["createElement"]
  LOADK R6 K5 ["Frame"]
  DUPTABLE R7 K9 [{"Size", "Position", "BackgroundTransparency", "ZIndex"}]
  GETIMPORT R8 K12 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 1
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K6 ["Size"]
  SETTABLEKS R4 R7 K3 ["Position"]
  LOADN R8 1
  SETTABLEKS R8 R7 K7 ["BackgroundTransparency"]
  LOADN R8 0
  SETTABLEKS R8 R7 K8 ["ZIndex"]
  MOVE R8 R3
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["TrackUtils"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K12 ["ContextServices"]
  GETTABLEKS R5 R4 K13 ["withContext"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K8 ["Src"]
  GETTABLEKS R8 R9 K9 ["Util"]
  GETTABLEKS R7 R8 K14 ["Constants"]
  CALL R6 1 1
  GETTABLEKS R7 R1 K15 ["PureComponent"]
  LOADK R9 K16 ["TrackColors"]
  NAMECALL R7 R7 K17 ["extend"]
  CALL R7 2 1
  DUPCLOSURE R8 K18 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R6
  SETTABLEKS R8 R7 K19 ["renderTracks"]
  DUPCLOSURE R8 K20 [PROTO_1]
  CAPTURE VAL R1
  SETTABLEKS R8 R7 K21 ["render"]
  MOVE R8 R5
  DUPTABLE R9 K23 [{"Stylizer"}]
  GETTABLEKS R10 R4 K22 ["Stylizer"]
  SETTABLEKS R10 R9 K22 ["Stylizer"]
  CALL R8 1 1
  MOVE R9 R7
  CALL R8 1 1
  MOVE R7 R8
  RETURN R7 1
