PROTO_0:
  GETUPVAL R1 0
  GETIMPORT R3 K3 [Enum.StudioDataModelType.Edit]
  JUMPIFEQ R0 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["requestAssetCollaborators"]
  GETUPVAL R1 1
  CALL R0 1 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K1 ["connectOnDmChange"]
  GETUPVAL R1 1
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U2
  CALL R0 2 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["connectOnUpdateCollaborators"]
  GETUPVAL R2 1
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U3
  CALL R1 2 1
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE VAL R1
  RETURN R2 1

PROTO_4:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  NAMECALL R1 R1 K1 ["get"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["useState"]
  LOADB R3 1
  CALL R2 1 2
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["useState"]
  NEWTABLE R5 0 0
  CALL R4 1 2
  LENGTH R7 R4
  LOADN R8 4
  JUMPIFLT R8 R7 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K3 ["useEffect"]
  NEWCLOSURE R8 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R5
  NEWTABLE R9 0 0
  CALL R7 2 0
  JUMPIF R2 [+2]
  LOADNIL R7
  RETURN R7 1
  NEWTABLE R7 0 0
  MOVE R8 R4
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  LOADN R13 4
  JUMPIFLT R13 R11 [+59]
  GETTABLEKS R13 R12 K4 ["UserId"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K5 ["createElement"]
  LOADK R15 K6 ["Frame"]
  NEWTABLE R16 1 0
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K7 ["Tag"]
  GETUPVAL R18 3
  JUMPIFNOT R6 [+2]
  LOADK R19 K8 ["ThumbnailOverlap"]
  JUMP [+1]
  LOADK R19 K9 ["X-Fit"]
  LOADK R20 K10 ["Role-Surface"]
  CALL R18 2 1
  SETTABLE R18 R16 R17
  DUPTABLE R17 K12 [{"CollaboratorThumbnail"}]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K5 ["createElement"]
  GETUPVAL R19 4
  NEWTABLE R20 8 0
  GETTABLEKS R21 R12 K4 ["UserId"]
  SETTABLEKS R21 R20 K4 ["UserId"]
  GETUPVAL R22 5
  JUMPIFNOT R22 [+3]
  GETTABLEKS R21 R12 K13 ["Username"]
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K13 ["Username"]
  GETTABLEKS R21 R12 K14 ["IsIdle"]
  SETTABLEKS R21 R20 K14 ["IsIdle"]
  GETTABLEKS R21 R12 K15 ["CollaboratorColor3"]
  SETTABLEKS R21 R20 K16 ["RingColor"]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K7 ["Tag"]
  LOADK R22 K17 ["RibbonElement"]
  SETTABLE R22 R20 R21
  CALL R18 2 1
  SETTABLEKS R18 R17 K11 ["CollaboratorThumbnail"]
  CALL R14 3 1
  SETTABLE R14 R7 R13
  FORGLOOP R8 2 [-60]
  JUMPIFNOT R6 [+41]
  MOVE R9 R7
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K5 ["createElement"]
  LOADK R11 K6 ["Frame"]
  NEWTABLE R12 1 0
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K7 ["Tag"]
  LOADK R14 K18 ["Component-OverflowBubble RibbonElement Role-Surface"]
  SETTABLE R14 R12 R13
  DUPTABLE R13 K20 [{"Text"}]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K5 ["createElement"]
  LOADK R15 K21 ["TextLabel"]
  NEWTABLE R16 2 0
  LOADK R18 K22 ["+%*"]
  LENGTH R21 R4
  SUBK R20 R21 K23 [4]
  NAMECALL R18 R18 K24 ["format"]
  CALL R18 2 1
  MOVE R17 R18
  SETTABLEKS R17 R16 K19 ["Text"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K7 ["Tag"]
  LOADK R18 K25 ["X-AnchorCenter Role-Surface X-Fit"]
  SETTABLE R18 R16 R17
  CALL R14 2 1
  SETTABLEKS R14 R13 K19 ["Text"]
  CALL R10 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R8 K28 [table.insert]
  CALL R8 -1 0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K5 ["createElement"]
  LOADK R9 K6 ["Frame"]
  NEWTABLE R10 2 0
  GETTABLEKS R11 R0 K29 ["LayoutOrder"]
  SETTABLEKS R11 R10 K29 ["LayoutOrder"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K7 ["Tag"]
  LOADK R12 K30 ["Component-CollaboratorRibbon X-RowSpace100 X-Middle X-Fit Role-Surface"]
  SETTABLE R12 R10 R11
  DUPTABLE R11 K33 [{"CollaboratorContainer", "CollaboratorButton"}]
  LENGTH R13 R4
  LOADN R14 0
  JUMPIFNOTLT R14 R13 [+32]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K5 ["createElement"]
  LOADK R13 K34 ["TextButton"]
  NEWTABLE R14 4 0
  LOADK R15 K35 [""]
  SETTABLEKS R15 R14 K19 ["Text"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K36 ["Event"]
  GETTABLEKS R15 R16 K37 ["Activated"]
  GETTABLEKS R16 R0 K38 ["OnClick"]
  SETTABLE R16 R14 R15
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K7 ["Tag"]
  GETUPVAL R16 3
  LOADK R17 K39 ["X-Middle X-Fit Role-Surface"]
  JUMPIFNOT R6 [+2]
  LOADK R18 K40 ["X-Row"]
  JUMP [+1]
  LOADK R18 K41 ["X-RowSpace50"]
  CALL R16 2 1
  SETTABLE R16 R14 R15
  MOVE R15 R7
  CALL R12 3 1
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K31 ["CollaboratorContainer"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K5 ["createElement"]
  GETUPVAL R13 6
  DUPTABLE R14 K43 [{"IsTeamCreateOn"}]
  LENGTH R16 R4
  LOADN R17 0
  JUMPIFLT R17 R16 [+2]
  LOADB R15 0 +1
  LOADB R15 1
  SETTABLEKS R15 R14 K42 ["IsTeamCreateOn"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K32 ["CollaboratorButton"]
  CALL R8 3 -1
  RETURN R8 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Ribbon"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K9 ["Styling"]
  GETTABLEKS R3 R4 K10 ["joinTags"]
  GETTABLEKS R4 R2 K11 ["ContextServices"]
  GETTABLEKS R5 R4 K12 ["Plugin"]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K13 ["Parent"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R11 R0 K14 ["Src"]
  GETTABLEKS R10 R11 K15 ["Util"]
  GETTABLEKS R9 R10 K16 ["SocialPresence"]
  GETTABLEKS R8 R9 K17 ["SocialPresenceDmBridge"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R6 K18 ["CollaboratorThumbnail"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R6 K19 ["AddCollaboratorButton"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K14 ["Src"]
  GETTABLEKS R12 R13 K20 ["SharedFlags"]
  GETTABLEKS R11 R12 K21 ["getFFlagAddUsernameToRibbonAvatars"]
  CALL R10 1 1
  CALL R10 0 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R0 K14 ["Src"]
  GETTABLEKS R12 R13 K22 ["Types"]
  CALL R11 1 1
  DUPCLOSURE R12 K23 [PROTO_4]
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R9
  RETURN R12 1
