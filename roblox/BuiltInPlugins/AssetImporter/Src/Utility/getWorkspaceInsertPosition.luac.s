PROTO_0:
  GETIMPORT R2 K1 [game]
  GETTABLEKS R1 R2 K2 ["Workspace"]
  GETTABLEKS R0 R1 K3 ["CurrentCamera"]
  GETTABLEKS R2 R0 K4 ["CFrame"]
  GETTABLEKS R1 R2 K5 ["Position"]
  GETTABLEKS R3 R0 K4 ["CFrame"]
  GETTABLEKS R2 R3 K6 ["LookVector"]
  GETIMPORT R4 K1 [game]
  GETTABLEKS R3 R4 K2 ["Workspace"]
  MOVE R5 R1
  GETUPVAL R7 0
  MUL R6 R2 R7
  NAMECALL R3 R3 K7 ["Raycast"]
  CALL R3 3 1
  JUMPIFNOTEQKNIL R3 [+4]
  GETUPVAL R5 0
  MUL R4 R2 R5
  RETURN R4 1
  GETTABLEKS R4 R3 K5 ["Position"]
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Flags"]
  GETTABLEKS R2 R3 K8 ["getFFlagAssetImportQueuedSessionRefactor"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Flags"]
  GETTABLEKS R3 R4 K9 ["getFIntAssetImportInsertRayMaxDistance"]
  CALL R2 1 1
  MOVE R4 R1
  CALL R4 0 1
  JUMPIFNOT R4 [+3]
  MOVE R3 R2
  CALL R3 0 1
  JUMP [+1]
  LOADN R3 0
  DUPCLOSURE R4 K10 [PROTO_0]
  CAPTURE VAL R3
  RETURN R4 1