PROTO_0:
  GETUPVAL R0 0
  DUPTABLE R2 K12 [{"query", "assetType", "assetSource", "userId", "isLexical", "numResults", "style", "theme", "isAssistantGeneratedQuery", "textFilterThresholdOverride", "sizeInclusiveThresholdMin", "sizeInclusiveThresholdMax"}]
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K0 ["query"]
  LOADK R3 K13 ["ASSET_TYPE_MODEL"]
  SETTABLEKS R3 R2 K1 ["assetType"]
  LOADK R3 K14 ["ASSET_SOURCE_MARKETPLACE"]
  SETTABLEKS R3 R2 K2 ["assetSource"]
  GETUPVAL R3 2
  NAMECALL R3 R3 K15 ["GetUserId"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K3 ["userId"]
  LOADB R3 1
  SETTABLEKS R3 R2 K4 ["isLexical"]
  LOADN R3 6
  SETTABLEKS R3 R2 K5 ["numResults"]
  GETUPVAL R3 3
  SETTABLEKS R3 R2 K6 ["style"]
  GETUPVAL R3 4
  SETTABLEKS R3 R2 K7 ["theme"]
  LOADB R3 1
  SETTABLEKS R3 R2 K8 ["isAssistantGeneratedQuery"]
  LOADK R3 K16 [0.75]
  SETTABLEKS R3 R2 K9 ["textFilterThresholdOverride"]
  DUPTABLE R3 K20 [{"x", "y", "z"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K17 ["x"]
  LOADN R4 0
  SETTABLEKS R4 R3 K18 ["y"]
  LOADN R4 0
  SETTABLEKS R4 R3 K19 ["z"]
  SETTABLEKS R3 R2 K10 ["sizeInclusiveThresholdMin"]
  DUPTABLE R3 K20 [{"x", "y", "z"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K17 ["x"]
  LOADN R4 0
  SETTABLEKS R4 R3 K18 ["y"]
  LOADN R4 0
  SETTABLEKS R4 R3 K19 ["z"]
  SETTABLEKS R3 R2 K11 ["sizeInclusiveThresholdMax"]
  NAMECALL R0 R0 K21 ["SearchForAssets"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R2 0
  CALL R2 0 1
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["SearchInsertAsset is not enabled"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETTABLEKS R1 R0 K3 ["requestId"]
  GETTABLEKS R2 R0 K4 ["arguments"]
  GETTABLEKS R3 R2 K5 ["query"]
  GETTABLEKS R5 R2 K7 ["style"]
  ORK R4 R5 K6 [""]
  GETTABLEKS R6 R2 K8 ["theme"]
  ORK R5 R6 K6 [""]
  GETTABLEKS R7 R2 K10 ["relativePosition"]
  ORK R6 R7 K9 [{0, 0, 0}]
  GETIMPORT R7 K12 [pcall]
  NEWCLOSURE R8 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R3
  CAPTURE UPVAL U2
  CAPTURE VAL R4
  CAPTURE VAL R5
  CALL R7 1 2
  JUMPIF R7 [+9]
  GETIMPORT R9 K14 [error]
  LOADK R11 K15 ["Failed to search for asset: %*"]
  MOVE R13 R8
  NAMECALL R11 R11 K16 ["format"]
  CALL R11 2 1
  MOVE R10 R11
  CALL R9 1 0
  GETTABLEKS R9 R8 K17 ["data"]
  LENGTH R12 R9
  LOADN R13 0
  JUMPIFLT R13 R12 [+2]
  LOADB R11 0 +1
  LOADB R11 1
  LOADK R13 K18 ["Failed to find \"%*\" in the marketplace!"]
  MOVE R15 R3
  NAMECALL R13 R13 K16 ["format"]
  CALL R13 2 1
  MOVE R12 R13
  FASTCALL2 ASSERT R11 R12 [+3]
  GETIMPORT R10 K2 [assert]
  CALL R10 2 0
  GETIMPORT R10 K21 [table.create]
  LENGTH R11 R9
  CALL R10 1 1
  MOVE R11 R9
  LOADNIL R12
  LOADNIL R13
  FORGPREP R11
  GETTABLEKS R19 R15 K22 ["id"]
  FASTCALL1 TOSTRING R19 [+2]
  GETIMPORT R18 K24 [tostring]
  CALL R18 1 1
  FASTCALL2 TABLE_INSERT R10 R18 [+4]
  MOVE R17 R10
  GETIMPORT R16 K26 [table.insert]
  CALL R16 2 0
  FORGLOOP R11 2 [-13]
  GETUPVAL R11 1
  MOVE R13 R1
  LOADK R14 K27 ["InsertAsset"]
  DUPTABLE R15 K32 [{"assetId", "altAssets", "chatGroup", "properties"}]
  GETTABLEN R16 R10 1
  SETTABLEKS R16 R15 K28 ["assetId"]
  SETTABLEKS R10 R15 K29 ["altAssets"]
  SETTABLEKS R3 R15 K30 ["chatGroup"]
  DUPTABLE R16 K37 [{"instanceName", "parentInstanceId", "positionOrigin", "position"}]
  SETTABLEKS R3 R16 K33 ["instanceName"]
  LOADK R17 K38 ["workspace"]
  SETTABLEKS R17 R16 K34 ["parentInstanceId"]
  LOADK R17 K39 ["currentCamera"]
  SETTABLEKS R17 R16 K35 ["positionOrigin"]
  DUPTABLE R17 K42 [{"x", "z"}]
  GETTABLEKS R18 R6 K43 ["X"]
  SETTABLEKS R18 R17 K40 ["x"]
  GETTABLEKS R18 R6 K44 ["Z"]
  SETTABLEKS R18 R17 K41 ["z"]
  SETTABLEKS R17 R16 K36 ["position"]
  SETTABLEKS R16 R15 K31 ["properties"]
  NAMECALL R11 R11 K45 ["ExecuteCommandAsync"]
  CALL R11 4 -1
  RETURN R11 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StreamingServiceDispatcherRegistry"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Utils"]
  GETTABLEKS R2 R3 K8 ["CliAdapter"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K9 ["GetService"]
  LOADK R3 K10 ["StreamingService"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K9 ["GetService"]
  LOADK R4 K11 ["StudioService"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K12 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K13 ["Flags"]
  GETTABLEKS R6 R7 K14 ["getFFlagConvAIAddCommandSearchInsertAsset"]
  CALL R5 1 1
  DUPCLOSURE R6 K15 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R3
  RETURN R6 1
