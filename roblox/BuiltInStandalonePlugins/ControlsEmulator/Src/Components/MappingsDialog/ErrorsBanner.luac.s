PROTO_0:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  RETURN R0 1

PROTO_2:
  GETUPVAL R0 0
  CALL R0 0 0
  GETUPVAL R0 1
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["current"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+32]
  GETUPVAL R0 0
  GETUPVAL R1 1
  JUMPIFEQ R0 R1 [+29]
  GETUPVAL R0 2
  LOADB R1 1
  CALL R0 1 0
  GETUPVAL R1 3
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFEQKNIL R0 [+11]
  GETIMPORT R0 K3 [task.cancel]
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K0 ["current"]
  CALL R0 1 0
  GETUPVAL R0 3
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["current"]
  GETUPVAL R0 3
  GETIMPORT R1 K5 [task.delay]
  LOADN R2 4
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U3
  CALL R1 2 1
  SETTABLEKS R1 R0 K0 ["current"]
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["useContext"]
  GETUPVAL R1 1
  CALL R0 1 1
  GETTABLEKS R1 R0 K1 ["latestErrorMessage"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["useState"]
  LOADB R3 0
  CALL R2 1 2
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["useRef"]
  LOADNIL R5
  CALL R4 1 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["useCallback"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R3
  NEWTABLE R7 0 1
  MOVE R8 R3
  SETLIST R7 R8 1 [1]
  CALL R5 2 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["useMemo"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R1
  NEWTABLE R8 0 0
  CALL R6 2 1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["useEffect"]
  NEWCLOSURE R8 P2
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  NEWTABLE R9 0 4
  MOVE R10 R1
  MOVE R11 R5
  MOVE R12 R3
  MOVE R13 R4
  SETLIST R9 R10 4 [1]
  CALL R7 2 0
  JUMPIFNOT R2 [+56]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K7 ["createElement"]
  LOADK R8 K8 ["Frame"]
  NEWTABLE R9 2 0
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K9 ["Tag"]
  LOADK R11 K10 ["Component-MappingsCollisionsBanner CX-Invisible X-Fill"]
  SETTABLE R11 R9 R10
  GETUPVAL R10 2
  NAMECALL R10 R10 K11 ["getNextOrder"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K12 ["LayoutOrder"]
  DUPTABLE R10 K14 [{"BannerContents"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K7 ["createElement"]
  LOADK R12 K8 ["Frame"]
  DUPTABLE R13 K15 [{"LayoutOrder"}]
  GETUPVAL R14 2
  NAMECALL R14 R14 K11 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K12 ["LayoutOrder"]
  DUPTABLE R14 K17 [{"WarningText"}]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K7 ["createElement"]
  LOADK R16 K18 ["TextLabel"]
  DUPTABLE R17 K20 [{"Text", "LayoutOrder"}]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R19 R1
  GETIMPORT R18 K22 [tostring]
  CALL R18 1 1
  SETTABLEKS R18 R17 K19 ["Text"]
  GETUPVAL R18 2
  NAMECALL R18 R18 K11 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K12 ["LayoutOrder"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K16 ["WarningText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K13 ["BannerContents"]
  CALL R7 3 1
  RETURN R7 1
  LOADNIL R7
  RETURN R7 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ControlsEmulator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["LayoutOrderIterator"]
  GETTABLEKS R4 R3 K11 ["new"]
  CALL R4 0 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K12 ["Src"]
  GETTABLEKS R7 R8 K9 ["Util"]
  GETTABLEKS R6 R7 K13 ["MappingsContext"]
  CALL R5 1 1
  DUPCLOSURE R6 K14 [PROTO_4]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R4
  GETTABLEKS R7 R1 K15 ["memo"]
  MOVE R8 R6
  CALL R7 1 -1
  RETURN R7 -1