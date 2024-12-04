PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Avatar"]
  GETTABLEKS R0 R1 K1 ["WorldModel"]
  NAMECALL R0 R0 K2 ["GetBoundingBox"]
  CALL R0 1 2
  DUPTABLE R2 K5 [{"CFrame", "Size"}]
  SETTABLEKS R0 R2 K3 ["CFrame"]
  SETTABLEKS R1 R2 K4 ["Size"]
  RETURN R2 1

PROTO_1:
  NEWTABLE R1 0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Avatar"]
  GETTABLEKS R2 R3 K1 ["WorldModel"]
  NAMECALL R2 R2 K2 ["GetChildren"]
  CALL R2 1 3
  FORGPREP R2
  LOADK R9 K3 ["MeshPart"]
  NAMECALL R7 R6 K4 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+3]
  GETTABLEKS R7 R6 K5 ["Name"]
  SETTABLE R6 R1 R7
  FORGLOOP R2 2 [-9]
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIF R2 [+6]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K6 ["calculateScaleToValidateBoundsAsync"]
  MOVE R3 R1
  CALL R2 1 -1
  RETURN R2 -1
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K7 ["current"]
  JUMPIFEQKNIL R2 [+10]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K8 ["isPreprocessDataCached"]
  MOVE R3 R1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K7 ["current"]
  CALL R2 2 1
  JUMPIF R2 [+25]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K9 ["preprocessDataAsync"]
  MOVE R3 R1
  CALL R2 1 1
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K7 ["current"]
  JUMPIFEQ R3 R0 [+3]
  LOADNIL R3
  RETURN R3 1
  GETTABLEKS R3 R2 K10 ["ok"]
  JUMPIFNOT R3 [+6]
  GETUPVAL R3 3
  GETTABLEKS R4 R2 K11 ["cache"]
  SETTABLEKS R4 R3 K7 ["current"]
  JUMP [+4]
  GETUPVAL R3 3
  LOADNIL R4
  SETTABLEKS R4 R3 K7 ["current"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K6 ["calculateScaleToValidateBoundsAsync"]
  MOVE R3 R1
  LOADNIL R4
  LOADNIL R5
  LOADNIL R6
  LOADNIL R7
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K7 ["current"]
  CALL R2 6 1
  RETURN R2 1

PROTO_2:
  LOADK R4 K0 ["BasePart"]
  NAMECALL R2 R0 K1 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+2]
  JUMPIFEQKS R1 K2 ["Size"] [+3]
  JUMPIFNOTEQKS R1 K3 ["CFrame"] [+5]
  GETUPVAL R2 0
  GETUPVAL R3 1
  CALL R3 0 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["watchForChanges"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["Avatar"]
  GETTABLEKS R1 R2 K2 ["WorldModel"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CALL R0 2 -1
  RETURN R0 -1

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 1
  GETUPVAL R1 2
  JUMPIFNOT R1 [+3]
  GETUPVAL R1 3
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  LOADB R0 0
  SETUPVAL R0 0
  GETUPVAL R0 1
  CALL R0 0 1
  JUMPIF R0 [+4]
  GETIMPORT R0 K2 [task.cancel]
  GETUPVAL R1 2
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  LOADNIL R1
  CALL R0 1 0
  LOADNIL R0
  GETUPVAL R1 1
  CALL R1 0 1
  JUMPIFNOT R1 [+7]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K1 ["current"]
  ADDK R0 R1 K0 [1]
  GETUPVAL R1 2
  SETTABLEKS R0 R1 K1 ["current"]
  LOADB R1 1
  GETIMPORT R2 K4 [task.spawn]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U3
  CAPTURE REF R0
  CAPTURE REF R1
  CAPTURE UPVAL U0
  CALL R2 1 1
  NEWCLOSURE R3 P1
  CAPTURE REF R1
  CAPTURE UPVAL U1
  CAPTURE VAL R2
  CLOSEUPVALS R0
  RETURN R3 1

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["coversMin"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["Size"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["sizeBounds"]
  GETTABLEKS R2 R3 K3 ["minSize"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["containsMax"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["Size"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["sizeBounds"]
  GETTABLEKS R2 R3 K3 ["maxSize"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_9:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["ContextServices"]
  GETTABLEKS R1 R2 K1 ["Localization"]
  NAMECALL R1 R1 K2 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["useContext"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K4 ["Context"]
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["useCallback"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  NEWTABLE R5 0 3
  GETTABLEKS R7 R0 K6 ["Avatar"]
  GETTABLEKS R6 R7 K7 ["WorldModel"]
  GETTABLEKS R8 R0 K6 ["Avatar"]
  GETTABLEKS R7 R8 K8 ["WorldModelScale"]
  GETTABLEKS R9 R0 K6 ["Avatar"]
  GETTABLEKS R8 R9 K9 ["LatestWorldModelHash"]
  SETLIST R5 R6 3 [1]
  CALL R3 2 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K10 ["useRef"]
  LOADNIL R5
  CALL R4 1 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K10 ["useRef"]
  LOADN R6 0
  CALL R5 1 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["useCallback"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R5
  NEWTABLE R8 0 3
  GETTABLEKS R10 R0 K6 ["Avatar"]
  GETTABLEKS R9 R10 K7 ["WorldModel"]
  GETTABLEKS R11 R0 K6 ["Avatar"]
  GETTABLEKS R10 R11 K8 ["WorldModelScale"]
  GETTABLEKS R12 R0 K6 ["Avatar"]
  GETTABLEKS R11 R12 K9 ["LatestWorldModelHash"]
  SETLIST R8 R9 3 [1]
  CALL R6 2 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K11 ["useState"]
  LOADNIL R8
  CALL R7 1 2
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K11 ["useState"]
  MOVE R10 R3
  CALL R9 1 2
  GETUPVAL R11 4
  DUPTABLE R12 K13 [{"Avatar", "ValidationResults"}]
  GETTABLEKS R13 R0 K6 ["Avatar"]
  SETTABLEKS R13 R12 K6 ["Avatar"]
  SETTABLEKS R7 R12 K12 ["ValidationResults"]
  CALL R11 1 1
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K14 ["useEffect"]
  NEWCLOSURE R13 P2
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  CAPTURE VAL R10
  CAPTURE VAL R3
  NEWTABLE R14 0 2
  GETTABLEKS R16 R0 K6 ["Avatar"]
  GETTABLEKS R15 R16 K7 ["WorldModel"]
  MOVE R16 R3
  SETLIST R14 R15 2 [1]
  CALL R12 2 0
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K14 ["useEffect"]
  NEWCLOSURE R13 P3
  CAPTURE VAL R8
  CAPTURE UPVAL U3
  CAPTURE VAL R5
  CAPTURE VAL R6
  NEWTABLE R14 0 1
  MOVE R15 R6
  SETLIST R14 R15 1 [1]
  CALL R12 2 0
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K15 ["useMemo"]
  NEWCLOSURE R13 P4
  CAPTURE UPVAL U6
  CAPTURE VAL R9
  CAPTURE VAL R11
  NEWTABLE R14 0 2
  GETTABLEKS R16 R11 K16 ["sizeBounds"]
  GETTABLEKS R15 R16 K17 ["minSize"]
  GETTABLEKS R16 R9 K18 ["Size"]
  SETLIST R14 R15 2 [1]
  CALL R12 2 1
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K15 ["useMemo"]
  NEWCLOSURE R14 P5
  CAPTURE UPVAL U6
  CAPTURE VAL R9
  CAPTURE VAL R11
  NEWTABLE R15 0 2
  GETTABLEKS R17 R11 K16 ["sizeBounds"]
  GETTABLEKS R16 R17 K19 ["maxSize"]
  GETTABLEKS R17 R9 K18 ["Size"]
  SETLIST R15 R16 2 [1]
  CALL R13 2 1
  AND R14 R12 R13
  GETUPVAL R15 7
  DUPTABLE R16 K21 [{"Avatar", "Enabled"}]
  GETTABLEKS R17 R0 K6 ["Avatar"]
  SETTABLEKS R17 R16 K6 ["Avatar"]
  SETTABLEKS R14 R16 K20 ["Enabled"]
  CALL R15 1 0
  GETUPVAL R15 8
  CALL R15 0 1
  GETIMPORT R16 K25 [Enum.RibbonTool.Scale]
  JUMPIFEQ R15 R16 [+3]
  LOADNIL R16
  RETURN R16 1
  JUMPIFNOTEQKNIL R7 [+2]
  LOADB R16 0 +1
  LOADB R16 1
  GETUPVAL R18 9
  GETTABLEKS R17 R18 K26 ["createPortal"]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K27 ["createElement"]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K28 ["Fragment"]
  NEWTABLE R20 0 0
  DUPTABLE R21 K33 [{"MinBoundingBox", "MaxBoundingBox", "Ruler", "InvalidPartsHint"}]
  JUMPIFNOT R16 [+29]
  JUMPIF R14 [+28]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K27 ["createElement"]
  GETUPVAL R23 10
  DUPTABLE R24 K39 [{"BoundingBoxCFrame", "BoundingBoxSize", "IsValid", "Inside", "AllValid", "Size"}]
  GETTABLEKS R25 R9 K40 ["CFrame"]
  SETTABLEKS R25 R24 K34 ["BoundingBoxCFrame"]
  GETTABLEKS R25 R9 K18 ["Size"]
  SETTABLEKS R25 R24 K35 ["BoundingBoxSize"]
  SETTABLEKS R12 R24 K36 ["IsValid"]
  LOADB R25 1
  SETTABLEKS R25 R24 K37 ["Inside"]
  SETTABLEKS R14 R24 K38 ["AllValid"]
  GETTABLEKS R26 R11 K16 ["sizeBounds"]
  GETTABLEKS R25 R26 K17 ["minSize"]
  SETTABLEKS R25 R24 K18 ["Size"]
  CALL R22 2 1
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K29 ["MinBoundingBox"]
  JUMPIFNOT R16 [+29]
  JUMPIF R14 [+28]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K27 ["createElement"]
  GETUPVAL R23 10
  DUPTABLE R24 K39 [{"BoundingBoxCFrame", "BoundingBoxSize", "IsValid", "Inside", "AllValid", "Size"}]
  GETTABLEKS R25 R9 K40 ["CFrame"]
  SETTABLEKS R25 R24 K34 ["BoundingBoxCFrame"]
  GETTABLEKS R25 R9 K18 ["Size"]
  SETTABLEKS R25 R24 K35 ["BoundingBoxSize"]
  SETTABLEKS R13 R24 K36 ["IsValid"]
  LOADB R25 0
  SETTABLEKS R25 R24 K37 ["Inside"]
  SETTABLEKS R14 R24 K38 ["AllValid"]
  GETTABLEKS R26 R11 K16 ["sizeBounds"]
  GETTABLEKS R25 R26 K19 ["maxSize"]
  SETTABLEKS R25 R24 K18 ["Size"]
  CALL R22 2 1
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K30 ["MaxBoundingBox"]
  JUMPIFNOT R16 [+27]
  JUMPIF R14 [+26]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K27 ["createElement"]
  GETUPVAL R23 11
  DUPTABLE R24 K43 [{"ItemName", "Size", "CFrame", "SizeBounds"}]
  LOADK R27 K44 ["AvatarSizeRuler"]
  LOADK R28 K45 ["AvatarLabel"]
  NAMECALL R25 R1 K46 ["getText"]
  CALL R25 3 1
  SETTABLEKS R25 R24 K41 ["ItemName"]
  GETTABLEKS R25 R9 K18 ["Size"]
  SETTABLEKS R25 R24 K18 ["Size"]
  GETTABLEKS R25 R9 K40 ["CFrame"]
  SETTABLEKS R25 R24 K40 ["CFrame"]
  GETTABLEKS R25 R11 K16 ["sizeBounds"]
  SETTABLEKS R25 R24 K42 ["SizeBounds"]
  CALL R22 2 1
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K31 ["Ruler"]
  JUMPIFNOT R16 [+18]
  JUMPIFNOT R14 [+17]
  GETIMPORT R23 K48 [next]
  GETTABLEKS R24 R11 K49 ["invalidBodyParts"]
  CALL R23 1 1
  JUMPIFNOT R23 [+11]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K27 ["createElement"]
  GETUPVAL R23 12
  DUPTABLE R24 K50 [{"invalidBodyParts"}]
  GETTABLEKS R25 R11 K49 ["invalidBodyParts"]
  SETTABLEKS R25 R24 K49 ["invalidBodyParts"]
  CALL R22 2 1
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K32 ["InvalidPartsHint"]
  CALL R18 3 1
  GETTABLEKS R19 R0 K51 ["Container"]
  JUMPIF R19 [+1]
  GETUPVAL R19 13
  LOADK R20 K52 ["AvatarSizingHint"]
  CALL R17 3 -1
  RETURN R17 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["CoreGui"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["Components"]
  GETTABLEKS R4 R5 K12 ["Sizing"]
  GETTABLEKS R3 R4 K13 ["AvatarSizeRulerRender"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Components"]
  GETTABLEKS R5 R6 K12 ["Sizing"]
  GETTABLEKS R4 R5 K14 ["AvatarSizeSpecificationUtils"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["Components"]
  GETTABLEKS R6 R7 K12 ["Sizing"]
  GETTABLEKS R5 R6 K15 ["AvatarSizingBoundingBox"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K16 ["Util"]
  GETTABLEKS R6 R7 K17 ["DataModelUtils"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R8 R0 K18 ["Packages"]
  GETTABLEKS R7 R8 K19 ["Framework"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R11 R0 K10 ["Src"]
  GETTABLEKS R10 R11 K11 ["Components"]
  GETTABLEKS R9 R10 K12 ["Sizing"]
  GETTABLEKS R8 R9 K20 ["InvalidPartsHint"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R10 R0 K18 ["Packages"]
  GETTABLEKS R9 R10 K21 ["React"]
  CALL R8 1 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R11 R0 K18 ["Packages"]
  GETTABLEKS R10 R11 K22 ["ReactRoblox"]
  CALL R9 1 1
  GETIMPORT R10 K9 [require]
  GETTABLEKS R12 R0 K10 ["Src"]
  GETTABLEKS R11 R12 K23 ["Types"]
  CALL R10 1 1
  GETIMPORT R11 K9 [require]
  GETTABLEKS R14 R0 K10 ["Src"]
  GETTABLEKS R13 R14 K11 ["Components"]
  GETTABLEKS R12 R13 K24 ["UGCValidationContext"]
  CALL R11 1 1
  GETIMPORT R12 K9 [require]
  GETTABLEKS R15 R0 K10 ["Src"]
  GETTABLEKS R14 R15 K25 ["Flags"]
  GETTABLEKS R13 R14 K26 ["getFFlagUGCValidateUseDataCache"]
  CALL R12 1 1
  GETIMPORT R13 K9 [require]
  GETTABLEKS R17 R0 K10 ["Src"]
  GETTABLEKS R16 R17 K11 ["Components"]
  GETTABLEKS R15 R16 K12 ["Sizing"]
  GETTABLEKS R14 R15 K27 ["useAvatarSizeState"]
  CALL R13 1 1
  GETIMPORT R14 K9 [require]
  GETTABLEKS R18 R0 K10 ["Src"]
  GETTABLEKS R17 R18 K11 ["Components"]
  GETTABLEKS R16 R17 K12 ["Sizing"]
  GETTABLEKS R15 R16 K28 ["useResetAvatarValuesToScale"]
  CALL R14 1 1
  GETIMPORT R15 K9 [require]
  GETTABLEKS R19 R0 K10 ["Src"]
  GETTABLEKS R18 R19 K11 ["Components"]
  GETTABLEKS R17 R18 K12 ["Sizing"]
  GETTABLEKS R16 R17 K29 ["useSelectedRibbonTool"]
  CALL R15 1 1
  DUPCLOSURE R16 K30 [PROTO_9]
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R9
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R1
  RETURN R16 1