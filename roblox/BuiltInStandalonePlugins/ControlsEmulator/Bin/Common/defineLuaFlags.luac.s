PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableControlsEmulator"]
  NAMECALL R0 R0 K3 ["GetEngineFeature"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableVRControllers"]
  NAMECALL R0 R0 K3 ["GetEngineFeature"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_2:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableGrayHoverDeviceEmulator"]
  NAMECALL R0 R0 K3 ["GetEngineFeature"]
  CALL R0 2 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"getFFlagEnableControlsEmulator", "getFFlagEnableVRControllers", "getFFlagEnableGrayHoverDeviceEmulator"}]
  DUPCLOSURE R1 K4 [PROTO_0]
  SETTABLEKS R1 R0 K0 ["getFFlagEnableControlsEmulator"]
  DUPCLOSURE R1 K5 [PROTO_1]
  SETTABLEKS R1 R0 K1 ["getFFlagEnableVRControllers"]
  DUPCLOSURE R1 K6 [PROTO_2]
  SETTABLEKS R1 R0 K2 ["getFFlagEnableGrayHoverDeviceEmulator"]
  RETURN R0 1
