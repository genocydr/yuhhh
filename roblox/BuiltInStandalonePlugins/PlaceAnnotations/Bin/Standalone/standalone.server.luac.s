MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PlaceAnnotations"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K8 ["CrossDMCallbacks"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K9 ["registerStandaloneCallbacks"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K10 ["Bin"]
  GETTABLEKS R4 R5 K11 ["Common"]
  GETTABLEKS R3 R4 K12 ["defineLuaFlags"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K13 ["fflagCOLLAB6176PlaceAnnotations"]
  JUMPIF R3 [+1]
  RETURN R0 0
  GETTABLEKS R3 R2 K14 ["fflagPlaceAnnotationsPublicRelease"]
  JUMPIF R3 [+11]
  GETIMPORT R3 K16 [game]
  LOADK R5 K17 ["StudioService"]
  NAMECALL R3 R3 K18 ["GetService"]
  CALL R3 2 1
  NAMECALL R3 R3 K19 ["HasInternalPermission"]
  CALL R3 1 1
  JUMPIF R3 [+1]
  RETURN R0 0
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K20 ["Packages"]
  GETTABLEKS R4 R5 K21 ["TestLoader"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K22 ["isCli"]
  CALL R4 0 1
  JUMPIFNOT R4 [+5]
  GETIMPORT R4 K24 [error]
  LOADK R5 K25 ["roblox-cli should not be loading standalone plugins"]
  CALL R4 1 0
  RETURN R0 0
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Bin"]
  GETTABLEKS R6 R7 K11 ["Common"]
  GETTABLEKS R5 R6 K26 ["pluginType"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K27 ["get"]
  CALL R5 0 1
  GETTABLEKS R6 R4 K28 ["Standalone"]
  JUMPIFEQ R5 R6 [+2]
  RETURN R0 0
  MOVE R5 R1
  GETIMPORT R6 K30 [plugin]
  CALL R5 1 0
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K10 ["Bin"]
  GETTABLEKS R7 R8 K11 ["Common"]
  GETTABLEKS R6 R7 K31 ["setup"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K10 ["Bin"]
  GETTABLEKS R8 R9 K11 ["Common"]
  GETTABLEKS R7 R8 K32 ["setupMain"]
  CALL R6 1 1
  MOVE R7 R5
  GETIMPORT R8 K30 [plugin]
  MOVE R9 R6
  CALL R7 2 0
  RETURN R0 0
