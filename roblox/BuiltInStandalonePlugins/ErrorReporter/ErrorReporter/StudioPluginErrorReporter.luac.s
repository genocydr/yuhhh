PROTO_0:
  GETIMPORT R2 K2 [string.format]
  LOADK R3 K3 ["%s.%s"]
  MOVE R4 R0
  MOVE R5 R1
  CALL R2 3 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["staticAttributes"]
  NAMECALL R1 R0 K1 ["addAttributes"]
  CALL R1 2 0
  RETURN R0 1

PROTO_2:
  GETUPVAL R5 0
  LENGTH R4 R5
  ADDK R3 R4 K0 [2]
  LENGTH R5 R0
  SUBK R4 R5 K1 [5]
  FASTCALL3 STRING_SUB R0 R3 R4
  MOVE R2 R0
  GETIMPORT R1 K4 [string.sub]
  CALL R1 3 1
  GETUPVAL R2 1
  MOVE R4 R1
  NAMECALL R2 R2 K5 ["GetOTAPluginVersion"]
  CALL R2 2 1
  DUPTABLE R3 K10 [{"eventName", "longPluginName", "pluginName", "otaVersion"}]
  LOADK R4 K11 ["ErrorReporter"]
  SETTABLEKS R4 R3 K6 ["eventName"]
  SETTABLEKS R0 R3 K7 ["longPluginName"]
  SETTABLEKS R1 R3 K8 ["pluginName"]
  SETTABLEKS R2 R3 K9 ["otaVersion"]
  GETIMPORT R4 K13 [game]
  LOADK R6 K14 ["RbxAnalyticsService"]
  NAMECALL R4 R4 K15 ["GetService"]
  CALL R4 2 1
  LOADK R6 K16 ["PluginOTAErrorAnalytics"]
  MOVE R7 R3
  GETIMPORT R8 K13 [game]
  LOADK R10 K17 ["PluginOTAErrorAnalyticsHundredthsPercentage"]
  NAMECALL R8 R8 K18 ["GetFastInt"]
  CALL R8 2 -1
  NAMECALL R4 R4 K19 ["ReportInfluxSeries"]
  CALL R4 -1 0
  RETURN R2 1

