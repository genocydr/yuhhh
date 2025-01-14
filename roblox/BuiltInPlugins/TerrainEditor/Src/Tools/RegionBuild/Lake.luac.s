MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Tools"]
  GETTABLEKS R2 R3 K8 ["BaseTool"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K10 ["BuildSettings"]
  GETTABLEKS R4 R2 K11 ["Category"]
  GETTABLEKS R5 R2 K12 ["Gizmo"]
  GETTABLEKS R6 R2 K13 ["MaterialUnit"]
  GETTABLEKS R7 R2 K14 ["Tab"]
  GETTABLEKS R8 R2 K15 ["TerrainType"]
  NEWTABLE R9 0 1
  DUPTABLE R10 K18 [{"Defaults", "Id"}]
  NEWTABLE R11 16 0
  GETTABLEKS R12 R3 K19 ["AdvancedNoise"]
  DUPTABLE R13 K21 [{"Children"}]
  NEWTABLE R14 4 0
  GETTABLEKS R15 R3 K22 ["Offset"]
  GETIMPORT R16 K25 [Vector2.new]
  LOADN R17 0
  LOADN R18 0
  CALL R16 2 1
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R3 K26 ["Rotation"]
  LOADN R16 0
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R3 K27 ["Seed"]
  LOADK R16 K28 [0.123]
  SETTABLE R16 R14 R15
  SETTABLEKS R14 R13 K20 ["Children"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R3 K29 ["NoiseStrength"]
  LOADK R13 K30 [0.45]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R3 K31 ["BankSize"]
  LOADK R13 K32 [0.5]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R3 K33 ["BlendingEdge"]
  LOADN R13 0
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R3 K34 ["NoiseScale"]
  LOADK R13 K30 [0.45]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R3 K35 ["Material"]
  DUPTABLE R13 K42 [{"FallbackMaterial", "Unit", "Min", "Max", "MaterialIndex", "MaterialList"}]
  GETIMPORT R14 K45 [Enum.Material.Mud]
  SETTABLEKS R14 R13 K36 ["FallbackMaterial"]
  GETTABLEKS R14 R6 K46 ["Percentage"]
  SETTABLEKS R14 R13 K37 ["Unit"]
  LOADN R14 0
  SETTABLEKS R14 R13 K38 ["Min"]
  LOADN R14 1
  SETTABLEKS R14 R13 K39 ["Max"]
  LOADN R14 1
  SETTABLEKS R14 R13 K40 ["MaterialIndex"]
  NEWTABLE R14 0 3
  DUPTABLE R15 K52 [{"Material", "MinHeight", "MaxHeight", "MinSlope", "MaxSlope", "Priority"}]
  GETIMPORT R16 K54 [Enum.Material.Grass]
  SETTABLEKS R16 R15 K35 ["Material"]
  LOADK R16 K55 [0.84]
  SETTABLEKS R16 R15 K47 ["MinHeight"]
  LOADN R16 1
  SETTABLEKS R16 R15 K48 ["MaxHeight"]
  LOADN R16 0
  SETTABLEKS R16 R15 K49 ["MinSlope"]
  LOADN R16 30
  SETTABLEKS R16 R15 K50 ["MaxSlope"]
  LOADN R16 0
  SETTABLEKS R16 R15 K51 ["Priority"]
  DUPTABLE R16 K52 [{"Material", "MinHeight", "MaxHeight", "MinSlope", "MaxSlope", "Priority"}]
  GETIMPORT R17 K57 [Enum.Material.Rock]
  SETTABLEKS R17 R16 K35 ["Material"]
  LOADN R17 0
  SETTABLEKS R17 R16 K47 ["MinHeight"]
  LOADK R17 K58 [0.8]
  SETTABLEKS R17 R16 K48 ["MaxHeight"]
  LOADN R17 45
  SETTABLEKS R17 R16 K49 ["MinSlope"]
  LOADN R17 90
  SETTABLEKS R17 R16 K50 ["MaxSlope"]
  LOADN R17 1
  SETTABLEKS R17 R16 K51 ["Priority"]
  DUPTABLE R17 K52 [{"Material", "MinHeight", "MaxHeight", "MinSlope", "MaxSlope", "Priority"}]
  GETIMPORT R18 K60 [Enum.Material.Sand]
  SETTABLEKS R18 R17 K35 ["Material"]
  LOADK R18 K61 [0.7]
  SETTABLEKS R18 R17 K47 ["MinHeight"]
  LOADN R18 1
  SETTABLEKS R18 R17 K48 ["MaxHeight"]
  LOADN R18 0
  SETTABLEKS R18 R17 K49 ["MinSlope"]
  LOADN R18 25
  SETTABLEKS R18 R17 K50 ["MaxSlope"]
  LOADN R18 2
  SETTABLEKS R18 R17 K51 ["Priority"]
  SETLIST R14 R15 3 [1]
  SETTABLEKS R14 R13 K41 ["MaterialList"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R3 K62 ["PlacementMode"]
  LOADB R13 1
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R3 K63 ["Size"]
  LOADK R13 K64 [{512, 128, 512}]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R3 K65 ["SnapToVoxels"]
  LOADB R13 1
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R3 K66 ["Transform"]
  GETIMPORT R13 K68 [CFrame.new]
  CALL R13 0 1
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R3 K69 ["WaterLevel"]
  LOADK R13 K58 [0.8]
  SETTABLE R13 R11 R12
  SETTABLEKS R11 R10 K16 ["Defaults"]
  GETTABLEKS R11 R4 K10 ["BuildSettings"]
  SETTABLEKS R11 R10 K17 ["Id"]
  SETLIST R9 R10 1 [1]
  NEWTABLE R10 0 2
  DUPTABLE R11 K71 [{"Id", "Schema"}]
  GETTABLEKS R12 R5 K72 ["Region"]
  SETTABLEKS R12 R11 K17 ["Id"]
  DUPTABLE R12 K75 [{"Type", "Wireframe", "Rotation"}]
  GETTABLEKS R13 R5 K72 ["Region"]
  SETTABLEKS R13 R12 K73 ["Type"]
  LOADB R13 0
  SETTABLEKS R13 R12 K74 ["Wireframe"]
  LOADB R13 0
  SETTABLEKS R13 R12 K26 ["Rotation"]
  SETTABLEKS R12 R11 K70 ["Schema"]
  DUPTABLE R12 K71 [{"Id", "Schema"}]
  GETTABLEKS R13 R5 K76 ["Placement"]
  SETTABLEKS R13 R12 K17 ["Id"]
  DUPTABLE R13 K77 [{"Type"}]
  GETTABLEKS R14 R5 K76 ["Placement"]
  SETTABLEKS R14 R13 K73 ["Type"]
  SETTABLEKS R13 R12 K70 ["Schema"]
  SETLIST R10 R11 2 [1]
  GETTABLEKS R13 R8 K78 ["Lake"]
  GETTABLEKS R14 R7 K79 ["None"]
  MOVE R15 R9
  MOVE R16 R10
  NAMECALL R11 R1 K24 ["new"]
  CALL R11 5 1
  RETURN R11 1
