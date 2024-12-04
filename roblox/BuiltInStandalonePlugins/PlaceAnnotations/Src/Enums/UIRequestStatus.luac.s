MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K5 [{"None", "InProgress", "Error", "ErrorResolving", "ErrorDeleting"}]
  LOADK R1 K0 ["None"]
  SETTABLEKS R1 R0 K0 ["None"]
  LOADK R1 K1 ["InProgress"]
  SETTABLEKS R1 R0 K1 ["InProgress"]
  LOADK R1 K2 ["Error"]
  SETTABLEKS R1 R0 K2 ["Error"]
  LOADK R1 K3 ["ErrorResolving"]
  SETTABLEKS R1 R0 K3 ["ErrorResolving"]
  LOADK R1 K4 ["ErrorDeleting"]
  SETTABLEKS R1 R0 K4 ["ErrorDeleting"]
  RETURN R0 1
