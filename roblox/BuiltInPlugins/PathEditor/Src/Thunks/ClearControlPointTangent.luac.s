PROTO_0:
  NAMECALL R2 R0 K0 ["getState"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K1 ["PathReducer"]
  GETUPVAL R2 0
  LOADN R3 0
  JUMPIFLE R2 R3 [+7]
  GETUPVAL R2 0
  GETTABLEKS R4 R1 K2 ["ControlPoints"]
  LENGTH R3 R4
  JUMPIFNOTLT R3 R2 [+2]
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R3 R1 K3 ["SelectedObject"]
  NAMECALL R3 R3 K4 ["GetControlPoints"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K5 ["ControlPointStates"]
  GETUPVAL R5 1
  GETUPVAL R6 2
  CALL R5 1 1
  GETTABLE R7 R3 R2
  GETTABLE R6 R7 R5
  GETIMPORT R7 K8 [UDim2.new]
  CALL R7 0 1
  JUMPIFNOTEQ R6 R7 [+2]
  RETURN R1 1
  GETUPVAL R8 3
  LOADK R9 K9 ["Removed Tangent"]
  CALL R8 1 -1
  NAMECALL R6 R0 K10 ["dispatch"]
  CALL R6 -1 0
  GETTABLE R6 R3 R2
  GETIMPORT R7 K8 [UDim2.new]
  CALL R7 0 1
  SETTABLE R7 R6 R5
  GETTABLE R7 R4 R2
  GETTABLEKS R6 R7 K11 ["Sharp"]
  JUMPIF R6 [+6]
  GETUPVAL R8 4
  MOVE R9 R2
  CALL R8 1 -1
  NAMECALL R6 R0 K10 ["dispatch"]
  CALL R6 -1 0
  GETIMPORT R6 K13 [game]
  LOADK R8 K14 ["PathEditorUsePerformantAPICalls"]
  NAMECALL R6 R6 K15 ["GetFastFlag"]
  CALL R6 2 1
  JUMPIFNOT R6 [+8]
  GETTABLEKS R6 R1 K3 ["SelectedObject"]
  MOVE R8 R2
  GETTABLE R9 R3 R2
  NAMECALL R6 R6 K16 ["UpdateControlPoint"]
  CALL R6 3 0
  JUMP [+6]
  GETTABLEKS R6 R1 K3 ["SelectedObject"]
  MOVE R8 R3
  NAMECALL R6 R6 K17 ["SetControlPoints"]
  CALL R6 2 0
  GETUPVAL R6 2
  GETTABLEKS R7 R1 K18 ["SelectedTangentSide"]
  JUMPIFNOTEQ R6 R7 [+7]
  GETUPVAL R8 5
  LOADNIL R9
  CALL R8 1 -1
  NAMECALL R6 R0 K10 ["dispatch"]
  CALL R6 -1 0
  GETUPVAL R8 3
  CALL R8 0 -1
  NAMECALL R6 R0 K10 ["dispatch"]
  CALL R6 -1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K5 ["Src"]
  GETTABLEKS R4 R5 K7 ["Thunks"]
  GETTABLEKS R3 R4 K8 ["RecordChangeHistory"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K5 ["Src"]
  GETTABLEKS R5 R6 K9 ["Actions"]
  GETTABLEKS R4 R5 K10 ["SelectTangentSide"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K5 ["Src"]
  GETTABLEKS R6 R7 K9 ["Actions"]
  GETTABLEKS R5 R6 K11 ["ToggleSharp"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K5 ["Src"]
  GETTABLEKS R7 R8 K12 ["Util"]
  GETTABLEKS R6 R7 K13 ["getTangentNameForSide"]
  CALL R5 1 1
  DUPCLOSURE R6 K14 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  RETURN R6 1
