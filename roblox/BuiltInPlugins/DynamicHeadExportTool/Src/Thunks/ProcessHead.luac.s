PROTO_0:
  LOADK R5 K0 ["Head"]
  NAMECALL R3 R1 K1 ["FindFirstChild"]
  CALL R3 2 1
  JUMPIFNOT R3 [+5]
  LOADK R6 K2 ["MeshPart"]
  NAMECALL R4 R3 K3 ["IsA"]
  CALL R4 2 1
  JUMPIF R4 [+5]
  GETUPVAL R4 0
  MOVE R5 R0
  LOADK R6 K4 ["Unable to find MeshPart named \"Head\""]
  CALL R4 2 -1
  RETURN R4 -1
  GETIMPORT R4 K7 [Instance.new]
  LOADK R5 K8 ["Folder"]
  CALL R4 1 1
  LOADK R5 K0 ["Head"]
  SETTABLEKS R5 R4 K9 ["Name"]
  GETUPVAL R5 1
  MOVE R7 R4
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K10 ["Tag"]
  NAMECALL R5 R5 K11 ["AddTag"]
  CALL R5 3 0
  NAMECALL R5 R3 K12 ["Clone"]
  CALL R5 1 1
  SETTABLEKS R4 R5 K13 ["Parent"]
  JUMPIFNOT R2 [+5]
  SETTABLEKS R5 R2 K13 ["Parent"]
  LOADK R6 K14 [""]
  SETTABLEKS R6 R5 K15 ["TextureID"]
  LOADK R8 K16 ["AvatarPartScaleType"]
  NAMECALL R6 R5 K1 ["FindFirstChild"]
  CALL R6 2 1
  JUMPIFNOT R6 [+5]
  LOADK R9 K17 ["StringValue"]
  NAMECALL R7 R6 K3 ["IsA"]
  CALL R7 2 1
  JUMPIF R7 [+5]
  GETUPVAL R7 0
  MOVE R8 R0
  LOADK R9 K18 ["Unable to find AvatarPartScaleType"]
  CALL R7 2 -1
  RETURN R7 -1
  LOADK R9 K19 ["FaceCenterAttachment"]
  NAMECALL R7 R5 K1 ["FindFirstChild"]
  CALL R7 2 1
  JUMPIFNOT R7 [+5]
  LOADK R10 K20 ["Attachment"]
  NAMECALL R8 R7 K3 ["IsA"]
  CALL R8 2 1
  JUMPIF R8 [+5]
  GETUPVAL R8 0
  MOVE R9 R0
  LOADK R10 K21 ["Unable to find FaceCenterAttachment"]
  CALL R8 2 -1
  RETURN R8 -1
  LOADK R10 K22 ["FaceFrontAttachment"]
  NAMECALL R8 R5 K1 ["FindFirstChild"]
  CALL R8 2 1
  JUMPIFNOT R8 [+5]
  LOADK R11 K20 ["Attachment"]
  NAMECALL R9 R8 K3 ["IsA"]
  CALL R9 2 1
  JUMPIF R9 [+5]
  GETUPVAL R9 0
  MOVE R10 R0
  LOADK R11 K23 ["Unable to find FaceFrontAttachment"]
  CALL R9 2 -1
  RETURN R9 -1
  LOADK R11 K24 ["HairAttachment"]
  NAMECALL R9 R5 K1 ["FindFirstChild"]
  CALL R9 2 1
  JUMPIFNOT R9 [+5]
  LOADK R12 K20 ["Attachment"]
  NAMECALL R10 R9 K3 ["IsA"]
  CALL R10 2 1
  JUMPIF R10 [+5]
  GETUPVAL R10 0
  MOVE R11 R0
  LOADK R12 K25 ["Unable to find HairAttachment"]
  CALL R10 2 -1
  RETURN R10 -1
  LOADK R12 K26 ["HatAttachment"]
  NAMECALL R10 R5 K1 ["FindFirstChild"]
  CALL R10 2 1
  JUMPIFNOT R10 [+5]
  LOADK R13 K20 ["Attachment"]
  NAMECALL R11 R10 K3 ["IsA"]
  CALL R11 2 1
  JUMPIF R11 [+5]
  GETUPVAL R11 0
  MOVE R12 R0
  LOADK R13 K27 ["Unable to find HatAttachment"]
  CALL R11 2 -1
  RETURN R11 -1
  LOADK R13 K28 ["NeckRigAttachment"]
  NAMECALL R11 R5 K1 ["FindFirstChild"]
  CALL R11 2 1
  JUMPIFNOT R11 [+5]
  LOADK R14 K20 ["Attachment"]
  NAMECALL R12 R11 K3 ["IsA"]
  CALL R12 2 1
  JUMPIF R12 [+5]
  GETUPVAL R12 0
  MOVE R13 R0
  LOADK R14 K29 ["Unable to find NeckRigAttachment"]
  CALL R12 2 -1
  RETURN R12 -1
  LOADK R14 K30 ["WrapTarget"]
  NAMECALL R12 R5 K31 ["FindFirstChildOfClass"]
  CALL R12 2 1
  JUMPIF R12 [+5]
  GETUPVAL R13 0
  MOVE R14 R0
  LOADK R15 K32 ["Unable to find WrapTarget"]
  CALL R13 2 -1
  RETURN R13 -1
  LOADK R15 K33 ["FaceControls"]
  NAMECALL R13 R5 K31 ["FindFirstChildOfClass"]
  CALL R13 2 1
  JUMPIF R13 [+5]
  GETUPVAL R14 0
  MOVE R15 R0
  LOADK R16 K34 ["Unable to find FaceControls"]
  CALL R14 2 -1
  RETURN R14 -1
  NAMECALL R14 R5 K35 ["GetDescendants"]
  CALL R14 1 3
  FORGPREP R14
  LOADK R21 K36 ["Motor6D"]
  NAMECALL R19 R18 K3 ["IsA"]
  CALL R19 2 1
  JUMPIFNOT R19 [+4]
  NAMECALL R19 R18 K37 ["Destroy"]
  CALL R19 1 0
  JUMP [+25]
  LOADK R21 K38 ["Vector3Value"]
  NAMECALL R19 R18 K3 ["IsA"]
  CALL R19 2 1
  JUMPIFNOT R19 [+8]
  GETTABLEKS R19 R18 K9 ["Name"]
  JUMPIFNOTEQKS R19 K39 ["OriginalSize"] [+5]
  NAMECALL R19 R18 K37 ["Destroy"]
  CALL R19 1 0
  JUMP [+12]
  LOADK R21 K38 ["Vector3Value"]
  NAMECALL R19 R18 K3 ["IsA"]
  CALL R19 2 1
  JUMPIFNOT R19 [+7]
  GETTABLEKS R19 R18 K9 ["Name"]
  JUMPIFNOTEQKS R19 K40 ["OriginalPosition"] [+4]
  NAMECALL R19 R18 K37 ["Destroy"]
  CALL R19 1 0
  FORGLOOP R14 2 [-35]
  GETUPVAL R14 3
  SETTABLEKS R14 R4 K13 ["Parent"]
  LOADB R14 1
  RETURN R14 1

