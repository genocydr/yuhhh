PROTO_0:
  GETTABLEKS R3 R0 K0 ["Label"]
  GETTABLEKS R4 R1 K0 ["Label"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_1:
  NEWTABLE R2 0 0
  JUMPIFNOTEQKNIL R0 [+2]
  RETURN R2 1
  MOVE R3 R0
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  NAMECALL R8 R7 K0 ["lower"]
  CALL R8 1 1
  NAMECALL R10 R1 K0 ["lower"]
  CALL R10 1 -1
  NAMECALL R8 R8 K1 ["match"]
  CALL R8 -1 1
  JUMPIFNOT R8 [+14]
  DUPTABLE R8 K5 [{"Id", "Label", "Value"}]
  SETTABLEKS R7 R8 K2 ["Id"]
  SETTABLEKS R7 R8 K3 ["Label"]
  SETTABLEKS R7 R8 K4 ["Value"]
  FASTCALL2 TABLE_INSERT R2 R8 [+5]
  MOVE R10 R2
  MOVE R11 R8
  GETIMPORT R9 K8 [table.insert]
  CALL R9 2 0
  FORGLOOP R3 2 [-25]
  GETIMPORT R3 K10 [table.sort]
  MOVE R4 R2
  DUPCLOSURE R5 K11 [PROTO_0]
  CALL R3 2 0
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
  DUPCLOSURE R2 K7 [PROTO_1]
  RETURN R2 1