PROTO_0:
  DUPTABLE R1 K1 [{"dispatch"}]
  SETTABLEKS R0 R1 K0 ["dispatch"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
