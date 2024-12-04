MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K5 [{"Unknown", "Create", "Resolve", "Delete", "Edit"}]
  GETIMPORT R1 K8 [Enum.AnnotationRequestType.Unknown]
  SETTABLEKS R1 R0 K0 ["Unknown"]
  GETIMPORT R1 K9 [Enum.AnnotationRequestType.Create]
  SETTABLEKS R1 R0 K1 ["Create"]
  GETIMPORT R1 K10 [Enum.AnnotationRequestType.Resolve]
  SETTABLEKS R1 R0 K2 ["Resolve"]
  GETIMPORT R1 K11 [Enum.AnnotationRequestType.Delete]
  SETTABLEKS R1 R0 K3 ["Delete"]
  GETIMPORT R1 K12 [Enum.AnnotationRequestType.Edit]
  SETTABLEKS R1 R0 K4 ["Edit"]
  RETURN R0 1
