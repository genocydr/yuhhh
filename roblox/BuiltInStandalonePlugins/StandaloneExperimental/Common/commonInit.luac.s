PROTO_0:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+1]
  RETURN R0 0
  LOADB R0 1
  SETUPVAL R0 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["DebugFlags"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K10 ["EnableRoactConfigs"]
  CALL R3 0 1
  JUMPIFNOT R3 [+13]
  GETTABLEKS R3 R1 K11 ["setGlobalConfig"]
  DUPTABLE R4 K15 [{"elementTracing", "propValidation", "typeChecks"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K12 ["elementTracing"]
  LOADB R5 1
  SETTABLEKS R5 R4 K13 ["propValidation"]
  LOADB R5 1
  SETTABLEKS R5 R4 K14 ["typeChecks"]
  CALL R3 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  LOADB R0 0
  NEWCLOSURE R1 P0
  CAPTURE REF R0
  CLOSEUPVALS R0
  RETURN R1 1
