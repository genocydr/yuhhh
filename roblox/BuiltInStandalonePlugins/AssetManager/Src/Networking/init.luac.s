PROTO_0:
  DUPTABLE R1 K4 [{"_isMock", "_impl", "OnFetchFinished", "OnFetchProgressChanged"}]
  SETTABLEKS R0 R1 K0 ["_isMock"]
  JUMPIFNOT R0 [+2]
  GETUPVAL R2 0
  JUMP [+1]
  GETUPVAL R2 1
  SETTABLEKS R2 R1 K1 ["_impl"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K5 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K2 ["OnFetchFinished"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K5 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K3 ["OnFetchProgressChanged"]
  GETUPVAL R4 3
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K7 [setmetatable]
  CALL R2 2 0
  RETURN R1 1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["new"]
  LOADB R1 1
  CALL R0 1 1
  GETTABLEKS R2 R0 K1 ["_impl"]
  GETTABLEKS R1 R2 K2 ["ResumeAsync"]
  SETTABLEKS R1 R0 K2 ["ResumeAsync"]
  RETURN R0 1

PROTO_2:
  RETURN R0 0

PROTO_3:
  GETTABLEKS R2 R0 K0 ["_impl"]
  GETTABLEKS R1 R2 K1 ["incrementFetchSessionId"]
  CALL R1 0 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R3 R0 K0 ["_impl"]
  GETTABLEKS R2 R3 K1 ["fetchUsername"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R2 R0 K0 ["_impl"]
  GETTABLEKS R1 R2 K1 ["fetchGameName"]
  CALL R1 0 -1
  RETURN R1 -1

PROTO_6:
  GETTABLEKS R4 R0 K0 ["_impl"]
  GETTABLEKS R3 R4 K1 ["fetchGroupsAsync"]
  MOVE R4 R1
  MOVE R5 R2
  CALL R3 2 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R4 R0 K0 ["OnFetchFinished"]
  SETTABLEKS R4 R1 K0 ["OnFetchFinished"]
  GETTABLEKS R4 R0 K1 ["OnFetchProgressChanged"]
  SETTABLEKS R4 R1 K1 ["OnFetchProgressChanged"]
  GETTABLEKS R5 R0 K2 ["_impl"]
  GETTABLEKS R4 R5 K3 ["fetchAssetsAsync"]
  MOVE R5 R1
  MOVE R6 R2
  MOVE R7 R3
  CALL R4 3 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R4 R0 K0 ["OnFetchFinished"]
  SETTABLEKS R4 R1 K0 ["OnFetchFinished"]
  GETTABLEKS R4 R0 K1 ["OnFetchProgressChanged"]
  SETTABLEKS R4 R1 K1 ["OnFetchProgressChanged"]
  GETTABLEKS R5 R0 K2 ["_impl"]
  GETTABLEKS R4 R5 K3 ["searchAssetsAsync"]
  MOVE R5 R1
  MOVE R6 R2
  MOVE R7 R3
  CALL R4 3 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R3 R0 K0 ["_impl"]
  GETTABLEKS R2 R3 K1 ["grantUniverseUseAssetsPermissions"]
  MOVE R3 R1
  CALL R2 1 -1
  RETURN R2 -1

PROTO_10:
  GETTABLEKS R3 R0 K0 ["_impl"]
  GETTABLEKS R2 R3 K1 ["getThumbnailUriForScope"]
  MOVE R3 R1
  CALL R2 1 -1
  RETURN R2 -1

PROTO_11:
  GETTABLEKS R4 R0 K0 ["_impl"]
  GETTABLEKS R3 R4 K1 ["getThumbnailForScopeAsync"]
  MOVE R4 R1
  MOVE R5 R2
  CALL R3 2 0
  RETURN R0 0

PROTO_12:
  GETTABLEKS R3 R0 K0 ["_impl"]
  GETTABLEKS R2 R3 K1 ["getThumbnailForItem"]
  MOVE R3 R1
  CALL R2 1 -1
  RETURN R2 -1

PROTO_13:
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+7]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["getThumbnailForItemAsync"]
  MOVE R4 R1
  MOVE R5 R2
  CALL R3 2 0
  RETURN R0 0
  GETTABLEKS R4 R0 K1 ["_impl"]
  GETTABLEKS R3 R4 K0 ["getThumbnailForItemAsync"]
  MOVE R4 R1
  MOVE R5 R2
  CALL R3 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["ContextServices"]
  GETTABLEKS R3 R2 K9 ["ContextItem"]
  GETTABLEKS R4 R1 K10 ["Util"]
  GETTABLEKS R5 R4 K11 ["Signal"]
  GETIMPORT R6 K5 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K12 ["NetworkingImpl"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K13 ["NetworkingMock"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R0 K14 ["Src"]
  GETTABLEKS R9 R10 K15 ["Types"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K14 ["Src"]
  GETTABLEKS R11 R12 K16 ["Flags"]
  GETTABLEKS R10 R11 K17 ["getFFlagDebugAmrMockContent"]
  CALL R9 1 1
  LOADK R12 K18 ["Networking"]
  NAMECALL R10 R3 K19 ["extend"]
  CALL R10 2 1
  DUPCLOSURE R11 K20 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R10
  SETTABLEKS R11 R10 K21 ["new"]
  DUPCLOSURE R11 K22 [PROTO_1]
  CAPTURE VAL R10
  SETTABLEKS R11 R10 K23 ["mock"]
  DUPCLOSURE R11 K24 [PROTO_2]
  SETTABLEKS R11 R10 K25 ["destroy"]
  DUPCLOSURE R11 K26 [PROTO_3]
  SETTABLEKS R11 R10 K27 ["makeFetchRequestsStale"]
  DUPCLOSURE R11 K28 [PROTO_4]
  SETTABLEKS R11 R10 K29 ["fetchUsername"]
  DUPCLOSURE R11 K30 [PROTO_5]
  SETTABLEKS R11 R10 K31 ["fetchGameName"]
  DUPCLOSURE R11 K32 [PROTO_6]
  SETTABLEKS R11 R10 K33 ["fetchGroupsAsync"]
  DUPCLOSURE R11 K34 [PROTO_7]
  SETTABLEKS R11 R10 K35 ["fetchAssetsAsync"]
  DUPCLOSURE R11 K36 [PROTO_8]
  SETTABLEKS R11 R10 K37 ["searchAssetsAsync"]
  DUPCLOSURE R11 K38 [PROTO_9]
  SETTABLEKS R11 R10 K39 ["grantUniverseUseAssetsPermissions"]
  DUPCLOSURE R11 K40 [PROTO_10]
  SETTABLEKS R11 R10 K41 ["getThumbnailUriForScope"]
  DUPCLOSURE R11 K42 [PROTO_11]
  SETTABLEKS R11 R10 K43 ["getThumbnailForScopeAsync"]
  DUPCLOSURE R11 K44 [PROTO_12]
  SETTABLEKS R11 R10 K45 ["getThumbnailForItem"]
  DUPCLOSURE R11 K46 [PROTO_13]
  CAPTURE VAL R9
  CAPTURE VAL R7
  SETTABLEKS R11 R10 K47 ["getThumbnailForItemAsync"]
  RETURN R10 1
