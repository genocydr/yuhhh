PROTO_0:
  NEWTABLE R4 0 1
  DUPTABLE R5 K2 [{"Id", "Schema"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["Shorelines"]
  SETTABLEKS R6 R5 K0 ["Id"]
  DUPTABLE R6 K6 [{"Id", "Type", "URL"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["Shorelines"]
  SETTABLEKS R7 R6 K0 ["Id"]
  LOADK R7 K7 ["Upgrade"]
  SETTABLEKS R7 R6 K4 ["Type"]
  GETUPVAL R7 1
  SETTABLEKS R7 R6 K5 ["URL"]
  SETTABLEKS R6 R5 K1 ["Schema"]
  SETLIST R4 R5 1 [1]
  GETUPVAL R5 2
  CALL R5 0 1
  JUMPIFNOT R5 [+26]
  DUPTABLE R7 K2 [{"Id", "Schema"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K8 ["SmoothVoxels"]
  SETTABLEKS R8 R7 K0 ["Id"]
  DUPTABLE R8 K6 [{"Id", "Type", "URL"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K8 ["SmoothVoxels"]
  SETTABLEKS R9 R8 K0 ["Id"]
  LOADK R9 K7 ["Upgrade"]
  SETTABLEKS R9 R8 K4 ["Type"]
  GETUPVAL R9 3
  SETTABLEKS R9 R8 K5 ["URL"]
  SETTABLEKS R8 R7 K1 ["Schema"]
  FASTCALL2 TABLE_INSERT R4 R7 [+4]
  MOVE R6 R4
  GETIMPORT R5 K11 [table.insert]
  CALL R5 2 0
  GETUPVAL R5 4
  MOVE R6 R0
  MOVE R7 R4
  DUPTABLE R8 K15 [{"Category", "Data", "Overrides"}]
  GETUPVAL R9 5
  SETTABLEKS R9 R8 K12 ["Category"]
  SETTABLEKS R1 R8 K13 ["Data"]
  SETTABLEKS R3 R8 K14 ["Overrides"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["ApplyById"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K10 ["Category"]
  GETTABLEKS R4 R2 K11 ["Storage"]
  GETTABLEKS R5 R2 K12 ["UpgradeSettings"]
  GETTABLEKS R6 R3 K12 ["UpgradeSettings"]
  GETIMPORT R7 K14 [game]
  LOADK R9 K15 ["Shorelines_LearnMoreUrl"]
  NAMECALL R7 R7 K16 ["GetFastString"]
  CALL R7 2 1
  GETIMPORT R8 K14 [game]
  LOADK R10 K17 ["SmoothVoxels_LearnMoreUrl"]
  NAMECALL R8 R8 K16 ["GetFastString"]
  CALL R8 2 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K6 ["Src"]
  GETTABLEKS R11 R12 K18 ["Flags"]
  GETTABLEKS R10 R11 K19 ["getFFlagSmoothVoxels_Tooling"]
  CALL R9 1 1
  NEWTABLE R10 2 0
  NEWTABLE R11 2 0
  GETTABLEKS R12 R5 K20 ["Shorelines"]
  GETTABLEKS R13 R4 K21 ["LocalSession"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R5 K22 ["SmoothVoxels"]
  MOVE R14 R9
  CALL R14 0 1
  JUMPIFNOT R14 [+3]
  GETTABLEKS R13 R4 K21 ["LocalSession"]
  JUMP [+1]
  LOADNIL R13
  SETTABLE R13 R11 R12
  SETTABLEKS R11 R10 K11 ["Storage"]
  DUPCLOSURE R11 K23 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R1
  CAPTURE VAL R6
  SETTABLEKS R11 R10 K24 ["Generator"]
  RETURN R10 1
