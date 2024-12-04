PROTO_0:
  GETIMPORT R1 K1 [pairs]
  GETUPVAL R2 0
  CALL R1 1 3
  FORGPREP_NEXT R1
  LOADN R6 100
  JUMPIFNOTLE R6 R5 [+11]
  FASTCALL1 TOSTRING R5 [+3]
  MOVE R9 R5
  GETIMPORT R8 K3 [tostring]
  CALL R8 1 1
  NAMECALL R6 R0 K4 ["find"]
  CALL R6 2 1
  JUMPIFNOT R6 [+1]
  RETURN R5 1
  FORGLOOP R1 2 [-14]
  LOADK R3 K5 ["2%d%d"]
  NAMECALL R1 R0 K4 ["find"]
  CALL R1 2 1
  JUMPIFNOT R1 [+4]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["OK"]
  RETURN R1 1
  LOADK R3 K7 ["curl_easy_perform"]
  NAMECALL R1 R0 K4 ["find"]
  CALL R1 2 1
  JUMPIFNOT R1 [+9]
  LOADK R3 K8 ["SSL"]
  NAMECALL R1 R0 K4 ["find"]
  CALL R1 2 1
  JUMPIFNOT R1 [+4]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K9 ["BAD_TLS"]
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K10 ["UNKNOWN_ERROR"]
  RETURN R1 1

