PROTO_0:
  GETUPVAL R3 0
  CALL R3 0 1
  NOT R2 R3
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["Do not call with FFlagImportQueueFixFileMiscount=true"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETIMPORT R1 K5 [table.clone]
  NAMECALL R4 R0 K6 ["getState"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K7 ["Sessions"]
  GETTABLEKS R2 R3 K8 ["sessionQueue"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLE R2 R1 R3
  GETUPVAL R3 1
  LOADNIL R4
  SETTABLE R4 R1 R3
  GETUPVAL R5 2
  MOVE R6 R2
  LOADNIL R7
  CALL R5 2 -1
  NAMECALL R3 R0 K9 ["dispatch"]
  CALL R3 -1 0
  GETUPVAL R5 3
  MOVE R6 R1
  CALL R5 1 -1
  NAMECALL R3 R0 K9 ["dispatch"]
  CALL R3 -1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R2 R0 K4 ["Src"]
  GETTABLEKS R1 R2 K5 ["Actions"]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R3 R1 K8 ["DEPRECATED_SetSessionQueue"]
  CALL R2 1 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R6 R0 K4 ["Src"]
  GETTABLEKS R5 R6 K9 ["Thunks"]
  GETTABLEKS R4 R5 K10 ["DEPRECATED_UpdateSessionCount"]
  CALL R3 1 1
  GETIMPORT R4 K7 [require]
  GETTABLEKS R7 R0 K4 ["Src"]
  GETTABLEKS R6 R7 K11 ["Flags"]
  GETTABLEKS R5 R6 K12 ["getFFlagImportQueueFixFileMiscount"]
  CALL R4 1 1
  DUPCLOSURE R5 K13 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R2
  RETURN R5 1
