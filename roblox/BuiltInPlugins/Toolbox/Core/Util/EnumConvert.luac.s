PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["valueToEnum"]
  GETTABLE R1 R2 R0
  JUMPIF R1 [+18]
  NEWTABLE R1 0 0
  GETIMPORT R2 K2 [pairs]
  NAMECALL R3 R0 K3 ["GetEnumItems"]
  CALL R3 1 -1
  CALL R2 -1 3
  FORGPREP_NEXT R2
  GETTABLEKS R7 R6 K4 ["Value"]
  SETTABLE R6 R1 R7
  FORGLOOP R2 2 [-4]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["valueToEnum"]
  SETTABLE R1 R2 R0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  MOVE R3 R1
  CALL R2 1 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["valueToEnum"]
  GETTABLE R3 R4 R1
  GETTABLE R2 R3 R0
  RETURN R2 1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["convertValueToEnum"]
  MOVE R2 R0
  GETIMPORT R3 K3 [Enum.AssetType]
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 4 0
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["valueToEnum"]
  DUPCLOSURE R1 K1 [PROTO_0]
  CAPTURE VAL R0
  MOVE R2 R1
  GETIMPORT R3 K4 [Enum.AssetType]
  CALL R2 1 0
  DUPCLOSURE R2 K5 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K6 ["convertValueToEnum"]
  DUPCLOSURE R2 K7 [PROTO_2]
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K8 ["convertAssetTypeValueToEnum"]
  RETURN R0 1