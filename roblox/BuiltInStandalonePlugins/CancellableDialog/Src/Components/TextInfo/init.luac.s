PROTO_0:
  GETIMPORT R0 K1 [time]
  CALL R0 0 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["current"]
  GETTABLEKS R1 R2 K3 ["IsLoaded"]
  JUMPIF R1 [+11]
  GETIMPORT R2 K1 [time]
  CALL R2 0 1
  SUB R1 R2 R0
  LOADN R2 1
  JUMPIFNOTLT R1 R2 [+5]
  GETIMPORT R1 K6 [task.wait]
  CALL R1 0 0
  JUMPBACK [-17]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K7 ["OnShown"]
  CALL R1 0 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R0 K2 [task.cancel]
  GETUPVAL R1 0
  CALL R0 1 0
  GETUPVAL R0 1
  NAMECALL R0 R0 K3 ["Cancel"]
  CALL R0 1 0
  GETUPVAL R0 1
  NAMECALL R0 R0 K4 ["Destroy"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["current"]
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  FASTCALL2K ASSERT R1 K1 [+4]
  LOADK R2 K1 ["LoadingIcon was not mounted by useEffect"]
  GETIMPORT R0 K3 [assert]
  CALL R0 2 0
  GETUPVAL R0 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["current"]
  GETUPVAL R3 2
  DUPTABLE R4 K5 [{"Rotation"}]
  LOADN R5 104
  SETTABLEKS R5 R4 K4 ["Rotation"]
  NAMECALL R0 R0 K6 ["Create"]
  CALL R0 4 1
  NAMECALL R1 R0 K7 ["Play"]
  CALL R1 1 0
  GETIMPORT R1 K10 [task.spawn]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U3
  CALL R1 1 1
  NEWCLOSURE R2 P1
  CAPTURE VAL R1
  CAPTURE VAL R0
  RETURN R2 1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["useRef"]
  LOADNIL R3
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["useEffect"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  NEWTABLE R5 0 0
  CALL R3 2 0
  GETTABLEKS R4 R0 K3 ["Title"]
  JUMPIFEQKS R4 K4 [""] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["createElement"]
  LOADK R5 K6 ["Frame"]
  NEWTABLE R6 4 0
  GETTABLEKS R7 R0 K7 ["Size"]
  SETTABLEKS R7 R6 K7 ["Size"]
  GETTABLEKS R7 R0 K8 ["LayoutOrder"]
  SETTABLEKS R7 R6 K8 ["LayoutOrder"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K9 ["Tag"]
  LOADK R8 K10 ["X-FitY X-Column Component-TextInfo"]
  SETTABLE R8 R6 R7
  DUPTABLE R7 K13 [{"TitleFrame", "StatusTextFrame"}]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K5 ["createElement"]
  LOADK R9 K6 ["Frame"]
  NEWTABLE R10 2 0
  NAMECALL R11 R1 K14 ["getNextOrder"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K8 ["LayoutOrder"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K9 ["Tag"]
  LOADK R12 K15 ["X-FitY X-Column"]
  SETTABLE R12 R10 R11
  DUPTABLE R11 K18 [{"Title", "TitleShimmer", "Subtitle"}]
  JUMPIF R3 [+22]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K5 ["createElement"]
  LOADK R13 K19 ["TextLabel"]
  NEWTABLE R14 4 0
  GETTABLEKS R15 R0 K3 ["Title"]
  SETTABLEKS R15 R14 K20 ["Text"]
  NAMECALL R15 R1 K14 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K8 ["LayoutOrder"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K9 ["Tag"]
  LOADK R16 K21 ["X-FitY TitleText"]
  SETTABLE R16 R14 R15
  CALL R12 2 1
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K3 ["Title"]
  JUMPIFNOT R3 [+21]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K5 ["createElement"]
  GETUPVAL R13 4
  DUPTABLE R14 K22 [{"Size", "LayoutOrder"}]
  GETIMPORT R15 K24 [UDim2.new]
  LOADK R16 K25 [0.65]
  LOADN R17 0
  LOADN R18 0
  LOADN R19 20
  CALL R15 4 1
  SETTABLEKS R15 R14 K7 ["Size"]
  NAMECALL R15 R1 K14 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K8 ["LayoutOrder"]
  CALL R12 2 1
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K16 ["TitleShimmer"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K5 ["createElement"]
  LOADK R13 K19 ["TextLabel"]
  NEWTABLE R14 4 0
  GETTABLEKS R15 R0 K17 ["Subtitle"]
  SETTABLEKS R15 R14 K20 ["Text"]
  NAMECALL R15 R1 K14 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K8 ["LayoutOrder"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K9 ["Tag"]
  LOADK R16 K26 ["X-FitY SubtitleText"]
  SETTABLE R16 R14 R15
  CALL R12 2 1
  SETTABLEKS R12 R11 K17 ["Subtitle"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K11 ["TitleFrame"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K5 ["createElement"]
  LOADK R9 K6 ["Frame"]
  NEWTABLE R10 2 0
  NAMECALL R11 R1 K14 ["getNextOrder"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K8 ["LayoutOrder"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K9 ["Tag"]
  LOADK R12 K27 ["X-FitY X-Row StatusTextFrame"]
  SETTABLE R12 R10 R11
  DUPTABLE R11 K30 [{"IconContainer", "StatusText"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K5 ["createElement"]
  LOADK R13 K6 ["Frame"]
  NEWTABLE R14 1 0
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K9 ["Tag"]
  LOADK R16 K31 ["LoadingIconContainer"]
  SETTABLE R16 R14 R15
  DUPTABLE R15 K33 [{"LoadingIcon"}]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K5 ["createElement"]
  LOADK R17 K34 ["ImageLabel"]
  NEWTABLE R18 4 0
  NAMECALL R19 R1 K14 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K8 ["LayoutOrder"]
  SETTABLEKS R2 R18 K35 ["ref"]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K9 ["Tag"]
  LOADK R20 K32 ["LoadingIcon"]
  SETTABLE R20 R18 R19
  CALL R16 2 1
  SETTABLEKS R16 R15 K32 ["LoadingIcon"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K28 ["IconContainer"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K5 ["createElement"]
  LOADK R13 K19 ["TextLabel"]
  NEWTABLE R14 4 0
  GETTABLEKS R15 R0 K36 ["Status"]
  SETTABLEKS R15 R14 K20 ["Text"]
  NAMECALL R15 R1 K14 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K8 ["LayoutOrder"]
  GETIMPORT R15 K24 [UDim2.new]
  LOADN R16 1
  GETUPVAL R18 5
  MINUS R17 R18
  LOADN R18 0
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K7 ["Size"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K9 ["Tag"]
  LOADK R16 K37 ["X-FitY StatusText"]
  SETTABLE R16 R14 R15
  CALL R12 2 1
  SETTABLEKS R12 R11 K29 ["StatusText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K12 ["StatusTextFrame"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CancellableDialog"]
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
  GETTABLEKS R4 R2 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["LayoutOrderIterator"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K11 ["Src"]
  GETTABLEKS R6 R7 K12 ["Components"]
  GETTABLEKS R5 R6 K13 ["Shimmer"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K14 ["styles"]
  CALL R5 1 1
  LOADK R11 K15 ["IconSize"]
  NAMECALL R9 R5 K16 ["GetAttribute"]
  CALL R9 2 1
  GETTABLEKS R8 R9 K17 ["X"]
  GETTABLEKS R7 R8 K18 ["Offset"]
  LOADK R11 K19 ["IconToContentPadding"]
  NAMECALL R9 R5 K16 ["GetAttribute"]
  CALL R9 2 1
  GETTABLEKS R8 R9 K18 ["Offset"]
  ADD R6 R7 R8
  GETIMPORT R7 K21 [game]
  LOADK R9 K22 ["TweenService"]
  NAMECALL R7 R7 K23 ["GetService"]
  CALL R7 2 1
  GETIMPORT R8 K26 [TweenInfo.new]
  LOADN R9 2
  GETIMPORT R10 K30 [Enum.EasingStyle.Linear]
  GETIMPORT R11 K33 [Enum.EasingDirection.In]
  LOADN R12 255
  CALL R8 4 1
  DUPCLOSURE R9 K34 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R4
  CAPTURE VAL R6
  RETURN R9 1
