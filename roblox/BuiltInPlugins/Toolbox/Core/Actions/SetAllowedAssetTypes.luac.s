PROTO_0:
  DUPTABLE R3 K3 [{"allowedAssetTypesForRelease", "allowedAssetTypesForUpload", "allowedAssetTypesForFree"}]
  SETTABLEKS R0 R3 K0 ["allowedAssetTypesForRelease"]
  SETTABLEKS R1 R3 K1 ["allowedAssetTypesForUpload"]
  SETTABLEKS R2 R3 K2 ["allowedAssetTypesForFree"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K6 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K7 ["Util"]
  GETTABLEKS R3 R2 K8 ["Action"]
  MOVE R4 R3
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K9 ["Name"]
  DUPCLOSURE R6 K10 [PROTO_0]
  CALL R4 2 -1
  RETURN R4 -1