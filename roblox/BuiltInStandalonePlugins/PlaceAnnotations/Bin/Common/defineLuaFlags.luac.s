MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AnnotationsModernColors"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K4 ["AnnotationsFocusTextBox"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K5 ["AnnotationsSubmitOnEnter"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K6 ["AnnotationsMaxTextLength"]
  LOADN R3 0
  NAMECALL R0 R0 K7 ["DefineFastInt"]
  CALL R0 3 0
  DUPTABLE R0 K15 [{"fflagCOLLAB6176PlaceAnnotations", "fflagAnnotationsModernColors", "fflagAnnotationsMaxTextLength", "fflagPlaceAnnotationsHotkey", "fflagAnnotationsFocusTextBox", "fflagAnnotationsSubmitOnEnter", "fflagPlaceAnnotationsPublicRelease"}]
  GETIMPORT R1 K1 [game]
  LOADK R3 K16 ["COLLAB6176PlaceAnnotations"]
  NAMECALL R1 R1 K17 ["GetFastFlag"]
  CALL R1 2 1
  JUMPIFNOT R1 [+6]
  GETIMPORT R1 K1 [game]
  LOADK R3 K18 ["COLLAB6176PlaceAnnotationsStudio"]
  NAMECALL R1 R1 K17 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K8 ["fflagCOLLAB6176PlaceAnnotations"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["AnnotationsModernColors"]
  NAMECALL R1 R1 K17 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K9 ["fflagAnnotationsModernColors"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K6 ["AnnotationsMaxTextLength"]
  NAMECALL R1 R1 K19 ["GetFastInt"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K10 ["fflagAnnotationsMaxTextLength"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K20 ["PlaceAnnotationsHotkey"]
  NAMECALL R1 R1 K17 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K11 ["fflagPlaceAnnotationsHotkey"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["AnnotationsFocusTextBox"]
  NAMECALL R1 R1 K17 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K12 ["fflagAnnotationsFocusTextBox"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K5 ["AnnotationsSubmitOnEnter"]
  NAMECALL R1 R1 K17 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K13 ["fflagAnnotationsSubmitOnEnter"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K21 ["PlaceAnnotationsPublicRelease"]
  NAMECALL R1 R1 K17 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K14 ["fflagPlaceAnnotationsPublicRelease"]
  RETURN R0 1
