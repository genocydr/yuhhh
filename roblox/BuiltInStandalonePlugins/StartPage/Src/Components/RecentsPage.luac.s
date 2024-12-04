PROTO_0:
  GETUPVAL R1 0
  FASTCALL2K ASSERT R1 K0 [+4]
  LOADK R2 K0 ["FFlagDynamicRecentsQuery must be enabled to use RecentQuery"]
  GETIMPORT R0 K2 [assert]
  CALL R0 2 0
  DUPTABLE R0 K12 [{"searchKey", "search", "creatorType", "creatorTargetId", "isArchived", "isTemplates", "pageSize", "getRecentLocalFiles", "getRecentAPIGames"}]
  LOADK R1 K13 ["Recents"]
  SETTABLEKS R1 R0 K3 ["searchKey"]
  LOADK R1 K14 [""]
  SETTABLEKS R1 R0 K4 ["search"]
  LOADK R1 K15 ["User"]
  SETTABLEKS R1 R0 K5 ["creatorType"]
  GETUPVAL R2 1
  NAMECALL R2 R2 K16 ["GetUserId"]
  CALL R2 1 -1
  FASTCALL TOSTRING [+2]
  GETIMPORT R1 K18 [tostring]
  CALL R1 -1 1
  SETTABLEKS R1 R0 K6 ["creatorTargetId"]
  LOADB R1 0
  SETTABLEKS R1 R0 K7 ["isArchived"]
  LOADB R1 0
  SETTABLEKS R1 R0 K8 ["isTemplates"]
  LOADN R1 10
  SETTABLEKS R1 R0 K9 ["pageSize"]
  LOADB R1 1
  SETTABLEKS R1 R0 K10 ["getRecentLocalFiles"]
  LOADB R1 1
  SETTABLEKS R1 R0 K11 ["getRecentAPIGames"]
  RETURN R0 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["OnClick"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  GETUPVAL R3 2
  MOVE R4 R0
  DUPTABLE R5 K8 [{"ImageSize", "OnClick", "IsPrivacyVisible", "IsDateModifiedVisible", "IsDropdownMenuVisible", "IsCreatorNameVisible", "KebabMenu"}]
  GETUPVAL R6 3
  SETTABLEKS R6 R5 K1 ["ImageSize"]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U4
  SETTABLEKS R6 R5 K2 ["OnClick"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K3 ["IsPrivacyVisible"]
  SETTABLEKS R6 R5 K3 ["IsPrivacyVisible"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K4 ["IsDateModifiedVisible"]
  SETTABLEKS R6 R5 K4 ["IsDateModifiedVisible"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K5 ["IsDropdownMenuVisible"]
  SETTABLEKS R6 R5 K5 ["IsDropdownMenuVisible"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K6 ["IsCreatorNameVisible"]
  SETTABLEKS R6 R5 K6 ["IsCreatorNameVisible"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K7 ["KebabMenu"]
  SETTABLEKS R6 R5 K7 ["KebabMenu"]
  CALL R3 2 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_3:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETUPVAL R3 1
  JUMPIFNOT R3 [+43]
  GETUPVAL R4 1
  FASTCALL2K ASSERT R4 K0 [+4]
  LOADK R5 K0 ["FFlagDynamicRecentsQuery must be enabled to use RecentQuery"]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  DUPTABLE R2 K12 [{"searchKey", "search", "creatorType", "creatorTargetId", "isArchived", "isTemplates", "pageSize", "getRecentLocalFiles", "getRecentAPIGames"}]
  LOADK R3 K13 ["Recents"]
  SETTABLEKS R3 R2 K3 ["searchKey"]
  LOADK R3 K14 [""]
  SETTABLEKS R3 R2 K4 ["search"]
  LOADK R3 K15 ["User"]
  SETTABLEKS R3 R2 K5 ["creatorType"]
  GETUPVAL R4 2
  NAMECALL R4 R4 K16 ["GetUserId"]
  CALL R4 1 -1
  FASTCALL TOSTRING [+2]
  GETIMPORT R3 K18 [tostring]
  CALL R3 -1 1
  SETTABLEKS R3 R2 K6 ["creatorTargetId"]
  LOADB R3 0
  SETTABLEKS R3 R2 K7 ["isArchived"]
  LOADB R3 0
  SETTABLEKS R3 R2 K8 ["isTemplates"]
  LOADN R3 10
  SETTABLEKS R3 R2 K9 ["pageSize"]
  LOADB R3 1
  SETTABLEKS R3 R2 K10 ["getRecentLocalFiles"]
  LOADB R3 1
  SETTABLEKS R3 R2 K11 ["getRecentAPIGames"]
  JUMP [+1]
  GETUPVAL R2 3
  GETTABLEKS R3 R0 K19 ["BaseQuery"]
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  CALL R1 2 1
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K20 ["createElement"]
  GETUPVAL R3 5
  GETUPVAL R4 0
  DUPTABLE R5 K26 [{"Query", "CellSize", "CellComponent", "FetchItems", "AdjustQuery"}]
  GETUPVAL R6 0
  MOVE R7 R1
  GETTABLEKS R8 R0 K27 ["NetworkQuery"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K21 ["Query"]
  GETTABLEKS R6 R0 K22 ["CellSize"]
  SETTABLEKS R6 R5 K22 ["CellSize"]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U6
  CAPTURE UPVAL U0
  CAPTURE UPVAL U7
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K23 ["CellComponent"]
  GETTABLEKS R6 R0 K24 ["FetchItems"]
  SETTABLEKS R6 R5 K24 ["FetchItems"]
  NEWCLOSURE R6 P1
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K25 ["AdjustQuery"]
  GETTABLEKS R6 R0 K28 ["NetworkViewProps"]
  CALL R4 2 -1
  CALL R2 -1 -1
  RETURN R2 -1

PROTO_5:
  GETTABLEKS R1 R0 K0 ["IsPlaceholder"]
  JUMPIF R1 [+27]
  GETTABLEKS R1 R0 K1 ["FilePath"]
  JUMPIFNOT R1 [+24]
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K1 ["FilePath"]
  LOADB R4 0
  NAMECALL R1 R1 K2 ["openLocalFile"]
  CALL R1 3 0
  GETUPVAL R1 1
  JUMPIFNOT R1 [+15]
  GETUPVAL R1 2
  GETUPVAL R3 3
  DUPTABLE R4 K6 [{"telemetryType", "telemetrySubtype", "action"}]
  LOADK R5 K7 ["interaction"]
  SETTABLEKS R5 R4 K3 ["telemetryType"]
  LOADK R5 K8 ["place_open"]
  SETTABLEKS R5 R4 K4 ["telemetrySubtype"]
  LOADK R5 K9 ["experiences_local_tab"]
  SETTABLEKS R5 R4 K5 ["action"]
  NAMECALL R1 R1 K10 ["log"]
  CALL R1 3 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 2
  DUPTABLE R4 K13 [{"BaseQuery", "IsPrivacyVisible", "IsDateModifiedVisible", "IsDropdownMenuVisible", "IsCreatorNameVisible", "KebabMenu", "CellSize", "FetchItems", "NetworkQuery", "OnClick", "NetworkViewProps"}]
  GETTABLEKS R5 R0 K2 ["BaseQuery"]
  SETTABLEKS R5 R4 K2 ["BaseQuery"]
  LOADB R5 1
  SETTABLEKS R5 R4 K3 ["IsPrivacyVisible"]
  LOADB R5 1
  SETTABLEKS R5 R4 K4 ["IsDateModifiedVisible"]
  LOADB R5 1
  SETTABLEKS R5 R4 K5 ["IsDropdownMenuVisible"]
  LOADB R5 1
  SETTABLEKS R5 R4 K6 ["IsCreatorNameVisible"]
  NEWTABLE R5 0 6
  LOADK R6 K14 ["ConfigureExperience"]
  LOADK R7 K15 ["ConfigurePlace"]
  LOADK R8 K16 ["OpenPlace"]
  LOADK R9 K17 ["PublicPrivateToggle"]
  LOADK R10 K18 ["Archive"]
  LOADK R11 K19 ["RemoveRecent"]
  SETLIST R5 R6 6 [1]
  SETTABLEKS R5 R4 K7 ["KebabMenu"]
  GETUPVAL R5 3
  SETTABLEKS R5 R4 K8 ["CellSize"]
  GETUPVAL R5 4
  SETTABLEKS R5 R4 K9 ["FetchItems"]
  DUPTABLE R5 K23 [{"searchKey", "getRecentLocalFiles", "getRecentAPIGames"}]
  LOADK R6 K24 ["Recents"]
  SETTABLEKS R6 R5 K20 ["searchKey"]
  LOADB R6 1
  SETTABLEKS R6 R5 K21 ["getRecentLocalFiles"]
  LOADB R6 1
  SETTABLEKS R6 R5 K22 ["getRecentAPIGames"]
  SETTABLEKS R5 R4 K10 ["NetworkQuery"]
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE VAL R1
  CAPTURE UPVAL U7
  SETTABLEKS R5 R4 K11 ["OnClick"]
  SETTABLEKS R0 R4 K12 ["NetworkViewProps"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_7:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 2
  DUPTABLE R4 K9 [{"Size", "PageName", "HideTabs", "Tabs", "CanSwapBetweenViews", "IsDefaultGridView", "HasSearchBar"}]
  GETUPVAL R6 3
  JUMPIFNOT R6 [+2]
  LOADNIL R5
  JUMP [+2]
  GETTABLEKS R5 R0 K2 ["Size"]
  SETTABLEKS R5 R4 K2 ["Size"]
  LOADK R5 K10 ["Recents"]
  SETTABLEKS R5 R4 K3 ["PageName"]
  LOADB R5 1
  SETTABLEKS R5 R4 K4 ["HideTabs"]
  NEWTABLE R5 0 1
  DUPTABLE R6 K16 [{"Title", "FailedTitle", "Key", "PageComponent", "Dropdowns"}]
  LOADK R9 K17 ["Plugin"]
  LOADK R10 K18 ["RecentsPage.Title"]
  NAMECALL R7 R1 K19 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K11 ["Title"]
  LOADK R9 K17 ["Plugin"]
  LOADK R10 K20 ["NoExperiencesToDisplay"]
  NAMECALL R7 R1 K19 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K12 ["FailedTitle"]
  LOADK R7 K10 ["Recents"]
  SETTABLEKS R7 R6 K13 ["Key"]
  GETUPVAL R7 4
  SETTABLEKS R7 R6 K14 ["PageComponent"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K15 ["Dropdowns"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K5 ["Tabs"]
  LOADB R5 1
  SETTABLEKS R5 R4 K6 ["CanSwapBetweenViews"]
  LOADB R5 1
  SETTABLEKS R5 R4 K7 ["IsDefaultGridView"]
  LOADB R5 1
  SETTABLEKS R5 R4 K8 ["HasSearchBar"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["SharedFlags"]
  GETTABLEKS R3 R4 K10 ["getFFlagLuaStartPageNetworkCache"]
  CALL R2 1 1
  CALL R2 0 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["SharedFlags"]
  GETTABLEKS R4 R5 K11 ["getFFlagLuaStartPageQuickLoad"]
  CALL R3 1 1
  CALL R3 0 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K9 ["SharedFlags"]
  GETTABLEKS R5 R6 K12 ["getFFlagLuaStartPagePlaceOpenAttributionTelemetry"]
  CALL R4 1 1
  CALL R4 0 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K8 ["Src"]
  GETTABLEKS R7 R8 K9 ["SharedFlags"]
  GETTABLEKS R6 R7 K13 ["getFFlagDynamicRecentsQuery"]
  CALL R5 1 1
  CALL R5 0 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K8 ["Src"]
  GETTABLEKS R8 R9 K14 ["Components"]
  GETTABLEKS R7 R8 K15 ["GamePage"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K8 ["Src"]
  GETTABLEKS R9 R10 K14 ["Components"]
  GETTABLEKS R8 R9 K16 ["InfoTile"]
  CALL R7 1 1
  JUMPIFNOT R2 [+10]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K8 ["Src"]
  GETTABLEKS R10 R11 K14 ["Components"]
  GETTABLEKS R9 R10 K17 ["NetworkView"]
  CALL R8 1 1
  JUMP [+9]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K8 ["Src"]
  GETTABLEKS R10 R11 K14 ["Components"]
  GETTABLEKS R9 R10 K18 ["DEPRECATED_NetworkView"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R0 K6 ["Packages"]
  GETTABLEKS R10 R11 K19 ["Framework"]
  CALL R9 1 1
  GETTABLEKS R11 R9 K20 ["ContextServices"]
  GETTABLEKS R10 R11 K21 ["Localization"]
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K8 ["Src"]
  GETTABLEKS R13 R14 K22 ["Util"]
  GETTABLEKS R12 R13 K23 ["Services"]
  CALL R11 1 1
  GETTABLEKS R12 R11 K24 ["StartPageManager"]
  GETTABLEKS R13 R11 K25 ["StudioService"]
  JUMPIFNOT R2 [+10]
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K8 ["Src"]
  GETTABLEKS R16 R17 K26 ["Network"]
  GETTABLEKS R15 R16 K27 ["DiscoverRecents"]
  CALL R14 1 1
  JUMP [+9]
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K8 ["Src"]
  GETTABLEKS R16 R17 K28 ["DEPRECATED_Network"]
  GETTABLEKS R15 R16 K27 ["DiscoverRecents"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R19 R0 K8 ["Src"]
  GETTABLEKS R18 R19 K22 ["Util"]
  GETTABLEKS R17 R18 K29 ["Telemetry"]
  GETTABLEKS R16 R17 K30 ["TelemetryContext"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R20 R0 K8 ["Src"]
  GETTABLEKS R19 R20 K22 ["Util"]
  GETTABLEKS R18 R19 K29 ["Telemetry"]
  GETTABLEKS R17 R18 K31 ["StartPageTelemetryEvent"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R19 R0 K6 ["Packages"]
  GETTABLEKS R18 R19 K32 ["Dash"]
  CALL R17 1 1
  GETTABLEKS R18 R17 K33 ["join"]
  GETIMPORT R19 K36 [UDim2.new]
  LOADN R20 0
  LOADN R21 200
  LOADN R22 0
  LOADN R23 200
  CALL R19 4 1
  GETIMPORT R20 K36 [UDim2.new]
  LOADN R21 0
  LOADN R22 225
  LOADN R23 0
  LOADN R24 92
  CALL R20 4 1
  JUMPIF R5 [+35]
  DUPTABLE R21 K46 [{"searchKey", "search", "creatorType", "creatorTargetId", "isArchived", "isTemplates", "pageSize", "getRecentLocalFiles", "getRecentAPIGames"}]
  LOADK R22 K47 ["Recents"]
  SETTABLEKS R22 R21 K37 ["searchKey"]
  LOADK R22 K48 [""]
  SETTABLEKS R22 R21 K38 ["search"]
  LOADK R22 K49 ["User"]
  SETTABLEKS R22 R21 K39 ["creatorType"]
  NAMECALL R23 R13 K50 ["GetUserId"]
  CALL R23 1 -1
  FASTCALL TOSTRING [+2]
  GETIMPORT R22 K52 [tostring]
  CALL R22 -1 1
  SETTABLEKS R22 R21 K40 ["creatorTargetId"]
  LOADB R22 0
  SETTABLEKS R22 R21 K41 ["isArchived"]
  LOADB R22 0
  SETTABLEKS R22 R21 K42 ["isTemplates"]
  LOADN R22 10
  SETTABLEKS R22 R21 K43 ["pageSize"]
  LOADB R22 1
  SETTABLEKS R22 R21 K44 ["getRecentLocalFiles"]
  LOADB R22 1
  SETTABLEKS R22 R21 K45 ["getRecentAPIGames"]
  JUMP [+1]
  LOADNIL R21
  DUPCLOSURE R22 K53 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R13
  GETIMPORT R23 K5 [require]
  GETTABLEKS R25 R0 K8 ["Src"]
  GETTABLEKS R24 R25 K54 ["Types"]
  CALL R23 1 1
  DUPCLOSURE R24 K55 [PROTO_4]
  CAPTURE VAL R18
  CAPTURE VAL R5
  CAPTURE VAL R13
  CAPTURE VAL R21
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R19
  DUPCLOSURE R25 K56 [PROTO_6]
  CAPTURE VAL R15
  CAPTURE VAL R1
  CAPTURE VAL R24
  CAPTURE VAL R20
  CAPTURE VAL R14
  CAPTURE VAL R12
  CAPTURE VAL R4
  CAPTURE VAL R16
  DUPCLOSURE R26 K57 [PROTO_7]
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R25
  RETURN R26 1
