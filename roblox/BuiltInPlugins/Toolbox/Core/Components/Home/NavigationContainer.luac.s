PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Network"]
  GETTABLEKS R1 R2 K1 ["networkInterface"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["Settings"]
  LOADK R4 K3 ["Plugin"]
  NAMECALL R2 R2 K4 ["get"]
  CALL R2 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["updatePageInfo"]
  MOVE R4 R1
  MOVE R5 R2
  MOVE R6 R0
  CALL R3 3 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["NavigationContext"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["AssetAnalytics"]
  NAMECALL R3 R3 K2 ["get"]
  CALL R3 1 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["getPageInfoAnalyticsContextInfo"]
  JUMPIFNOT R4 [+20]
  MOVE R5 R4
  CALL R5 0 1
  GETTABLEKS R6 R5 K4 ["searchId"]
  NAMECALL R7 R2 K5 ["getBreadcrumbRoute"]
  CALL R7 1 1
  GETTABLEKS R8 R5 K6 ["toolboxTab"]
  GETTABLEKS R9 R5 K7 ["currentCategory"]
  MOVE R12 R6
  MOVE R13 R0
  MOVE R14 R1
  MOVE R15 R7
  MOVE R16 R8
  MOVE R17 R9
  NAMECALL R10 R3 K8 ["logPageView"]
  CALL R10 7 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R4 R3 K0 ["QueryParams"]
  JUMPIFNOT R4 [+9]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["updatePageInfo"]
  DUPTABLE R5 K3 [{"queryParams"}]
  GETTABLEKS R6 R3 K0 ["QueryParams"]
  SETTABLEKS R6 R5 K2 ["queryParams"]
  CALL R4 1 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["NavigationContext"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["logPageView"]
  MOVE R6 R1
  MOVE R7 R2
  CALL R5 2 0
  MOVE R7 R0
  MOVE R8 R2
  MOVE R9 R3
  NAMECALL R5 R4 K6 ["push"]
  CALL R5 4 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["NavigationContext"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["AssetAnalytics"]
  NAMECALL R1 R1 K2 ["get"]
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["getPageInfoAnalyticsContextInfo"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["updatePageInfo"]
  DUPTABLE R4 K6 [{"queryParams"}]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K7 ["None"]
  SETTABLEKS R5 R4 K5 ["queryParams"]
  CALL R3 1 0
  JUMPIFNOT R2 [+24]
  MOVE R3 R2
  CALL R3 0 1
  GETTABLEKS R4 R3 K8 ["searchId"]
  NAMECALL R5 R0 K9 ["getBreadcrumbRoute"]
  CALL R5 1 1
  GETTABLEN R6 R5 2
  NAMECALL R7 R0 K10 ["getCurrentPath"]
  CALL R7 1 1
  GETTABLEKS R8 R3 K11 ["toolboxTab"]
  GETTABLEKS R9 R3 K12 ["currentCategory"]
  MOVE R12 R4
  MOVE R13 R6
  MOVE R14 R7
  MOVE R15 R5
  MOVE R16 R8
  MOVE R17 R9
  NAMECALL R10 R1 K13 ["logGoBack"]
  CALL R10 7 0
  NAMECALL R3 R0 K14 ["popToTop"]
  CALL R3 1 0
  RETURN R0 0

PROTO_4:
  NEWCLOSURE R2 P0
  CAPTURE VAL R1
  SETTABLEKS R2 R0 K0 ["updatePageInfo"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R1
  SETTABLEKS R2 R0 K1 ["logPageView"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R2 R0 K2 ["navigateTo"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R0 K3 ["navigateGoBack"]
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["join"]
  GETTABLEKS R5 R0 K1 ["props"]
  GETTABLEKS R4 R5 K2 ["navigation"]
  GETTABLEKS R3 R4 K3 ["state"]
  GETTABLEKS R2 R3 K4 ["params"]
  DUPTABLE R3 K9 [{"focused", "navigateTo", "navigateGoBack", "logPageView"}]
  GETTABLEKS R6 R0 K1 ["props"]
  GETTABLEKS R5 R6 K2 ["navigation"]
  GETTABLEKS R4 R5 K10 ["isFocused"]
  CALL R4 0 1
  SETTABLEKS R4 R3 K5 ["focused"]
  GETTABLEKS R4 R0 K6 ["navigateTo"]
  SETTABLEKS R4 R3 K6 ["navigateTo"]
  GETTABLEKS R4 R0 K7 ["navigateGoBack"]
  SETTABLEKS R4 R3 K7 ["navigateGoBack"]
  GETTABLEKS R4 R0 K8 ["logPageView"]
  SETTABLEKS R4 R3 K8 ["logPageView"]
  GETUPVAL R5 1
  JUMPIFNOT R5 [+2]
  GETUPVAL R4 1
  JUMP [+2]
  NEWTABLE R4 0 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["join"]
  GETTABLEKS R8 R0 K1 ["props"]
  GETTABLEKS R7 R8 K2 ["navigation"]
  GETTABLEKS R6 R7 K3 ["state"]
  DUPTABLE R7 K13 [{"key", "routeName"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K14 ["None"]
  SETTABLEKS R8 R7 K11 ["key"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K14 ["None"]
  SETTABLEKS R8 R7 K12 ["routeName"]
  CALL R5 2 -1
  CALL R1 -1 1
  GETUPVAL R2 2
  MOVE R3 R1
  CALL R2 1 -1
  RETURN R2 -1

PROTO_6:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["NavigationContext"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K2 ["navigation"]
  NAMECALL R2 R1 K3 ["updateNavigation"]
  CALL R2 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R3 0
  GETUPVAL R4 1
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_9:
  DUPTABLE R1 K2 [{"updatePageInfo", "getPageInfoAnalyticsContextInfo"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["updatePageInfo"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["getPageInfoAnalyticsContextInfo"]
  RETURN R1 1

PROTO_10:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["PureComponent"]
  LOADK R3 K1 ["NavWrapper"]
  NAMECALL R1 R1 K2 ["extend"]
  CALL R1 2 1
  DUPCLOSURE R2 K3 [PROTO_4]
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K4 ["init"]
  NEWCLOSURE R2 P1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K5 ["render"]
  DUPCLOSURE R2 K6 [PROTO_6]
  SETTABLEKS R2 R1 K7 ["didMount"]
  DUPCLOSURE R2 K8 [PROTO_9]
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  GETUPVAL R4 6
  GETTABLEKS R3 R4 K9 ["withContext"]
  DUPTABLE R4 K14 [{"AssetAnalytics", "NavigationContext", "Network", "Settings"}]
  GETUPVAL R5 7
  SETTABLEKS R5 R4 K10 ["AssetAnalytics"]
  GETUPVAL R5 8
  SETTABLEKS R5 R4 K11 ["NavigationContext"]
  GETUPVAL R5 9
  SETTABLEKS R5 R4 K12 ["Network"]
  GETUPVAL R5 10
  SETTABLEKS R5 R4 K13 ["Settings"]
  CALL R3 1 1
  MOVE R4 R1
  CALL R3 1 1
  MOVE R1 R3
  GETUPVAL R4 11
  GETTABLEKS R3 R4 K15 ["withNavigation"]
  MOVE R4 R1
  CALL R3 1 1
  MOVE R1 R3
  GETUPVAL R4 12
  GETTABLEKS R3 R4 K16 ["connect"]
  LOADNIL R4
  MOVE R5 R2
  CALL R3 2 1
  MOVE R4 R1
  CALL R3 1 1
  MOVE R1 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K17 ["createElement"]
  MOVE R4 R1
  MOVE R5 R0
  CALL R3 2 -1
  RETURN R3 -1

PROTO_11:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  RETURN R1 1

PROTO_12:
  GETTABLEKS R2 R0 K0 ["params"]
  OR R1 R2 R0
  DUPTABLE R2 K7 [{"CanInsertAsset", "LogAssetImpression", "OnAssetPreviewButtonClicked", "OnSearchByCreator", "TryInsert", "TryOpenAssetConfig"}]
  GETTABLEKS R3 R1 K1 ["CanInsertAsset"]
  SETTABLEKS R3 R2 K1 ["CanInsertAsset"]
  GETTABLEKS R3 R1 K2 ["LogAssetImpression"]
  SETTABLEKS R3 R2 K2 ["LogAssetImpression"]
  GETTABLEKS R3 R1 K3 ["OnAssetPreviewButtonClicked"]
  SETTABLEKS R3 R2 K3 ["OnAssetPreviewButtonClicked"]
  GETUPVAL R4 0
  CALL R4 0 1
  JUMPIFNOT R4 [+3]
  GETTABLEKS R3 R1 K4 ["OnSearchByCreator"]
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K4 ["OnSearchByCreator"]
  GETTABLEKS R3 R1 K5 ["TryInsert"]
  SETTABLEKS R3 R2 K5 ["TryInsert"]
  GETTABLEKS R3 R1 K6 ["TryOpenAssetConfig"]
  SETTABLEKS R3 R2 K6 ["TryOpenAssetConfig"]
  RETURN R2 1

PROTO_13:
  GETTABLEKS R5 R1 K0 ["childCount"]
  JUMPIFNOTEQKN R5 K1 [0] [+39]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["navigateTo"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K3 ["NAVIGATION"]
  GETTABLEKS R6 R7 K4 ["RESULTS"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["HOMEVIEW_SEARCH_CATEGORY"]
  MOVE R8 R0
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K6 ["join"]
  GETUPVAL R10 0
  GETUPVAL R11 3
  GETUPVAL R12 0
  CALL R11 1 1
  DUPTABLE R12 K12 [{"CategoryName", "SortName", "SearchSource", "QueryParams", "SwimlaneName"}]
  SETTABLEKS R2 R12 K7 ["CategoryName"]
  SETTABLEKS R3 R12 K8 ["SortName"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K13 ["SEARCH_SOURCE"]
  GETTABLEKS R13 R14 K14 ["CATEGORY"]
  SETTABLEKS R13 R12 K9 ["SearchSource"]
  SETTABLEKS R4 R12 K10 ["QueryParams"]
  SETTABLEKS R0 R12 K11 ["SwimlaneName"]
  CALL R9 3 -1
  CALL R5 -1 0
  RETURN R0 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["navigateTo"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K3 ["NAVIGATION"]
  GETTABLEKS R6 R7 K15 ["SUBCATEGORY"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["HOMEVIEW_SEARCH_CATEGORY"]
  MOVE R8 R0
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K6 ["join"]
  GETUPVAL R10 0
  GETUPVAL R11 3
  GETUPVAL R12 0
  CALL R11 1 1
  DUPTABLE R12 K19 [{"CategoryName", "SortName", "SubcategoryPath", "SubcategoryDict", "TopKeywords", "QueryParams"}]
  SETTABLEKS R2 R12 K7 ["CategoryName"]
  SETTABLEKS R3 R12 K8 ["SortName"]
  NEWTABLE R13 0 1
  MOVE R14 R0
  SETLIST R13 R14 1 [1]
  SETTABLEKS R13 R12 K16 ["SubcategoryPath"]
  GETTABLEKS R13 R1 K20 ["children"]
  SETTABLEKS R13 R12 K17 ["SubcategoryDict"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K18 ["TopKeywords"]
  SETTABLEKS R13 R12 K18 ["TopKeywords"]
  SETTABLEKS R4 R12 K10 ["QueryParams"]
  CALL R9 3 -1
  CALL R5 -1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["navigateTo"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K1 ["NAVIGATION"]
  GETTABLEKS R4 R5 K2 ["ALL_SUBCATEGORIES"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["HOMEVIEW_SEARCH_CATEGORY"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["NAVIGATION"]
  GETTABLEKS R6 R7 K2 ["ALL_SUBCATEGORIES"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K4 ["join"]
  GETUPVAL R8 0
  GETUPVAL R9 3
  GETUPVAL R10 0
  CALL R9 1 1
  DUPTABLE R10 K8 [{"CategoryName", "SortName", "SubcategoryDict"}]
  SETTABLEKS R1 R10 K5 ["CategoryName"]
  SETTABLEKS R2 R10 K6 ["SortName"]
  SETTABLEKS R0 R10 K7 ["SubcategoryDict"]
  CALL R7 3 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["navigateTo"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["NAVIGATION"]
  GETTABLEKS R6 R7 K2 ["RESULTS"]
  MOVE R7 R0
  MOVE R8 R0
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K3 ["join"]
  GETUPVAL R10 0
  GETUPVAL R11 3
  GETUPVAL R12 0
  CALL R11 1 1
  DUPTABLE R12 K10 [{"CategoryName", "SearchTerm", "SectionName", "SortName", "QueryParams", "SwimlaneName"}]
  SETTABLEKS R1 R12 K4 ["CategoryName"]
  SETTABLEKS R3 R12 K5 ["SearchTerm"]
  SETTABLEKS R0 R12 K6 ["SectionName"]
  SETTABLEKS R2 R12 K7 ["SortName"]
  SETTABLEKS R4 R12 K8 ["QueryParams"]
  SETTABLEKS R0 R12 K9 ["SwimlaneName"]
  CALL R9 3 -1
  CALL R5 -1 0
  RETURN R0 0

PROTO_16:
  LOADNIL R1
  GETTABLEKS R2 R0 K0 ["AssetType"]
  GETIMPORT R3 K3 [Enum.AssetType.Audio]
  JUMPIFNOTEQ R2 R3 [+3]
  GETUPVAL R1 0
  JUMP [+9]
  GETTABLEKS R2 R0 K0 ["AssetType"]
  GETIMPORT R3 K5 [Enum.AssetType.FontFamily]
  JUMPIFNOTEQ R2 R3 [+3]
  GETUPVAL R1 1
  JUMP [+1]
  GETUPVAL R1 2
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K6 ["createElement"]
  MOVE R3 R1
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K7 ["join"]
  GETUPVAL R5 5
  MOVE R6 R0
  CALL R5 1 1
  DUPTABLE R6 K19 [{"AssetSections", "CategoryName", "OnClickSubcategory", "OnClickSeeAllSubcategories", "OnClickSeeAllAssets", "SubcategoryDict", "SortName", "Size", "TopKeywords", "MaxWidth", "LogPageView"}]
  GETTABLEKS R7 R0 K8 ["AssetSections"]
  SETTABLEKS R7 R6 K8 ["AssetSections"]
  GETTABLEKS R7 R0 K9 ["CategoryName"]
  SETTABLEKS R7 R6 K9 ["CategoryName"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  SETTABLEKS R7 R6 K10 ["OnClickSubcategory"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  SETTABLEKS R7 R6 K11 ["OnClickSeeAllSubcategories"]
  NEWCLOSURE R7 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  SETTABLEKS R7 R6 K12 ["OnClickSeeAllAssets"]
  GETTABLEKS R7 R0 K13 ["SubcategoryDict"]
  SETTABLEKS R7 R6 K13 ["SubcategoryDict"]
  GETTABLEKS R7 R0 K14 ["SortName"]
  SETTABLEKS R7 R6 K14 ["SortName"]
  GETIMPORT R7 K22 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 1
  LOADN R11 0
  CALL R7 4 1
  SETTABLEKS R7 R6 K15 ["Size"]
  GETTABLEKS R7 R0 K16 ["TopKeywords"]
  SETTABLEKS R7 R6 K16 ["TopKeywords"]
  GETTABLEKS R7 R0 K17 ["MaxWidth"]
  SETTABLEKS R7 R6 K17 ["MaxWidth"]
  GETTABLEKS R7 R0 K23 ["logPageView"]
  SETTABLEKS R7 R6 K18 ["LogPageView"]
  CALL R4 2 -1
  CALL R2 -1 -1
  RETURN R2 -1

PROTO_17:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["navigateGoBack"]
  CALL R0 1 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["navigateTo"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["NAVIGATION"]
  GETTABLEKS R6 R7 K2 ["SUBCATEGORY"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K3 ["HOMEVIEW_SEARCH_CATEGORY"]
  LENGTH R9 R0
  GETTABLE R8 R0 R9
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K4 ["join"]
  GETUPVAL R10 0
  GETUPVAL R11 3
  GETUPVAL R12 0
  CALL R11 1 1
  DUPTABLE R12 K10 [{"CategoryName", "SortName", "SubcategoryPath", "SubcategoryDict", "QueryParams"}]
  SETTABLEKS R2 R12 K5 ["CategoryName"]
  SETTABLEKS R3 R12 K6 ["SortName"]
  SETTABLEKS R0 R12 K7 ["SubcategoryPath"]
  SETTABLEKS R1 R12 K8 ["SubcategoryDict"]
  SETTABLEKS R4 R12 K9 ["QueryParams"]
  CALL R9 3 -1
  CALL R5 -1 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["navigateTo"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K1 ["NAVIGATION"]
  GETTABLEKS R7 R8 K2 ["RESULTS"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K3 ["HOMEVIEW_SEARCH_CATEGORY"]
  MOVE R9 R0
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K4 ["join"]
  GETUPVAL R11 0
  GETUPVAL R12 3
  GETUPVAL R13 0
  CALL R12 1 1
  DUPTABLE R13 K11 [{"CategoryName", "SectionName", "SortName", "SearchSource", "QueryParams", "SwimlaneName"}]
  SETTABLEKS R1 R13 K5 ["CategoryName"]
  SETTABLEKS R0 R13 K6 ["SectionName"]
  SETTABLEKS R2 R13 K7 ["SortName"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K12 ["SEARCH_SOURCE"]
  GETTABLEKS R14 R15 K13 ["CATEGORY"]
  SETTABLEKS R14 R13 K8 ["SearchSource"]
  SETTABLEKS R4 R13 K9 ["QueryParams"]
  SETTABLEKS R5 R13 K10 ["SwimlaneName"]
  CALL R10 3 -1
  CALL R6 -1 0
  RETURN R0 0

PROTO_20:
  GETTABLEKS R1 R0 K0 ["params"]
  MOVE R2 R1
  JUMPIFNOT R2 [+2]
  GETTABLEKS R2 R1 K1 ["CategoryName"]
  MOVE R3 R1
  JUMPIFNOT R3 [+2]
  GETTABLEKS R3 R1 K2 ["SortName"]
  MOVE R4 R1
  JUMPIFNOT R4 [+2]
  GETTABLEKS R4 R1 K3 ["SubcategoryDict"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["createElement"]
  GETUPVAL R6 1
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K5 ["join"]
  GETUPVAL R8 3
  MOVE R9 R0
  CALL R8 1 1
  DUPTABLE R9 K10 [{"CategoryName", "OnClickBack", "OnClickSubcategory", "OnClickSeeAllAssets", "SortName", "Size", "SubcategoryDict"}]
  SETTABLEKS R2 R9 K1 ["CategoryName"]
  NEWCLOSURE R10 P0
  CAPTURE VAL R0
  SETTABLEKS R10 R9 K6 ["OnClickBack"]
  NEWCLOSURE R10 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  SETTABLEKS R10 R9 K7 ["OnClickSubcategory"]
  NEWCLOSURE R10 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  SETTABLEKS R10 R9 K8 ["OnClickSeeAllAssets"]
  SETTABLEKS R3 R9 K2 ["SortName"]
  GETIMPORT R10 K13 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 1
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K9 ["Size"]
  SETTABLEKS R4 R9 K3 ["SubcategoryDict"]
  CALL R7 2 -1
  CALL R5 -1 -1
  RETURN R5 -1

PROTO_21:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["navigateGoBack"]
  CALL R0 1 0
  RETURN R0 0

PROTO_22:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["navigateTo"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["NAVIGATION"]
  GETTABLEKS R6 R7 K2 ["RESULTS"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K3 ["HOMEVIEW_SEARCH_CATEGORY"]
  MOVE R8 R0
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K4 ["join"]
  GETUPVAL R10 0
  GETUPVAL R11 3
  GETUPVAL R12 0
  CALL R11 1 1
  DUPTABLE R12 K10 [{"CategoryName", "SearchTerm", "SortName", "SearchSource", "QueryParams"}]
  SETTABLEKS R1 R12 K5 ["CategoryName"]
  SETTABLEKS R3 R12 K6 ["SearchTerm"]
  SETTABLEKS R2 R12 K7 ["SortName"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K11 ["SEARCH_SOURCE"]
  GETTABLEKS R13 R14 K12 ["CATEGORY"]
  SETTABLEKS R13 R12 K8 ["SearchSource"]
  SETTABLEKS R4 R12 K9 ["QueryParams"]
  CALL R9 3 -1
  CALL R5 -1 0
  RETURN R0 0

PROTO_23:
  GETTABLEKS R1 R0 K0 ["params"]
  MOVE R2 R1
  JUMPIFNOT R2 [+2]
  GETTABLEKS R2 R1 K1 ["CategoryName"]
  MOVE R3 R1
  JUMPIFNOT R3 [+2]
  GETTABLEKS R3 R1 K2 ["SortName"]
  MOVE R4 R1
  JUMPIFNOT R4 [+2]
  GETTABLEKS R4 R1 K3 ["SubcategoryDict"]
  MOVE R5 R1
  JUMPIFNOT R5 [+2]
  GETTABLEKS R5 R1 K4 ["SubcategoryPath"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["createElement"]
  GETUPVAL R7 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K6 ["join"]
  GETUPVAL R9 3
  MOVE R10 R0
  CALL R9 1 1
  DUPTABLE R10 K11 [{"CategoryName", "MaxWidth", "OnClickBack", "OnClickSeeAllAssets", "Size", "SortName", "SubcategoryDict", "SubcategoryPath"}]
  SETTABLEKS R2 R10 K1 ["CategoryName"]
  GETTABLEKS R11 R0 K7 ["MaxWidth"]
  SETTABLEKS R11 R10 K7 ["MaxWidth"]
  NEWCLOSURE R11 P0
  CAPTURE VAL R0
  SETTABLEKS R11 R10 K8 ["OnClickBack"]
  NEWCLOSURE R11 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  SETTABLEKS R11 R10 K9 ["OnClickSeeAllAssets"]
  GETIMPORT R11 K14 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 1
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K10 ["Size"]
  SETTABLEKS R3 R10 K2 ["SortName"]
  SETTABLEKS R4 R10 K3 ["SubcategoryDict"]
  SETTABLEKS R5 R10 K4 ["SubcategoryPath"]
  CALL R8 2 -1
  CALL R6 -1 -1
  RETURN R6 -1

PROTO_24:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["navigateGoBack"]
  CALL R0 1 0
  RETURN R0 0

PROTO_25:
  GETTABLEKS R1 R0 K0 ["params"]
  MOVE R2 R1
  JUMPIFNOT R2 [+2]
  GETTABLEKS R2 R1 K1 ["CategoryName"]
  MOVE R3 R1
  JUMPIFNOT R3 [+2]
  GETTABLEKS R3 R1 K2 ["SectionName"]
  MOVE R4 R1
  JUMPIFNOT R4 [+2]
  GETTABLEKS R4 R1 K3 ["SearchTerm"]
  MOVE R5 R1
  JUMPIFNOT R5 [+2]
  GETTABLEKS R5 R1 K4 ["SortName"]
  MOVE R6 R1
  JUMPIFNOT R6 [+2]
  GETTABLEKS R6 R1 K5 ["SearchSource"]
  JUMPIFNOT R1 [+3]
  GETTABLEKS R7 R1 K6 ["QueryParams"]
  JUMP [+1]
  LOADNIL R7
  JUMPIFNOT R1 [+3]
  GETTABLEKS R8 R1 K7 ["SwimlaneName"]
  JUMP [+1]
  LOADNIL R8
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K8 ["createElement"]
  GETUPVAL R10 1
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K9 ["join"]
  GETUPVAL R12 3
  MOVE R13 R0
  CALL R12 1 1
  DUPTABLE R13 K12 [{"CategoryName", "OnClickBack", "SearchTerm", "SectionName", "Size", "SortName", "SearchSource", "QueryParams", "SwimlaneName"}]
  SETTABLEKS R2 R13 K1 ["CategoryName"]
  NEWCLOSURE R14 P0
  CAPTURE VAL R0
  SETTABLEKS R14 R13 K10 ["OnClickBack"]
  SETTABLEKS R4 R13 K3 ["SearchTerm"]
  SETTABLEKS R3 R13 K2 ["SectionName"]
  GETIMPORT R14 K15 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 1
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K11 ["Size"]
  SETTABLEKS R5 R13 K4 ["SortName"]
  SETTABLEKS R6 R13 K5 ["SearchSource"]
  SETTABLEKS R7 R13 K6 ["QueryParams"]
  SETTABLEKS R8 R13 K7 ["SwimlaneName"]
  CALL R11 2 -1
  CALL R9 -1 -1
  RETURN R9 -1

PROTO_26:
  GETTABLEKS R1 R0 K0 ["props"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["NAVIGATION"]
  GETTABLEKS R2 R3 K2 ["HOME"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["createRobloxStackNavigator"]
  GETUPVAL R4 2
  DUPTABLE R5 K6 [{"initialRouteName", "initialRouteParams"}]
  SETTABLEKS R2 R5 K4 ["initialRouteName"]
  SETTABLEKS R1 R5 K5 ["initialRouteParams"]
  CALL R3 2 1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K7 ["provide"]
  NEWTABLE R5 0 1
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K8 ["new"]
  MOVE R7 R2
  CALL R6 1 -1
  SETLIST R5 R6 -1 [1]
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K9 ["createElement"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K10 ["createAppContainer"]
  MOVE R8 R3
  CALL R7 1 -1
  CALL R6 -1 -1
  CALL R4 -1 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R5 R0 K6 ["Core"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K8 ["SharedFlags"]
  GETTABLEKS R2 R3 K9 ["getFFlagToolboxFixInventoryGridSearch"]
  CALL R1 1 1
  GETTABLEKS R2 R0 K10 ["Packages"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R2 K11 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R2 K12 ["Cryo"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R2 K13 ["Roact"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R2 K14 ["RoactRodux"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K10 ["Packages"]
  GETTABLEKS R8 R9 K15 ["RoactNavigation"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K6 ["Core"]
  GETTABLEKS R10 R11 K7 ["Util"]
  GETTABLEKS R9 R10 K16 ["Constants"]
  CALL R8 1 1
  GETTABLEKS R9 R3 K17 ["ContextServices"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K6 ["Core"]
  GETTABLEKS R12 R13 K18 ["Types"]
  GETTABLEKS R11 R12 K19 ["AssetLogicTypes"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R12 R2 K20 ["Dash"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K6 ["Core"]
  GETTABLEKS R14 R15 K21 ["Components"]
  GETTABLEKS R13 R14 K22 ["AssetLogicWrapper"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R17 R0 K6 ["Core"]
  GETTABLEKS R16 R17 K21 ["Components"]
  GETTABLEKS R15 R16 K23 ["Categorization"]
  GETTABLEKS R14 R15 K24 ["HomeView"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R18 R0 K6 ["Core"]
  GETTABLEKS R17 R18 K21 ["Components"]
  GETTABLEKS R16 R17 K25 ["Audio"]
  GETTABLEKS R15 R16 K26 ["AudioViewWrapper"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R19 R0 K6 ["Core"]
  GETTABLEKS R18 R19 K21 ["Components"]
  GETTABLEKS R17 R18 K27 ["Font"]
  GETTABLEKS R16 R17 K28 ["FontView"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R20 R0 K6 ["Core"]
  GETTABLEKS R19 R20 K21 ["Components"]
  GETTABLEKS R18 R19 K23 ["Categorization"]
  GETTABLEKS R17 R18 K29 ["ResultsView"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R21 R0 K6 ["Core"]
  GETTABLEKS R20 R21 K21 ["Components"]
  GETTABLEKS R19 R20 K23 ["Categorization"]
  GETTABLEKS R18 R19 K30 ["SubcategoriesView"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R22 R0 K6 ["Core"]
  GETTABLEKS R21 R22 K21 ["Components"]
  GETTABLEKS R20 R21 K23 ["Categorization"]
  GETTABLEKS R19 R20 K31 ["SubcategoriesSwimlaneView"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K6 ["Core"]
  GETTABLEKS R21 R22 K17 ["ContextServices"]
  GETTABLEKS R20 R21 K32 ["NavigationContext"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R23 R0 K6 ["Core"]
  GETTABLEKS R22 R23 K17 ["ContextServices"]
  GETTABLEKS R21 R22 K33 ["Settings"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETTABLEKS R24 R0 K6 ["Core"]
  GETTABLEKS R23 R24 K17 ["ContextServices"]
  GETTABLEKS R22 R23 K34 ["NetworkContext"]
  CALL R21 1 1
  GETIMPORT R22 K5 [require]
  GETTABLEKS R26 R0 K6 ["Core"]
  GETTABLEKS R25 R26 K7 ["Util"]
  GETTABLEKS R24 R25 K35 ["Analytics"]
  GETTABLEKS R23 R24 K36 ["AssetAnalyticsContextItem"]
  CALL R22 1 1
  GETIMPORT R23 K5 [require]
  GETTABLEKS R26 R0 K6 ["Core"]
  GETTABLEKS R25 R26 K37 ["Thunks"]
  GETTABLEKS R24 R25 K38 ["GetPageInfoAnalyticsContextInfo"]
  CALL R23 1 1
  GETIMPORT R24 K5 [require]
  GETTABLEKS R28 R0 K6 ["Core"]
  GETTABLEKS R27 R28 K39 ["Networking"]
  GETTABLEKS R26 R27 K40 ["Requests"]
  GETTABLEKS R25 R26 K41 ["UpdatePageInfoAndSendRequest"]
  CALL R24 1 1
  DUPCLOSURE R25 K42 [PROTO_11]
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R11
  CAPTURE VAL R24
  CAPTURE VAL R23
  CAPTURE VAL R9
  CAPTURE VAL R22
  CAPTURE VAL R19
  CAPTURE VAL R21
  CAPTURE VAL R20
  CAPTURE VAL R7
  CAPTURE VAL R6
  DUPCLOSURE R26 K43 [PROTO_12]
  CAPTURE VAL R1
  NEWTABLE R27 0 4
  NEWTABLE R28 1 0
  GETTABLEKS R30 R8 K44 ["NAVIGATION"]
  GETTABLEKS R29 R30 K45 ["HOME"]
  DUPCLOSURE R31 K46 [PROTO_16]
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R13
  CAPTURE VAL R5
  CAPTURE VAL R11
  CAPTURE VAL R26
  CAPTURE VAL R8
  NEWCLOSURE R30 P3
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R11
  CAPTURE VAL R31
  CAPTURE VAL R24
  CAPTURE VAL R23
  CAPTURE VAL R9
  CAPTURE VAL R22
  CAPTURE VAL R19
  CAPTURE VAL R21
  CAPTURE VAL R20
  CAPTURE VAL R7
  CAPTURE VAL R6
  SETTABLE R30 R28 R29
  NEWTABLE R29 1 0
  GETTABLEKS R31 R8 K44 ["NAVIGATION"]
  GETTABLEKS R30 R31 K47 ["ALL_SUBCATEGORIES"]
  DUPCLOSURE R32 K48 [PROTO_20]
  CAPTURE VAL R5
  CAPTURE VAL R17
  CAPTURE VAL R11
  CAPTURE VAL R26
  CAPTURE VAL R8
  NEWCLOSURE R31 P3
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R11
  CAPTURE VAL R32
  CAPTURE VAL R24
  CAPTURE VAL R23
  CAPTURE VAL R9
  CAPTURE VAL R22
  CAPTURE VAL R19
  CAPTURE VAL R21
  CAPTURE VAL R20
  CAPTURE VAL R7
  CAPTURE VAL R6
  SETTABLE R31 R29 R30
  NEWTABLE R30 1 0
  GETTABLEKS R32 R8 K44 ["NAVIGATION"]
  GETTABLEKS R31 R32 K49 ["SUBCATEGORY"]
  DUPCLOSURE R33 K50 [PROTO_23]
  CAPTURE VAL R5
  CAPTURE VAL R18
  CAPTURE VAL R11
  CAPTURE VAL R26
  CAPTURE VAL R8
  NEWCLOSURE R32 P3
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R11
  CAPTURE VAL R33
  CAPTURE VAL R24
  CAPTURE VAL R23
  CAPTURE VAL R9
  CAPTURE VAL R22
  CAPTURE VAL R19
  CAPTURE VAL R21
  CAPTURE VAL R20
  CAPTURE VAL R7
  CAPTURE VAL R6
  SETTABLE R32 R30 R31
  NEWTABLE R31 1 0
  GETTABLEKS R33 R8 K44 ["NAVIGATION"]
  GETTABLEKS R32 R33 K51 ["RESULTS"]
  DUPCLOSURE R34 K52 [PROTO_25]
  CAPTURE VAL R5
  CAPTURE VAL R16
  CAPTURE VAL R11
  CAPTURE VAL R26
  NEWCLOSURE R33 P3
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R11
  CAPTURE VAL R34
  CAPTURE VAL R24
  CAPTURE VAL R23
  CAPTURE VAL R9
  CAPTURE VAL R22
  CAPTURE VAL R19
  CAPTURE VAL R21
  CAPTURE VAL R20
  CAPTURE VAL R7
  CAPTURE VAL R6
  SETTABLE R33 R31 R32
  SETLIST R27 R28 4 [1]
  GETTABLEKS R28 R5 K53 ["PureComponent"]
  LOADK R30 K54 ["NavigationContainer"]
  NAMECALL R28 R28 K55 ["extend"]
  CALL R28 2 1
  DUPCLOSURE R29 K56 [PROTO_26]
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R27
  CAPTURE VAL R9
  CAPTURE VAL R19
  CAPTURE VAL R5
  SETTABLEKS R29 R28 K57 ["render"]
  MOVE R29 R12
  MOVE R30 R28
  CALL R29 1 -1
  RETURN R29 -1
