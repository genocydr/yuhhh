PROTO_0:
  DUPTABLE R0 K5 [{"Name", "Tooltip", "Icon", "Enabled", "Click"}]
  LOADK R1 K6 [""]
  SETTABLEKS R1 R0 K0 ["Name"]
  LOADK R1 K6 [""]
  SETTABLEKS R1 R0 K1 ["Tooltip"]
  LOADK R1 K6 [""]
  SETTABLEKS R1 R0 K2 ["Icon"]
  LOADB R1 0
  SETTABLEKS R1 R0 K3 ["Enabled"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K7 ["new"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K4 ["Click"]
  GETUPVAL R3 1
  FASTCALL2 SETMETATABLE R0 R3 [+4]
  MOVE R2 R0
  GETIMPORT R1 K9 [setmetatable]
  CALL R1 2 0
  RETURN R0 1

PROTO_1:
  SETTABLEKS R1 R0 K0 ["Enabled"]
  RETURN R0 0

PROTO_2:
  DUPTABLE R1 K2 [{"Title", "Buttons"}]
  SETTABLEKS R0 R1 K0 ["Title"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K1 ["Buttons"]
  GETUPVAL R4 0
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K4 [setmetatable]
  CALL R2 2 0
  RETURN R1 1

PROTO_3:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["new"]
  CALL R4 0 -1
  RETURN R4 -1

PROTO_4:
  JUMPIFNOTEQKS R1 K0 ["_signals"] [+2]
  RETURN R0 0
  SETTABLE R2 R0 R1
  GETTABLEKS R4 R0 K0 ["_signals"]
  GETTABLE R3 R4 R1
  MOVE R5 R2
  NAMECALL R3 R3 K1 ["fire"]
  CALL R3 2 0
  RETURN R0 0

PROTO_5:
  FASTCALL1 TYPE R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K1 [type]
  CALL R4 1 1
  JUMPIFEQKS R4 K2 ["string"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K3 [+4]
  LOADK R4 K3 ["DockWidgetPluginGui's title must be a string"]
  GETIMPORT R2 K5 [assert]
  CALL R2 2 0
  FASTCALL1 TYPE R1 [+3]
  MOVE R5 R1
  GETIMPORT R4 K1 [type]
  CALL R4 1 1
  JUMPIFEQKS R4 K6 ["table"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K7 [+4]
  LOADK R4 K7 ["DockWidgetPluginGui's widgetInfo must be an array"]
  GETIMPORT R2 K5 [assert]
  CALL R2 2 0
  LENGTH R4 R1
  JUMPIFEQKN R4 K8 [7] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K9 [+4]
  LOADK R4 K9 ["Unexpected table provided for widgetInfo, expected an array"]
  GETIMPORT R2 K5 [assert]
  CALL R2 2 0
  DUPTABLE R2 K14 [{"Name", "Title", "ZIndexBehavior", "Enabled"}]
  LOADK R3 K15 [""]
  SETTABLEKS R3 R2 K10 ["Name"]
  SETTABLEKS R0 R2 K11 ["Title"]
  GETIMPORT R3 K18 [Enum.ZIndexBehavior.Global]
  SETTABLEKS R3 R2 K12 ["ZIndexBehavior"]
  LOADB R3 1
  SETTABLEKS R3 R2 K13 ["Enabled"]
  NEWTABLE R3 0 0
  GETIMPORT R4 K20 [pairs]
  MOVE R5 R2
  CALL R4 1 3
  FORGPREP_NEXT R4
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K21 ["new"]
  CALL R9 0 1
  SETTABLE R9 R3 R7
  FORGLOOP R4 2 [-6]
  SETTABLEKS R3 R2 K22 ["_signals"]
  GETUPVAL R6 1
  FASTCALL2 SETMETATABLE R2 R6 [+4]
  MOVE R5 R2
  GETIMPORT R4 K24 [setmetatable]
  CALL R4 2 0
  RETURN R2 1

PROTO_6:
  JUMPIFNOTEQKNIL R1 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K0 [+4]
  LOADK R4 K0 ["Need a property to observe changes"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  GETTABLE R4 R0 R1
  JUMPIFNOTEQKNIL R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  LOADK R5 K3 ["Could not find the key,"]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R9 R1
  GETIMPORT R8 K5 [tostring]
  CALL R8 1 1
  MOVE R6 R8
  LOADK R7 K6 [" please add it to the constructor"]
  CONCAT R4 R5 R7
  FASTCALL2 ASSERT R3 R4 [+3]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  GETTABLEKS R3 R0 K7 ["_signals"]
  GETTABLE R2 R3 R1
  RETURN R2 1

PROTO_7:
  DUPTABLE R0 K1 [{"Name"}]
  LOADK R1 K2 [""]
  SETTABLEKS R1 R0 K0 ["Name"]
  GETUPVAL R3 0
  FASTCALL2 SETMETATABLE R0 R3 [+4]
  MOVE R2 R0
  GETIMPORT R1 K4 [setmetatable]
  CALL R1 2 0
  RETURN R0 1

PROTO_8:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["new"]
  MOVE R3 R1
  CALL R2 1 -1
  RETURN R2 -1

PROTO_9:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["new"]
  MOVE R4 R1
  MOVE R5 R2
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["Signal"]
  CALL R1 1 1
  NEWTABLE R2 4 0
  SETTABLEKS R2 R2 K8 ["__index"]
  DUPCLOSURE R3 K9 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K10 ["new"]
  DUPCLOSURE R3 K11 [PROTO_1]
  SETTABLEKS R3 R2 K12 ["SetActive"]
  NEWTABLE R3 4 0
  SETTABLEKS R3 R3 K8 ["__index"]
  DUPCLOSURE R4 K13 [PROTO_2]
  CAPTURE VAL R3
  SETTABLEKS R4 R3 K10 ["new"]
  DUPCLOSURE R4 K14 [PROTO_3]
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K15 ["CreateButton"]
  NEWTABLE R4 4 0
  SETTABLEKS R4 R4 K8 ["__index"]
  DUPCLOSURE R5 K16 [PROTO_4]
  SETTABLEKS R5 R4 K17 ["__newindex"]
  DUPCLOSURE R5 K18 [PROTO_5]
  CAPTURE VAL R1
  CAPTURE VAL R4
  SETTABLEKS R5 R4 K10 ["new"]
  DUPCLOSURE R5 K19 [PROTO_6]
  SETTABLEKS R5 R4 K20 ["GetPropertyChangedSignal"]
  NEWTABLE R5 4 0
  SETTABLEKS R5 R5 K8 ["__index"]
  DUPCLOSURE R6 K21 [PROTO_7]
  CAPTURE VAL R5
  SETTABLEKS R6 R5 K10 ["new"]
  DUPCLOSURE R6 K22 [PROTO_8]
  CAPTURE VAL R3
  SETTABLEKS R6 R5 K23 ["CreateToolbar"]
  DUPCLOSURE R6 K24 [PROTO_9]
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K25 ["CreateDockWidgetPluginGui"]
  RETURN R5 1
