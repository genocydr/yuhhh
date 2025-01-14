PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  NAMECALL R0 R0 K4 ["HasInternalPermission"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ProcessService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  LOADN R2 0
  NAMECALL R0 R0 K4 ["ExitAsync"]
  CALL R0 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K5 ["defineFlags"]
  CALL R1 1 0
  GETIMPORT R1 K7 [pcall]
  DUPCLOSURE R2 K8 [PROTO_0]
  CALL R1 1 2
  JUMPIFNOT R1 [+1]
  JUMPIF R2 [+1]
  RETURN R0 0
  GETIMPORT R3 K4 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K2 ["Parent"]
  GETTABLEKS R4 R5 K9 ["commonInit"]
  CALL R3 1 1
  MOVE R4 R3
  CALL R4 0 0
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Util"]
  GETTABLEKS R5 R6 K12 ["DebugFlags"]
  CALL R4 1 1
  LOADNIL R5
  GETTABLEKS R6 R4 K13 ["RunningUnderCLI"]
  CALL R6 0 1
  JUMPIF R6 [+4]
  GETTABLEKS R6 R4 K14 ["RunTests"]
  CALL R6 0 1
  JUMPIFNOT R6 [+95]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K15 ["Packages"]
  GETTABLEKS R8 R9 K16 ["Dev"]
  GETTABLEKS R7 R8 K17 ["TestEZ"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K18 ["TestBootstrap"]
  GETTABLEKS R9 R6 K19 ["Reporters"]
  GETTABLEKS R8 R9 K20 ["TeamCityReporter"]
  GETTABLEKS R10 R6 K19 ["Reporters"]
  GETTABLEKS R9 R10 K21 ["TextReporter"]
  GETIMPORT R10 K4 [require]
  GETTABLEKS R12 R0 K15 ["Packages"]
  GETTABLEKS R11 R12 K22 ["Framework"]
  CALL R10 1 1
  MOVE R5 R10
  GETIMPORT R12 K25 [_G]
  GETTABLEKS R11 R12 K23 ["TEAMCITY"]
  JUMPIFNOT R11 [+2]
  MOVE R10 R8
  JUMPIF R10 [+1]
  MOVE R10 R9
  GETTABLEKS R11 R0 K10 ["Src"]
  GETIMPORT R12 K27 [print]
  LOADK R14 K28 ["----- All "]
  GETTABLEKS R15 R0 K29 ["Name"]
  LOADK R16 K30 [" Tests ------"]
  CONCAT R13 R14 R16
  CALL R12 1 0
  GETIMPORT R12 K32 [tick]
  CALL R12 0 1
  NEWTABLE R15 0 1
  MOVE R16 R11
  SETLIST R15 R16 1 [1]
  MOVE R16 R10
  NAMECALL R13 R7 K33 ["run"]
  CALL R13 3 0
  GETIMPORT R13 K27 [print]
  GETIMPORT R14 K36 [string.format]
  LOADK R15 K37 ["Completed in %.3f s"]
  GETIMPORT R17 K32 [tick]
  CALL R17 0 1
  SUB R16 R17 R12
  CALL R14 2 -1
  CALL R13 -1 0
  GETIMPORT R13 K27 [print]
  LOADK R14 K38 ["----------------------------------"]
  CALL R13 1 0
  GETTABLEKS R13 R4 K39 ["RunDeveloperFrameworkTests"]
  CALL R13 0 1
  JUMPIFNOT R13 [+19]
  GETIMPORT R13 K27 [print]
  LOADK R14 K40 [""]
  CALL R13 1 0
  GETIMPORT R13 K27 [print]
  LOADK R14 K41 ["----- All DeveloperFramework Tests ------"]
  CALL R13 1 0
  GETTABLEKS R14 R5 K42 ["TestHelpers"]
  GETTABLEKS R13 R14 K43 ["runFrameworkTests"]
  MOVE R14 R6
  MOVE R15 R10
  CALL R13 2 0
  GETIMPORT R13 K27 [print]
  LOADK R14 K38 ["----------------------------------"]
  CALL R13 1 0
  GETTABLEKS R6 R4 K13 ["RunningUnderCLI"]
  CALL R6 0 1
  JUMPIFNOT R6 [+4]
  GETIMPORT R6 K7 [pcall]
  DUPCLOSURE R7 K44 [PROTO_1]
  CALL R6 1 0
  RETURN R0 0
