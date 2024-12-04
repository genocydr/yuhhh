PROTO_0:
  JUMPIFNOT R0 [+8]
  GETTABLEKS R1 R0 K0 ["Body"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R2 R0 K0 ["Body"]
  GETTABLEKS R1 R2 K1 ["errors"]
  JUMPIF R1 [+2]
  LOADNIL R1
  RETURN R1 1
  LOADNIL R1
  GETTABLEKS R5 R0 K0 ["Body"]
  GETTABLEKS R2 R5 K1 ["errors"]
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  JUMPIFEQKNIL R1 [+10]
  MOVE R7 R1
  LOADK R8 K2 ["
"]
  GETTABLEKS R9 R6 K3 ["code"]
  LOADK R10 K4 [": "]
  GETTABLEKS R11 R6 K5 ["message"]
  CONCAT R1 R7 R11
  JUMP [+6]
  GETTABLEKS R7 R6 K3 ["code"]
  LOADK R8 K4 [": "]
  GETTABLEKS R9 R6 K5 ["message"]
  CONCAT R1 R7 R9
  FORGLOOP R2 2 [-18]
  RETURN R1 1

PROTO_1:
  JUMPIF R0 [+2]
  LOADNIL R1
  RETURN R1 1
  LOADNIL R1
  FASTCALL1 TYPE R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K1 [type]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K2 ["table"] [+8]
  GETIMPORT R2 K4 [table.concat]
  MOVE R3 R0
  LOADK R4 K5 [", "]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K7 [tostring]
  CALL R2 1 1
  MOVE R1 R2
  RETURN R1 1

PROTO_2:
  GETIMPORT R2 K2 [string.match]
  MOVE R3 R0
  LOADK R4 K3 ["(%d+)$"]
  CALL R2 2 -1
  FASTCALL TONUMBER [+2]
  GETIMPORT R1 K5 [tonumber]
  CALL R1 -1 1
  RETURN R1 1

PROTO_3:
  JUMPIFEQKNIL R1 [+3]
  LOADB R2 1
  SETTABLE R2 R0 R1
  RETURN R0 0

PROTO_4:
  NEWTABLE R1 0 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  NAMECALL R7 R6 K0 ["GetDescendants"]
  CALL R7 1 1
  FASTCALL2 TABLE_INSERT R7 R6 [+5]
  MOVE R9 R7
  MOVE R10 R6
  GETIMPORT R8 K3 [table.insert]
  CALL R8 2 0
  MOVE R8 R7
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  LOADK R15 K4 ["MeshPart"]
  NAMECALL R13 R12 K5 ["IsA"]
  CALL R13 2 1
  JUMPIFNOT R13 [+17]
  GETTABLEKS R14 R12 K6 ["MeshId"]
  GETIMPORT R16 K9 [string.match]
  MOVE R17 R14
  LOADK R18 K10 ["(%d+)$"]
  CALL R16 2 -1
  FASTCALL TONUMBER [+2]
  GETIMPORT R15 K12 [tonumber]
  CALL R15 -1 1
  MOVE R13 R15
  JUMPIFEQKNIL R13 [+25]
  LOADB R14 1
  SETTABLE R14 R1 R13
  JUMP [+21]
  LOADK R15 K13 ["WrapTarget"]
  NAMECALL R13 R12 K5 ["IsA"]
  CALL R13 2 1
  JUMPIFNOT R13 [+16]
  GETTABLEKS R14 R12 K14 ["CageMeshId"]
  GETIMPORT R16 K9 [string.match]
  MOVE R17 R14
  LOADK R18 K10 ["(%d+)$"]
  CALL R16 2 -1
  FASTCALL TONUMBER [+2]
  GETIMPORT R15 K12 [tonumber]
  CALL R15 -1 1
  MOVE R13 R15
  JUMPIFEQKNIL R13 [+3]
  LOADB R14 1
  SETTABLE R14 R1 R13
  FORGLOOP R8 2 [-44]
  FORGLOOP R2 2 [-60]
  NEWTABLE R2 0 0
  MOVE R3 R1
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  FASTCALL2 TABLE_INSERT R2 R6 [+5]
  MOVE R9 R2
  MOVE R10 R6
  GETIMPORT R8 K3 [table.insert]
  CALL R8 2 0
  FORGLOOP R3 1 [-8]
  RETURN R2 1

PROTO_5:
  NEWTABLE R5 8 0
  LOADK R6 K0 ["CreationContextInvalidAssetQuantities"]
  SETTABLEN R6 R5 2
  LOADK R6 K1 ["CreationContextInvalidBundleType"]
  SETTABLEN R6 R5 3
  LOADK R6 K2 ["CreationContextInvalidCreateBundleRequest"]
  SETTABLEN R6 R5 4
  LOADK R6 K3 ["CreationContextInvalidBundleDescription"]
  SETTABLEN R6 R5 5
  LOADK R6 K4 ["CreationContextInvalidBundleName"]
  SETTABLEN R6 R5 6
  LOADK R6 K5 ["CreationContextInappropriateBundleDescription"]
  SETTABLEN R6 R5 7
  LOADK R6 K6 ["CreationContextInappropriateBundleName"]
  SETTABLEN R6 R5 8
  GETUPVAL R6 0
  CALL R6 0 1
  JUMPIFNOT R6 [+2]
  LOADK R6 K7 ["CreationContextInvalidBodyScale"]
  SETTABLEN R6 R5 12
  GETUPVAL R6 1
  CALL R6 0 1
  JUMPIFNOT R6 [+2]
  LOADK R6 K8 ["CreationContextInvalidBodyColorSet"]
  SETTABLEN R6 R5 13
  NEWTABLE R6 2 0
  LOADN R7 0
  LOADK R8 K9 ["CreationContextAuthorizationDenied"]
  SETTABLE R8 R6 R7
  LOADK R7 K10 ["CreationContextUserNotFound"]
  SETTABLEN R7 R6 10
  NEWTABLE R7 2 0
  LOADN R8 0
  LOADK R9 K11 ["CreationContextTokenValidationFailed"]
  SETTABLE R9 R7 R8
  LOADK R8 K12 ["CreationContextDoesNotHavePermission"]
  SETTABLEN R8 R7 9
  GETUPVAL R8 2
  CALL R8 0 1
  JUMPIFNOT R8 [+4]
  LOADK R8 K13 ["CreationContextMissingIDVerification"]
  SETTABLEN R8 R7 106
  LOADK R8 K14 ["CreationContextAccessBlocked"]
  SETTABLEN R8 R7 107
  NEWTABLE R8 1 0
  LOADK R9 K15 ["CreationContextDailyLimitReached"]
  SETTABLEN R9 R8 11
  NEWTABLE R9 0 1
  LOADK R10 K16 ["CreationContextServiceUnavailable"]
  SETTABLEN R10 R9 1
  NEWTABLE R10 8 0
  LOADN R11 144
  SETTABLE R5 R10 R11
  LOADN R11 145
  SETTABLE R6 R10 R11
  LOADN R11 147
  SETTABLE R7 R10 R11
  LOADN R11 156
  SETTABLE R8 R10 R11
  LOADN R11 247
  SETTABLE R9 R10 R11
  LOADNIL R11
  GETTABLEKS R13 R2 K17 ["StatusCode"]
  GETTABLE R12 R10 R13
  JUMPIFEQKNIL R12 [+50]
  GETTABLEKS R13 R2 K18 ["Body"]
  JUMPIFEQKNIL R13 [+46]
  GETTABLEKS R14 R2 K18 ["Body"]
  GETTABLEKS R13 R14 K19 ["errors"]
  JUMPIFEQKNIL R13 [+40]
  GETTABLEKS R16 R2 K18 ["Body"]
  GETTABLEKS R13 R16 K19 ["errors"]
  LOADNIL R14
  LOADNIL R15
  FORGPREP R13
  GETTABLEKS R19 R17 K20 ["code"]
  GETTABLE R18 R12 R19
  JUMPIFEQKNIL R18 [+18]
  JUMPIFNOTEQKNIL R11 [+8]
  LOADK R21 K21 ["AssetConfig"]
  MOVE R22 R18
  NAMECALL R19 R1 K22 ["getText"]
  CALL R19 3 1
  MOVE R11 R19
  JUMP [+8]
  MOVE R19 R11
  LOADK R20 K23 ["
"]
  LOADK R23 K21 ["AssetConfig"]
  MOVE R24 R18
  NAMECALL R21 R1 K22 ["getText"]
  CALL R21 3 1
  CONCAT R11 R19 R21
  FORGLOOP R13 2 [-23]
  JUMPIFEQKNIL R11 [+7]
  MOVE R13 R11
  GETUPVAL R14 3
  MOVE R15 R4
  MOVE R16 R1
  CALL R14 2 1
  CONCAT R11 R13 R14
  GETUPVAL R13 4
  CALL R13 0 1
  JUMPIFNOT R13 [+14]
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K24 ["UGCUploadRequestOperationIdEvent"]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K25 ["Status"]
  GETTABLEKS R14 R15 K26 ["Failure"]
  MOVE R15 R3
  LOADNIL R16
  GETUPVAL R17 6
  MOVE R18 R2
  CALL R17 1 1
  CALL R13 4 0
  GETUPVAL R14 7
  GETTABLEKS R13 R14 K27 ["shouldDebugWarnings"]
  CALL R13 0 1
  JUMPIFNOT R13 [+5]
  GETIMPORT R13 K29 [warn]
  LOADK R14 K30 ["Could not create UGC Bundle context and received response:"]
  MOVE R15 R2
  CALL R13 2 0
  JUMPIFEQKNIL R11 [+8]
  GETUPVAL R15 8
  MOVE R16 R11
  CALL R15 1 -1
  NAMECALL R13 R0 K31 ["dispatch"]
  CALL R13 -1 0
  JUMP [+16]
  GETUPVAL R15 8
  LOADK R21 K21 ["AssetConfig"]
  LOADK R22 K32 ["BundleContextCreationError"]
  NAMECALL R19 R1 K22 ["getText"]
  CALL R19 3 1
  MOVE R17 R19
  GETUPVAL R18 3
  MOVE R19 R4
  MOVE R20 R1
  CALL R18 2 1
  CONCAT R16 R17 R18
  CALL R15 1 -1
  NAMECALL R13 R0 K31 ["dispatch"]
  CALL R13 -1 0
  GETUPVAL R15 9
  LOADB R16 0
  CALL R15 1 -1
  NAMECALL R13 R0 K31 ["dispatch"]
  CALL R13 -1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R3 2
  GETIMPORT R4 K3 [Enum.AssetCreatorType.User]
  GETUPVAL R5 3
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K4 ["Name"]
  GETUPVAL R7 5
  GETUPVAL R8 6
  NAMECALL R0 R0 K5 ["createAssetAndWaitForAssetId"]
  CALL R0 8 -1
  RETURN R0 -1

PROTO_7:
  GETIMPORT R0 K1 [pcall]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CALL R0 1 2
  JUMPIFNOT R0 [+94]
  JUMPIFEQKNIL R1 [+93]
  JUMPIFEQKN R1 K2 [0] [+91]
  GETUPVAL R3 7
  GETTABLEKS R2 R3 K3 ["shouldDebugWarnings"]
  CALL R2 0 1
  JUMPIFNOT R2 [+5]
  GETIMPORT R2 K5 [warn]
  LOADK R3 K6 ["Received an assetId for an uploaded UGC bundle body part:"]
  MOVE R4 R1
  CALL R2 2 0
  GETUPVAL R2 8
  CALL R2 0 1
  JUMPIFNOT R2 [+33]
  GETUPVAL R2 9
  GETUPVAL R3 1
  CALL R2 1 1
  GETUPVAL R4 10
  GETTABLEKS R3 R4 K7 ["UGCIndividualAssetUploadEvent"]
  MOVE R4 R1
  JUMPIF R2 [+2]
  LOADNIL R5
  JUMP [+22]
  LOADNIL R6
  FASTCALL1 TYPE R2 [+3]
  MOVE R8 R2
  GETIMPORT R7 K9 [type]
  CALL R7 1 1
  JUMPIFNOTEQKS R7 K10 ["table"] [+8]
  GETIMPORT R7 K12 [table.concat]
  MOVE R8 R2
  LOADK R9 K13 [", "]
  CALL R7 2 1
  MOVE R6 R7
  JUMP [+6]
  FASTCALL1 TOSTRING R2 [+3]
  MOVE R8 R2
  GETIMPORT R7 K15 [tostring]
  CALL R7 1 1
  MOVE R6 R7
  MOVE R5 R6
  CALL R3 2 0
  GETUPVAL R3 11
  FASTCALL2 TABLE_INSERT R3 R1 [+4]
  MOVE R4 R1
  GETIMPORT R2 K17 [table.insert]
  CALL R2 2 0
  GETUPVAL R2 12
  GETUPVAL R4 13
  LOADK R6 K18 [0.05]
  LOADK R9 K19 [0.8]
  GETUPVAL R11 11
  LENGTH R10 R11
  MUL R8 R9 R10
  GETUPVAL R9 14
  DIV R7 R8 R9
  ADD R5 R6 R7
  GETUPVAL R6 15
  LOADK R8 K20 ["AssetConfig"]
  LOADK R9 K21 ["BundleUploadStepNumber"]
  DUPTABLE R10 K24 [{"currentStep", "totalSteps"}]
  LOADN R11 2
  SETTABLEKS R11 R10 K22 ["currentStep"]
  LOADN R11 4
  SETTABLEKS R11 R10 K23 ["totalSteps"]
  NAMECALL R6 R6 K25 ["getText"]
  CALL R6 4 1
  GETUPVAL R7 15
  LOADK R9 K20 ["AssetConfig"]
  LOADK R10 K26 ["BundleUploadAssetsStep"]
  NAMECALL R7 R7 K25 ["getText"]
  CALL R7 3 -1
  CALL R4 -1 -1
  NAMECALL R2 R2 K27 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R2 16
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R2 17
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_8:
  GETIMPORT R2 K2 [task.spawn]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  CAPTURE UPVAL U14
  CAPTURE UPVAL U15
  CAPTURE VAL R0
  CAPTURE VAL R1
  CALL R2 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  LOADN R2 0
  JUMPIFNOTLT R2 R1 [+62]
  GETUPVAL R1 0
  GETUPVAL R3 1
  LENGTH R2 R3
  JUMPIFNOTEQ R1 R2 [+57]
  GETUPVAL R1 2
  CALL R1 0 1
  JUMPIFNOT R1 [+37]
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K0 ["UGCUploadAssetsEvent"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K1 ["Status"]
  GETTABLEKS R2 R3 K2 ["Success"]
  GETUPVAL R3 4
  GETUPVAL R4 5
  GETUPVAL R6 1
  JUMPIF R6 [+2]
  LOADNIL R5
  JUMP [+22]
  LOADNIL R7
  FASTCALL1 TYPE R6 [+3]
  MOVE R9 R6
  GETIMPORT R8 K4 [type]
  CALL R8 1 1
  JUMPIFNOTEQKS R8 K5 ["table"] [+8]
  GETIMPORT R8 K7 [table.concat]
  MOVE R9 R6
  LOADK R10 K8 [", "]
  CALL R8 2 1
  MOVE R7 R8
  JUMP [+6]
  FASTCALL1 TOSTRING R6 [+3]
  MOVE R9 R6
  GETIMPORT R8 K10 [tostring]
  CALL R8 1 1
  MOVE R7 R8
  MOVE R5 R7
  CALL R1 4 0
  GETUPVAL R1 6
  GETUPVAL R3 7
  GETUPVAL R4 8
  GETUPVAL R5 9
  GETUPVAL R6 10
  GETUPVAL R7 11
  GETUPVAL R8 1
  GETUPVAL R9 5
  GETUPVAL R10 12
  GETUPVAL R11 13
  GETUPVAL R12 14
  CALL R3 9 -1
  NAMECALL R1 R1 K11 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0
  GETUPVAL R1 2
  CALL R1 0 1
  JUMPIFNOT R1 [+13]
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K0 ["UGCUploadAssetsEvent"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K1 ["Status"]
  GETTABLEKS R2 R3 K12 ["Failure"]
  GETUPVAL R3 4
  GETUPVAL R4 5
  LOADNIL R5
  LOADK R6 K13 ["Bundle Upload Assets Error"]
  CALL R1 5 0
  GETUPVAL R2 15
  GETTABLEKS R1 R2 K14 ["shouldDebugWarnings"]
  CALL R1 0 1
  JUMPIFNOT R1 [+4]
  GETIMPORT R1 K16 [warn]
  LOADK R2 K17 ["Unexpected UGCBundleUploadRequest: Incorrect number of asset ids "]
  CALL R1 1 0
  GETUPVAL R1 6
  GETUPVAL R3 16
  GETUPVAL R7 12
  LOADK R9 K18 ["AssetConfig"]
  LOADK R10 K19 ["BundlePartsUploadError"]
  NAMECALL R7 R7 K20 ["getText"]
  CALL R7 3 1
  MOVE R5 R7
  GETUPVAL R6 17
  GETUPVAL R7 13
  GETUPVAL R8 12
  CALL R6 2 1
  CONCAT R4 R5 R6
  CALL R3 1 -1
  NAMECALL R1 R1 K11 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R1 6
  GETUPVAL R3 18
  LOADB R4 0
  CALL R3 1 -1
  NAMECALL R1 R1 K11 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+13]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["UGCUploadAssetsEvent"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["Status"]
  GETTABLEKS R2 R3 K2 ["Failure"]
  GETUPVAL R3 2
  GETUPVAL R4 3
  LOADNIL R5
  MOVE R6 R0
  CALL R1 5 0
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K3 ["shouldDebugWarnings"]
  CALL R1 0 1
  JUMPIFNOT R1 [+5]
  GETIMPORT R1 K5 [warn]
  LOADK R2 K6 ["Unexpected UGCBundleUploadRequest error:"]
  MOVE R3 R0
  CALL R1 2 0
  GETUPVAL R1 5
  CALL R1 0 1
  JUMPIFNOT R1 [+22]
  GETUPVAL R1 6
  GETUPVAL R3 7
  GETUPVAL R9 8
  LOADK R11 K7 ["AssetConfig"]
  LOADK R12 K8 ["BundlePartsUploadError"]
  NAMECALL R9 R9 K9 ["getText"]
  CALL R9 3 1
  MOVE R5 R9
  GETUPVAL R9 9
  GETUPVAL R10 10
  GETUPVAL R11 8
  CALL R9 2 1
  MOVE R6 R9
  LOADK R7 K10 ["

"]
  MOVE R8 R0
  CONCAT R4 R5 R8
  CALL R3 1 -1
  NAMECALL R1 R1 K11 ["dispatch"]
  CALL R1 -1 0
  JUMP [+18]
  GETUPVAL R1 6
  GETUPVAL R3 7
  GETUPVAL R7 8
  LOADK R9 K7 ["AssetConfig"]
  LOADK R10 K8 ["BundlePartsUploadError"]
  NAMECALL R7 R7 K9 ["getText"]
  CALL R7 3 1
  MOVE R5 R7
  GETUPVAL R6 9
  GETUPVAL R7 10
  GETUPVAL R8 8
  CALL R6 2 1
  CONCAT R4 R5 R6
  CALL R3 1 -1
  NAMECALL R1 R1 K11 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R1 6
  GETUPVAL R3 11
  LOADB R4 0
  CALL R3 1 -1
  NAMECALL R1 R1 K11 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_11:
  JUMPIFNOT R0 [+182]
  GETTABLEKS R1 R0 K0 ["operationId"]
  JUMPIFNOT R1 [+179]
  GETTABLEKS R1 R0 K0 ["operationId"]
  GETUPVAL R2 0
  CALL R2 0 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["shouldDebugWarnings"]
  CALL R3 0 1
  JUMPIFNOT R3 [+5]
  GETIMPORT R3 K3 [warn]
  LOADK R4 K4 ["operationId received for UGC bundle upload:"]
  MOVE R5 R1
  CALL R3 2 0
  GETUPVAL R3 2
  CALL R3 0 1
  JUMPIFNOT R3 [+11]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K5 ["UGCUploadRequestOperationIdEvent"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K6 ["Status"]
  GETTABLEKS R4 R5 K7 ["Success"]
  GETUPVAL R5 4
  MOVE R6 R1
  CALL R3 3 0
  GETUPVAL R4 5
  GETTABLEKS R3 R4 K8 ["sanitizeForValidation"]
  GETUPVAL R4 6
  CALL R3 1 0
  GETUPVAL R5 7
  GETTABLEKS R4 R5 K9 ["util"]
  GETTABLEKS R3 R4 K10 ["createUGCBodyPartFolders"]
  GETUPVAL R4 6
  GETUPVAL R5 8
  GETUPVAL R6 4
  LOADB R7 1
  CALL R3 4 1
  GETUPVAL R4 9
  GETUPVAL R6 10
  LOADK R7 K11 [0.05]
  GETUPVAL R8 11
  LOADK R10 K12 ["AssetConfig"]
  LOADK R11 K13 ["BundleUploadStepNumber"]
  DUPTABLE R12 K16 [{"currentStep", "totalSteps"}]
  LOADN R13 2
  SETTABLEKS R13 R12 K14 ["currentStep"]
  LOADN R13 4
  SETTABLEKS R13 R12 K15 ["totalSteps"]
  NAMECALL R8 R8 K17 ["getText"]
  CALL R8 4 1
  GETUPVAL R9 11
  LOADK R11 K12 ["AssetConfig"]
  LOADK R12 K18 ["BundleUploadAssetsStep"]
  NAMECALL R9 R9 K17 ["getText"]
  CALL R9 3 -1
  CALL R6 -1 -1
  NAMECALL R4 R4 K19 ["dispatch"]
  CALL R4 -1 0
  GETUPVAL R4 2
  CALL R4 0 1
  JUMPIFNOT R4 [+11]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K20 ["UGCUploadAssetsEvent"]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K6 ["Status"]
  GETTABLEKS R5 R6 K21 ["Start"]
  GETUPVAL R6 4
  MOVE R7 R1
  CALL R4 3 0
  NEWTABLE R4 0 0
  LOADN R5 0
  NEWTABLE R6 0 0
  GETIMPORT R7 K23 [pairs]
  MOVE R8 R3
  CALL R7 1 3
  FORGPREP_NEXT R7
  GETUPVAL R13 12
  GETUPVAL R14 11
  CALL R13 1 1
  GETTABLE R12 R13 R10
  JUMPIF R12 [+2]
  GETTABLEKS R12 R10 K24 ["Name"]
  ADDK R5 R5 K25 [1]
  LOADK R14 K26 ["%* - %*"]
  GETUPVAL R16 13
  MOVE R17 R12
  NAMECALL R14 R14 K27 ["format"]
  CALL R14 3 1
  MOVE R13 R14
  MOVE R15 R6
  GETUPVAL R17 14
  GETTABLEKS R16 R17 K28 ["new"]
  NEWCLOSURE R17 P0
  CAPTURE UPVAL U15
  CAPTURE VAL R11
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R13
  CAPTURE UPVAL U16
  CAPTURE UPVAL U1
  CAPTURE UPVAL U17
  CAPTURE UPVAL U18
  CAPTURE UPVAL U3
  CAPTURE VAL R4
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE REF R5
  CAPTURE UPVAL U11
  CALL R16 1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R14 K31 [table.insert]
  CALL R14 -1 0
  FORGLOOP R7 2 [-42]
  GETUPVAL R8 14
  GETTABLEKS R7 R8 K32 ["all"]
  MOVE R8 R6
  CALL R7 1 1
  NEWCLOSURE R9 P1
  CAPTURE REF R5
  CAPTURE VAL R4
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R1
  CAPTURE UPVAL U9
  CAPTURE UPVAL U19
  CAPTURE UPVAL U20
  CAPTURE UPVAL U21
  CAPTURE UPVAL U13
  CAPTURE UPVAL U16
  CAPTURE UPVAL U11
  CAPTURE UPVAL U22
  CAPTURE UPVAL U23
  CAPTURE UPVAL U1
  CAPTURE UPVAL U24
  CAPTURE UPVAL U25
  CAPTURE UPVAL U26
  NEWCLOSURE R10 P2
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U27
  CAPTURE UPVAL U9
  CAPTURE UPVAL U24
  CAPTURE UPVAL U11
  CAPTURE UPVAL U25
  CAPTURE UPVAL U22
  CAPTURE UPVAL U26
  NAMECALL R7 R7 K33 ["andThen"]
  CALL R7 3 0
  CLOSEUPVALS R5
  RETURN R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["shouldDebugWarnings"]
  CALL R1 0 1
  JUMPIFNOT R1 [+5]
  GETIMPORT R1 K3 [warn]
  LOADK R2 K34 ["Unexpected UGCBundleUploadRequest response:"]
  MOVE R3 R0
  CALL R1 2 0
  GETUPVAL R1 2
  CALL R1 0 1
  JUMPIFNOT R1 [+14]
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K5 ["UGCUploadRequestOperationIdEvent"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K6 ["Status"]
  GETTABLEKS R2 R3 K35 ["Failure"]
  GETUPVAL R3 4
  LOADNIL R4
  GETUPVAL R5 28
  MOVE R6 R0
  CALL R5 1 1
  CALL R1 4 0
  GETUPVAL R1 9
  GETUPVAL R3 24
  GETUPVAL R7 11
  LOADK R9 K12 ["AssetConfig"]
  LOADK R10 K36 ["ValidationErrorUnknown"]
  NAMECALL R7 R7 K17 ["getText"]
  CALL R7 3 1
  MOVE R5 R7
  GETUPVAL R6 25
  GETUPVAL R7 22
  GETUPVAL R8 11
  CALL R6 2 1
  CONCAT R4 R5 R6
  CALL R3 1 -1
  NAMECALL R1 R1 K19 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R1 9
  GETUPVAL R3 26
  LOADB R4 0
  CALL R3 1 -1
  NAMECALL R1 R1 K19 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+8]
  GETUPVAL R1 1
  GETUPVAL R2 2
  GETUPVAL R3 3
  MOVE R4 R0
  GETUPVAL R5 4
  GETUPVAL R6 5
  CALL R1 5 0
  RETURN R0 0
  GETUPVAL R1 1
  GETUPVAL R2 2
  GETUPVAL R3 3
  MOVE R4 R0
  CALL R1 3 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getAvatarAssetTypeAsString"]
  GETUPVAL R2 1
  CALL R1 1 1
  GETUPVAL R2 2
  NAMECALL R2 R2 K1 ["Clone"]
  CALL R2 1 1
  GETUPVAL R4 3
  CALL R4 0 1
  JUMPIFNOT R4 [+6]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["getBodyScaleValues"]
  MOVE R4 R2
  CALL R3 1 1
  JUMP [+1]
  LOADNIL R3
  GETUPVAL R5 4
  CALL R5 0 1
  JUMPIFNOT R5 [+6]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["getBodyColorSet"]
  MOVE R5 R2
  CALL R4 1 1
  JUMP [+1]
  LOADNIL R4
  GETUPVAL R6 5
  JUMPIFNOT R6 [+9]
  GETUPVAL R5 5
  LOADN R7 1
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K4 ["NAME_CHARACTER_LIMIT"]
  NAMECALL R5 R5 K5 ["sub"]
  CALL R5 3 1
  JUMP [+1]
  LOADK R5 K6 [""]
  SETUPVAL R5 5
  GETUPVAL R6 7
  JUMPIFNOT R6 [+9]
  GETUPVAL R5 7
  LOADN R7 1
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K7 ["DESCRIPTION_CHARACTER_LIMIT"]
  NAMECALL R5 R5 K5 ["sub"]
  CALL R5 3 1
  JUMP [+1]
  LOADK R5 K6 [""]
  SETUPVAL R5 7
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE VAL R2
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  CAPTURE VAL R0
  CAPTURE UPVAL U14
  CAPTURE UPVAL U15
  CAPTURE UPVAL U16
  CAPTURE UPVAL U5
  CAPTURE UPVAL U17
  CAPTURE UPVAL U18
  CAPTURE UPVAL U7
  CAPTURE UPVAL U19
  CAPTURE UPVAL U20
  CAPTURE UPVAL U21
  CAPTURE UPVAL U22
  CAPTURE UPVAL U1
  CAPTURE UPVAL U23
  CAPTURE UPVAL U24
  CAPTURE UPVAL U25
  CAPTURE UPVAL U26
  CAPTURE UPVAL U27
  CAPTURE UPVAL U28
  CAPTURE UPVAL U29
  NEWCLOSURE R6 P1
  CAPTURE UPVAL U10
  CAPTURE UPVAL U30
  CAPTURE VAL R0
  CAPTURE UPVAL U15
  CAPTURE VAL R1
  CAPTURE UPVAL U23
  GETUPVAL R9 14
  LOADN R10 0
  GETUPVAL R11 15
  LOADK R13 K8 ["AssetConfig"]
  LOADK R14 K9 ["BundleUploadStepNumber"]
  DUPTABLE R15 K12 [{"currentStep", "totalSteps"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K10 ["currentStep"]
  LOADN R16 4
  SETTABLEKS R16 R15 K11 ["totalSteps"]
  NAMECALL R11 R11 K13 ["getText"]
  CALL R11 4 1
  GETUPVAL R12 15
  LOADK R14 K8 ["AssetConfig"]
  LOADK R15 K14 ["BundleUploadPrepareStep"]
  NAMECALL R12 R12 K13 ["getText"]
  CALL R12 3 -1
  CALL R9 -1 -1
  NAMECALL R7 R0 K15 ["dispatch"]
  CALL R7 -1 0
  GETUPVAL R9 31
  GETUPVAL R12 6
  GETTABLEKS R11 R12 K16 ["SCREENS"]
  GETTABLEKS R10 R11 K17 ["UPLOADING_ASSET"]
  CALL R9 1 -1
  NAMECALL R7 R0 K15 ["dispatch"]
  CALL R7 -1 0
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K18 ["getUGCBodyBundleAssetQuantities"]
  MOVE R8 R2
  GETUPVAL R9 13
  GETUPVAL R10 1
  CALL R7 3 1
  JUMPIFNOTEQKNIL R7 [+25]
  GETUPVAL R10 25
  GETUPVAL R14 15
  LOADK R16 K8 ["AssetConfig"]
  LOADK R17 K19 ["ValidationErrorUnknown"]
  NAMECALL R14 R14 K13 ["getText"]
  CALL R14 3 1
  MOVE R12 R14
  GETUPVAL R13 26
  GETUPVAL R14 23
  GETUPVAL R15 15
  CALL R13 2 1
  CONCAT R11 R12 R13
  CALL R10 1 -1
  NAMECALL R8 R0 K15 ["dispatch"]
  CALL R8 -1 0
  GETUPVAL R10 27
  LOADB R11 0
  CALL R10 1 -1
  NAMECALL R8 R0 K15 ["dispatch"]
  CALL R8 -1 0
  RETURN R0 0
  GETUPVAL R8 10
  CALL R8 0 1
  JUMPIFNOT R8 [+10]
  GETUPVAL R9 11
  GETTABLEKS R8 R9 K20 ["UGCUploadRequestOperationIdEvent"]
  GETUPVAL R11 11
  GETTABLEKS R10 R11 K21 ["Status"]
  GETTABLEKS R9 R10 K22 ["Start"]
  MOVE R10 R1
  CALL R8 2 0
  GETUPVAL R8 22
  GETUPVAL R10 1
  MOVE R11 R7
  GETUPVAL R12 5
  GETUPVAL R13 7
  MOVE R14 R3
  MOVE R15 R4
  NAMECALL R8 R8 K23 ["postBundleCreationContext"]
  CALL R8 7 1
  MOVE R10 R5
  MOVE R11 R6
  NAMECALL R8 R8 K24 ["andThen"]
  CALL R8 3 -1
  RETURN R8 -1

PROTO_14:
  NEWCLOSURE R9 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE REF R3
  CAPTURE UPVAL U3
  CAPTURE REF R4
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE VAL R5
  CAPTURE UPVAL U9
  CAPTURE VAL R6
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  CAPTURE UPVAL U14
  CAPTURE UPVAL U15
  CAPTURE VAL R0
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE UPVAL U16
  CAPTURE UPVAL U17
  CAPTURE UPVAL U18
  CAPTURE UPVAL U19
  CAPTURE UPVAL U20
  CAPTURE UPVAL U21
  CAPTURE UPVAL U22
  CLOSEUPVALS R3
  RETURN R9 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["LocalizationService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["PublishService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [script]
  LOADK R4 K7 ["Toolbox"]
  NAMECALL R2 R2 K8 ["FindFirstAncestor"]
  CALL R2 2 1
  GETTABLEKS R4 R2 K9 ["Core"]
  GETTABLEKS R3 R4 K10 ["Actions"]
  GETIMPORT R4 K12 [require]
  GETTABLEKS R5 R3 K13 ["NetworkError"]
  CALL R4 1 1
  GETIMPORT R5 K12 [require]
  GETTABLEKS R6 R3 K14 ["SetCurrentScreen"]
  CALL R5 1 1
  GETIMPORT R6 K12 [require]
  GETTABLEKS R7 R3 K15 ["UploadResult"]
  CALL R6 1 1
  GETIMPORT R7 K12 [require]
  GETTABLEKS R8 R3 K16 ["SetProgressBarInfo"]
  CALL R7 1 1
  GETIMPORT R8 K12 [require]
  GETTABLEKS R11 R2 K9 ["Core"]
  GETTABLEKS R10 R11 K17 ["Localization"]
  GETTABLEKS R9 R10 K18 ["getLocalizedAssetTextMap"]
  CALL R8 1 1
  GETTABLEKS R11 R2 K9 ["Core"]
  GETTABLEKS R10 R11 K19 ["Networking"]
  GETTABLEKS R9 R10 K20 ["Requests"]
  GETIMPORT R10 K12 [require]
  GETTABLEKS R11 R9 K21 ["UGCCreateBundleRequest"]
  CALL R10 1 1
  GETTABLEKS R12 R2 K9 ["Core"]
  GETTABLEKS R11 R12 K22 ["Util"]
  GETIMPORT R12 K12 [require]
  GETTABLEKS R14 R11 K23 ["Analytics"]
  GETTABLEKS R13 R14 K23 ["Analytics"]
  CALL R12 1 1
  GETIMPORT R13 K12 [require]
  GETTABLEKS R14 R11 K24 ["AssetConfigConstants"]
  CALL R13 1 1
  GETIMPORT R14 K12 [require]
  GETTABLEKS R15 R11 K25 ["AssetConfigUtil"]
  CALL R14 1 1
  GETIMPORT R15 K12 [require]
  GETTABLEKS R16 R11 K26 ["DebugFlags"]
  CALL R15 1 1
  GETIMPORT R16 K12 [require]
  GETTABLEKS R17 R11 K27 ["getUserId"]
  CALL R16 1 1
  GETTABLEKS R17 R2 K28 ["Packages"]
  GETIMPORT R20 K12 [require]
  GETTABLEKS R21 R17 K29 ["Framework"]
  CALL R20 1 1
  GETTABLEKS R19 R20 K22 ["Util"]
  GETTABLEKS R18 R19 K30 ["Promise"]
  GETIMPORT R19 K12 [require]
  GETTABLEKS R20 R17 K31 ["UGCValidation"]
  CALL R19 1 1
  GETIMPORT R20 K12 [require]
  GETTABLEKS R22 R11 K32 ["SharedFlags"]
  GETTABLEKS R21 R22 K33 ["getFFlagEnableUGCUploadFlowAnalytics"]
  CALL R20 1 1
  GETIMPORT R21 K12 [require]
  GETTABLEKS R23 R11 K32 ["SharedFlags"]
  GETTABLEKS R22 R23 K34 ["getFFlagAddPublishServiceErrorToUploadFailureMsg"]
  CALL R21 1 1
  GETIMPORT R22 K12 [require]
  GETTABLEKS R25 R2 K9 ["Core"]
  GETTABLEKS R24 R25 K35 ["Flags"]
  GETTABLEKS R23 R24 K36 ["getFFlagEnableUGCIndividualAssetUploadAnalytics"]
  CALL R22 1 1
  GETIMPORT R23 K12 [require]
  GETTABLEKS R25 R11 K32 ["SharedFlags"]
  GETTABLEKS R24 R25 K37 ["getFFlagEnableNewToolboxCreationContextErrors"]
  CALL R23 1 1
  GETIMPORT R24 K12 [require]
  GETTABLEKS R26 R11 K32 ["SharedFlags"]
  GETTABLEKS R25 R26 K38 ["getFFlagEnableBodyScaleValidationSupport"]
  CALL R24 1 1
  GETIMPORT R25 K12 [require]
  GETTABLEKS R27 R11 K32 ["SharedFlags"]
  GETTABLEKS R26 R27 K39 ["getFFlagEnableUGCBundleUploadBodyScale"]
  CALL R25 1 1
  GETIMPORT R26 K12 [require]
  GETTABLEKS R28 R11 K32 ["SharedFlags"]
  GETTABLEKS R27 R28 K40 ["getFFlagEnableBodyColorSetUploadSupport"]
  CALL R26 1 1
  GETIMPORT R27 K12 [require]
  GETTABLEKS R28 R11 K41 ["getRobuxMessageToAppend"]
  CALL R27 1 1
  DUPCLOSURE R28 K42 [PROTO_0]
  DUPCLOSURE R29 K43 [PROTO_1]
  DUPCLOSURE R30 K44 [PROTO_2]
  DUPCLOSURE R31 K45 [PROTO_3]
  DUPCLOSURE R32 K46 [PROTO_4]
  DUPCLOSURE R33 K47 [PROTO_5]
  CAPTURE VAL R24
  CAPTURE VAL R26
  CAPTURE VAL R23
  CAPTURE VAL R27
  CAPTURE VAL R20
  CAPTURE VAL R12
  CAPTURE VAL R28
  CAPTURE VAL R15
  CAPTURE VAL R4
  CAPTURE VAL R6
  DUPCLOSURE R34 K48 [PROTO_14]
  CAPTURE VAL R14
  CAPTURE VAL R25
  CAPTURE VAL R26
  CAPTURE VAL R13
  CAPTURE VAL R16
  CAPTURE VAL R15
  CAPTURE VAL R20
  CAPTURE VAL R12
  CAPTURE VAL R19
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R18
  CAPTURE VAL R1
  CAPTURE VAL R22
  CAPTURE VAL R32
  CAPTURE VAL R10
  CAPTURE VAL R4
  CAPTURE VAL R27
  CAPTURE VAL R6
  CAPTURE VAL R21
  CAPTURE VAL R28
  CAPTURE VAL R33
  CAPTURE VAL R5
  RETURN R34 1