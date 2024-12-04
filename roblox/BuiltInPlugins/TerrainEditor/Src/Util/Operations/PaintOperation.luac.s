PROTO_0:
  GETTABLEKS R3 R0 K0 ["Payload"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["BrushSettings"]
  GETTABLE R2 R3 R4
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["BrushSize"]
  GETTABLE R3 R2 R4
  GETTABLEKS R4 R3 K3 ["Height"]
  GETTABLEKS R5 R3 K4 ["Size"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["BrushShape"]
  GETTABLE R6 R2 R7
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K6 ["State"]
  GETTABLE R7 R2 R8
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K7 ["Sphere"]
  JUMPIFNOTEQ R6 R10 [+3]
  MOVE R9 R5
  JUMP [+1]
  MOVE R9 R4
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K8 ["VoxelResolution"]
  MUL R8 R9 R10
  GETUPVAL R9 4
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K9 ["PivotPosition"]
  GETTABLE R10 R2 R11
  GETTABLEKS R11 R7 K10 ["Position"]
  MOVE R12 R8
  CALL R9 3 1
  DUPTABLE R10 K11 [{"Position"}]
  SETTABLEKS R9 R10 K10 ["Position"]
  SETTABLEKS R10 R0 K6 ["State"]
  RETURN R0 0

PROTO_1:
  GETTABLEKS R3 R0 K0 ["State"]
  FASTCALL2K ASSERT R3 K1 [+4]
  LOADK R4 K1 ["Tried to step without starting first."]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["ProfileTools"]
  CALL R2 0 1
  JUMPIFNOT R2 [+4]
  GETIMPORT R2 K7 [debug.profilebegin]
  LOADK R3 K8 ["Paint Operation"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K0 ["State"]
  GETTABLEKS R4 R0 K9 ["Payload"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K10 ["BrushSettings"]
  GETTABLE R3 R4 R5
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K11 ["BrushSize"]
  GETTABLE R4 R3 R5
  GETTABLEKS R5 R4 K12 ["Height"]
  GETTABLEKS R6 R4 K13 ["Size"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K14 ["BrushShape"]
  GETTABLE R7 R3 R8
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K0 ["State"]
  GETTABLE R8 R3 R9
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K15 ["IgnoreWater"]
  GETTABLE R9 R3 R10
  GETTABLEKS R11 R0 K9 ["Payload"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K16 ["MaterialSettings"]
  GETTABLE R10 R11 R12
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K17 ["MaterialMode"]
  GETTABLE R11 R10 R12
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K18 ["SourceMaterial"]
  GETTABLE R12 R10 R13
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K19 ["TargetMaterial"]
  GETTABLE R13 R10 R14
  GETUPVAL R14 4
  CALL R14 0 1
  JUMPIFNOT R14 [+12]
  GETTABLEKS R14 R8 K20 ["Material"]
  GETIMPORT R15 K23 [Enum.Material.Air]
  JUMPIFNOTEQ R14 R15 [+7]
  NAMECALL R14 R1 K24 ["skipBudget"]
  CALL R14 1 0
  LOADB R14 1
  LOADN R15 0
  RETURN R14 2
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K25 ["Sphere"]
  JUMPIFNOTEQ R7 R16 [+3]
  MOVE R15 R6
  JUMP [+1]
  MOVE R15 R5
  GETUPVAL R16 6
  MUL R14 R15 R16
  GETUPVAL R16 6
  MUL R15 R6 R16
  MULK R16 R15 K26 [0.5]
  GETUPVAL R17 7
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K27 ["PivotPosition"]
  GETTABLE R18 R3 R19
  GETTABLEKS R19 R8 K28 ["Position"]
  MOVE R20 R14
  CALL R17 3 1
  GETUPVAL R18 8
  GETTABLEKS R19 R2 K28 ["Position"]
  MOVE R20 R17
  MOVE R21 R16
  CALL R18 3 1
  LENGTH R20 R18
  GETTABLE R19 R18 R20
  SETTABLEKS R19 R2 K28 ["Position"]
  GETUPVAL R21 9
  GETTABLEKS R20 R21 K29 ["Paint"]
  JUMPIFEQ R11 R20 [+2]
  LOADB R19 0 +1
  LOADB R19 1
  GETUPVAL R22 9
  GETTABLEKS R21 R22 K30 ["Replace"]
  JUMPIFEQ R11 R21 [+2]
  LOADB R20 0 +1
  LOADB R20 1
  MOVE R21 R18
  LOADNIL R22
  LOADNIL R23
  FORGPREP R21
  GETTABLEKS R26 R2 K31 ["LastPosition"]
  JUMPIFNOTEQ R25 R26 [+15]
  NAMECALL R26 R1 K24 ["skipBudget"]
  CALL R26 1 0
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K4 ["ProfileTools"]
  CALL R26 0 1
  JUMPIFNOT R26 [+3]
  GETIMPORT R26 K33 [debug.profileend]
  CALL R26 0 0
  LOADB R26 1
  LOADN R27 0
  RETURN R26 2
  SETTABLEKS R25 R2 K31 ["LastPosition"]
  GETUPVAL R26 10
  MOVE R27 R25
  MOVE R28 R16
  MOVE R29 R14
  CALL R26 3 2
  GETIMPORT R28 K36 [Region3.new]
  MOVE R29 R26
  MOVE R30 R27
  CALL R28 2 1
  GETUPVAL R30 5
  GETTABLEKS R29 R30 K37 ["Cube"]
  JUMPIFNOTEQ R7 R29 [+13]
  JUMPIFNOT R20 [+11]
  GETUPVAL R30 11
  GETTABLEKS R29 R30 K38 ["Terrain"]
  MOVE R31 R28
  GETUPVAL R32 6
  MOVE R33 R12
  MOVE R34 R13
  NAMECALL R29 R29 K39 ["ReplaceMaterial"]
  CALL R29 5 0
  JUMP [+199]
  GETTABLEKS R31 R27 K40 ["X"]
  GETTABLEKS R32 R26 K40 ["X"]
  SUB R30 R31 R32
  MULK R29 R30 K26 [0.5]
  GETUPVAL R31 11
  GETTABLEKS R30 R31 K38 ["Terrain"]
  MOVE R32 R28
  GETUPVAL R33 6
  NAMECALL R30 R30 K41 ["ReadVoxels"]
  CALL R30 3 2
  LOADNIL R32
  SETTABLEKS R32 R30 K13 ["Size"]
  LOADNIL R32
  SETTABLEKS R32 R31 K13 ["Size"]
  GETUPVAL R32 6
  GETIMPORT R34 K23 [Enum.Material.Air]
  JUMPIFEQ R12 R34 [+2]
  LOADB R33 0 +1
  LOADB R33 1
  LOADB R34 0
  GETUPVAL R36 5
  GETTABLEKS R35 R36 K25 ["Sphere"]
  JUMPIFNOTEQ R7 R35 [+6]
  LOADN R35 2
  JUMPIFLT R35 R6 [+2]
  LOADB R34 0 +1
  LOADB R34 1
  GETUPVAL R37 5
  GETTABLEKS R36 R37 K42 ["Cylinder"]
  JUMPIFNOTEQ R7 R36 [+5]
  LOADB R35 1
  LOADN R36 2
  JUMPIFLT R36 R6 [+2]
  MOVE R35 R34
  GETTABLEKS R38 R26 K40 ["X"]
  MULK R39 R32 K26 [0.5]
  SUB R37 R38 R39
  GETTABLEKS R38 R25 K40 ["X"]
  SUB R36 R37 R38
  GETTABLEKS R39 R26 K43 ["Y"]
  MULK R40 R32 K26 [0.5]
  SUB R38 R39 R40
  GETTABLEKS R39 R25 K43 ["Y"]
  SUB R37 R38 R39
  GETTABLEKS R40 R26 K44 ["Z"]
  MULK R41 R32 K26 [0.5]
  SUB R39 R40 R41
  GETTABLEKS R40 R25 K44 ["Z"]
  SUB R38 R39 R40
  LOADNIL R39
  LOADNIL R40
  GETIMPORT R41 K47 [os.clock]
  CALL R41 0 1
  MOVE R42 R31
  LOADNIL R43
  LOADNIL R44
  FORGPREP R42
  JUMPIFNOT R35 [+4]
  MUL R48 R45 R32
  ADD R47 R48 R36
  POWK R39 R47 K48 [2]
  JUMP [+1]
  LOADNIL R39
  GETTABLE R47 R30 R45
  MOVE R48 R46
  LOADNIL R49
  LOADNIL R50
  FORGPREP R48
  JUMPIFNOT R34 [+5]
  MUL R55 R51 R32
  ADD R54 R55 R37
  POWK R53 R54 K48 [2]
  ADD R40 R39 R53
  JUMP [+1]
  LOADNIL R40
  GETTABLE R53 R47 R51
  MOVE R54 R52
  LOADNIL R55
  LOADNIL R56
  FORGPREP R54
  GETTABLE R59 R53 R57
  LOADN R60 1
  JUMPIFNOT R35 [+20]
  MUL R63 R57 R32
  ADD R62 R63 R38
  POWK R61 R62 K48 [2]
  JUMPIFNOT R34 [+6]
  ADD R63 R40 R61
  FASTCALL1 MATH_SQRT R63 [+2]
  GETIMPORT R62 K51 [math.sqrt]
  CALL R62 1 1
  JUMP [+5]
  ADD R63 R39 R61
  FASTCALL1 MATH_SQRT R63 [+2]
  GETIMPORT R62 K51 [math.sqrt]
  CALL R62 1 1
  GETUPVAL R63 12
  MOVE R64 R62
  MOVE R65 R29
  CALL R63 2 1
  MOVE R60 R63
  LOADN R61 0
  JUMPIFNOTLT R61 R60 [+23]
  JUMPIFNOT R9 [+4]
  GETIMPORT R61 K53 [Enum.Material.Water]
  JUMPIFEQ R59 R61 [+18]
  JUMPIFNOT R19 [+3]
  SETTABLE R58 R52 R57
  SETTABLE R12 R53 R57
  JUMP [+15]
  JUMPIFNOT R20 [+14]
  JUMPIFNOT R33 [+2]
  LOADN R61 1
  JUMP [+1]
  MOVE R61 R58
  SETTABLE R61 R52 R57
  JUMPIFNOTEQ R12 R59 [+3]
  MOVE R61 R13
  JUMP [+1]
  MOVE R61 R59
  SETTABLE R61 R53 R57
  JUMP [+2]
  SETTABLE R58 R52 R57
  SETTABLE R59 R53 R57
  FORGLOOP R54 2 [-51]
  FORGLOOP R48 2 [-65]
  FORGLOOP R42 2 [-78]
  GETUPVAL R45 13
  GETTABLEKS R44 R45 K54 ["NormalizeBrushTimer"]
  MOVE R45 R41
  MOVE R46 R6
  MOVE R47 R5
  CALL R44 3 -1
  NAMECALL R42 R1 K55 ["addTimeStatistic"]
  CALL R42 -1 0
  GETIMPORT R42 K53 [Enum.Material.Water]
  JUMPIFEQ R12 R42 [+5]
  GETIMPORT R42 K53 [Enum.Material.Water]
  JUMPIFNOTEQ R13 R42 [+13]
  GETUPVAL R43 11
  GETTABLEKS R42 R43 K38 ["Terrain"]
  MOVE R44 R28
  GETUPVAL R46 14
  GETTABLEKS R45 R46 K56 ["VoxelResolution"]
  GETIMPORT R46 K23 [Enum.Material.Air]
  NAMECALL R42 R42 K57 ["FillRegion"]
  CALL R42 4 0
  GETUPVAL R43 11
  GETTABLEKS R42 R43 K38 ["Terrain"]
  MOVE R44 R28
  GETUPVAL R46 14
  GETTABLEKS R45 R46 K56 ["VoxelResolution"]
  MOVE R46 R30
  MOVE R47 R31
  NAMECALL R42 R42 K58 ["WriteVoxels"]
  CALL R42 5 0
  FORGLOOP R21 2 [-247]
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K4 ["ProfileTools"]
  CALL R21 0 1
  JUMPIFNOT R21 [+3]
  GETIMPORT R21 K33 [debug.profileend]
  CALL R21 0 0
  LOADB R21 1
  LOADN R22 0
  RETURN R21 2

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["ChangeHistoryService"]
  LOADK R4 K1 ["Paint"]
  NAMECALL R2 R2 K2 ["SetWaypoint"]
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
  DUPCLOSURE R2 K0 [PROTO_0]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U5
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U2
  CAPTURE UPVAL U8
  CAPTURE UPVAL U4
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE VAL R1
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  CAPTURE UPVAL U3
  NEWCLOSURE R4 P2
  CAPTURE VAL R1
  GETUPVAL R6 14
  GETTABLEKS R5 R6 K1 ["new"]
  DUPTABLE R6 K7 [{"Budget", "OnFinish", "OnStart", "OnStep", "Name"}]
  LOADK R7 K8 [0.005]
  SETTABLEKS R7 R6 K2 ["Budget"]
  SETTABLEKS R4 R6 K3 ["OnFinish"]
  SETTABLEKS R2 R6 K4 ["OnStart"]
  SETTABLEKS R3 R6 K5 ["OnStep"]
  SETTABLEKS R0 R6 K6 ["Name"]
  CALL R5 1 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Resources"]
  GETTABLEKS R2 R3 K8 ["Constants"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K9 ["VoxelResolution"]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K10 ["Util"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R3 K11 ["AnalyticsHelper"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R3 K12 ["Operations"]
  GETTABLEKS R6 R7 K13 ["BaseOperation"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R3 K14 ["CalculateBrushOccupancy"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R3 K15 ["ClampVoxelBoundaries"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R3 K16 ["ConvertForPivot"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R3 K17 ["getDraggedPositions"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R12 R0 K6 ["Src"]
  GETTABLEKS R11 R12 K18 ["Types"]
  CALL R10 1 1
  GETTABLEKS R11 R10 K19 ["BrushShape"]
  GETTABLEKS R12 R10 K20 ["BrushSettings"]
  GETTABLEKS R13 R10 K21 ["Category"]
  GETTABLEKS R14 R10 K22 ["MaterialMode"]
  GETTABLEKS R15 R10 K23 ["MaterialSettings"]
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K6 ["Src"]
  GETTABLEKS R18 R19 K10 ["Util"]
  GETTABLEKS R17 R18 K24 ["DebugFlags"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K6 ["Src"]
  GETTABLEKS R19 R20 K25 ["Flags"]
  GETTABLEKS R18 R19 K26 ["getFFlagTerrainEditorLineFix"]
  CALL R17 1 1
  DUPCLOSURE R18 K27 [PROTO_3]
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R16
  CAPTURE VAL R15
  CAPTURE VAL R17
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R14
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R5
  RETURN R18 1
