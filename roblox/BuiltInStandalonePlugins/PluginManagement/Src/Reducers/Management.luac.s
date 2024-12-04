PROTO_0:
  NEWTABLE R3 0 0
  GETIMPORT R4 K1 [pairs]
  GETTABLEKS R5 R0 K2 ["plugins"]
  CALL R4 1 3
  FORGPREP_NEXT R4
  JUMPIFNOTEQ R7 R1 [+10]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K3 ["Dictionary"]
  GETTABLEKS R9 R10 K4 ["join"]
  MOVE R10 R8
  MOVE R11 R2
  CALL R9 2 1
  SETTABLE R9 R3 R7
  FORGLOOP R4 2 [-12]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["Dictionary"]
  GETTABLEKS R4 R5 K4 ["join"]
  MOVE R5 R0
  DUPTABLE R6 K5 [{"plugins"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["Dictionary"]
  GETTABLEKS R7 R8 K4 ["join"]
  GETTABLEKS R8 R0 K2 ["plugins"]
  MOVE R9 R3
  CALL R7 2 1
  SETTABLEKS R7 R6 K2 ["plugins"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"plugins"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["None"]
  SETTABLEKS R5 R4 K2 ["plugins"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"plugins"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["Dictionary"]
  GETTABLEKS R5 R6 K1 ["join"]
  GETTABLEKS R6 R0 K2 ["plugins"]
  JUMPIF R6 [+2]
  NEWTABLE R6 0 0
  NEWTABLE R7 1 0
  GETTABLEKS R8 R1 K4 ["pluginId"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K5 ["None"]
  SETTABLE R9 R7 R8
  CALL R5 2 1
  SETTABLEKS R5 R4 K2 ["plugins"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"plugins"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["Dictionary"]
  GETTABLEKS R5 R6 K1 ["join"]
  GETTABLEKS R6 R0 K2 ["plugins"]
  JUMPIF R6 [+2]
  NEWTABLE R6 0 0
  GETTABLEKS R7 R1 K4 ["pluginData"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K2 ["plugins"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  GETUPVAL R2 0
  MOVE R3 R0
  GETTABLEKS R4 R1 K0 ["assetId"]
  DUPTABLE R5 K2 [{"enabled"}]
  GETTABLEKS R6 R1 K1 ["enabled"]
  SETTABLEKS R6 R5 K1 ["enabled"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_5:
  GETUPVAL R2 0
  MOVE R3 R0
  GETTABLEKS R4 R1 K0 ["assetId"]
  DUPTABLE R5 K2 [{"status"}]
  GETTABLEKS R6 R1 K1 ["status"]
  JUMPIF R6 [+3]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["None"]
  SETTABLEKS R6 R5 K1 ["status"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Rodux"]
  CALL R2 1 1
  DUPCLOSURE R3 K8 [PROTO_0]
  CAPTURE VAL R1
  GETTABLEKS R4 R2 K9 ["createReducer"]
  DUPTABLE R5 K11 [{"plugins"}]
  LOADNIL R6
  SETTABLEKS R6 R5 K10 ["plugins"]
  DUPTABLE R6 K17 [{"ClearAllPluginData", "RemovePluginData", "SetLoadedPluginData", "SetPluginEnabledState", "SetPluginUpdateStatus"}]
  DUPCLOSURE R8 K19 [PROTO_1]
  CAPTURE VAL R1
  ORK R7 R8 K18 []
  SETTABLEKS R7 R6 K12 ["ClearAllPluginData"]
  DUPCLOSURE R8 K20 [PROTO_2]
  CAPTURE VAL R1
  ORK R7 R8 K18 []
  SETTABLEKS R7 R6 K13 ["RemovePluginData"]
  DUPCLOSURE R7 K21 [PROTO_3]
  CAPTURE VAL R1
  SETTABLEKS R7 R6 K14 ["SetLoadedPluginData"]
  DUPCLOSURE R7 K22 [PROTO_4]
  CAPTURE VAL R3
  SETTABLEKS R7 R6 K15 ["SetPluginEnabledState"]
  DUPCLOSURE R7 K23 [PROTO_5]
  CAPTURE VAL R3
  CAPTURE VAL R1
  SETTABLEKS R7 R6 K16 ["SetPluginUpdateStatus"]
  CALL R4 2 -1
  RETURN R4 -1