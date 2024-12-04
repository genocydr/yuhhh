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
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K7 ["Bin"]
  GETTABLEKS R4 R5 K8 ["Common"]
  GETTABLEKS R3 R4 K9 ["defineLuaFlags"]
  CALL R2 1 1
  GETTABLEKS R4 R1 K10 ["Styling"]
  GETTABLEKS R3 R4 K11 ["createStyleRule"]
  MOVE R4 R3
  LOADK R5 K12 [".Component-ErrorAlert"]
  DUPTABLE R6 K15 [{"BackgroundTransparency", "AutomaticSize"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K13 ["BackgroundTransparency"]
  GETIMPORT R7 K18 [Enum.AutomaticSize.XY]
  SETTABLEKS R7 R6 K14 ["AutomaticSize"]
  NEWTABLE R7 0 3
  MOVE R8 R3
  LOADK R9 K19 ["> ImageLabel"]
  DUPTABLE R10 K20 [{"BackgroundTransparency"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K13 ["BackgroundTransparency"]
  CALL R8 2 1
  MOVE R9 R3
  LOADK R10 K21 ["> TextLabel"]
  DUPTABLE R11 K26 [{"BackgroundTransparency", "AutomaticSize", "TextSize", "TextWrapped", "TextXAlignment", "RichText"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K13 ["BackgroundTransparency"]
  GETIMPORT R12 K18 [Enum.AutomaticSize.XY]
  SETTABLEKS R12 R11 K14 ["AutomaticSize"]
  LOADK R12 K27 ["$FontSizeS"]
  SETTABLEKS R12 R11 K22 ["TextSize"]
  LOADB R12 1
  SETTABLEKS R12 R11 K23 ["TextWrapped"]
  GETIMPORT R12 K29 [Enum.TextXAlignment.Left]
  SETTABLEKS R12 R11 K24 ["TextXAlignment"]
  LOADB R12 1
  SETTABLEKS R12 R11 K25 ["RichText"]
  NEWTABLE R12 0 1
  MOVE R13 R3
  LOADK R14 K30 [".Red"]
  DUPTABLE R15 K32 [{"TextColor3"}]
  LOADK R16 K33 ["$TextError"]
  SETTABLEKS R16 R15 K31 ["TextColor3"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R3
  LOADK R11 K34 [".Popup"]
  DUPTABLE R12 K36 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADN R13 0
  SETTABLEKS R13 R12 K13 ["BackgroundTransparency"]
  GETTABLEKS R14 R2 K37 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R14 [+2]
  LOADK R13 K38 ["$SemanticColorSurface100"]
  JUMP [+1]
  LOADK R13 K39 ["$ForegroundMain"]
  SETTABLEKS R13 R12 K35 ["BackgroundColor3"]
  NEWTABLE R13 0 2
  MOVE R14 R3
  LOADK R15 K40 ["::UIPadding"]
  DUPTABLE R16 K45 [{"PaddingLeft", "PaddingTop", "PaddingBottom", "PaddingRight"}]
  GETIMPORT R17 K48 [UDim.new]
  LOADN R18 0
  LOADN R19 12
  CALL R17 2 1
  SETTABLEKS R17 R16 K41 ["PaddingLeft"]
  GETIMPORT R17 K48 [UDim.new]
  LOADN R18 0
  LOADN R19 8
  CALL R17 2 1
  SETTABLEKS R17 R16 K42 ["PaddingTop"]
  GETIMPORT R17 K48 [UDim.new]
  LOADN R18 0
  LOADN R19 8
  CALL R17 2 1
  SETTABLEKS R17 R16 K43 ["PaddingBottom"]
  GETIMPORT R17 K48 [UDim.new]
  LOADN R18 0
  LOADN R19 8
  CALL R17 2 1
  SETTABLEKS R17 R16 K44 ["PaddingRight"]
  CALL R14 2 1
  MOVE R15 R3
  LOADK R16 K49 ["::UICorner"]
  DUPTABLE R17 K51 [{"CornerRadius"}]
  GETIMPORT R18 K48 [UDim.new]
  LOADN R19 0
  LOADN R20 4
  CALL R18 2 1
  SETTABLEKS R18 R17 K50 ["CornerRadius"]
  CALL R15 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
