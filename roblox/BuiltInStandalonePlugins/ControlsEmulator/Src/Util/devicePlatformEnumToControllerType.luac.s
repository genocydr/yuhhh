PROTO_0:
  GETIMPORT R2 K3 [Enum.Platform.XBoxOne]
  JUMPIFNOTEQ R0 R2 [+3]
  LOADK R2 K4 ["XboxOne"]
  RETURN R2 1
  GETIMPORT R2 K6 [Enum.Platform.XBox360]
  JUMPIFNOTEQ R0 R2 [+3]
  LOADK R2 K4 ["XboxOne"]
  RETURN R2 1
  GETIMPORT R2 K8 [Enum.Platform.PS3]
  JUMPIFNOTEQ R0 R2 [+3]
  LOADK R2 K9 ["PS4"]
  RETURN R2 1
  GETIMPORT R2 K10 [Enum.Platform.PS4]
  JUMPIFNOTEQ R0 R2 [+3]
  LOADK R2 K9 ["PS4"]
  RETURN R2 1
  GETIMPORT R2 K12 [Enum.Platform.PS5]
  JUMPIFNOTEQ R0 R2 [+3]
  LOADK R2 K11 ["PS5"]
  RETURN R2 1
  GETIMPORT R2 K14 [Enum.Platform.MetaOS]
  JUMPIFNOTEQ R0 R2 [+31]
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+21]
  JUMPIFNOT R1 [+18]
  GETIMPORT R2 K17 [string.find]
  MOVE R3 R1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K18 ["QUEST3_EMULATED_DEVICE_ID"]
  CALL R2 2 1
  JUMPIF R2 [+8]
  GETIMPORT R2 K17 [string.find]
  MOVE R3 R1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K19 ["META_QUEST_3_NAME"]
  CALL R2 2 1
  JUMPIFNOT R2 [+2]
  LOADK R2 K20 ["Quest3"]
  RETURN R2 1
  LOADK R2 K21 ["Quest2"]
  RETURN R2 1
  JUMPIFNOTEQKS R1 K22 ["Quest 3"] [+3]
  LOADK R2 K20 ["Quest3"]
  RETURN R2 1
  LOADK R2 K21 ["Quest2"]
  RETURN R2 1
  LOADNIL R2
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ControlsEmulator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["Constants"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K9 ["Bin"]
  GETTABLEKS R4 R5 K10 ["Common"]
  GETTABLEKS R3 R4 K11 ["defineLuaFlags"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K12 ["getFFlagEnableVRControllers"]
  DUPCLOSURE R4 K13 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R1
  RETURN R4 1
