PROTO_0:
  GETUPVAL R2 0
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["getRibbonLocalizedText should only be used when FFlagAddTestModeDropDown is enabled"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  JUMPIFEQKNIL R0 [+3]
  JUMPIFNOTEQKS R0 K3 [""] [+3]
  LOADK R1 K3 [""]
  RETURN R1 1
  GETUPVAL R1 1
  NAMECALL R1 R1 K4 ["use"]
  CALL R1 1 1
  LOADK R4 K5 ["Plugin"]
  MOVE R5 R0
  NAMECALL R2 R1 K6 ["getText"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Ribbon"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["ContextServices"]
  GETTABLEKS R3 R2 K9 ["Localization"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["SharedFlags"]
  GETTABLEKS R5 R6 K12 ["getFFlagAddTestModeDropDown"]
  CALL R4 1 1
  CALL R4 0 1
  DUPCLOSURE R5 K13 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R3
  RETURN R5 1
