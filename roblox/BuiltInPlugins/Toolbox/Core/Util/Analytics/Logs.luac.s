PROTO_0:
  GETIMPORT R1 K1 [print]
  LOADK R2 K2 ["[Toolbox Analytics] %s"]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K4 [tostring]
  CALL R4 1 1
  NAMECALL R2 R2 K5 ["format"]
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["shouldLogAnalytics"]
  CALL R5 0 1
  JUMPIF R5 [+1]
  RETURN R0 0
  ORK R0 R0 K1 [""]
  ORK R1 R1 K1 [""]
  ORK R2 R2 K1 [""]
  ORK R3 R3 K1 [""]
  MOVE R5 R4
  JUMPIF R5 [+2]
  NEWTABLE R5 0 0
  MOVE R4 R5
  NEWTABLE R5 0 0
  GETIMPORT R6 K3 [pairs]
  MOVE R7 R4
  CALL R6 1 3
  FORGPREP_NEXT R6
  FASTCALL1 TYPE R9 [+3]
  MOVE R13 R9
  GETIMPORT R12 K5 [type]
  CALL R12 1 1
  JUMPIFNOTEQKS R12 K6 ["string"] [+3]
  MOVE R11 R9
  JUMPIF R11 [+9]
  LOADK R12 K7 ["["]
  FASTCALL1 TOSTRING R10 [+3]
  MOVE R16 R10
  GETIMPORT R15 K9 [tostring]
  CALL R15 1 1
  MOVE R13 R15
  LOADK R14 K10 ["]"]
  CONCAT R11 R12 R14
  FASTCALL1 TYPE R10 [+3]
  MOVE R14 R10
  GETIMPORT R13 K5 [type]
  CALL R13 1 1
  JUMPIFNOTEQKS R13 K6 ["string"] [+6]
  LOADK R13 K11 ["\""]
  MOVE R14 R10
  LOADK R15 K11 ["\""]
  CONCAT R12 R13 R15
  JUMPIF R12 [+5]
  FASTCALL1 TOSTRING R10 [+3]
  MOVE R13 R10
  GETIMPORT R12 K9 [tostring]
  CALL R12 1 1
  LENGTH R14 R5
  ADDK R13 R14 K12 [1]
  MOVE R15 R11
  LOADK R16 K13 ["="]
  MOVE R17 R12
  CONCAT R14 R15 R17
  SETTABLE R14 R5 R13
  FORGLOOP R6 2 [-43]
  GETIMPORT R6 K16 [table.concat]
  MOVE R7 R5
  LOADK R8 K17 [", "]
  CALL R6 2 1
  LOADK R7 K18 ["%s(target=\"%s\", eventContext=\"%s\", eventName=\"%s\", additionalArgs={%s})"]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R10 R0
  GETIMPORT R9 K9 [tostring]
  CALL R9 1 1
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R11 R1
  GETIMPORT R10 K9 [tostring]
  CALL R10 1 1
  FASTCALL1 TOSTRING R2 [+3]
  MOVE R12 R2
  GETIMPORT R11 K9 [tostring]
  CALL R11 1 1
  FASTCALL1 TOSTRING R3 [+3]
  MOVE R13 R3
  GETIMPORT R12 K9 [tostring]
  CALL R12 1 1
  MOVE R13 R6
  NAMECALL R7 R7 K19 ["format"]
  CALL R7 6 1
  GETIMPORT R8 K21 [print]
  LOADK R9 K22 ["[Toolbox Analytics] %s"]
  FASTCALL1 TOSTRING R7 [+3]
  MOVE R12 R7
  GETIMPORT R11 K9 [tostring]
  CALL R11 1 1
  NAMECALL R9 R9 K19 ["format"]
  CALL R9 2 -1
  CALL R8 -1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["shouldLogAnalytics"]
  CALL R5 0 1
  JUMPIF R5 [+1]
  RETURN R0 0
  ORK R0 R0 K1 [""]
  ORK R1 R1 K1 [""]
  ORK R2 R2 K1 [""]
  ORK R3 R3 K1 [""]
  ORK R4 R4 K2 [0]
  LOADK R5 K3 ["%s(category=\"%s\", action=\"%s\", label=\"%s\", value=%s)"]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R8 R0
  GETIMPORT R7 K5 [tostring]
  CALL R7 1 1
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R9 R1
  GETIMPORT R8 K5 [tostring]
  CALL R8 1 1
  FASTCALL1 TOSTRING R2 [+3]
  MOVE R10 R2
  GETIMPORT R9 K5 [tostring]
  CALL R9 1 1
  FASTCALL1 TOSTRING R3 [+3]
  MOVE R11 R3
  GETIMPORT R10 K5 [tostring]
  CALL R10 1 1
  FASTCALL1 TOSTRING R4 [+3]
  MOVE R12 R4
  GETIMPORT R11 K5 [tostring]
  CALL R11 1 1
  NAMECALL R5 R5 K6 ["format"]
  CALL R5 6 1
  GETIMPORT R6 K8 [print]
  LOADK R7 K9 ["[Toolbox Analytics] %s"]
  FASTCALL1 TOSTRING R5 [+3]
  MOVE R10 R5
  GETIMPORT R9 K5 [tostring]
  CALL R9 1 1
  NAMECALL R7 R7 K6 ["format"]
  CALL R7 2 -1
  CALL R6 -1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["shouldLogAnalytics"]
  CALL R3 0 1
  JUMPIF R3 [+1]
  RETURN R0 0
  ORK R0 R0 K1 [""]
  ORK R1 R1 K1 [""]
  ORK R2 R2 K2 [1]
  LOADK R3 K3 ["%s(counter=\"%s\", amount=%s)"]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R6 R0
  GETIMPORT R5 K5 [tostring]
  CALL R5 1 1
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R7 R1
  GETIMPORT R6 K5 [tostring]
  CALL R6 1 1
  FASTCALL1 TOSTRING R2 [+3]
  MOVE R8 R2
  GETIMPORT R7 K5 [tostring]
  CALL R7 1 1
  NAMECALL R3 R3 K6 ["format"]
  CALL R3 4 1
  GETIMPORT R4 K8 [print]
  LOADK R5 K9 ["[Toolbox Analytics] %s"]
  FASTCALL1 TOSTRING R3 [+3]
  MOVE R8 R3
  GETIMPORT R7 K5 [tostring]
  CALL R7 1 1
  NAMECALL R5 R5 K6 ["format"]
  CALL R5 2 -1
  CALL R4 -1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Core"]
  GETTABLEKS R3 R4 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["DebugFlags"]
  CALL R1 1 1
  NEWTABLE R2 4 0
  DUPCLOSURE R3 K8 [PROTO_0]
  DUPCLOSURE R4 K9 [PROTO_1]
  CAPTURE VAL R1
  SETTABLEKS R4 R2 K10 ["logAnalytics"]
  DUPCLOSURE R4 K11 [PROTO_2]
  CAPTURE VAL R1
  SETTABLEKS R4 R2 K12 ["logEvent"]
  DUPCLOSURE R4 K13 [PROTO_3]
  CAPTURE VAL R1
  SETTABLEKS R4 R2 K14 ["logCounterEvent"]
  RETURN R2 1
