PROTO_0:
  NEWTABLE R1 4 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["SIDE_TABS"]
  GETTABLEKS R2 R3 K1 ["Sales"]
  LOADK R5 K2 ["General"]
  LOADK R6 K3 ["SideTabSales"]
  NAMECALL R3 R0 K4 ["getText"]
  CALL R3 3 1
  SETTABLE R3 R1 R2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["SIDE_TABS"]
  GETTABLEKS R2 R3 K5 ["Versions"]
  LOADK R5 K2 ["General"]
  LOADK R6 K6 ["SideTabVersions"]
  NAMECALL R3 R0 K4 ["getText"]
  CALL R3 3 1
  SETTABLE R3 R1 R2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["SIDE_TABS"]
  GETTABLEKS R2 R3 K2 ["General"]
  LOADK R5 K2 ["General"]
  LOADK R6 K7 ["SideTabGeneral"]
  NAMECALL R3 R0 K4 ["getText"]
  CALL R3 3 1
  SETTABLE R3 R1 R2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["SIDE_TABS"]
  GETTABLEKS R2 R3 K8 ["Permissions"]
  LOADK R5 K2 ["General"]
  LOADK R6 K9 ["SideTabPermissions"]
  NAMECALL R3 R0 K4 ["getText"]
  CALL R3 3 1
  SETTABLE R3 R1 R2
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Core"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["AssetConfigConstants"]
  CALL R1 1 1
  DUPCLOSURE R2 K9 [PROTO_0]
  CAPTURE VAL R1
  RETURN R2 1
