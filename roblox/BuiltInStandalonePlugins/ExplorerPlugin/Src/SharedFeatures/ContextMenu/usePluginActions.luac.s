PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["key"]
  NAMECALL R0 R0 K1 ["Fire"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  MOVE R4 R2
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  MOVE R9 R8
  LOADNIL R10
  LOADNIL R11
  FORGPREP R9
  GETTABLEKS R15 R13 K0 ["source"]
  GETTABLEKS R14 R15 K1 ["type"]
  JUMPIFNOTEQKS R14 K2 ["submenu"] [+11]
  GETUPVAL R14 0
  MOVE R15 R0
  MOVE R16 R1
  GETTABLEKS R18 R13 K0 ["source"]
  GETTABLEKS R17 R18 K3 ["submenuCategories"]
  MOVE R18 R3
  CALL R14 4 0
  JUMP [+42]
  GETTABLEKS R15 R13 K0 ["source"]
  GETTABLEKS R14 R15 K1 ["type"]
  JUMPIFNOTEQKS R14 K4 ["studioAction"] [+31]
  LOADK R17 K5 ["Explorer_%*_%*"]
  GETTABLEKS R19 R13 K6 ["key"]
  GETUPVAL R20 1
  NAMECALL R20 R20 K7 ["GenerateGUID"]
  CALL R20 1 1
  NAMECALL R17 R17 K8 ["format"]
  CALL R17 3 1
  MOVE R16 R17
  LOADK R17 K9 ["TBD: Name"]
  LOADK R18 K10 [""]
  LOADNIL R19
  LOADB R20 0
  NAMECALL R14 R0 K11 ["CreatePluginAction"]
  CALL R14 6 1
  GETTABLEKS R15 R14 K12 ["Triggered"]
  NEWCLOSURE R17 P0
  CAPTURE VAL R1
  CAPTURE VAL R13
  NAMECALL R15 R15 K13 ["Connect"]
  CALL R15 2 0
  GETTABLEKS R15 R13 K6 ["key"]
  SETTABLE R14 R3 R15
  JUMP [+6]
  GETUPVAL R14 2
  GETTABLEKS R16 R13 K0 ["source"]
  GETTABLEKS R15 R16 K1 ["type"]
  CALL R14 1 0
  FORGLOOP R9 2 [-59]
  FORGLOOP R4 2 [-65]
  RETURN R0 0

PROTO_2:
  LOADB R0 1
  SETUPVAL R0 0
  RETURN R0 0

PROTO_3:
  LOADB R0 0
  GETIMPORT R1 K2 [task.defer]
  NEWCLOSURE R2 P0
  CAPTURE REF R0
  CALL R1 1 0
  GETUPVAL R1 0
  GETUPVAL R2 1
  GETUPVAL R3 2
  GETUPVAL R4 3
  GETUPVAL R5 4
  CALL R1 4 0
  JUMPIFNOT R0 [+4]
  GETIMPORT R1 K4 [warn]
  LOADK R2 K5 ["collectActions yielded, which shouldn't be possible but is what I think is breaking"]
  CALL R1 1 0
  CLOSEUPVALS R0
  RETURN R0 0

PROTO_4:
  NEWTABLE R0 0 0
  GETIMPORT R1 K2 [task.spawn]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 1

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["ContextServices"]
  GETTABLEKS R1 R2 K1 ["Plugin"]
  NAMECALL R1 R1 K2 ["use"]
  CALL R1 1 1
  NAMECALL R1 R1 K3 ["get"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["useState"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CALL R2 1 1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["HttpService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["ExplorerPlugin"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R6 R1 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["SharedFeatures"]
  GETTABLEKS R4 R5 K12 ["ContextMenu"]
  GETTABLEKS R3 R4 K13 ["ContextMenuActionList"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R1 K14 ["Packages"]
  GETTABLEKS R4 R5 K15 ["Explorer"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R1 K14 ["Packages"]
  GETTABLEKS R5 R6 K16 ["Framework"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R1 K14 ["Packages"]
  GETTABLEKS R6 R7 K17 ["React"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R1 K10 ["Src"]
  GETTABLEKS R8 R9 K18 ["Util"]
  GETTABLEKS R7 R8 K19 ["exhaustiveMatch"]
  CALL R6 1 1
  DUPCLOSURE R7 K20 [PROTO_1]
  CAPTURE VAL R7
  CAPTURE VAL R0
  CAPTURE VAL R6
  DUPCLOSURE R8 K21 [PROTO_5]
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R2
  RETURN R8 1
