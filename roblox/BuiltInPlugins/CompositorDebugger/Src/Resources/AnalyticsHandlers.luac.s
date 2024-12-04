PROTO_0:
  GETUPVAL R2 0
  MOVE R3 R1
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  DUPTABLE R4 K4 [{"studioSid", "clientId", "placeId", "userId"}]
  GETUPVAL R5 1
  NAMECALL R5 R5 K5 ["GetSessionId"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K0 ["studioSid"]
  GETUPVAL R5 1
  NAMECALL R5 R5 K6 ["GetClientId"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K1 ["clientId"]
  GETIMPORT R6 K8 [game]
  GETTABLEKS R5 R6 K9 ["PlaceId"]
  SETTABLEKS R5 R4 K2 ["placeId"]
  GETUPVAL R5 2
  NAMECALL R5 R5 K10 ["GetUserId"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K3 ["userId"]
  CALL R2 2 1
  MOVE R1 R2
  GETUPVAL R2 1
  LOADK R4 K11 ["studio"]
  LOADK R5 K12 ["compositorDebugger"]
  MOVE R6 R0
  MOVE R7 R1
  NAMECALL R2 R2 K13 ["SendEventDeferred"]
  CALL R2 5 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  MOVE R4 R0
  NEWTABLE R5 1 0
  SETTABLE R2 R5 R1
  CALL R3 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  MOVE R4 R0
  DUPTABLE R5 K2 [{"depth", "layers"}]
  SETTABLEKS R1 R5 K0 ["depth"]
  SETTABLEKS R2 R5 K1 ["layers"]
  CALL R3 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R5 0
  MOVE R6 R0
  DUPTABLE R7 K4 [{"oldTab", "newTab", "reason", "duration"}]
  SETTABLEKS R1 R7 K0 ["oldTab"]
  SETTABLEKS R2 R7 K1 ["newTab"]
  SETTABLEKS R3 R7 K2 ["reason"]
  MULK R9 R4 K5 [1000]
  FASTCALL1 MATH_FLOOR R9 [+2]
  GETIMPORT R8 K8 [math.floor]
  CALL R8 1 1
  SETTABLEKS R8 R7 K3 ["duration"]
  CALL R5 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"timeSinceOpened"}]
  MULK R6 R1 K2 [1000]
  FASTCALL1 MATH_FLOOR R6 [+2]
  GETIMPORT R5 K5 [math.floor]
  CALL R5 1 1
  SETTABLEKS R5 R4 K0 ["timeSinceOpened"]
  CALL R2 2 0
  RETURN R0 0

PROTO_5:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  DUPTABLE R2 K5 [{"onChangeSetting", "onCompositorConnected", "onLayerTabChanged", "onPluginClosed", "onScrubbing"}]
  NEWCLOSURE R3 P1
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K0 ["onChangeSetting"]
  NEWCLOSURE R3 P2
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K1 ["onCompositorConnected"]
  NEWCLOSURE R3 P3
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K2 ["onLayerTabChanged"]
  NEWCLOSURE R3 P4
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K3 ["onPluginClosed"]
  SETTABLEKS R1 R2 K4 ["onScrubbing"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["CompositorDebugger"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["Dash"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K12 ["join"]
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R1 K13 ["Src"]
  GETTABLEKS R5 R6 K14 ["Types"]
  CALL R4 1 1
  DUPCLOSURE R5 K15 [PROTO_5]
  CAPTURE VAL R3
  CAPTURE VAL R0
  RETURN R5 1