PROTO_1:
  LOADK R5 K0 ["Head"]
  NAMECALL R3 R1 K1 ["FindFirstChild"]
  CALL R3 2 1
  JUMPIFNOT R3 [+5]
  LOADK R6 K2 ["MeshPart"]
  NAMECALL R4 R3 K3 ["IsA"]
  CALL R4 2 1
  JUMPIF R4 [+5]
  GETUPVAL R4 0
  MOVE R5 R0
  LOADK R6 K4 ["Unable to find MeshPart named \"Head\""]
  CALL R4 2 -1
  RETURN R4 -1
  GETIMPORT R4 K7 [Instance.new]
  LOADK R5 K8 ["Folder"]
  CALL R4 1 1
  LOADK R5 K9 ["Head_Special"]
  SETTABLEKS R5 R4 K10 ["Name"]
  GETUPVAL R5 1
  MOVE R7 R4
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K11 ["Tag"]
  NAMECALL R5 R5 K12 ["AddTag"]
  CALL R5 3 0
  GETIMPORT R5 K7 [Instance.new]
  LOADK R6 K13 ["SpecialMesh"]
  CALL R5 1 1
  SETTABLEKS R4 R5 K14 ["Parent"]
  GETTABLEKS R6 R3 K15 ["MeshId"]
  SETTABLEKS R6 R5 K15 ["MeshId"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R6 R2 K16 ["ColorMap"]
  SETTABLEKS R6 R5 K17 ["TextureId"]
  JUMP [+4]
  GETTABLEKS R6 R3 K18 ["TextureID"]
  SETTABLEKS R6 R5 K17 ["TextureId"]
  LOADK R8 K19 ["face"]
  NAMECALL R6 R3 K1 ["FindFirstChild"]
  CALL R6 2 1
  JUMPIF R6 [+11]
  LOADK R8 K20 ["Face"]
  NAMECALL R6 R3 K1 ["FindFirstChild"]
  CALL R6 2 1
  JUMPIF R6 [+6]
  GETUPVAL R6 1
  MOVE R8 R5
  LOADK R9 K21 ["NoFace"]
  NAMECALL R6 R6 K12 ["AddTag"]
  CALL R6 3 0
  NAMECALL R6 R3 K22 ["GetChildren"]
  CALL R6 1 3
  FORGPREP R6
  GETTABLEKS R11 R10 K23 ["ClassName"]
  JUMPIFNOTEQKS R11 K24 ["Attachment"] [+15]
  GETIMPORT R11 K7 [Instance.new]
  LOADK R12 K25 ["Vector3Value"]
  CALL R11 1 1
  GETTABLEKS R12 R10 K10 ["Name"]
  SETTABLEKS R12 R11 K10 ["Name"]
  GETTABLEKS R12 R10 K26 ["Position"]
  SETTABLEKS R12 R11 K27 ["Value"]
  SETTABLEKS R5 R11 K14 ["Parent"]
  FORGLOOP R6 2 [-19]
  LOADK R8 K28 ["AvatarPartScaleType"]
  NAMECALL R6 R3 K1 ["FindFirstChild"]
  CALL R6 2 1
  JUMPIFNOT R6 [+5]
  NAMECALL R7 R6 K29 ["Clone"]
  CALL R7 1 1
  SETTABLEKS R5 R7 K14 ["Parent"]
  GETUPVAL R7 3
  SETTABLEKS R7 R4 K14 ["Parent"]
  LOADB R7 1
  RETURN R7 1

PROTO_2:
  NAMECALL R3 R0 K0 ["getState"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K1 ["PluginReducer"]
  GETTABLEKS R1 R2 K2 ["rig"]
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 1
  JUMPIF R3 [+1]
  RETURN R0 0
  GETUPVAL R3 2
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 1
  JUMPIF R3 [+1]
  RETURN R0 0
  RETURN R0 0

PROTO_3:
  DUPCLOSURE R0 K0 [PROTO_2]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["DynamicHeadExportTool"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["Workspace"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K5 [game]
  LOADK R4 K8 ["CollectionService"]
  NAMECALL R2 R2 K7 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K10 [require]
  GETTABLEKS R5 R0 K11 ["Src"]
  GETTABLEKS R4 R5 K12 ["Constants"]
  CALL R3 1 1
  GETIMPORT R4 K10 [require]
  GETTABLEKS R7 R0 K11 ["Src"]
  GETTABLEKS R6 R7 K13 ["Util"]
  GETTABLEKS R5 R6 K14 ["createSurfaceAppearance"]
  CALL R4 1 1
  GETIMPORT R5 K10 [require]
  GETTABLEKS R8 R0 K11 ["Src"]
  GETTABLEKS R7 R8 K13 ["Util"]
  GETTABLEKS R6 R7 K15 ["fail"]
  CALL R5 1 1
  DUPCLOSURE R6 K16 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R1
  DUPCLOSURE R7 K17 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R1
  DUPCLOSURE R8 K18 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R7
  RETURN R8 1