PROTO_0:
  GETTABLEKS R3 R0 K0 ["GameOwnerMetadata"]
  GETTABLEKS R2 R3 K1 ["creatorType"]
  GETTABLEKS R4 R0 K0 ["GameOwnerMetadata"]
  GETTABLEKS R3 R4 K2 ["creatorFriends"]
  GETIMPORT R4 K6 [Enum.CreatorType.User]
  JUMPIFNOTEQ R2 R4 [+12]
  GETIMPORT R4 K8 [ipairs]
  MOVE R5 R3
  CALL R4 1 3
  FORGPREP_INEXT R4
  JUMPIFNOTEQ R8 R1 [+3]
  LOADB R9 1
  RETURN R9 1
  FORGLOOP R4 2 [inext] [-5]
  LOADB R4 0
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
