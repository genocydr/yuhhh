PROTO_0:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"Count"}]
  GETTABLEKS R5 R1 K2 ["count"]
  SETTABLEKS R5 R4 K0 ["Count"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["Dash"]
  GETTABLEKS R4 R3 K9 ["join"]
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["Actions"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R7 R5 K12 ["SetCount"]
  CALL R6 1 1
  GETTABLEKS R7 R1 K13 ["createReducer"]
  DUPTABLE R8 K15 [{"Count"}]
  LOADN R9 0
  SETTABLEKS R9 R8 K14 ["Count"]
  NEWTABLE R9 1 0
  GETTABLEKS R10 R6 K16 ["name"]
  DUPCLOSURE R11 K17 [PROTO_0]
  CAPTURE VAL R4
  SETTABLE R11 R9 R10
  CALL R7 2 -1
  RETURN R7 -1