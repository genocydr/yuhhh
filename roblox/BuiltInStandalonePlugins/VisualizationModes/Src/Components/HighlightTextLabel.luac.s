PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Text"]
  LOADN R2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["StartIndex"]
  SUBK R3 R4 K1 [1]
  FASTCALL STRING_SUB [+2]
  GETIMPORT R0 K5 [string.sub]
  CALL R0 3 1
  GETUPVAL R1 1
  MOVE R3 R0
  LOADN R4 16
  GETIMPORT R5 K9 [Enum.Font.SourceSans]
  GETIMPORT R6 K12 [Vector2.new]
  LOADK R7 K13 [∞]
  LOADK R8 K13 [∞]
  CALL R6 2 -1
  NAMECALL R1 R1 K14 ["GetTextSize"]
  CALL R1 -1 1
  GETTABLEKS R2 R1 K15 ["X"]
  RETURN R2 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Text"]
  LOADN R2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["FinishIndex"]
  FASTCALL STRING_SUB [+2]
  GETIMPORT R0 K4 [string.sub]
  CALL R0 3 1
  GETUPVAL R1 1
  MOVE R3 R0
  LOADN R4 16
  GETIMPORT R5 K8 [Enum.Font.SourceSans]
  GETIMPORT R6 K11 [Vector2.new]
  LOADK R7 K12 [∞]
  LOADK R8 K12 [∞]
  CALL R6 2 -1
  NAMECALL R1 R1 K13 ["GetTextSize"]
  CALL R1 -1 1
  GETTABLEKS R2 R1 K14 ["X"]
  RETURN R2 1

