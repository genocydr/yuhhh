PROTO_0:
  LOADB R2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["FIRST"]
  JUMPIFNOTLE R3 R1 [+8]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["LAST"]
  JUMPIFLE R1 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_1:
  GETUPVAL R2 0
  MOVE R4 R1
  NAMECALL R2 R2 K0 ["isValid"]
  CALL R2 2 1
  JUMPIF R2 [+12]
  GETIMPORT R2 K2 [error]
  LOADK R3 K3 ["Direction %s is not valid. Cannot convert to short name."]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R6 R1
  GETIMPORT R5 K5 [tostring]
  CALL R5 1 1
  NAMECALL R3 R3 K6 ["format"]
  CALL R3 2 -1
  CALL R2 -1 0
  GETUPVAL R3 1
  GETTABLE R2 R3 R1
  RETURN R2 1

PROTO_2:
  MINUS R5 R0
  MULK R4 R5 K1 [0.00277777777777778]
  FASTCALL1 MATH_CEIL R4 [+2]
  GETIMPORT R3 K4 [math.ceil]
  CALL R3 1 1
  MULK R2 R3 K0 [360]
  ADD R1 R0 R2
  RETURN R1 1

PROTO_3:
  GETGLOBAL R2 K0 ["normalizeAngle"]
  MOVE R3 R1
  CALL R2 1 1
  ADDK R7 R2 K4 [22.5]
  MULK R6 R7 K3 [0.0222222222222222]
  FASTCALL1 MATH_FLOOR R6 [+2]
  GETIMPORT R5 K7 [math.floor]
  CALL R5 1 1
  MODK R4 R5 K2 [8]
  ADDK R3 R4 K1 [1]
  RETURN R3 1

PROTO_4:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["E"]
  JUMPIFEQKN R4 K1 [1] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K2 [+4]
  LOADK R4 K2 ["Direction.E was not the first direction."]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["NE"]
  JUMPIFEQKN R4 K6 [8] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K7 [+4]
  LOADK R4 K7 ["Direction.NE was not the last direction."]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  GETUPVAL R3 0
  MOVE R5 R1
  NAMECALL R3 R3 K8 ["isValid"]
  CALL R3 2 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R2 K4 [assert]
  CALL R2 -1 0
  SUBK R3 R1 K1 [1]
  MULK R2 R3 K9 [45]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 16 0
  LOADN R1 0
  SETTABLEKS R1 R0 K0 ["NOT_SET"]
  LOADN R1 1
  SETTABLEKS R1 R0 K1 ["E"]
  LOADN R1 2
  SETTABLEKS R1 R0 K2 ["SE"]
  LOADN R1 3
  SETTABLEKS R1 R0 K3 ["S"]
  LOADN R1 4
  SETTABLEKS R1 R0 K4 ["SW"]
  LOADN R1 5
  SETTABLEKS R1 R0 K5 ["W"]
  LOADN R1 6
  SETTABLEKS R1 R0 K6 ["NW"]
  LOADN R1 7
  SETTABLEKS R1 R0 K7 ["N"]
  LOADN R1 8
  SETTABLEKS R1 R0 K8 ["NE"]
  GETTABLEKS R1 R0 K1 ["E"]
  SETTABLEKS R1 R0 K9 ["FIRST"]
  GETTABLEKS R1 R0 K8 ["NE"]
  SETTABLEKS R1 R0 K10 ["LAST"]
  NEWTABLE R1 8 0
  GETTABLEKS R2 R0 K1 ["E"]
  LOADK R3 K1 ["E"]
  SETTABLE R3 R1 R2
  GETTABLEKS R2 R0 K2 ["SE"]
  LOADK R3 K2 ["SE"]
  SETTABLE R3 R1 R2
  GETTABLEKS R2 R0 K3 ["S"]
  LOADK R3 K3 ["S"]
  SETTABLE R3 R1 R2
  GETTABLEKS R2 R0 K4 ["SW"]
  LOADK R3 K4 ["SW"]
  SETTABLE R3 R1 R2
  GETTABLEKS R2 R0 K5 ["W"]
  LOADK R3 K5 ["W"]
  SETTABLE R3 R1 R2
  GETTABLEKS R2 R0 K6 ["NW"]
  LOADK R3 K6 ["NW"]
  SETTABLE R3 R1 R2
  GETTABLEKS R2 R0 K7 ["N"]
  LOADK R3 K7 ["N"]
  SETTABLE R3 R1 R2
  GETTABLEKS R2 R0 K8 ["NE"]
  LOADK R3 K8 ["NE"]
  SETTABLE R3 R1 R2
  DUPCLOSURE R2 K11 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K12 ["isValid"]
  DUPCLOSURE R2 K13 [PROTO_1]
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R2 R0 K14 ["toShortName"]
  DUPCLOSURE R2 K15 [PROTO_2]
  SETGLOBAL R2 K16 ["normalizeAngle"]
  DUPCLOSURE R2 K17 [PROTO_3]
  SETTABLEKS R2 R0 K18 ["angleToDirection"]
  DUPCLOSURE R2 K19 [PROTO_4]
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K20 ["directionToAngle"]
  RETURN R0 1