PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["OnExpandChanged"]
  GETTABLEKS R3 R0 K2 ["isExpanded"]
  NOT R2 R3
  JUMPIFNOT R1 [+3]
  MOVE R3 R1
  MOVE R4 R2
  CALL R3 1 0
  DUPTABLE R3 K3 [{"isExpanded"}]
  SETTABLEKS R2 R3 K2 ["isExpanded"]
  RETURN R3 1

PROTO_1:
  GETUPVAL R0 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  NAMECALL R0 R0 K0 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["contentRef"]
  GETTABLEKS R1 R2 K1 ["current"]
  JUMPIF R1 [+1]
  RETURN R0 0
  DUPTABLE R2 K3 [{"contentSize"}]
  GETTABLEKS R3 R1 K4 ["AbsoluteSize"]
  SETTABLEKS R3 R2 K2 ["contentSize"]
  RETURN R2 1

PROTO_3:
  GETUPVAL R0 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  NAMECALL R0 R0 K0 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["contentRef"]
  DUPTABLE R1 K4 [{"contentSize", "isExpanded"}]
  GETIMPORT R2 K7 [Vector2.new]
  LOADN R3 0
  LOADN R4 0
  CALL R2 2 1
  SETTABLEKS R2 R1 K2 ["contentSize"]
  LOADB R2 0
  SETTABLEKS R2 R1 K3 ["isExpanded"]
  SETTABLEKS R1 R0 K8 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K9 ["toggleContent"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K10 ["onContentSizeChange"]
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["AutomaticSize"]
  GETTABLEKS R4 R1 K3 ["Layout"]
  GETTABLEKS R5 R1 K4 ["LayoutOrder"]
  GETTABLEKS R6 R1 K5 ["Localization"]
  GETTABLEKS R7 R1 K6 ["Size"]
  GETTABLEKS R8 R1 K7 ["Stylizer"]
  GETTABLEKS R9 R1 K8 ["TeaserSize"]
  GETTABLEKS R10 R1 K9 ["Title"]
  GETTABLEKS R11 R2 K10 ["contentSize"]
  GETTABLEKS R12 R8 K11 ["searchPill"]
  LOADK R15 K12 ["General"]
  LOADK R16 K13 ["ShowLess"]
  NAMECALL R13 R6 K14 ["getText"]
  CALL R13 3 1
  LOADK R16 K12 ["General"]
  LOADK R17 K15 ["ShowMore"]
  NAMECALL R14 R6 K14 ["getText"]
  CALL R14 3 1
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K16 ["new"]
  CALL R15 0 1
  LOADNIL R16
  LOADNIL R17
  LOADNIL R18
  GETTABLEKS R19 R2 K17 ["isExpanded"]
  JUMPIFNOT R19 [+6]
  MOVE R16 R3
  MOVE R19 R13
  LOADK R20 K18 [" -"]
  CONCAT R17 R19 R20
  MOVE R18 R11
  JUMP [+4]
  MOVE R19 R14
  LOADK R20 K19 [" +"]
  CONCAT R17 R19 R20
  MOVE R18 R9
  LOADNIL R19
  GETIMPORT R20 K22 [Enum.AutomaticSize.Y]
  JUMPIFNOTEQ R3 R20 [+11]
  GETIMPORT R20 K24 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 0
  GETTABLEKS R24 R18 K21 ["Y"]
  CALL R20 4 1
  MOVE R19 R20
  JUMP [+9]
  GETIMPORT R20 K24 [UDim2.new]
  LOADN R21 0
  GETTABLEKS R22 R18 K25 ["X"]
  LOADN R23 1
  LOADN R24 0
  CALL R20 4 1
  MOVE R19 R20
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K26 ["createElement"]
  GETUPVAL R21 2
  DUPTABLE R22 K30 [{"AutomaticSize", "Layout", "LayoutOrder", "Size", "Spacing", "HorizontalAlignment", "VerticalAlignment"}]
  SETTABLEKS R3 R22 K2 ["AutomaticSize"]
  SETTABLEKS R4 R22 K3 ["Layout"]
  SETTABLEKS R5 R22 K4 ["LayoutOrder"]
  SETTABLEKS R7 R22 K6 ["Size"]
  LOADN R23 5
  SETTABLEKS R23 R22 K27 ["Spacing"]
  GETIMPORT R23 K32 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R23 R22 K28 ["HorizontalAlignment"]
  GETIMPORT R23 K34 [Enum.VerticalAlignment.Top]
  SETTABLEKS R23 R22 K29 ["VerticalAlignment"]
  DUPTABLE R23 K37 [{"SectionHeader", "Content"}]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K26 ["createElement"]
  GETUPVAL R25 3
  DUPTABLE R26 K40 [{"OnClickSeeAll", "LayoutOrder", "SeeAllText", "Title"}]
  GETTABLEKS R27 R0 K41 ["toggleContent"]
  SETTABLEKS R27 R26 K38 ["OnClickSeeAll"]
  NAMECALL R27 R15 K42 ["getNextOrder"]
  CALL R27 1 1
  SETTABLEKS R27 R26 K4 ["LayoutOrder"]
  SETTABLEKS R17 R26 K39 ["SeeAllText"]
  SETTABLEKS R10 R26 K9 ["Title"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K35 ["SectionHeader"]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K26 ["createElement"]
  GETUPVAL R25 2
  NEWTABLE R26 16 0
  SETTABLEKS R16 R26 K2 ["AutomaticSize"]
  LOADB R27 1
  SETTABLEKS R27 R26 K43 ["ClipsDescendants"]
  GETIMPORT R27 K32 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R27 R26 K28 ["HorizontalAlignment"]
  GETIMPORT R27 K46 [Enum.FillDirection.Vertical]
  SETTABLEKS R27 R26 K3 ["Layout"]
  NAMECALL R27 R15 K42 ["getNextOrder"]
  CALL R27 1 1
  SETTABLEKS R27 R26 K4 ["LayoutOrder"]
  SETTABLEKS R19 R26 K6 ["Size"]
  GETIMPORT R27 K34 [Enum.VerticalAlignment.Top]
  SETTABLEKS R27 R26 K29 ["VerticalAlignment"]
  GETUPVAL R29 1
  GETTABLEKS R28 R29 K47 ["Change"]
  GETTABLEKS R27 R28 K48 ["AbsoluteSize"]
  GETTABLEKS R28 R0 K49 ["onContentSizeChange"]
  SETTABLE R28 R26 R27
  GETUPVAL R28 1
  GETTABLEKS R27 R28 K50 ["Ref"]
  GETTABLEKS R28 R0 K51 ["contentRef"]
  SETTABLE R28 R26 R27
  GETTABLEKS R28 R0 K0 ["props"]
  GETUPVAL R30 1
  GETTABLEKS R29 R30 K52 ["Children"]
  GETTABLE R27 R28 R29
  CALL R24 3 1
  SETTABLEKS R24 R23 K36 ["Content"]
  CALL R20 3 -1
  RETURN R20 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Packages"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R8 R0 K9 ["Core"]
  GETTABLEKS R7 R8 K10 ["Components"]
  GETTABLEKS R6 R7 K11 ["Categorization"]
  GETTABLEKS R5 R6 K12 ["SectionHeader"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R6 R1 K13 ["Dash"]
  CALL R5 1 1
  GETTABLEKS R7 R2 K14 ["Util"]
  GETTABLEKS R6 R7 K15 ["LayoutOrderIterator"]
  GETTABLEKS R8 R2 K16 ["UI"]
  GETTABLEKS R7 R8 K17 ["Pane"]
  GETTABLEKS R8 R2 K18 ["ContextServices"]
  GETTABLEKS R10 R2 K16 ["UI"]
  GETTABLEKS R9 R10 K19 ["HoverArea"]
  GETTABLEKS R10 R8 K20 ["withContext"]
  GETTABLEKS R11 R3 K21 ["PureComponent"]
  LOADK R13 K22 ["ExpandableTeaser"]
  NAMECALL R11 R11 K23 ["extend"]
  CALL R11 2 1
  DUPTABLE R12 K29 [{"AlwaysExpanded", "AutomaticSize", "Layout", "Size", "TeaserSize"}]
  LOADB R13 0
  SETTABLEKS R13 R12 K24 ["AlwaysExpanded"]
  GETIMPORT R13 K32 [Enum.AutomaticSize.Y]
  SETTABLEKS R13 R12 K25 ["AutomaticSize"]
  GETIMPORT R13 K35 [Enum.FillDirection.Vertical]
  SETTABLEKS R13 R12 K26 ["Layout"]
  GETIMPORT R13 K38 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K27 ["Size"]
  GETIMPORT R13 K40 [Vector2.new]
  LOADN R14 0
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K28 ["TeaserSize"]
  SETTABLEKS R12 R11 K41 ["defaultProps"]
  DUPCLOSURE R12 K42 [PROTO_4]
  CAPTURE VAL R3
  SETTABLEKS R12 R11 K43 ["init"]
  DUPCLOSURE R12 K44 [PROTO_5]
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R4
  SETTABLEKS R12 R11 K45 ["render"]
  MOVE R12 R10
  DUPTABLE R13 K48 [{"Localization", "Stylizer"}]
  GETTABLEKS R14 R8 K46 ["Localization"]
  SETTABLEKS R14 R13 K46 ["Localization"]
  GETTABLEKS R14 R8 K47 ["Stylizer"]
  SETTABLEKS R14 R13 K47 ["Stylizer"]
  CALL R12 1 1
  MOVE R13 R11
  CALL R12 1 1
  MOVE R11 R12
  RETURN R11 1