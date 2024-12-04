PROTO_0:
  MOVE R1 R0
  JUMPIFNOT R1 [+9]
  GETIMPORT R1 K2 [string.find]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K4 [tostring]
  CALL R2 1 1
  LOADK R3 K5 ["?"]
  CALL R1 2 1
  RETURN R1 1

PROTO_1:
  MOVE R1 R0
  JUMPIFNOT R1 [+9]
  GETIMPORT R1 K2 [string.find]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K4 [tostring]
  CALL R2 1 1
  LOADK R3 K5 ["?"]
  CALL R1 2 1
  JUMPIFNOT R1 [+9]
  LOADN R3 1
  JUMPIFNOTLT R3 R1 [+7]
  LOADN R4 1
  SUBK R5 R1 K6 [1]
  NAMECALL R2 R0 K7 ["sub"]
  CALL R2 3 1
  JUMPIF R2 [+1]
  LOADNIL R2
  RETURN R2 1

PROTO_2:
  MOVE R1 R0
  JUMPIFNOT R1 [+9]
  GETIMPORT R1 K2 [string.find]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K4 [tostring]
  CALL R2 1 1
  LOADK R3 K5 ["?"]
  CALL R1 2 1
  JUMPIFNOT R1 [+12]
  FASTCALL1 STRING_LEN R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K7 [string.len]
  CALL R3 1 1
  JUMPIFNOTLT R1 R3 [+6]
  ADDK R4 R1 K8 [1]
  NAMECALL R2 R0 K9 ["sub"]
  CALL R2 2 1
  JUMPIF R2 [+1]
  LOADNIL R2
  RETURN R2 1

PROTO_3:
  NEWTABLE R1 0 0
  GETIMPORT R2 K2 [string.gsub]
  MOVE R3 R0
  LOADK R4 K3 ["^assetIds="]
  LOADK R5 K4 [""]
  CALL R2 3 1
  MOVE R0 R2
  MOVE R3 R0
  LOADK R4 K5 [","]
  CONCAT R2 R3 R4
  LOADK R4 K6 ["(.-),"]
  NAMECALL R2 R2 K7 ["gmatch"]
  CALL R2 2 3
  FORGPREP R2
  FASTCALL1 TONUMBER R5 [+3]
  MOVE R8 R5
  GETIMPORT R7 K9 [tonumber]
  CALL R7 1 1
  JUMPIFNOT R7 [+7]
  FASTCALL2 TABLE_INSERT R1 R7 [+5]
  MOVE R9 R1
  MOVE R10 R7
  GETIMPORT R8 K12 [table.insert]
  CALL R8 2 0
  FORGLOOP R2 1 [-14]
  RETURN R1 1

