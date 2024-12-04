MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["Styling"]
  GETTABLEKS R2 R3 K8 ["createStyleRule"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K9 ["Bin"]
  GETTABLEKS R5 R6 K10 ["Common"]
  GETTABLEKS R4 R5 K11 ["defineLuaFlags"]
  CALL R3 1 1
  MOVE R4 R2
  LOADK R5 K12 [".Component-ResolveButton"]
  DUPTABLE R6 K17 [{"Text", "Size", "BackgroundColor3", "BackgroundTransparency"}]
  LOADK R7 K18 [""]
  SETTABLEKS R7 R6 K13 ["Text"]
  GETIMPORT R7 K21 [UDim2.fromOffset]
  LOADN R8 24
  LOADN R9 24
  CALL R7 2 1
  SETTABLEKS R7 R6 K14 ["Size"]
  GETTABLEKS R8 R3 K22 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R8 [+2]
  LOADK R7 K23 ["$SemanticColorActionSecondaryFill"]
  JUMP [+1]
  LOADK R7 K24 ["$ResolveIconBase"]
  SETTABLEKS R7 R6 K15 ["BackgroundColor3"]
  GETTABLEKS R8 R3 K22 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R8 [+2]
  LOADK R7 K25 ["$SemanticColorActionSecondaryFillTransparency"]
  JUMP [+1]
  LOADK R7 K26 [0.3]
  SETTABLEKS R7 R6 K16 ["BackgroundTransparency"]
  NEWTABLE R7 0 6
  MOVE R8 R2
  LOADK R9 K27 [":hover"]
  DUPTABLE R10 K28 [{"BackgroundColor3", "BackgroundTransparency"}]
  GETTABLEKS R12 R3 K22 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R12 [+2]
  LOADNIL R11
  JUMP [+1]
  LOADK R11 K29 ["$ResolveIconHovered"]
  SETTABLEKS R11 R10 K15 ["BackgroundColor3"]
  GETTABLEKS R12 R3 K22 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R12 [+2]
  LOADK R11 K30 ["$SemanticColorActionSecondaryFillHoverTransparency"]
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K16 ["BackgroundTransparency"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K31 [":pressed"]
  DUPTABLE R11 K28 [{"BackgroundColor3", "BackgroundTransparency"}]
  GETTABLEKS R13 R3 K22 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R13 [+2]
  LOADNIL R12
  JUMP [+1]
  LOADK R12 K32 ["$ResolveIconSelected"]
  SETTABLEKS R12 R11 K15 ["BackgroundColor3"]
  GETTABLEKS R13 R3 K22 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R13 [+2]
  LOADK R12 K33 ["$SemanticColorActionSecondaryFillPressTransparency"]
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K16 ["BackgroundTransparency"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K34 ["::UICorner"]
  DUPTABLE R12 K36 [{"CornerRadius"}]
  GETIMPORT R13 K39 [UDim.new]
  LOADN R14 1
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K35 ["CornerRadius"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K40 ["> ImageLabel"]
  DUPTABLE R13 K44 [{"AnchorPoint", "Position", "Size", "Image", "BackgroundTransparency"}]
  GETIMPORT R14 K46 [Vector2.new]
  LOADK R15 K47 [0.5]
  LOADK R16 K47 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K41 ["AnchorPoint"]
  GETIMPORT R14 K49 [UDim2.fromScale]
  LOADK R15 K47 [0.5]
  LOADK R16 K47 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K42 ["Position"]
  GETIMPORT R14 K21 [UDim2.fromOffset]
  LOADN R15 14
  LOADN R16 14
  CALL R14 2 1
  SETTABLEKS R14 R13 K14 ["Size"]
  LOADK R14 K50 ["$ResolveIcon"]
  SETTABLEKS R14 R13 K43 ["Image"]
  LOADN R14 1
  SETTABLEKS R14 R13 K16 ["BackgroundTransparency"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K51 [".Resolved"]
  NEWTABLE R14 0 0
  NEWTABLE R15 0 1
  MOVE R16 R2
  LOADK R17 K40 ["> ImageLabel"]
  DUPTABLE R18 K52 [{"Image"}]
  LOADK R19 K53 ["$ResolveIconResolved"]
  SETTABLEKS R19 R18 K43 ["Image"]
  CALL R16 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K54 [".Disabled"]
  NEWTABLE R15 0 0
  NEWTABLE R16 0 1
  MOVE R17 R2
  LOADK R18 K40 ["> ImageLabel"]
  DUPTABLE R19 K56 [{"ImageTransparency"}]
  LOADK R20 K57 [0.4]
  SETTABLEKS R20 R19 K55 ["ImageTransparency"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