PROTO_3:
  GETUPVAL R5 0
  JUMPIFEQ R4 R5 [+2]
  RETURN R0 0
  GETIMPORT R5 K2 [string.find]
  MOVE R6 R1
  GETUPVAL R7 1
  CALL R5 2 1
  GETUPVAL R6 2
  JUMPIFNOT R6 [+3]
  JUMPIF R5 [+5]
  RETURN R0 0
  JUMP [+3]
  JUMPIFEQKN R5 K3 [1] [+2]
  RETURN R0 0
  GETUPVAL R6 3
  JUMPIFNOT R6 [+7]
  GETIMPORT R6 K5 [string.match]
  MOVE R7 R0
  LOADK R8 K6 ["Requested module experienced an error while loading"]
  CALL R6 2 1
  JUMPIFNOT R6 [+1]
  RETURN R0 0
  GETUPVAL R7 2
  JUMPIFNOT R7 [+6]
  GETIMPORT R6 K8 [string.format]
  LOADK R7 K9 ["(%s_%%a+%%.rbxm)"]
  GETUPVAL R8 1
  CALL R6 2 1
  JUMP [+5]
  GETIMPORT R6 K8 [string.format]
  LOADK R7 K10 ["^(%s_%%a+%%.rbxm)"]
  GETUPVAL R8 1
  CALL R6 2 1
  GETIMPORT R7 K5 [string.match]
  MOVE R8 R1
  MOVE R9 R6
  CALL R7 2 1
  JUMPIFNOTEQKNIL R7 [+2]
  RETURN R0 0
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K11 ["unstable_parseReactError"]
  MOVE R9 R0
  CALL R8 1 2
  GETTABLEKS R0 R8 K12 ["message"]
  GETTABLEKS R10 R8 K13 ["stack"]
  JUMPIFNOT R10 [+3]
  GETTABLEKS R1 R8 K13 ["stack"]
  JUMP [0]
  OR R3 R3 R9
  GETUPVAL R10 5
  MOVE R12 R7
  MOVE R13 R0
  MOVE R14 R1
  MOVE R15 R3
  NAMECALL R10 R10 K14 ["_reportError"]
  CALL R10 5 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["Expected the correct args"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETTABLEKS R1 R0 K3 ["expectedSecurityLevel"]
  GETTABLEKS R2 R0 K4 ["expectedPrefix"]
  JUMPIFNOTEQKS R2 K5 [""] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K6 [+4]
  LOADK R5 K6 ["expectedPrefix must not be an empty string"]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  GETTABLEKS R3 R0 K7 ["networking"]
  JUMPIF R3 [+8]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K8 ["new"]
  DUPTABLE R4 K10 [{"isInternal"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K9 ["isInternal"]
  CALL R3 1 1
  GETTABLEKS R4 R0 K11 ["errorSignal"]
  JUMPIF R4 [+3]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K12 ["ErrorDetailed"]
  GETTABLEKS R5 R0 K13 ["services"]
  JUMPIF R5 [+2]
  NEWTABLE R5 0 0
  GETTABLEKS R6 R5 K14 ["AnalyticsService"]
  JUMPIF R6 [+1]
  GETUPVAL R6 3
  GETTABLEKS R7 R5 K15 ["RunService"]
  JUMPIF R7 [+1]
  GETUPVAL R7 4
  GETTABLEKS R8 R5 K16 ["HttpService"]
  JUMPIF R8 [+1]
  GETUPVAL R8 5
  GETTABLEKS R9 R5 K17 ["ContentProvider"]
  JUMPIF R9 [+1]
  GETUPVAL R9 6
  NAMECALL R10 R7 K18 ["GetRobloxVersion"]
  CALL R10 1 1
  NAMECALL R11 R8 K19 ["GetUserAgent"]
  CALL R11 1 1
  GETTABLEKS R12 R9 K20 ["BaseUrl"]
  DUPTABLE R14 K22 [{"_hasReported"}]
  NEWTABLE R15 0 0
  SETTABLEKS R15 R14 K21 ["_hasReported"]
  GETUPVAL R15 7
  FASTCALL2 SETMETATABLE R14 R15 [+3]
  GETIMPORT R13 K24 [setmetatable]
  CALL R13 2 1
  SETTABLEKS R4 R13 K11 ["errorSignal"]
  SETTABLEKS R6 R13 K25 ["analyticsService"]
  DUPTABLE R14 K28 [{"StudioVersion", "UserAgent", "BaseUrl"}]
  SETTABLEKS R10 R14 K26 ["StudioVersion"]
  SETTABLEKS R11 R14 K27 ["UserAgent"]
  SETTABLEKS R12 R14 K20 ["BaseUrl"]
  SETTABLEKS R14 R13 K29 ["staticAttributes"]
  GETUPVAL R15 8
  GETTABLEKS R14 R15 K8 ["new"]
  DUPTABLE R15 K32 [{"networking", "accessToken", "processErrorReportMethod"}]
  SETTABLEKS R3 R15 K7 ["networking"]
  GETUPVAL R16 9
  SETTABLEKS R16 R15 K30 ["accessToken"]
  NEWCLOSURE R16 P0
  CAPTURE VAL R13
  SETTABLEKS R16 R15 K31 ["processErrorReportMethod"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K33 ["reporter"]
  GETUPVAL R15 10
  JUMPIFNOT R15 [+4]
  NEWCLOSURE R14 P1
  CAPTURE VAL R2
  CAPTURE UPVAL U11
  JUMPIF R14 [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K34 ["getOTAPluginVersion"]
  JUMPIFNOTEQKS R10 K35 ["0.0.0.1"] [+2]
  LOADB R14 0 +1
  LOADB R14 1
  JUMPIFNOT R14 [+14]
  GETTABLEKS R15 R13 K11 ["errorSignal"]
  NEWCLOSURE R17 P2
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  CAPTURE UPVAL U14
  CAPTURE VAL R13
  NAMECALL R15 R15 K36 ["Connect"]
  CALL R15 2 1
  SETTABLEKS R15 R13 K37 ["errorToken"]
  RETURN R13 1

PROTO_5:
  GETTABLEKS R7 R0 K0 ["_hasReported"]
  GETTABLE R6 R7 R1
  NOT R5 R6
  GETTABLEKS R6 R0 K1 ["reporter"]
  DUPTABLE R8 K5 [{"PluginName", "FirstErrorInSession", "OTAPluginVersion"}]
  SETTABLEKS R1 R8 K2 ["PluginName"]
  JUMPIFNOT R5 [+2]
  LOADK R9 K6 ["true"]
  JUMP [+1]
  LOADK R9 K7 ["false"]
  SETTABLEKS R9 R8 K3 ["FirstErrorInSession"]
  GETUPVAL R10 0
  JUMPIFNOT R10 [+5]
  GETTABLEKS R9 R0 K8 ["getOTAPluginVersion"]
  MOVE R10 R1
  CALL R9 1 1
  JUMPIF R9 [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K4 ["OTAPluginVersion"]
  NAMECALL R6 R6 K9 ["updateSharedAttributes"]
  CALL R6 2 0
  GETTABLEKS R6 R0 K1 ["reporter"]
  MOVE R8 R2
  MOVE R9 R3
  MOVE R10 R4
  MOVE R11 R5
  NAMECALL R6 R6 K10 ["reportErrorDeferred"]
  CALL R6 5 0
  GETTABLEKS R6 R0 K11 ["analyticsService"]
  GETIMPORT R8 K14 [string.format]
  LOADK R9 K15 ["%s.%s"]
  LOADK R10 K16 ["StudioPluginErrors"]
  MOVE R11 R1
  CALL R8 3 1
  LOADN R9 1
  NAMECALL R6 R6 K17 ["ReportCounter"]
  CALL R6 3 0
  GETTABLEKS R7 R0 K0 ["_hasReported"]
  GETTABLE R6 R7 R1
  JUMPIF R6 [+16]
  GETTABLEKS R6 R0 K0 ["_hasReported"]
  LOADB R7 1
  SETTABLE R7 R6 R1
  GETTABLEKS R6 R0 K11 ["analyticsService"]
  GETIMPORT R8 K14 [string.format]
  LOADK R9 K15 ["%s.%s"]
  LOADK R10 K18 ["StudioPluginErrorsBySession"]
  MOVE R11 R1
  CALL R8 3 1
  LOADN R9 1
  NAMECALL R6 R6 K17 ["ReportCounter"]
  CALL R6 3 0
  RETURN R0 0

PROTO_6:
  FASTCALL1 TYPE R1 [+3]
  MOVE R6 R1
  GETIMPORT R5 K1 [type]
  CALL R5 1 1
  JUMPIFEQKS R5 K2 ["string"] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K3 [+4]
  LOADK R5 K3 ["Expected pluginName to be a string"]
  GETIMPORT R3 K5 [assert]
  CALL R3 2 0
  FASTCALL1 TYPE R2 [+3]
  MOVE R6 R2
  GETIMPORT R5 K1 [type]
  CALL R5 1 1
  JUMPIFEQKS R5 K2 ["string"] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K6 [+4]
  LOADK R5 K6 ["Expected errorMessage to be a string"]
  GETIMPORT R3 K5 [assert]
  CALL R3 2 0
  MOVE R5 R1
  MOVE R6 R2
  GETIMPORT R7 K9 [debug.traceback]
  CALL R7 0 1
  LOADNIL R8
  NAMECALL R3 R0 K10 ["_reportError"]
  CALL R3 5 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["reporter"]
  NAMECALL R1 R1 K1 ["stop"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["errorToken"]
  JUMPIFEQKNIL R1 [+9]
  GETTABLEKS R1 R0 K2 ["errorToken"]
  NAMECALL R1 R1 K3 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["errorToken"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioErrorReporterFilterJunkCallstacks"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["ReportOTAPluginVersionToBacktrace2"]
  NAMECALL R1 R1 K3 ["GetFastFlag"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["StudioErrorReporterFixNameFiltering"]
  NAMECALL R2 R2 K3 ["GetFastFlag"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["RbxAnalyticsService"]
  NAMECALL R3 R3 K7 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K8 ["ContentProvider"]
  NAMECALL R4 R4 K7 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K1 [game]
  LOADK R7 K9 ["HttpService"]
  NAMECALL R5 R5 K7 ["GetService"]
  CALL R5 2 1
  GETIMPORT R6 K1 [game]
  LOADK R8 K10 ["RunService"]
  NAMECALL R6 R6 K7 ["GetService"]
  CALL R6 2 1
  GETIMPORT R7 K1 [game]
  LOADK R9 K11 ["ScriptContext"]
  NAMECALL R7 R7 K7 ["GetService"]
  CALL R7 2 1
  GETIMPORT R8 K1 [game]
  LOADK R10 K12 ["PluginManagementService"]
  NAMECALL R8 R8 K7 ["GetService"]
  CALL R8 2 1
  GETIMPORT R11 K14 [script]
  GETTABLEKS R10 R11 K15 ["Parent"]
  GETTABLEKS R9 R10 K15 ["Parent"]
  GETIMPORT R10 K17 [require]
  GETTABLEKS R12 R9 K18 ["Packages"]
  GETTABLEKS R11 R12 K19 ["Framework"]
  CALL R10 1 1
  GETIMPORT R11 K17 [require]
  GETTABLEKS R13 R9 K18 ["Packages"]
  GETTABLEKS R12 R13 K20 ["React"]
  CALL R11 1 1
  GETTABLEKS R13 R10 K21 ["Http"]
  GETTABLEKS R12 R13 K22 ["Networking"]
  GETTABLEKS R15 R10 K23 ["Util"]
  GETTABLEKS R14 R15 K24 ["Typecheck"]
  GETTABLEKS R13 R14 K25 ["t"]
  GETIMPORT R14 K17 [require]
  GETIMPORT R18 K14 [script]
  GETTABLEKS R17 R18 K15 ["Parent"]
  GETTABLEKS R16 R17 K26 ["Backtrace"]
  GETTABLEKS R15 R16 K27 ["BacktraceReporter"]
  CALL R14 1 1
  GETIMPORT R15 K29 [settings]
  CALL R15 0 1
  LOADK R17 K30 ["StudioPluginsBacktraceToken"]
  NAMECALL R15 R15 K31 ["GetFVariable"]
  CALL R15 2 1
  GETTABLEKS R16 R13 K32 ["strictInterface"]
  DUPTABLE R17 K38 [{"expectedSecurityLevel", "expectedPrefix", "networking", "errorSignal", "services"}]
  GETTABLEKS R18 R13 K39 ["integer"]
  SETTABLEKS R18 R17 K33 ["expectedSecurityLevel"]
  GETTABLEKS R18 R13 K40 ["string"]
  SETTABLEKS R18 R17 K34 ["expectedPrefix"]
  GETTABLEKS R18 R13 K41 ["optional"]
  GETTABLEKS R19 R13 K42 ["interface"]
  DUPTABLE R20 K44 [{"request"}]
  GETTABLEKS R21 R13 K45 ["callback"]
  SETTABLEKS R21 R20 K43 ["request"]
  CALL R19 1 -1
  CALL R18 -1 1
  SETTABLEKS R18 R17 K35 ["networking"]
  GETTABLEKS R18 R13 K41 ["optional"]
  GETTABLEKS R19 R13 K42 ["interface"]
  DUPTABLE R20 K47 [{"Connect"}]
  GETTABLEKS R21 R13 K45 ["callback"]
  SETTABLEKS R21 R20 K46 ["Connect"]
  CALL R19 1 -1
  CALL R18 -1 1
  SETTABLEKS R18 R17 K36 ["errorSignal"]
  GETTABLEKS R18 R13 K41 ["optional"]
  GETTABLEKS R19 R13 K42 ["interface"]
  DUPTABLE R20 K48 [{"HttpService", "RunService", "ContentProvider"}]
  GETTABLEKS R21 R13 K41 ["optional"]
  GETTABLEKS R22 R13 K42 ["interface"]
  DUPTABLE R23 K50 [{"GetUserAgent"}]
  GETTABLEKS R24 R13 K45 ["callback"]
  SETTABLEKS R24 R23 K49 ["GetUserAgent"]
  CALL R22 1 -1
  CALL R21 -1 1
  SETTABLEKS R21 R20 K9 ["HttpService"]
  GETTABLEKS R21 R13 K41 ["optional"]
  GETTABLEKS R22 R13 K42 ["interface"]
  DUPTABLE R23 K52 [{"GetRobloxVersion"}]
  GETTABLEKS R24 R13 K45 ["callback"]
  SETTABLEKS R24 R23 K51 ["GetRobloxVersion"]
  CALL R22 1 -1
  CALL R21 -1 1
  SETTABLEKS R21 R20 K10 ["RunService"]
  GETTABLEKS R21 R13 K41 ["optional"]
  GETTABLEKS R22 R13 K42 ["interface"]
  DUPTABLE R23 K54 [{"BaseUrl"}]
  GETTABLEKS R24 R13 K40 ["string"]
  SETTABLEKS R24 R23 K53 ["BaseUrl"]
  CALL R22 1 -1
  CALL R21 -1 1
  SETTABLEKS R21 R20 K8 ["ContentProvider"]
  CALL R19 1 -1
  CALL R18 -1 1
  SETTABLEKS R18 R17 K37 ["services"]
  CALL R16 1 1
  DUPCLOSURE R17 K55 [PROTO_0]
  NEWTABLE R18 8 0
  SETTABLEKS R18 R18 K56 ["__index"]
  DUPCLOSURE R19 K57 [PROTO_4]
  CAPTURE VAL R16
  CAPTURE VAL R12
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R18
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R0
  CAPTURE VAL R11
  SETTABLEKS R19 R18 K58 ["new"]
  DUPCLOSURE R19 K59 [PROTO_5]
  CAPTURE VAL R1
  SETTABLEKS R19 R18 K60 ["_reportError"]
  DUPCLOSURE R19 K61 [PROTO_6]
  SETTABLEKS R19 R18 K62 ["report"]
  DUPCLOSURE R19 K63 [PROTO_7]
  SETTABLEKS R19 R18 K64 ["stop"]
  RETURN R18 1
