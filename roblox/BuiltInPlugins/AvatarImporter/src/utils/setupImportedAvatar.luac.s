PROTO_0:
  GETUPVAL R1 0
  LOADK R3 K0 ["Camera"]
  NAMECALL R1 R1 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFNOT R1 [+24]
  GETIMPORT R2 K4 [Ray.new]
  GETTABLEKS R4 R1 K5 ["CFrame"]
  GETTABLEKS R3 R4 K6 ["p"]
  GETTABLEKS R6 R1 K5 ["CFrame"]
  GETTABLEKS R5 R6 K7 ["lookVector"]
  MUL R4 R5 R0
  CALL R2 2 1
  GETUPVAL R3 0
  MOVE R5 R2
  NAMECALL R3 R3 K8 ["FindPartOnRay"]
  CALL R3 2 2
  GETIMPORT R5 K9 [CFrame.new]
  MOVE R6 R4
  CALL R5 1 1
  SETTABLEKS R5 R1 K10 ["Focus"]
  RETURN R4 1
  LOADK R2 K11 [{0, 5.2, 0}]
  RETURN R2 1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["SCALE_VALUES_DEFAULTS"]
  GETTABLE R2 R3 R1
  JUMPIF R2 [+1]
  RETURN R0 0
  LOADB R3 0
  SETTABLEKS R3 R0 K1 ["AutomaticScalingEnabled"]
  GETIMPORT R3 K3 [pairs]
  MOVE R4 R2
  CALL R3 1 3
  FORGPREP_NEXT R3
  MOVE R10 R6
  NAMECALL R8 R0 K4 ["FindFirstChild"]
  CALL R8 2 1
  JUMPIF R8 [+11]
  GETIMPORT R9 K7 [Instance.new]
  LOADK R10 K8 ["NumberValue"]
  CALL R9 1 1
  MOVE R8 R9
  SETTABLEKS R6 R8 K9 ["Name"]
  SETTABLEKS R7 R8 K10 ["Value"]
  SETTABLEKS R0 R8 K11 ["Parent"]
  FORGLOOP R3 2 [-17]
  LOADB R3 1
  SETTABLEKS R3 R0 K1 ["AutomaticScalingEnabled"]
  RETURN R0 0

