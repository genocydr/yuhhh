PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["Value"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  FASTCALL2K ASSERT R3 K0 [+4]
  LOADK R4 K0 ["This function should only be called when FFlagRibbonConfigReloading is true"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  GETUPVAL R3 1
  FASTCALL2K ASSERT R3 K3 [+4]
  LOADK R4 K3 ["This function should only be called when FFlagAddTestModesJson is true"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  LOADK R4 K4 ["Settings"]
  NAMECALL R2 R0 K5 ["GetPluginComponent"]
  CALL R2 2 1
  GETUPVAL R5 2
  NAMECALL R3 R2 K6 ["BindAsync"]
  CALL R3 2 1
  GETUPVAL R4 3
  JUMPIFNOT R4 [+4]
  GETUPVAL R4 3
  NAMECALL R4 R4 K7 ["Disconnect"]
  CALL R4 1 0
  NEWCLOSURE R6 P0
  CAPTURE VAL R1
  NAMECALL R4 R3 K8 ["Connect"]
  CALL R4 2 1
  SETUPVAL R4 3
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  FASTCALL2K ASSERT R3 K0 [+4]
  LOADK R4 K0 ["This function should only be called when FFlagRibbonConfigReloading is true"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  GETUPVAL R3 1
  FASTCALL2K ASSERT R3 K3 [+4]
  LOADK R4 K3 ["This function should only be called when FFlagAddTestModesJson is true"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  JUMPIFNOTEQKN R1 K4 [2] [+6]
  GETTABLEKS R3 R0 K5 ["MezzanineControls"]
  GETTABLEKS R2 R3 K6 ["LeftMezzanineRun"]
  RETURN R2 1
  GETTABLEKS R3 R0 K5 ["MezzanineControls"]
  GETTABLEKS R2 R3 K7 ["LeftMezzanine"]
  RETURN R2 1

PROTO_3:
  GETUPVAL R2 0
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["This function should only be called when FFlagRibbonConfigReloading is true"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETUPVAL R2 1
  FASTCALL2K ASSERT R2 K3 [+4]
  LOADK R3 K3 ["This function should only be called when FFlagAddTestModesJson is true"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  LOADK R3 K4 ["Settings"]
  NAMECALL R1 R0 K5 ["GetPluginComponent"]
  CALL R1 2 1
  NEWTABLE R4 0 1
  GETUPVAL R5 2
  SETLIST R4 R5 1 [1]
  NAMECALL R2 R1 K6 ["GetAsync"]
  CALL R2 2 1
  GETTABLEN R3 R2 1
  JUMPIF R3 [+2]
  LOADN R3 255
  RETURN R3 1
  GETTABLEN R4 R2 1
  GETTABLEKS R3 R4 K7 ["Value"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Ribbon"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["StudioUri"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K10 ["SharedFlags"]
  GETTABLEKS R4 R5 K11 ["getFFlagRibbonConfigReloading"]
  CALL R3 1 1
  CALL R3 0 1
  GETIMPORT R4 K13 [game]
  LOADK R6 K14 ["AddTestModesJson"]
  NAMECALL R4 R4 K15 ["GetFastFlag"]
  CALL R4 2 1
  LOADNIL R5
  GETTABLEKS R6 R1 K16 ["fromSetting"]
  LOADK R7 K17 ["RunTools"]
  LOADK R8 K18 ["TestMode"]
  CALL R6 2 1
  NEWTABLE R7 4 0
  NEWCLOSURE R8 P0
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE REF R5
  SETTABLEKS R8 R7 K19 ["connectTestModesAsync"]
  DUPCLOSURE R8 K20 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R8 R7 K21 ["getMezzanineFromTestModeSetting"]
  DUPCLOSURE R8 K22 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R6
  SETTABLEKS R8 R7 K23 ["getCurrentTestModeSettingValue"]
  CLOSEUPVALS R5
  RETURN R7 1
