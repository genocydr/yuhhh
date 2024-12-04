PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R1 R4 K0 ["instanceTypes"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  MOVE R8 R5
  NAMECALL R6 R0 K1 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+2]
  LOADB R6 1
  RETURN R6 1
  FORGLOOP R1 2 [-8]
  LOADB R1 0
  RETURN R1 1

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["connections"]
  GETTABLE R1 R2 R0
  JUMPIFNOT R1 [+18]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["connections"]
  GETTABLE R1 R4 R0
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  JUMPIFNOT R5 [+3]
  NAMECALL R6 R5 K1 ["Disconnect"]
  CALL R6 1 0
  FORGLOOP R1 2 [-5]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["connections"]
  LOADNIL R2
  SETTABLE R2 R1 R0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETUPVAL R2 1
  GETTABLE R0 R1 R2
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Parent"]
  JUMPIFNOTEQKNIL R0 [+6]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["removeInstanceConnections"]
  GETUPVAL R1 0
  CALL R0 1 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K2 ["updateHierarchy"]
  GETUPVAL R1 0
  LOADK R2 K3 ["PropertyChanged"]
  GETUPVAL R3 2
  CALL R0 3 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["updateHierarchy"]
  GETUPVAL R1 1
  LOADK R2 K1 ["PropertyChanged"]
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["updateHierarchy"]
  GETUPVAL R1 1
  LOADK R2 K1 ["AttributeChanged"]
  CALL R0 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["connectedProperties"]
  JUMPIFNOT R1 [+1]
  JUMPIF R0 [+1]
  RETURN R0 0
  NEWTABLE R2 0 0
  MOVE R3 R1
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETIMPORT R8 K2 [pcall]
  NEWCLOSURE R9 P0
  CAPTURE VAL R0
  CAPTURE VAL R7
  CALL R8 1 1
  JUMPIFNOT R8 [+12]
  MOVE R10 R7
  NAMECALL R8 R0 K3 ["GetPropertyChangedSignal"]
  CALL R8 2 1
  NEWCLOSURE R10 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE VAL R7
  NAMECALL R8 R8 K4 ["Connect"]
  CALL R8 2 1
  SETTABLE R8 R2 R7
  FORGLOOP R3 2 [-20]
  LOADK R5 K5 ["StyleRule"]
  NAMECALL R3 R0 K6 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+10]
  GETTABLEKS R3 R0 K7 ["StyleRulePropertyChanged"]
  NEWCLOSURE R5 P2
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  NAMECALL R3 R3 K4 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K7 ["StyleRulePropertyChanged"]
  LOADK R5 K8 ["StyleSheet"]
  NAMECALL R3 R0 K6 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+12]
  LOADK R5 K9 ["StyleCategory"]
  NAMECALL R3 R0 K10 ["GetAttributeChangedSignal"]
  CALL R3 2 1
  NEWCLOSURE R5 P3
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  NAMECALL R3 R3 K4 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K11 ["StyleSheetCategoryChanged"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K12 ["connections"]
  GETTABLE R3 R4 R0
  JUMPIFNOT R3 [+12]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K12 ["connections"]
  GETUPVAL R4 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K12 ["connections"]
  GETTABLE R5 R6 R0
  MOVE R6 R2
  CALL R4 2 1
  SETTABLE R4 R3 R0
  RETURN R0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K12 ["connections"]
  SETTABLE R2 R3 R0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["addInstanceConnections"]
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["updateHierarchy"]
  GETUPVAL R2 1
  LOADK R3 K2 ["DescendantAdded"]
  MOVE R4 R0
  CALL R1 3 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["removeInstanceConnections"]
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["updateHierarchy"]
  GETUPVAL R2 1
  LOADK R3 K2 ["DescendantRemoving"]
  MOVE R4 R0
  CALL R1 3 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["removeInstanceConnections"]
  GETUPVAL R1 1
  CALL R0 1 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K1 ["updateHierarchy"]
  GETUPVAL R1 1
  LOADK R2 K2 ["Destroying"]
  CALL R0 2 0
  RETURN R0 0

PROTO_10:
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["connections"]
  DUPTABLE R2 K4 [{"descendantAdded", "descendantRemoving", "instanceDestroying"}]
  GETTABLEKS R3 R0 K5 ["DescendantAdded"]
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  NAMECALL R3 R3 K6 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K1 ["descendantAdded"]
  GETTABLEKS R3 R0 K7 ["DescendantRemoving"]
  NEWCLOSURE R5 P1
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  NAMECALL R3 R3 K6 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K2 ["descendantRemoving"]
  GETTABLEKS R3 R0 K8 ["Destroying"]
  NEWCLOSURE R5 P2
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  NAMECALL R3 R3 K6 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K3 ["instanceDestroying"]
  SETTABLE R2 R1 R0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K9 ["addInstanceConnections"]
  MOVE R2 R0
  CALL R1 1 0
  NAMECALL R1 R0 K10 ["GetDescendants"]
  CALL R1 1 1
  MOVE R2 R1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K11 ["isFilteredType"]
  MOVE R8 R6
  CALL R7 1 1
  JUMPIFNOT R7 [+5]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K9 ["addInstanceConnections"]
  MOVE R8 R6
  CALL R7 1 0
  FORGLOOP R2 2 [-12]
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["connections"]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R0 R3 K0 ["connections"]
  LOADNIL R1
  LOADNIL R2
  FORGPREP R0
  MOVE R5 R4
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  JUMPIFNOT R9 [+3]
  NAMECALL R10 R9 K1 ["Disconnect"]
  CALL R10 1 0
  FORGLOOP R5 2 [-5]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["connections"]
  LOADNIL R6
  SETTABLE R6 R5 R3
  FORGLOOP R0 2 [-16]
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["removeAllConnections"]
  CALL R0 0 0
  GETUPVAL R0 0
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K1 ["connectedProperties"]
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["noop"]
  SETTABLEKS R1 R0 K3 ["updateHierarchy"]
  RETURN R0 0

PROTO_13:
  DUPTABLE R4 K4 [{"connections", "updateHierarchy", "connectedProperties", "instanceTypes"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K0 ["connections"]
  SETTABLEKS R1 R4 K1 ["updateHierarchy"]
  SETTABLEKS R2 R4 K2 ["connectedProperties"]
  JUMPIF R3 [+6]
  NEWTABLE R5 0 1
  LOADK R6 K5 ["StyleBase"]
  SETLIST R5 R6 1 [1]
  JUMP [+1]
  MOVE R5 R3
  SETTABLEKS R5 R4 K3 ["instanceTypes"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R4
  SETTABLEKS R5 R4 K6 ["isFilteredType"]
  NEWCLOSURE R5 P1
  CAPTURE VAL R4
  SETTABLEKS R5 R4 K7 ["removeInstanceConnections"]
  NEWCLOSURE R5 P2
  CAPTURE VAL R4
  CAPTURE UPVAL U0
  SETTABLEKS R5 R4 K8 ["addInstanceConnections"]
  NEWCLOSURE R5 P3
  CAPTURE VAL R4
  SETTABLEKS R5 R4 K9 ["addRootInstanceConnections"]
  NEWCLOSURE R5 P4
  CAPTURE VAL R4
  SETTABLEKS R5 R4 K10 ["removeAllConnections"]
  NEWCLOSURE R5 P5
  CAPTURE VAL R4
  CAPTURE UPVAL U1
  SETTABLEKS R5 R4 K11 ["destroyListener"]
  MOVE R5 R0
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETTABLEKS R10 R4 K9 ["addRootInstanceConnections"]
  MOVE R11 R9
  CALL R10 1 0
  FORGLOOP R5 2 [-5]
  DUPTABLE R7 K13 [{"__index"}]
  GETUPVAL R8 2
  SETTABLEKS R8 R7 K12 ["__index"]
  FASTCALL2 SETMETATABLE R4 R7 [+4]
  MOVE R6 R4
  GETIMPORT R5 K15 [setmetatable]
  CALL R5 2 1
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Dash"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K7 ["join"]
  NEWTABLE R3 1 0
  DUPCLOSURE R4 K8 [PROTO_13]
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R3
  SETTABLEKS R4 R3 K9 ["new"]
  RETURN R3 1