PROTO_2:
  GETTABLEKS R2 R0 K0 ["Text"]
  GETTABLEKS R3 R0 K1 ["StartIndex"]
  GETTABLEKS R4 R0 K2 ["FinishIndex"]
  FASTCALL STRING_SUB [+2]
  GETIMPORT R1 K5 [string.sub]
  CALL R1 3 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["useMemo"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  NEWTABLE R4 0 2
  GETTABLEKS R5 R0 K1 ["StartIndex"]
  GETTABLEKS R6 R0 K0 ["Text"]
  SETLIST R4 R5 2 [1]
  CALL R2 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K6 ["useMemo"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  NEWTABLE R5 0 2
  GETTABLEKS R6 R0 K2 ["FinishIndex"]
  GETTABLEKS R7 R0 K0 ["Text"]
  SETLIST R5 R6 2 [1]
  CALL R3 2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["createElement"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K8 ["Fragment"]
  NEWTABLE R6 0 0
  DUPTABLE R7 K11 [{"Highlight", "HighlightTextLabel"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["createElement"]
  LOADK R9 K12 ["Frame"]
  NEWTABLE R10 4 0
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K13 ["Tag"]
  LOADK R12 K14 ["VisualizationModes-Highlight"]
  SETTABLE R12 R10 R11
  GETIMPORT R11 K17 [UDim2.fromOffset]
  SUB R12 R3 R2
  LOADN R13 24
  CALL R11 2 1
  SETTABLEKS R11 R10 K18 ["Size"]
  GETIMPORT R11 K20 [UDim2.new]
  LOADN R12 0
  MOVE R13 R2
  LOADK R14 K21 [0.5]
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K22 ["Position"]
  LOADN R11 2
  SETTABLEKS R11 R10 K23 ["ZIndex"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K9 ["Highlight"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["createElement"]
  GETUPVAL R9 2
  NEWTABLE R10 8 0
  SETTABLEKS R1 R10 K0 ["Text"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K13 ["Tag"]
  LOADK R12 K24 ["VisualizationModes-Highlight-TextLabel"]
  SETTABLE R12 R10 R11
  GETIMPORT R11 K17 [UDim2.fromOffset]
  SUB R12 R3 R2
  LOADN R13 24
  CALL R11 2 1
  SETTABLEKS R11 R10 K18 ["Size"]
  GETIMPORT R11 K26 [Vector2.new]
  LOADN R12 0
  LOADK R13 K21 [0.5]
  CALL R11 2 1
  SETTABLEKS R11 R10 K27 ["AnchorPoint"]
  GETIMPORT R11 K20 [UDim2.new]
  LOADN R12 0
  MOVE R13 R2
  LOADK R14 K21 [0.5]
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K22 ["Position"]
  LOADN R11 3
  SETTABLEKS R11 R10 K23 ["ZIndex"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K10 ["HighlightTextLabel"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["MatchIndexes"]
  JUMPIFNOTEQKNIL R1 [+3]
  LOADNIL R1
  RETURN R1 1
  GETTABLEKS R1 R0 K1 ["Text"]
  JUMPIFNOTEQKNIL R1 [+3]
  LOADNIL R2
  RETURN R2 1
  GETTABLEKS R2 R0 K0 ["MatchIndexes"]
  NEWTABLE R3 0 0
  LOADNIL R4
  LOADNIL R5
  MOVE R6 R2
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  JUMPIFNOTEQKNIL R4 [+4]
  MOVE R4 R10
  MOVE R5 R10
  JUMP [+30]
  JUMPIFEQKNIL R5 [+6]
  ADDK R11 R5 K2 [1]
  JUMPIFNOTEQ R10 R11 [+3]
  MOVE R5 R10
  JUMP [+23]
  JUMPIFEQKNIL R4 [+22]
  JUMPIFEQKNIL R5 [+20]
  MOVE R12 R3
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K3 ["createElement"]
  GETUPVAL R14 1
  DUPTABLE R15 K6 [{"Text", "StartIndex", "FinishIndex"}]
  SETTABLEKS R1 R15 K1 ["Text"]
  SETTABLEKS R4 R15 K4 ["StartIndex"]
  SETTABLEKS R5 R15 K5 ["FinishIndex"]
  CALL R13 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R11 K9 [table.insert]
  CALL R11 -1 0
  MOVE R4 R10
  MOVE R5 R10
  FORGLOOP R6 2 [-36]
  JUMPIFEQKNIL R4 [+20]
  JUMPIFEQKNIL R5 [+18]
  MOVE R7 R3
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K6 [{"Text", "StartIndex", "FinishIndex"}]
  SETTABLEKS R1 R10 K1 ["Text"]
  SETTABLEKS R4 R10 K4 ["StartIndex"]
  SETTABLEKS R5 R10 K5 ["FinishIndex"]
  CALL R8 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R6 K9 [table.insert]
  CALL R6 -1 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["createElement"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K10 ["Fragment"]
  NEWTABLE R8 0 0
  MOVE R9 R3
  CALL R6 3 -1
  RETURN R6 -1

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["Frame"]
  NEWTABLE R3 2 0
  GETTABLEKS R4 R0 K2 ["LayoutOrder"]
  SETTABLEKS R4 R3 K2 ["LayoutOrder"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["Tag"]
  LOADK R5 K4 ["VisualizationModes-TextLabel-Container"]
  SETTABLE R5 R3 R4
  DUPTABLE R4 K7 [{"TextLabel", "HighlightGroup"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 1
  NEWTABLE R7 4 0
  GETTABLEKS R8 R0 K8 ["Text"]
  SETTABLEKS R8 R7 K8 ["Text"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["Tag"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K9 ["Styling"]
  GETTABLEKS R9 R10 K10 ["joinTags"]
  LOADK R10 K11 ["VisualizationModes-TextLabel"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K3 ["Tag"]
  GETTABLE R11 R0 R12
  CALL R9 2 1
  SETTABLE R9 R7 R8
  GETIMPORT R8 K15 [Enum.TextTruncate.SplitWord]
  SETTABLEKS R8 R7 K13 ["TextTruncate"]
  LOADN R8 2
  SETTABLEKS R8 R7 K16 ["ZIndex"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K5 ["TextLabel"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 3
  DUPTABLE R7 K18 [{"Text", "MatchIndexes"}]
  GETTABLEKS R8 R0 K8 ["Text"]
  SETTABLEKS R8 R7 K8 ["Text"]
  GETTABLEKS R8 R0 K17 ["MatchIndexes"]
  SETTABLEKS R8 R7 K17 ["MatchIndexes"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K6 ["HighlightGroup"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["VisualizationModes"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["TextService"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R0 K10 ["Src"]
  GETTABLEKS R3 R4 K11 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R0 K12 ["Packages"]
  GETTABLEKS R4 R5 K13 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R0 K12 ["Packages"]
  GETTABLEKS R5 R6 K14 ["React"]
  CALL R4 1 1
  GETTABLEKS R5 R3 K15 ["UI"]
  GETTABLEKS R6 R5 K16 ["TextLabel"]
  DUPCLOSURE R7 K17 [PROTO_2]
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R6
  DUPCLOSURE R8 K18 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R7
  DUPCLOSURE R9 K19 [PROTO_4]
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R8
  RETURN R9 1
