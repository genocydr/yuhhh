MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K3 ["_Index"]
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K7 ["JestGlobals-edcba0e9-3.6.1"]
  GETTABLEKS R2 R3 K6 ["JestGlobals"]
  CALL R1 1 1
  RETURN R1 1