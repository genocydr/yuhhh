PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R3 2
  NAMECALL R0 R0 K0 ["FormatByKey"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R3 2
  NAMECALL R0 R0 K0 ["FormatByKey"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_2:
  PREPVARARGS 1
  LOADNIL R1
  LOADNIL R2
  NEWTABLE R3 0 0
  GETVARARGS R4 -1
  SETLIST R3 R4 -1 [1]
  GETIMPORT R4 K1 [pcall]
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE VAL R3
  CALL R4 1 2
  MOVE R1 R4
  MOVE R2 R5
  JUMPIFNOT R1 [+1]
  RETURN R2 1
  GETIMPORT R4 K1 [pcall]
  NEWCLOSURE R5 P1
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE VAL R3
  CALL R4 1 2
  MOVE R1 R4
  MOVE R2 R5
  JUMPIFNOT R1 [+1]
  RETURN R2 1
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["StudioService"]
  NAMECALL R1 R1 K6 ["GetService"]
  CALL R1 2 1
  GETTABLEKS R4 R0 K7 ["Src"]
  GETTABLEKS R3 R4 K8 ["Resources"]
  GETTABLEKS R2 R3 K9 ["SourceStrings"]
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Resources"]
  GETTABLEKS R3 R4 K10 ["LocalizedStrings"]
  GETTABLEKS R6 R1 K11 ["StudioLocaleId"]
  NAMECALL R4 R3 K12 ["GetTranslator"]
  CALL R4 2 1
  LOADK R7 K13 ["en-us"]
  NAMECALL R5 R2 K12 ["GetTranslator"]
  CALL R5 2 1
  DUPCLOSURE R6 K14 [PROTO_2]
  CAPTURE VAL R4
  CAPTURE VAL R5
  RETURN R6 1
