PROTO_0:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["new"]
  CALL R2 0 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["createElement"]
  LOADK R4 K3 ["Frame"]
  NEWTABLE R5 2 0
  GETTABLEKS R6 R0 K4 ["LayoutOrder"]
  SETTABLEKS R6 R5 K4 ["LayoutOrder"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K5 ["Tag"]
  LOADK R7 K6 ["Component-Reason X-FitY"]
  SETTABLE R7 R5 R6
  DUPTABLE R6 K9 [{"Reason", "OffensiveItem"}]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K2 ["createElement"]
  LOADK R8 K10 ["TextLabel"]
  NEWTABLE R9 4 0
  LOADK R12 K7 ["Reason"]
  LOADK R13 K11 ["Reason1"]
  DUPTABLE R14 K13 [{"reason"}]
  GETTABLEKS R15 R0 K7 ["Reason"]
  SETTABLEKS R15 R14 K12 ["reason"]
  NAMECALL R10 R1 K14 ["getText"]
  CALL R10 4 1
  SETTABLEKS R10 R9 K15 ["Text"]
  NAMECALL R10 R2 K16 ["getNextOrder"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K4 ["LayoutOrder"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K5 ["Tag"]
  LOADK R11 K17 ["X-FitY"]
  SETTABLE R11 R9 R10
  CALL R7 2 1
  SETTABLEKS R7 R6 K7 ["Reason"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K2 ["createElement"]
  LOADK R8 K10 ["TextLabel"]
  NEWTABLE R9 4 0
  LOADK R12 K7 ["Reason"]
  LOADK R13 K18 ["OffensiveItem1"]
  DUPTABLE R14 K20 [{"offensiveItem"}]
  GETTABLEKS R15 R0 K8 ["OffensiveItem"]
  SETTABLEKS R15 R14 K19 ["offensiveItem"]
  NAMECALL R10 R1 K14 ["getText"]
  CALL R10 4 1
  SETTABLEKS R10 R9 K15 ["Text"]
  NAMECALL R10 R2 K16 ["getNextOrder"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K4 ["LayoutOrder"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K5 ["Tag"]
  LOADK R11 K17 ["X-FitY"]
  SETTABLE R11 R9 R10
  CALL R7 2 1
  SETTABLEKS R7 R6 K8 ["OffensiveItem"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ModerationDialog"]
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
  GETTABLEKS R3 R2 K9 ["ContextServices"]
  GETTABLEKS R4 R3 K10 ["Localization"]
  GETTABLEKS R6 R2 K11 ["Util"]
  GETTABLEKS R5 R6 K12 ["LayoutOrderIterator"]
  DUPCLOSURE R6 K13 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R1
  RETURN R6 1