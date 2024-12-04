PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["responseBody"]
  CALL R1 1 1
  JUMPIFNOT R1 [+43]
  GETUPVAL R2 1
  GETTABLEKS R3 R0 K0 ["responseBody"]
  DUPTABLE R4 K2 [{"multiline"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K1 ["multiline"]
  CALL R2 2 1
  GETIMPORT R3 K4 [error]
  LOADK R5 K5 ["Response does not match schema"]
  LOADK R10 K6 ["
Reason: %*"]
  MOVE R12 R1
  NAMECALL R10 R10 K7 ["format"]
  CALL R10 2 1
  MOVE R6 R10
  LOADK R10 K8 ["
Method: %*"]
  GETTABLEKS R13 R0 K9 ["requestOptions"]
  GETTABLEKS R12 R13 K10 ["Method"]
  NAMECALL R10 R10 K7 ["format"]
  CALL R10 2 1
  MOVE R7 R10
  LOADK R10 K11 ["
URL: %*"]
  GETTABLEKS R13 R0 K9 ["requestOptions"]
  GETTABLEKS R12 R13 K12 ["Url"]
  NAMECALL R10 R10 K7 ["format"]
  CALL R10 2 1
  MOVE R8 R10
  LOADK R10 K13 ["
Body:
%*"]
  MOVE R12 R2
  NAMECALL R10 R10 K7 ["format"]
  CALL R10 2 1
  MOVE R9 R10
  CONCAT R4 R5 R9
  CALL R3 1 0
  GETTABLEKS R2 R0 K0 ["responseBody"]
  RETURN R2 1

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["TypedDash"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K9 ["TypedNetworking"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K10 ["pretty"]
  DUPCLOSURE R4 K11 [PROTO_1]
  CAPTURE VAL R3
  RETURN R4 1