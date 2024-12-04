MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"Success", "ErrorInternalFailure", "ErrorNotFound"}]
  GETIMPORT R1 K6 [Enum.AnnotationRequestResult.Success]
  SETTABLEKS R1 R0 K0 ["Success"]
  GETIMPORT R1 K7 [Enum.AnnotationRequestResult.ErrorInternalFailure]
  SETTABLEKS R1 R0 K1 ["ErrorInternalFailure"]
  GETIMPORT R1 K8 [Enum.AnnotationRequestResult.ErrorNotFound]
  SETTABLEKS R1 R0 K2 ["ErrorNotFound"]
  RETURN R0 1
