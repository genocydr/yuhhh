PROTO_0:
  NEWTABLE R1 0 0
  JUMPIFNOT R0 [+27]
  GETIMPORT R2 K1 [ipairs]
  GETUPVAL R5 0
  GETTABLEKS R3 R5 K2 ["ASSET_TYPE_INFO"]
  CALL R2 1 3
  FORGPREP_INEXT R2
  GETTABLEKS R7 R6 K3 ["isCatalog"]
  JUMPIFNOT R7 [+15]
  GETTABLEKS R7 R6 K4 ["isUploadable"]
  JUMPIFNOT R7 [+12]
  GETTABLEKS R9 R6 K5 ["type"]
  GETTABLEKS R8 R9 K6 ["Name"]
  GETTABLE R7 R0 R8
  JUMPIFEQKNIL R7 [+6]
  LENGTH R8 R1
  ADDK R7 R8 K7 [1]
  GETTABLEKS R8 R6 K5 ["type"]
  SETTABLE R8 R1 R7
  FORGLOOP R2 2 [inext] [-19]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Core"]
  GETTABLEKS R3 R4 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["AssetConfigConstants"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_0]
  CAPTURE VAL R1
  RETURN R2 1
