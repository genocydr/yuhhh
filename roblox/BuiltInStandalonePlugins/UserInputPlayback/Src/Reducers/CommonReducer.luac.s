PROTO_0:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"pluginState"}]
  GETTABLEKS R5 R1 K2 ["state"]
  SETTABLEKS R5 R4 K0 ["pluginState"]
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
  GETTABLEKS R3 R4 K7 ["Cryo"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K8 ["Dictionary"]
  GETTABLEKS R3 R4 K9 ["join"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K12 ["Util"]
  GETTABLEKS R6 R7 K13 ["Enums"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K14 ["Actions"]
  GETTABLEKS R8 R9 K15 ["Common"]
  GETTABLEKS R7 R8 K16 ["SetPluginState"]
  CALL R6 1 1
  DUPTABLE R7 K18 [{"pluginState"}]
  GETTABLEKS R9 R5 K19 ["PluginState"]
  GETTABLEKS R8 R9 K20 ["Default"]
  SETTABLEKS R8 R7 K17 ["pluginState"]
  GETTABLEKS R8 R1 K21 ["createReducer"]
  MOVE R9 R7
  DUPTABLE R10 K22 [{"SetPluginState"}]
  DUPCLOSURE R11 K23 [PROTO_0]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K16 ["SetPluginState"]
  CALL R8 2 -1
  RETURN R8 -1
