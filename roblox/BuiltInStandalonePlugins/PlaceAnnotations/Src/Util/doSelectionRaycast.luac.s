PROTO_0:
  GETIMPORT R1 K2 [RaycastParams.new]
  CALL R1 0 1
  LOADK R2 K3 ["StudioSelectable"]
  SETTABLEKS R2 R1 K4 ["CollisionGroup"]
  LOADB R2 1
  SETTABLEKS R2 R1 K5 ["BruteForceAllSlow"]
  GETIMPORT R2 K7 [workspace]
  GETTABLEKS R5 R0 K8 ["Origin"]
  GETTABLEKS R4 R5 K9 ["Position"]
  GETTABLEKS R7 R0 K11 ["UnitRay"]
  GETTABLEKS R6 R7 K12 ["Direction"]
  MULK R5 R6 K10 [1000]
  MOVE R6 R1
  NAMECALL R2 R2 K13 ["Raycast"]
  CALL R2 4 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
