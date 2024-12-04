PROTO_0:
  LOADB R2 0
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K1 [typeof]
  CALL R3 1 1
  JUMPIFNOTEQKS R3 K2 ["number"] [+10]
  LOADB R2 0
  GETUPVAL R3 0
  JUMPIFNOTLE R3 R0 [+6]
  GETUPVAL R3 1
  JUMPIFLE R0 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETIMPORT R3 K5 [string.format]
  GETIMPORT R7 K7 [script]
  GETTABLEKS R5 R7 K8 ["Name"]
  LOADK R6 K9 [" requires loadState to be a LoadState, not %s"]
  CONCAT R4 R5 R6
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R6 R0
  GETIMPORT R5 K1 [typeof]
  CALL R5 1 1
  CALL R3 2 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R1 K11 [assert]
  CALL R1 -1 0
  DUPTABLE R1 K13 [{"loadState"}]
  SETTABLEKS R0 R1 K12 ["loadState"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K6 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K7 ["Util"]
  GETTABLEKS R1 R2 K8 ["Action"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K9 ["Src"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K10 ["LoadState"]
  CALL R2 1 1
  LOADN R3 0
  LOADN R4 0
  GETIMPORT R5 K12 [pairs]
  MOVE R6 R2
  CALL R5 1 3
  FORGPREP_NEXT R5
  FASTCALL2 MATH_MIN R3 R9 [+5]
  MOVE R11 R3
  MOVE R12 R9
  GETIMPORT R10 K15 [math.min]
  CALL R10 2 1
  MOVE R3 R10
  FASTCALL2 MATH_MAX R4 R9 [+5]
  MOVE R11 R4
  MOVE R12 R9
  GETIMPORT R10 K17 [math.max]
  CALL R10 2 1
  MOVE R4 R10
  FORGLOOP R5 2 [-17]
  MOVE R5 R1
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K18 ["Name"]
  NEWCLOSURE R7 P0
  CAPTURE REF R3
  CAPTURE REF R4
  CALL R5 2 -1
  CLOSEUPVALS R3
  RETURN R5 -1