PROTO_1:
  GETIMPORT R3 K1 [tick]
  CALL R3 0 1
  GETIMPORT R4 K3 [pcall]
  MOVE R5 R2
  CALL R4 1 2
  GETIMPORT R6 K1 [tick]
  CALL R6 0 1
  SUB R8 R6 R3
  MULK R7 R8 K4 [1000]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K5 ["OK"]
  JUMPIF R4 [+4]
  GETUPVAL R9 1
  MOVE R10 R5
  CALL R9 1 1
  MOVE R8 R9
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K6 ["new"]
  MOVE R10 R5
  MOVE R11 R7
  MOVE R12 R8
  MOVE R13 R0
  MOVE R14 R1
  CALL R9 5 -1
  RETURN R9 -1

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["GetAsyncFullUrl"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_3:
  GETUPVAL R2 0
  LOADK R3 K0 ["GET"]
  MOVE R4 R1
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CALL R2 3 -1
  RETURN R2 -1

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R3 2
  GETIMPORT R4 K3 [Enum.ThrottlingPriority.Default]
  GETUPVAL R5 3
  NAMECALL R0 R0 K4 ["PostAsyncFullUrl"]
  CALL R0 5 -1
  RETURN R0 -1

PROTO_5:
  JUMPIF R3 [+2]
  GETIMPORT R3 K3 [Enum.HttpContentType.ApplicationJson]
  GETUPVAL R4 0
  LOADK R5 K4 ["POST"]
  MOVE R6 R1
  NEWCLOSURE R7 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE REF R3
  CALL R4 3 -1
  CLOSEUPVALS R3
  RETURN R4 -1

PROTO_6:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["RequestAsync"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_7:
  GETUPVAL R2 0
  LOADK R3 K0 ["DELETE"]
  MOVE R4 R1
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CALL R2 3 -1
  RETURN R2 -1

PROTO_8:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["RequestAsync"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_9:
  GETUPVAL R2 0
  LOADK R3 K0 ["PATCH"]
  MOVE R4 R1
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CALL R2 3 -1
  RETURN R2 -1

PROTO_10:
  GETUPVAL R0 0
  GETUPVAL R2 1
  FASTCALL1 TABLE_UNPACK R2 [+2]
  GETIMPORT R1 K1 [unpack]
  CALL R1 1 -1
  CALL R0 -1 1
  GETTABLEKS R1 R0 K2 ["responseCode"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K3 ["OK"]
  JUMPIFNOTEQ R1 R2 [+5]
  GETUPVAL R1 3
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R1 4
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_11:
  GETIMPORT R2 K1 [spawn]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE VAL R1
  CALL R2 1 0
  RETURN R0 0

PROTO_12:
  PREPVARARGS 1
  NEWTABLE R1 0 0
  GETVARARGS R2 -1
  SETLIST R1 R2 -1 [1]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["new"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CALL R2 1 1
  RETURN R2 1

PROTO_13:
  DUPTABLE R0 K1 [{"_httpImpl"}]
  GETUPVAL R1 0
  SETTABLEKS R1 R0 K0 ["_httpImpl"]
  GETUPVAL R3 1
  FASTCALL2 SETMETATABLE R0 R3 [+4]
  MOVE R2 R0
  GETIMPORT R1 K3 [setmetatable]
  CALL R1 2 0
  RETURN R0 1

PROTO_14:
  GETUPVAL R2 0
  MOVE R4 R1
  NAMECALL R2 R2 K0 ["JSONEncode"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_15:
  GETUPVAL R2 0
  MOVE R4 R1
  NAMECALL R2 R2 K0 ["JSONDecode"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_16:
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["responseBody"]
  NAMECALL R1 R1 K1 ["jsonDecode"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K0 ["responseBody"]
  RETURN R0 1

PROTO_17:
  RETURN R0 1

PROTO_18:
  GETUPVAL R2 0
  GETUPVAL R3 1
  GETTABLEKS R4 R0 K0 ["_httpImpl"]
  MOVE R5 R1
  CALL R2 3 1
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  DUPCLOSURE R5 K1 [PROTO_17]
  NAMECALL R2 R2 K2 ["andThen"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_19:
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["responseBody"]
  NAMECALL R1 R1 K1 ["jsonDecode"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K0 ["responseBody"]
  RETURN R0 1

PROTO_20:
  RETURN R0 1

PROTO_21:
  GETUPVAL R3 0
  GETUPVAL R4 1
  GETTABLEKS R5 R0 K0 ["_httpImpl"]
  MOVE R6 R1
  MOVE R7 R2
  CALL R3 4 1
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  DUPCLOSURE R6 K1 [PROTO_20]
  NAMECALL R3 R3 K2 ["andThen"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_22:
  GETUPVAL R3 0
  GETUPVAL R4 1
  GETTABLEKS R5 R0 K0 ["_httpImpl"]
  MOVE R6 R1
  MOVE R7 R2
  CALL R3 4 -1
  RETURN R3 -1

PROTO_23:
  GETUPVAL R2 0
  GETUPVAL R3 1
  GETTABLEKS R4 R0 K0 ["_httpImpl"]
  MOVE R5 R1
  CALL R2 3 -1
  RETURN R2 -1

PROTO_24:
  DUPTABLE R2 K2 [{"Url", "Method"}]
  SETTABLEKS R1 R2 K0 ["Url"]
  LOADK R3 K3 ["DELETE"]
  SETTABLEKS R3 R2 K1 ["Method"]
  GETUPVAL R3 0
  GETUPVAL R4 1
  GETTABLEKS R5 R0 K4 ["_httpImpl"]
  MOVE R6 R2
  CALL R3 3 -1
  RETURN R3 -1

PROTO_25:
  DUPTABLE R3 K4 [{"Url", "Method", "Body", "Headers"}]
  SETTABLEKS R1 R3 K0 ["Url"]
  LOADK R4 K5 ["PATCH"]
  SETTABLEKS R4 R3 K1 ["Method"]
  SETTABLEKS R2 R3 K2 ["Body"]
  NEWTABLE R4 1 0
  LOADK R5 K6 ["application/json"]
  SETTABLEKS R5 R4 K7 ["Content-Type"]
  SETTABLEKS R4 R3 K3 ["Headers"]
  GETUPVAL R4 0
  GETUPVAL R5 1
  GETTABLEKS R6 R0 K8 ["_httpImpl"]
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1

PROTO_26:
  JUMPIFNOT R0 [+23]
  GETTABLEKS R2 R1 K0 ["StatusCode"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["BAD_REQUEST"]
  JUMPIFNOTLE R3 R2 [+12]
  GETUPVAL R2 1
  LOADK R4 K2 ["HTTP error: "]
  GETTABLEKS R6 R1 K0 ["StatusCode"]
  FASTCALL1 TOSTRING R6 [+2]
  GETIMPORT R5 K4 [tostring]
  CALL R5 1 1
  CONCAT R3 R4 R5
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R2 2
  GETTABLEKS R3 R1 K5 ["Body"]
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R2 1
  LOADK R4 K2 ["HTTP error: "]
  GETTABLEKS R6 R1 K6 ["HttpError"]
  FASTCALL1 TOSTRING R6 [+2]
  GETIMPORT R5 K4 [tostring]
  CALL R5 1 1
  CONCAT R3 R4 R5
  CALL R2 1 0
  RETURN R0 0

PROTO_27:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["RequestInternal"]
  CALL R0 2 1
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  NAMECALL R0 R0 K1 ["Start"]
  CALL R0 2 0
  RETURN R0 0

PROTO_28:
  GETIMPORT R2 K1 [spawn]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  CAPTURE VAL R0
  CALL R2 1 0
  RETURN R0 0

PROTO_29:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["new"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  CALL R2 1 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["Promise"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K6 ["HttpResponse"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K7 ["StatusCodes"]
  CALL R2 1 1
  GETIMPORT R3 K9 [game]
  LOADK R5 K10 ["HttpService"]
  NAMECALL R3 R3 K11 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K9 [game]
  LOADK R6 K12 ["HttpRbxApiService"]
  NAMECALL R4 R4 K11 ["GetService"]
  CALL R4 2 1
  DUPCLOSURE R5 K13 [PROTO_0]
  CAPTURE VAL R2
  DUPCLOSURE R6 K14 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R1
  DUPCLOSURE R7 K15 [PROTO_3]
  CAPTURE VAL R6
  DUPCLOSURE R8 K16 [PROTO_5]
  CAPTURE VAL R6
  DUPCLOSURE R9 K17 [PROTO_7]
  CAPTURE VAL R6
  DUPCLOSURE R10 K18 [PROTO_9]
  CAPTURE VAL R6
  DUPCLOSURE R11 K19 [PROTO_12]
  CAPTURE VAL R0
  CAPTURE VAL R2
  NEWTABLE R12 16 0
  SETTABLEKS R12 R12 K20 ["__index"]
  DUPCLOSURE R13 K21 [PROTO_13]
  CAPTURE VAL R4
  CAPTURE VAL R12
  SETTABLEKS R13 R12 K22 ["new"]
  DUPCLOSURE R13 K23 [PROTO_14]
  CAPTURE VAL R3
  SETTABLEKS R13 R12 K24 ["jsonEncode"]
  DUPCLOSURE R13 K25 [PROTO_15]
  CAPTURE VAL R3
  SETTABLEKS R13 R12 K26 ["jsonDecode"]
  DUPCLOSURE R13 K27 [PROTO_18]
  CAPTURE VAL R11
  CAPTURE VAL R7
  SETTABLEKS R13 R12 K28 ["httpGetJson"]
  DUPCLOSURE R13 K29 [PROTO_21]
  CAPTURE VAL R11
  CAPTURE VAL R8
  SETTABLEKS R13 R12 K30 ["httpPostJson"]
  DUPCLOSURE R13 K31 [PROTO_22]
  CAPTURE VAL R11
  CAPTURE VAL R8
  SETTABLEKS R13 R12 K32 ["httpPost"]
  DUPCLOSURE R13 K33 [PROTO_23]
  CAPTURE VAL R11
  CAPTURE VAL R7
  SETTABLEKS R13 R12 K34 ["httpGet"]
  DUPCLOSURE R13 K35 [PROTO_24]
  CAPTURE VAL R11
  CAPTURE VAL R9
  SETTABLEKS R13 R12 K36 ["httpDelete"]
  DUPCLOSURE R13 K37 [PROTO_25]
  CAPTURE VAL R11
  CAPTURE VAL R10
  SETTABLEKS R13 R12 K38 ["httpPatch"]
  DUPCLOSURE R13 K39 [PROTO_29]
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R13 R12 K40 ["requestInternal"]
  RETURN R12 1
