PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ModerationDialogEnabled"]
  NAMECALL R0 R0 K3 ["GetEngineFeature"]
  CALL R0 2 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K1 [{"getFFlagEnableModerationDialog"}]
  DUPCLOSURE R1 K2 [PROTO_0]
  SETTABLEKS R1 R0 K0 ["getFFlagEnableModerationDialog"]
  RETURN R0 1
