PROTO_0:
  LOADK R3 K0 ["Ready"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1