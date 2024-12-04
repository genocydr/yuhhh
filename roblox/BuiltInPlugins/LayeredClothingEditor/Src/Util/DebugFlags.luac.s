PROTO_0:
  GETUPVAL R1 0
  LOADK R3 K0 ["LayeredClothingEditorFlags"]
  NAMECALL R1 R1 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFNOT R1 [+9]
  MOVE R4 R0
  NAMECALL R2 R1 K1 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  GETTABLE R3 R1 R0
  GETTABLEKS R2 R3 K2 ["Value"]
  RETURN R2 1
  LOADB R2 0
  RETURN R2 1

PROTO_1:
  GETUPVAL R1 0
  LOADK R3 K0 ["LayeredClothingEditorFlags"]
  NAMECALL R1 R1 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFNOT R1 [+11]
  LOADK R4 K2 ["RunTests"]
  NAMECALL R2 R1 K1 ["FindFirstChild"]
  CALL R2 2 1
  MOVE R0 R2
  JUMPIFNOT R0 [+7]
  GETTABLEKS R2 R1 K2 ["RunTests"]
  GETTABLEKS R0 R2 K3 ["Value"]
  RETURN R0 1
  LOADB R0 0
  RETURN R0 1
  RETURN R0 1

PROTO_2:
  GETUPVAL R1 0
  LOADK R3 K0 ["LayeredClothingEditorFlags"]
  NAMECALL R1 R1 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFNOT R1 [+11]
  LOADK R4 K2 ["RunRhodiumTests"]
  NAMECALL R2 R1 K1 ["FindFirstChild"]
  CALL R2 2 1
  MOVE R0 R2
  JUMPIFNOT R0 [+7]
  GETTABLEKS R2 R1 K2 ["RunRhodiumTests"]
  GETTABLEKS R0 R2 K3 ["Value"]
  RETURN R0 1
  LOADB R0 0
  RETURN R0 1
  RETURN R0 1

PROTO_3:
  GETUPVAL R1 0
  LOADK R3 K0 ["LayeredClothingEditorFlags"]
  NAMECALL R1 R1 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFNOT R1 [+11]
  LOADK R4 K2 ["LogRoduxEvents"]
  NAMECALL R2 R1 K1 ["FindFirstChild"]
  CALL R2 2 1
  MOVE R0 R2
  JUMPIFNOT R0 [+7]
  GETTABLEKS R2 R1 K2 ["LogRoduxEvents"]
  GETTABLEKS R0 R2 K3 ["Value"]
  RETURN R0 1
  LOADB R0 0
  RETURN R0 1
  RETURN R0 1

PROTO_4:
  GETUPVAL R1 0
  LOADK R3 K0 ["LayeredClothingEditorFlags"]
  NAMECALL R1 R1 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFNOT R1 [+11]
  LOADK R4 K2 ["LogAnalytics"]
  NAMECALL R2 R1 K1 ["FindFirstChild"]
  CALL R2 2 1
  MOVE R0 R2
  JUMPIFNOT R0 [+7]
  GETTABLEKS R2 R1 K2 ["LogAnalytics"]
  GETTABLEKS R0 R2 K3 ["Value"]
  RETURN R0 1
  LOADB R0 0
  RETURN R0 1
  RETURN R0 1

PROTO_5:
  GETUPVAL R1 0
  LOADK R3 K0 ["LayeredClothingEditorFlags"]
  NAMECALL R1 R1 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFNOT R1 [+11]
  LOADK R4 K2 ["MockItemHasFullCage"]
  NAMECALL R2 R1 K1 ["FindFirstChild"]
  CALL R2 2 1
  MOVE R0 R2
  JUMPIFNOT R0 [+7]
  GETTABLEKS R2 R1 K2 ["MockItemHasFullCage"]
  GETTABLEKS R0 R2 K3 ["Value"]
  RETURN R0 1
  LOADB R0 0
  RETURN R0 1
  RETURN R0 1

PROTO_6:
  GETUPVAL R1 0
  LOADK R3 K0 ["LayeredClothingEditorFlags"]
  NAMECALL R1 R1 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFNOT R1 [+11]
  LOADK R4 K2 ["UseMockCages"]
  NAMECALL R2 R1 K1 ["FindFirstChild"]
  CALL R2 2 1
  MOVE R0 R2
  JUMPIFNOT R0 [+7]
  GETTABLEKS R2 R1 K2 ["UseMockCages"]
  GETTABLEKS R0 R2 K3 ["Value"]
  RETURN R0 1
  LOADB R0 0
  RETURN R0 1
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Workspace"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  NEWTABLE R1 8 0
  DUPCLOSURE R2 K4 [PROTO_0]
  CAPTURE VAL R0
  DUPCLOSURE R3 K5 [PROTO_1]
  CAPTURE VAL R0
  SETTABLEKS R3 R1 K6 ["RunTests"]
  DUPCLOSURE R3 K7 [PROTO_2]
  CAPTURE VAL R0
  SETTABLEKS R3 R1 K8 ["RunRhodiumTests"]
  DUPCLOSURE R3 K9 [PROTO_3]
  CAPTURE VAL R0
  SETTABLEKS R3 R1 K10 ["LogRoduxEvents"]
  DUPCLOSURE R3 K11 [PROTO_4]
  CAPTURE VAL R0
  SETTABLEKS R3 R1 K12 ["LogAnalytics"]
  DUPCLOSURE R3 K13 [PROTO_5]
  CAPTURE VAL R0
  SETTABLEKS R3 R1 K14 ["MockItemHasFullCage"]
  DUPCLOSURE R3 K15 [PROTO_6]
  CAPTURE VAL R0
  SETTABLEKS R3 R1 K16 ["UseMockCages"]
  RETURN R1 1