PROTO_2:
  LOADK R3 K0 ["Head"]
  NAMECALL R1 R0 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFNOT R1 [+22]
  GETTABLEKS R2 R1 K2 ["TextureID"]
  JUMPIFNOTEQKS R2 K3 [""] [+19]
  LOADK R4 K4 ["FaceControls"]
  NAMECALL R2 R1 K5 ["FindFirstChildWhichIsA"]
  CALL R2 2 1
  JUMPIFNOTEQKNIL R2 [+13]
  GETIMPORT R2 K8 [Instance.new]
  LOADK R3 K9 ["Decal"]
  CALL R2 1 1
  LOADK R3 K10 ["face"]
  SETTABLEKS R3 R2 K11 ["Name"]
  LOADK R3 K12 ["rbxasset://textures/face.png"]
  SETTABLEKS R3 R2 K13 ["Texture"]
  SETTABLEKS R1 R2 K14 ["Parent"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["TYPE_TO_SCALE"]
  GETTABLE R2 R3 R1
  JUMPIFNOT R2 [+25]
  GETIMPORT R3 K2 [pairs]
  NAMECALL R4 R0 K3 ["GetChildren"]
  CALL R4 1 -1
  CALL R3 -1 3
  FORGPREP_NEXT R3
  LOADK R10 K4 ["MeshPart"]
  NAMECALL R8 R7 K5 ["IsA"]
  CALL R8 2 1
  JUMPIFNOT R8 [+11]
  GETIMPORT R8 K8 [Instance.new]
  LOADK R9 K9 ["StringValue"]
  CALL R8 1 1
  LOADK R9 K10 ["AvatarPartScaleType"]
  SETTABLEKS R9 R8 K11 ["Name"]
  SETTABLEKS R2 R8 K12 ["Value"]
  SETTABLEKS R7 R8 K13 ["Parent"]
  FORGLOOP R3 2 [-17]
  RETURN R0 0

PROTO_4:
  LOADK R4 K0 ["Humanoid"]
  NAMECALL R2 R0 K1 ["FindFirstChildOfClass"]
  CALL R2 2 1
  JUMPIF R2 [+7]
  GETUPVAL R5 0
  LOADN R6 10
  CALL R5 1 1
  NAMECALL R3 R0 K2 ["MoveTo"]
  CALL R3 2 0
  RETURN R0 0
  LOADK R4 K3 ["Imported"]
  MOVE R5 R1
  LOADK R6 K4 ["Rig"]
  CONCAT R3 R4 R6
  SETTABLEKS R3 R0 K5 ["Name"]
  LOADK R5 K6 ["Head"]
  NAMECALL R3 R0 K7 ["FindFirstChild"]
  CALL R3 2 1
  JUMPIFNOT R3 [+22]
  GETTABLEKS R4 R3 K8 ["TextureID"]
  JUMPIFNOTEQKS R4 K9 [""] [+19]
  LOADK R6 K10 ["FaceControls"]
  NAMECALL R4 R3 K11 ["FindFirstChildWhichIsA"]
  CALL R4 2 1
  JUMPIFNOTEQKNIL R4 [+13]
  GETIMPORT R4 K14 [Instance.new]
  LOADK R5 K15 ["Decal"]
  CALL R4 1 1
  LOADK R5 K16 ["face"]
  SETTABLEKS R5 R4 K5 ["Name"]
  LOADK R5 K17 ["rbxasset://textures/face.png"]
  SETTABLEKS R5 R4 K18 ["Texture"]
  SETTABLEKS R3 R4 K19 ["Parent"]
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 0
  GETUPVAL R3 2
  MOVE R4 R2
  MOVE R5 R1
  CALL R3 2 0
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K20 ["AVATAR_TYPE"]
  GETTABLEKS R3 R4 K21 ["CUSTOM"]
  JUMPIFNOTEQ R1 R3 [+4]
  LOADN R3 2
  SETTABLEKS R3 R2 K22 ["HipHeight"]
  GETUPVAL R5 0
  LOADN R6 10
  CALL R5 1 1
  NAMECALL R3 R0 K2 ["MoveTo"]
  CALL R3 2 0
  GETUPVAL R3 4
  NEWTABLE R5 0 1
  MOVE R6 R0
  SETLIST R5 R6 1 [1]
  NAMECALL R3 R3 K23 ["Set"]
  CALL R3 2 0
  GETUPVAL R3 5
  JUMPIFNOT R3 [+5]
  GETUPVAL R3 5
  MOVE R5 R0
  NAMECALL R3 R3 K24 ["ConfigureImportedAvatar"]
  CALL R3 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["src"]
  GETTABLEKS R2 R3 K6 ["Constants"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["src"]
  GETTABLEKS R3 R4 K7 ["Globals"]
  CALL R2 1 1
  LOADNIL R3
  GETIMPORT R4 K9 [game]
  LOADK R6 K10 ["CoreGui"]
  NAMECALL R4 R4 K11 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K14 [Instance.new]
  LOADK R6 K15 ["ScreenGui"]
  CALL R5 1 1
  LOADK R6 K16 ["AvatarImporterConfigurer"]
  SETTABLEKS R6 R5 K17 ["Name"]
  SETTABLEKS R4 R5 K2 ["Parent"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K5 ["src"]
  GETTABLEKS R8 R9 K18 ["configurer"]
  GETTABLEKS R7 R8 K19 ["Configurer"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K13 ["new"]
  MOVE R8 R5
  CALL R7 1 1
  MOVE R3 R7
  GETTABLEKS R9 R2 K20 ["plugin"]
  GETTABLEKS R10 R2 K21 ["toolbar"]
  NAMECALL R7 R3 K22 ["createButtons"]
  CALL R7 3 0
  GETIMPORT R7 K9 [game]
  LOADK R9 K23 ["Workspace"]
  NAMECALL R7 R7 K11 ["GetService"]
  CALL R7 2 1
  GETIMPORT R8 K9 [game]
  LOADK R10 K24 ["Selection"]
  NAMECALL R8 R8 K11 ["GetService"]
  CALL R8 2 1
  DUPCLOSURE R9 K25 [PROTO_0]
  CAPTURE VAL R7
  DUPCLOSURE R10 K26 [PROTO_1]
  CAPTURE VAL R1
  DUPCLOSURE R11 K27 [PROTO_2]
  DUPCLOSURE R12 K28 [PROTO_3]
  CAPTURE VAL R1
  NEWCLOSURE R13 P4
  CAPTURE VAL R9
  CAPTURE VAL R12
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE REF R3
  CLOSEUPVALS R3
  RETURN R13 1