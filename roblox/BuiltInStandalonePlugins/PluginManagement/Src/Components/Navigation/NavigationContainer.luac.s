PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K2 [{"navigation"}]
  SETTABLEKS R0 R4 K1 ["navigation"]
  GETUPVAL R5 2
  MOVE R6 R0
  MOVE R7 R1
  CALL R5 2 -1
  CALL R2 -1 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["withNavigation"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CALL R1 1 -1
  RETURN R1 -1

PROTO_2:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  RETURN R1 1

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K2 [{"navigation"}]
  SETTABLEKS R0 R4 K1 ["navigation"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  GETTABLEKS R2 R0 K0 ["getParam"]
  LOADK R3 K1 ["assetId"]
  CALL R2 1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K5 [{"assetId", "navigation", "Size"}]
  SETTABLEKS R2 R5 K1 ["assetId"]
  SETTABLEKS R0 R5 K3 ["navigation"]
  GETIMPORT R6 K8 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 1
  LOADN R10 0
  CALL R6 4 1
  SETTABLEKS R6 R5 K4 ["Size"]
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["RoactNavigation"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K9 ["Components"]
  GETTABLEKS R5 R6 K10 ["Navigation"]
  GETTABLEKS R4 R5 K11 ["NavigatableView"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K9 ["Components"]
  GETTABLEKS R5 R6 K12 ["ManagementMainView"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R9 R0 K8 ["Src"]
  GETTABLEKS R8 R9 K9 ["Components"]
  GETTABLEKS R7 R8 K13 ["PluginDetails"]
  GETTABLEKS R6 R7 K14 ["PluginDetailsView"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K8 ["Src"]
  GETTABLEKS R8 R9 K15 ["Util"]
  GETTABLEKS R7 R8 K16 ["Constants"]
  CALL R6 1 1
  DUPCLOSURE R7 K17 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R3
  NEWTABLE R8 2 0
  GETTABLEKS R10 R6 K18 ["APP_PAGE"]
  GETTABLEKS R9 R10 K19 ["Main"]
  DUPCLOSURE R11 K20 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R4
  NEWCLOSURE R10 P2
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R11
  SETTABLE R10 R8 R9
  GETTABLEKS R10 R6 K18 ["APP_PAGE"]
  GETTABLEKS R9 R10 K21 ["Detail"]
  DUPCLOSURE R11 K22 [PROTO_4]
  CAPTURE VAL R1
  CAPTURE VAL R5
  NEWCLOSURE R10 P2
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R11
  SETTABLE R10 R8 R9
  GETTABLEKS R9 R2 K23 ["createStackNavigator"]
  DUPTABLE R10 K26 [{"routes", "initialRouteName"}]
  SETTABLEKS R8 R10 K24 ["routes"]
  GETTABLEKS R12 R6 K18 ["APP_PAGE"]
  GETTABLEKS R11 R12 K19 ["Main"]
  SETTABLEKS R11 R10 K25 ["initialRouteName"]
  CALL R9 1 1
  GETTABLEKS R10 R2 K27 ["createAppContainer"]
  MOVE R11 R9
  CALL R10 1 -1
  RETURN R10 -1
