PROTO_0:
  DUPTABLE R2 K1 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  SETTABLEKS R2 R0 K2 ["state"]
  RETURN R0 0

PROTO_1:
  LOADNIL R1
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AudioActions"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["PureComponent"]
  LOADK R4 K9 ["MainPlugin"]
  NAMECALL R2 R2 K10 ["extend"]
  CALL R2 2 1
  DUPCLOSURE R3 K11 [PROTO_0]
  SETTABLEKS R3 R2 K12 ["init"]
  DUPCLOSURE R3 K13 [PROTO_1]
  SETTABLEKS R3 R2 K14 ["render"]
  RETURN R2 1