PROTO_4:
  DUPCLOSURE R1 K0 [PROTO_3]
  MOVE R2 R1
  MOVE R3 R0
  CALL R2 1 1
  DUPTABLE R3 K2 [{"data"}]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K1 ["data"]
  GETIMPORT R4 K4 [ipairs]
  MOVE R5 R2
  CALL R4 1 3
  FORGPREP_INEXT R4
  GETTABLEKS R9 R3 K1 ["data"]
  DUPTABLE R10 K16 [{"canHaveThumbnail", "isArchivable", "id", "isPublicDomainEnabled", "typeId", "isModerated", "isVersioningEnabled", "name", "description", "enableComments", "isCopyingAllowed"}]
  LOADB R11 0
  SETTABLEKS R11 R10 K5 ["canHaveThumbnail"]
  LOADB R11 0
  SETTABLEKS R11 R10 K6 ["isArchivable"]
  SETTABLEKS R8 R10 K7 ["id"]
  LOADB R11 0
  SETTABLEKS R11 R10 K8 ["isPublicDomainEnabled"]
  LOADN R11 19
  SETTABLEKS R11 R10 K9 ["typeId"]
  LOADB R11 0
  SETTABLEKS R11 R10 K10 ["isModerated"]
  LOADB R11 0
  SETTABLEKS R11 R10 K11 ["isVersioningEnabled"]
  LOADK R11 K17 ["Merely's ROBLOX Tablet"]
  SETTABLEKS R11 R10 K12 ["name"]
  LOADK R11 K18 ["Winner: Merely. ROBLOX will be in touch to redeem this prize."]
  SETTABLEKS R11 R10 K13 ["description"]
  LOADB R11 0
  SETTABLEKS R11 R10 K14 ["enableComments"]
  LOADB R11 0
  SETTABLEKS R11 R10 K15 ["isCopyingAllowed"]
  SETTABLE R10 R9 R7
  FORGLOOP R4 2 [inext] [-37]
  GETUPVAL R4 0
  MOVE R6 R3
  NAMECALL R4 R4 K19 ["JSONEncode"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_5:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"data"}]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K0 ["data"]
  NAMECALL R0 R0 K2 ["JSONEncode"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_6:
  NEWTABLE R1 1 0
  DUPCLOSURE R2 K0 [PROTO_4]
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K1 ["https://develop.roblox.com/v1/assets"]
  GETTABLEKS R3 R0 K2 ["Url"]
  MOVE R4 R3
  JUMPIFNOT R4 [+9]
  GETIMPORT R4 K5 [string.find]
  FASTCALL1 TOSTRING R3 [+3]
  MOVE R6 R3
  GETIMPORT R5 K7 [tostring]
  CALL R5 1 1
  LOADK R6 K8 ["?"]
  CALL R4 2 1
  JUMPIFNOT R4 [+10]
  LOADN R5 1
  JUMPIFNOTLT R5 R4 [+8]
  LOADN R7 1
  SUBK R8 R4 K9 [1]
  NAMECALL R5 R3 K10 ["sub"]
  CALL R5 3 1
  MOVE R2 R5
  JUMPIF R2 [+1]
  LOADNIL R2
  GETTABLEKS R4 R0 K2 ["Url"]
  MOVE R5 R4
  JUMPIFNOT R5 [+9]
  GETIMPORT R5 K5 [string.find]
  FASTCALL1 TOSTRING R4 [+3]
  MOVE R7 R4
  GETIMPORT R6 K7 [tostring]
  CALL R6 1 1
  LOADK R7 K8 ["?"]
  CALL R5 2 1
  JUMPIFNOT R5 [+13]
  FASTCALL1 STRING_LEN R4 [+3]
  MOVE R7 R4
  GETIMPORT R6 K12 [string.len]
  CALL R6 1 1
  JUMPIFNOTLT R5 R6 [+7]
  ADDK R8 R5 K9 [1]
  NAMECALL R6 R4 K10 ["sub"]
  CALL R6 2 1
  MOVE R3 R6
  JUMPIF R3 [+1]
  LOADNIL R3
  GETTABLE R4 R1 R2
  JUMPIF R4 [+2]
  DUPCLOSURE R4 K13 [PROTO_5]
  CAPTURE UPVAL U0
  DUPTABLE R5 K18 [{"Body", "Success", "StatusMessage", "StatusCode"}]
  MOVE R6 R4
  MOVE R7 R3
  CALL R6 1 1
  SETTABLEKS R6 R5 K14 ["Body"]
  LOADB R6 1
  SETTABLEKS R6 R5 K15 ["Success"]
  LOADK R6 K19 ["OK"]
  SETTABLEKS R6 R5 K16 ["StatusMessage"]
  LOADN R6 200
  SETTABLEKS R6 R5 K17 ["StatusCode"]
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["HttpService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  DUPCLOSURE R1 K4 [PROTO_0]
  DUPCLOSURE R2 K5 [PROTO_1]
  DUPCLOSURE R3 K6 [PROTO_2]
  DUPCLOSURE R4 K7 [PROTO_6]
  CAPTURE VAL R0
  RETURN R4 1
