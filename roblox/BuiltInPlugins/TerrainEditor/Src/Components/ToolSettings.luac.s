PROTO_0:
  NEWTABLE R2 0 0
  MOVE R3 R0
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETTABLEKS R10 R7 K0 ["Value"]
  FASTCALL1 TYPEOF R10 [+2]
  GETIMPORT R9 K2 [typeof]
  CALL R9 1 1
  JUMPIFNOTEQKS R9 K3 ["table"] [+9]
  GETUPVAL R8 0
  GETTABLEKS R9 R7 K0 ["Value"]
  GETTABLE R11 R1 R6
  GETTABLEKS R10 R11 K0 ["Value"]
  CALL R8 2 1
  JUMP [+9]
  GETTABLEKS R9 R7 K0 ["Value"]
  GETTABLE R11 R1 R6
  GETTABLEKS R10 R11 K0 ["Value"]
  JUMPIFEQ R9 R10 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  JUMPIF R8 [+56]
  GETTABLEKS R9 R7 K4 ["Children"]
  JUMPIFNOT R9 [+29]
  GETUPVAL R9 0
  GETTABLEKS R10 R7 K4 ["Children"]
  GETTABLE R12 R1 R6
  GETTABLEKS R11 R12 K4 ["Children"]
  CALL R9 2 1
  JUMPIF R9 [+21]
  GETTABLEKS R9 R7 K5 ["DataId"]
  JUMPIF R9 [+2]
  GETTABLEKS R9 R7 K6 ["Id"]
  DUPTABLE R10 K7 [{"Children", "Value"}]
  GETUPVAL R11 1
  GETTABLEKS R12 R7 K4 ["Children"]
  GETTABLE R14 R1 R6
  GETTABLEKS R13 R14 K4 ["Children"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K4 ["Children"]
  GETTABLEKS R11 R7 K0 ["Value"]
  SETTABLEKS R11 R10 K0 ["Value"]
  SETTABLE R10 R2 R9
  JUMP [+51]
  GETTABLEKS R9 R7 K4 ["Children"]
  JUMPIFNOT R9 [+12]
  GETTABLEKS R9 R7 K5 ["DataId"]
  JUMPIF R9 [+2]
  GETTABLEKS R9 R7 K6 ["Id"]
  DUPTABLE R10 K8 [{"Value"}]
  GETTABLEKS R11 R7 K0 ["Value"]
  SETTABLEKS R11 R10 K0 ["Value"]
  SETTABLE R10 R2 R9
  JUMP [+36]
  GETTABLEKS R9 R7 K5 ["DataId"]
  JUMPIF R9 [+2]
  GETTABLEKS R9 R7 K6 ["Id"]
  GETTABLEKS R10 R7 K0 ["Value"]
  SETTABLE R10 R2 R9
  JUMP [+27]
  GETTABLEKS R9 R7 K4 ["Children"]
  JUMPIFNOT R9 [+24]
  GETUPVAL R9 0
  GETTABLEKS R10 R7 K4 ["Children"]
  GETTABLE R12 R1 R6
  GETTABLEKS R11 R12 K4 ["Children"]
  CALL R9 2 1
  JUMPIF R9 [+16]
  GETTABLEKS R9 R7 K5 ["DataId"]
  JUMPIF R9 [+2]
  GETTABLEKS R9 R7 K6 ["Id"]
  DUPTABLE R10 K9 [{"Children"}]
  GETUPVAL R11 1
  GETTABLEKS R12 R7 K4 ["Children"]
  GETTABLE R14 R1 R6
  GETTABLEKS R13 R14 K4 ["Children"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K4 ["Children"]
  SETTABLE R10 R2 R9
  FORGLOOP R3 2 [-110]
  RETURN R2 1

PROTO_1:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+26]
  NEWTABLE R1 0 0
  DUPCLOSURE R2 K0 [PROTO_0]
  CAPTURE UPVAL U1
  CAPTURE VAL R2
  MOVE R3 R0
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETTABLEKS R8 R7 K1 ["Id"]
  MOVE R9 R2
  GETTABLEKS R10 R7 K2 ["Children"]
  GETUPVAL R13 2
  GETTABLE R12 R13 R6
  GETTABLEKS R11 R12 K2 ["Children"]
  CALL R9 2 1
  SETTABLE R9 R1 R8
  FORGLOOP R3 2 [-12]
  GETUPVAL R3 3
  MOVE R4 R1
  CALL R3 1 0
  RETURN R0 0
  NEWTABLE R1 0 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETTABLEKS R7 R6 K1 ["Id"]
  NEWTABLE R8 0 0
  SETTABLE R8 R1 R7
  GETTABLEKS R7 R6 K2 ["Children"]
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  GETTABLEKS R12 R11 K3 ["Value"]
  GETUPVAL R17 2
  GETTABLE R16 R17 R5
  GETTABLEKS R15 R16 K2 ["Children"]
  GETTABLE R14 R15 R10
  GETTABLEKS R13 R14 K3 ["Value"]
  JUMPIFEQ R12 R13 [+12]
  GETTABLEKS R13 R6 K1 ["Id"]
  GETTABLE R12 R1 R13
  GETTABLEKS R13 R11 K4 ["DataId"]
  JUMPIF R13 [+2]
  GETTABLEKS R13 R11 K1 ["Id"]
  GETTABLEKS R14 R11 K3 ["Value"]
  SETTABLE R14 R12 R13
  FORGLOOP R7 2 [-23]
  FORGLOOP R2 2 [-35]
  GETUPVAL R2 3
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["LayoutOrder"]
  GETTABLEKS R2 R0 K1 ["Size"]
  GETUPVAL R3 0
  LOADK R5 K2 ["ToolSettings"]
  NAMECALL R3 R3 K3 ["use"]
  CALL R3 2 1
  GETUPVAL R4 1
  NEWTABLE R5 0 0
  CALL R4 1 2
  GETUPVAL R6 2
  NAMECALL R6 R6 K3 ["use"]
  CALL R6 1 1
  GETUPVAL R7 3
  MOVE R8 R6
  CALL R7 1 2
  GETUPVAL R9 4
  MOVE R10 R6
  CALL R9 1 1
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 6
  DUPTABLE R12 K6 [{"BackgroundColor", "LayoutOrder", "Size"}]
  GETTABLEKS R13 R3 K5 ["BackgroundColor"]
  SETTABLEKS R13 R12 K5 ["BackgroundColor"]
  SETTABLEKS R1 R12 K0 ["LayoutOrder"]
  SETTABLEKS R2 R12 K1 ["Size"]
  DUPTABLE R13 K9 [{"Form", "ProgressDialog"}]
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K4 ["createElement"]
  GETUPVAL R15 7
  DUPTABLE R16 K17 [{"Expansion", "ExpandByDefault", "Items", "LabelHeight", "OnChange", "OnExpansionChange", "Renderers", "Size"}]
  SETTABLEKS R4 R16 K10 ["Expansion"]
  LOADB R17 1
  SETTABLEKS R17 R16 K11 ["ExpandByDefault"]
  SETTABLEKS R7 R16 K12 ["Items"]
  LOADN R17 20
  SETTABLEKS R17 R16 K13 ["LabelHeight"]
  NEWCLOSURE R17 P0
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE VAL R7
  CAPTURE VAL R8
  SETTABLEKS R17 R16 K14 ["OnChange"]
  SETTABLEKS R5 R16 K15 ["OnExpansionChange"]
  GETUPVAL R17 10
  SETTABLEKS R17 R16 K16 ["Renderers"]
  GETIMPORT R17 K20 [UDim2.fromScale]
  LOADN R18 1
  LOADN R19 1
  CALL R17 2 1
  SETTABLEKS R17 R16 K1 ["Size"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K7 ["Form"]
  JUMPIFNOT R9 [+7]
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K4 ["createElement"]
  GETUPVAL R15 11
  MOVE R16 R9
  CALL R14 2 1
  JUMP [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K8 ["ProgressDialog"]
  CALL R10 3 -1
  RETURN R10 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
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
  GETTABLEKS R3 R1 K9 ["useState"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Hooks"]
  GETTABLEKS R5 R6 K12 ["useForm"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["Hooks"]
  GETTABLEKS R6 R7 K13 ["useOperation"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K14 ["Components"]
  GETTABLEKS R7 R8 K15 ["ProgressDialog"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K14 ["Components"]
  GETTABLEKS R8 R9 K16 ["Renderers"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K10 ["Src"]
  GETTABLEKS R10 R11 K17 ["Controllers"]
  GETTABLEKS R9 R10 K18 ["ToolController"]
  CALL R8 1 1
  GETTABLEKS R10 R2 K19 ["ContextServices"]
  GETTABLEKS R9 R10 K20 ["Stylizer"]
  GETTABLEKS R11 R2 K21 ["Util"]
  GETTABLEKS R10 R11 K22 ["deepEqual"]
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K10 ["Src"]
  GETTABLEKS R13 R14 K23 ["Resources"]
  GETTABLEKS R12 R13 K24 ["Theme"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K10 ["Src"]
  GETTABLEKS R14 R15 K25 ["Flags"]
  GETTABLEKS R13 R14 K26 ["getFFlagTerrainEditorGenerationFeature"]
  CALL R12 1 1
  GETTABLEKS R13 R2 K27 ["UI"]
  GETTABLEKS R14 R13 K28 ["Form"]
  GETTABLEKS R15 R13 K29 ["Pane"]
  DUPCLOSURE R16 K30 [PROTO_2]
  CAPTURE VAL R9
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R15
  CAPTURE VAL R14
  CAPTURE VAL R12
  CAPTURE VAL R10
  CAPTURE VAL R7
  CAPTURE VAL R6
  RETURN R16 1
