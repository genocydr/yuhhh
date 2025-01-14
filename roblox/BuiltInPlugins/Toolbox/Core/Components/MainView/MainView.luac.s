PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Network"]
  GETTABLEKS R0 R1 K2 ["networkInterface"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K3 ["Settings"]
  LOADK R3 K4 ["Plugin"]
  NAMECALL R1 R1 K5 ["get"]
  CALL R1 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K6 ["nextPage"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 0
  RETURN R0 0

PROTO_1:
  LOADN R2 0
  SETTABLEKS R2 R0 K0 ["headerHeight"]
  LOADN R2 0
  SETTABLEKS R2 R0 K1 ["containerWidth"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["createRef"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K3 ["scrollingFrameRef"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K4 ["requestNextPage"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Position"]
  JUMPIF R2 [+7]
  GETIMPORT R2 K4 [UDim2.new]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  LOADN R6 0
  CALL R2 4 1
  GETTABLEKS R3 R1 K5 ["Size"]
  JUMPIF R3 [+7]
  GETIMPORT R3 K4 [UDim2.new]
  LOADN R4 1
  LOADN R5 0
  LOADN R6 1
  LOADN R7 0
  CALL R3 4 1
  GETTABLEKS R4 R1 K6 ["categoryName"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K7 ["categoryIsFont"]
  MOVE R6 R4
  CALL R5 1 1
  GETTABLEKS R7 R1 K9 ["isLoading"]
  ORK R6 R7 K8 [False]
  GETTABLEKS R8 R1 K11 ["maxWidth"]
  ORK R7 R8 K10 [0]
  GETTABLEKS R8 R1 K12 ["networkErrors"]
  JUMPIF R8 [+2]
  NEWTABLE R8 0 0
  LENGTH R10 R8
  GETTABLE R9 R8 R10
  GETTABLEKS R10 R1 K13 ["includeUnverifiedCreators"]
  LOADN R14 2
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K14 ["MAIN_VIEW_PADDING"]
  MUL R13 R14 R15
  SUB R12 R7 R13
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K15 ["SCROLLBAR_PADDING"]
  SUB R11 R12 R13
  GETTABLEKS R12 R1 K16 ["creator"]
  JUMPIFNOT R12 [+4]
  GETTABLEKS R13 R1 K16 ["creator"]
  GETTABLEKS R12 R13 K17 ["Name"]
  GETTABLEKS R13 R1 K18 ["searchTerm"]
  LOADB R14 0
  LOADNIL R15
  LOADNIL R16
  LOADNIL R17
  GETUPVAL R18 2
  CALL R18 0 1
  JUMPIFNOT R18 [+97]
  LOADB R18 1
  JUMPIFEQKB R10 TRUE [+42]
  LOADB R18 1
  JUMPIFNOTEQKNIL R12 [+39]
  GETUPVAL R19 3
  CALL R19 0 1
  JUMPIFNOT R19 [+8]
  LOADB R18 1
  GETIMPORT R19 K20 [next]
  GETTABLEKS R20 R1 K21 ["creatorTargetIds"]
  CALL R19 1 1
  JUMPIFNOTEQKNIL R19 [+28]
  GETUPVAL R19 3
  CALL R19 0 1
  JUMPIFNOT R19 [+8]
  LOADB R18 1
  GETIMPORT R19 K20 [next]
  GETTABLEKS R20 R1 K22 ["groupTargetIds"]
  CALL R19 1 1
  JUMPIFNOTEQKNIL R19 [+17]
  LOADB R18 1
  GETTABLEKS R19 R1 K23 ["audioSearchInfo"]
  JUMPIFNOTEQKNIL R19 [+12]
  LOADB R18 1
  GETTABLEKS R19 R1 K24 ["additionalAudioSearchInfo"]
  JUMPIFNOTEQKNIL R19 [+7]
  GETTABLEKS R19 R1 K25 ["uiSortIntent"]
  JUMPIFNOTEQKNIL R19 [+2]
  LOADB R18 0 +1
  LOADB R18 1
  MOVE R17 R18
  LENGTH R18 R13
  LOADN R19 0
  JUMPIFLT R19 R18 [+2]
  LOADB R14 0 +1
  LOADB R14 1
  LOADB R18 0
  GETTABLEKS R19 R1 K26 ["correctionState"]
  GETUPVAL R22 4
  GETTABLEKS R21 R22 K27 ["AutocorrectResponseState"]
  GETTABLEKS R20 R21 K28 ["CorrectionAvailable"]
  JUMPIFNOTEQ R19 R20 [+7]
  GETTABLEKS R19 R1 K29 ["correctedQuery"]
  JUMPIFNOTEQKS R19 K30 [""] [+2]
  LOADB R18 0 +1
  LOADB R18 1
  LOADB R19 0
  GETTABLEKS R20 R1 K26 ["correctionState"]
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K27 ["AutocorrectResponseState"]
  GETTABLEKS R21 R22 K31 ["CorrectionAccepted"]
  JUMPIFNOTEQ R20 R21 [+7]
  GETTABLEKS R20 R1 K32 ["userQuery"]
  JUMPIFNOTEQKS R20 K30 [""] [+2]
  LOADB R19 0 +1
  LOADB R19 1
  OR R20 R18 R19
  GETUPVAL R22 5
  GETTABLEKS R21 R22 K33 ["calculateMainViewHeaderHeight"]
  MOVE R22 R17
  LOADNIL R23
  LOADNIL R24
  LOADNIL R25
  MOVE R26 R14
  MOVE R27 R20
  CALL R21 6 2
  MOVE R15 R21
  MOVE R16 R22
  JUMP [+55]
  LOADB R18 1
  JUMPIFEQKB R10 TRUE [+42]
  LOADB R18 1
  JUMPIFNOTEQKNIL R12 [+39]
  GETUPVAL R19 3
  CALL R19 0 1
  JUMPIFNOT R19 [+8]
  LOADB R18 1
  GETIMPORT R19 K20 [next]
  GETTABLEKS R20 R1 K21 ["creatorTargetIds"]
  CALL R19 1 1
  JUMPIFNOTEQKNIL R19 [+28]
  GETUPVAL R19 3
  CALL R19 0 1
  JUMPIFNOT R19 [+8]
  LOADB R18 1
  GETIMPORT R19 K20 [next]
  GETTABLEKS R20 R1 K22 ["groupTargetIds"]
  CALL R19 1 1
  JUMPIFNOTEQKNIL R19 [+17]
  LOADB R18 1
  LENGTH R19 R13
  LOADN R20 0
  JUMPIFLT R20 R19 [+12]
  LOADB R18 1
  GETTABLEKS R19 R1 K23 ["audioSearchInfo"]
  JUMPIFNOTEQKNIL R19 [+7]
  GETTABLEKS R19 R1 K24 ["additionalAudioSearchInfo"]
  JUMPIFNOTEQKNIL R19 [+2]
  LOADB R18 0 +1
  LOADB R18 1
  MOVE R17 R18
  GETUPVAL R19 5
  GETTABLEKS R18 R19 K33 ["calculateMainViewHeaderHeight"]
  MOVE R19 R17
  LOADNIL R20
  LOADNIL R21
  LOADNIL R22
  CALL R18 4 2
  MOVE R15 R18
  MOVE R16 R19
  GETTABLEKS R18 R1 K34 ["tryOpenAssetConfig"]
  SETTABLEKS R11 R0 K35 ["containerWidth"]
  SETTABLEKS R15 R0 K36 ["headerHeight"]
  GETUPVAL R20 6
  GETTABLEKS R19 R20 K37 ["join"]
  DUPTABLE R20 K40 [{"Position", "Size", "BackgroundTransparency", "BorderSizePixel"}]
  SETTABLEKS R2 R20 K1 ["Position"]
  SETTABLEKS R3 R20 K5 ["Size"]
  LOADN R21 1
  SETTABLEKS R21 R20 K38 ["BackgroundTransparency"]
  LOADN R21 0
  SETTABLEKS R21 R20 K39 ["BorderSizePixel"]
  GETTABLEKS R21 R1 K41 ["WrapperProps"]
  CALL R19 2 1
  GETUPVAL R21 7
  GETTABLEKS R20 R21 K42 ["createElement"]
  GETUPVAL R21 8
  MOVE R22 R19
  DUPTABLE R23 K47 [{"ScrollingFrame", "AssetGridContainerNew", "LoadingIndicator", "NetworkError"}]
  GETUPVAL R25 7
  GETTABLEKS R24 R25 K42 ["createElement"]
  LOADK R25 K48 ["Frame"]
  DUPTABLE R26 K49 [{"BackgroundTransparency", "Size"}]
  LOADN R27 1
  SETTABLEKS R27 R26 K38 ["BackgroundTransparency"]
  GETIMPORT R27 K4 [UDim2.new]
  LOADN R28 1
  LOADN R29 0
  LOADN R30 1
  LOADN R31 0
  CALL R27 4 1
  SETTABLEKS R27 R26 K5 ["Size"]
  DUPTABLE R27 K52 [{"UIPadding", "Header"}]
  GETUPVAL R29 7
  GETTABLEKS R28 R29 K42 ["createElement"]
  LOADK R29 K50 ["UIPadding"]
  DUPTABLE R30 K57 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  GETIMPORT R31 K59 [UDim.new]
  LOADN R32 0
  GETUPVAL R34 1
  GETTABLEKS R33 R34 K14 ["MAIN_VIEW_PADDING"]
  CALL R31 2 1
  SETTABLEKS R31 R30 K53 ["PaddingBottom"]
  GETIMPORT R31 K59 [UDim.new]
  LOADN R32 0
  GETUPVAL R34 1
  GETTABLEKS R33 R34 K14 ["MAIN_VIEW_PADDING"]
  CALL R31 2 1
  SETTABLEKS R31 R30 K54 ["PaddingLeft"]
  GETIMPORT R31 K59 [UDim.new]
  LOADN R32 0
  GETUPVAL R34 1
  GETTABLEKS R33 R34 K14 ["MAIN_VIEW_PADDING"]
  CALL R31 2 1
  SETTABLEKS R31 R30 K55 ["PaddingRight"]
  GETIMPORT R31 K59 [UDim.new]
  LOADN R32 0
  GETUPVAL R34 1
  GETTABLEKS R33 R34 K14 ["MAIN_VIEW_PADDING"]
  CALL R31 2 1
  SETTABLEKS R31 R30 K56 ["PaddingTop"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K50 ["UIPadding"]
  GETUPVAL R29 7
  GETTABLEKS R28 R29 K42 ["createElement"]
  GETUPVAL R29 9
  DUPTABLE R30 K62 [{"containerWidth", "showTags", "onBackToHome", "headerHeight"}]
  SETTABLEKS R11 R30 K35 ["containerWidth"]
  OR R31 R17 R14
  SETTABLEKS R31 R30 K60 ["showTags"]
  GETTABLEKS R31 R1 K61 ["onBackToHome"]
  SETTABLEKS R31 R30 K61 ["onBackToHome"]
  SETTABLEKS R15 R30 K36 ["headerHeight"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K51 ["Header"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K43 ["ScrollingFrame"]
  JUMPIFNOT R5 [+48]
  GETUPVAL R25 7
  GETTABLEKS R24 R25 K42 ["createElement"]
  GETUPVAL R25 10
  DUPTABLE R26 K67 [{"CategoryName", "IncludeUnverifiedCreators", "NoResultsPosition", "Position", "Size", "TryOpenAssetConfig"}]
  SETTABLEKS R4 R26 K63 ["CategoryName"]
  SETTABLEKS R10 R26 K64 ["IncludeUnverifiedCreators"]
  GETIMPORT R27 K4 [UDim2.new]
  LOADN R28 0
  LOADN R29 0
  LOADN R30 0
  GETUPVAL R32 3
  CALL R32 0 1
  JUMPIFNOT R32 [+4]
  LOADN R33 16
  ADD R32 R33 R15
  ADD R31 R32 R16
  JUMP [+2]
  LOADN R32 16
  ADD R31 R32 R15
  CALL R27 4 1
  SETTABLEKS R27 R26 K65 ["NoResultsPosition"]
  GETIMPORT R27 K4 [UDim2.new]
  LOADN R28 0
  LOADN R29 0
  LOADN R30 0
  ADD R31 R15 R16
  CALL R27 4 1
  SETTABLEKS R27 R26 K1 ["Position"]
  GETIMPORT R27 K4 [UDim2.new]
  LOADN R28 1
  LOADN R29 0
  LOADN R30 1
  SUB R31 R15 R16
  CALL R27 4 1
  SETTABLEKS R27 R26 K5 ["Size"]
  SETTABLEKS R18 R26 K66 ["TryOpenAssetConfig"]
  CALL R24 2 1
  JUMP [+61]
  GETUPVAL R25 7
  GETTABLEKS R24 R25 K42 ["createElement"]
  GETUPVAL R25 11
  DUPTABLE R26 K71 [{"NoResultsPosition", "OnSearchByCreator", "ParentAbsoluteSize", "ParentAbsolutePosition", "Position", "Size", "TryOpenAssetConfig"}]
  GETIMPORT R27 K4 [UDim2.new]
  LOADN R28 0
  LOADN R29 0
  LOADN R30 0
  GETUPVAL R32 3
  CALL R32 0 1
  JUMPIFNOT R32 [+4]
  LOADN R33 16
  ADD R32 R33 R15
  ADD R31 R32 R16
  JUMP [+2]
  LOADN R32 16
  ADD R31 R32 R15
  CALL R27 4 1
  SETTABLEKS R27 R26 K65 ["NoResultsPosition"]
  GETUPVAL R28 12
  CALL R28 0 1
  JUMPIFNOT R28 [+3]
  GETTABLEKS R27 R1 K68 ["OnSearchByCreator"]
  JUMP [+1]
  LOADNIL R27
  SETTABLEKS R27 R26 K68 ["OnSearchByCreator"]
  GETTABLEKS R27 R1 K72 ["AbsoluteSize"]
  SETTABLEKS R27 R26 K69 ["ParentAbsoluteSize"]
  GETTABLEKS R27 R1 K73 ["AbsolutePosition"]
  SETTABLEKS R27 R26 K70 ["ParentAbsolutePosition"]
  GETIMPORT R27 K4 [UDim2.new]
  LOADN R28 0
  LOADN R29 0
  LOADN R30 0
  ADD R31 R15 R16
  CALL R27 4 1
  SETTABLEKS R27 R26 K1 ["Position"]
  GETIMPORT R27 K4 [UDim2.new]
  LOADN R28 1
  LOADN R29 0
  LOADN R30 1
  MINUS R32 R15
  SUB R31 R32 R16
  CALL R27 4 1
  SETTABLEKS R27 R26 K5 ["Size"]
  SETTABLEKS R18 R26 K66 ["TryOpenAssetConfig"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K44 ["AssetGridContainerNew"]
  MOVE R24 R6
  JUMPIFNOT R24 [+36]
  NOT R24 R5
  JUMPIFNOT R24 [+34]
  GETUPVAL R25 7
  GETTABLEKS R24 R25 K42 ["createElement"]
  GETUPVAL R25 13
  DUPTABLE R26 K76 [{"AnchorPoint", "Position", "Size", "ZIndex"}]
  GETIMPORT R27 K78 [Vector2.new]
  LOADK R28 K79 [0.5]
  LOADN R29 1
  CALL R27 2 1
  SETTABLEKS R27 R26 K74 ["AnchorPoint"]
  GETIMPORT R27 K4 [UDim2.new]
  LOADK R28 K79 [0.5]
  LOADN R29 0
  LOADN R30 1
  LOADN R31 240
  CALL R27 4 1
  SETTABLEKS R27 R26 K1 ["Position"]
  GETIMPORT R27 K4 [UDim2.new]
  LOADN R28 0
  LOADN R29 92
  LOADN R30 0
  LOADN R31 24
  CALL R27 4 1
  SETTABLEKS R27 R26 K5 ["Size"]
  LOADN R27 3
  SETTABLEKS R27 R26 K75 ["ZIndex"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K45 ["LoadingIndicator"]
  LOADB R24 0
  SETTABLEKS R24 R23 K46 ["NetworkError"]
  CALL R20 3 -1
  RETURN R20 -1

PROTO_3:
  MOVE R2 R0
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R0 R2
  GETTABLEKS R2 R0 K0 ["assets"]
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  GETTABLEKS R3 R0 K1 ["pageInfo"]
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  DUPTABLE R4 K14 [{"isLoading", "networkErrors", "audioSearchInfo", "additionalAudioSearchInfo", "categoryName", "searchTerm", "creator", "creatorTargetIds", "groupTargetIds", "includeUnverifiedCreators", "uiSortIntent", "correctionState"}]
  GETTABLEKS R6 R2 K2 ["isLoading"]
  ORK R5 R6 K15 [False]
  SETTABLEKS R5 R4 K2 ["isLoading"]
  GETTABLEKS R5 R0 K3 ["networkErrors"]
  JUMPIF R5 [+2]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K3 ["networkErrors"]
  GETTABLEKS R5 R3 K4 ["audioSearchInfo"]
  SETTABLEKS R5 R4 K4 ["audioSearchInfo"]
  GETTABLEKS R5 R3 K5 ["additionalAudioSearchInfo"]
  SETTABLEKS R5 R4 K5 ["additionalAudioSearchInfo"]
  GETTABLEKS R5 R3 K6 ["categoryName"]
  JUMPIF R5 [+5]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K16 ["DEFAULT"]
  GETTABLEKS R5 R6 K17 ["name"]
  SETTABLEKS R5 R4 K6 ["categoryName"]
  GETTABLEKS R6 R3 K7 ["searchTerm"]
  ORK R5 R6 K18 [""]
  SETTABLEKS R5 R4 K7 ["searchTerm"]
  GETTABLEKS R5 R3 K8 ["creator"]
  SETTABLEKS R5 R4 K8 ["creator"]
  GETUPVAL R6 1
  CALL R6 0 1
  JUMPIFNOT R6 [+13]
  GETTABLEKS R6 R3 K9 ["creatorTargetIds"]
  JUMPIFNOT R6 [+10]
  GETTABLEKS R6 R3 K9 ["creatorTargetIds"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K19 ["None"]
  JUMPIFEQ R6 R7 [+4]
  GETTABLEKS R5 R3 K9 ["creatorTargetIds"]
  JUMP [+2]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K9 ["creatorTargetIds"]
  GETUPVAL R6 1
  CALL R6 0 1
  JUMPIFNOT R6 [+13]
  GETTABLEKS R6 R3 K10 ["groupTargetIds"]
  JUMPIFNOT R6 [+10]
  GETTABLEKS R6 R3 K10 ["groupTargetIds"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K19 ["None"]
  JUMPIFEQ R6 R7 [+4]
  GETTABLEKS R5 R3 K10 ["groupTargetIds"]
  JUMP [+2]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K10 ["groupTargetIds"]
  GETTABLEKS R5 R3 K11 ["includeUnverifiedCreators"]
  SETTABLEKS R5 R4 K11 ["includeUnverifiedCreators"]
  GETTABLEKS R5 R3 K12 ["uiSortIntent"]
  SETTABLEKS R5 R4 K12 ["uiSortIntent"]
  GETUPVAL R6 3
  CALL R6 0 1
  JUMPIFNOT R6 [+3]
  GETTABLEKS R5 R3 K13 ["correctionState"]
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K13 ["correctionState"]
  RETURN R4 1

PROTO_4:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_5:
  DUPTABLE R1 K1 [{"nextPage"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["nextPage"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["GuiService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R5 K5 [script]
  GETTABLEKS R4 R5 K6 ["Parent"]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETTABLEKS R2 R1 K7 ["Packages"]
  GETIMPORT R3 K9 [require]
  GETTABLEKS R4 R2 K10 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R5 R2 K11 ["RoactRodux"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R6 R2 K12 ["Cryo"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R7 R2 K13 ["Framework"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R10 R1 K14 ["Core"]
  GETTABLEKS R9 R10 K15 ["Util"]
  GETTABLEKS R8 R9 K16 ["Constants"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R11 R1 K14 ["Core"]
  GETTABLEKS R10 R11 K15 ["Util"]
  GETTABLEKS R9 R10 K17 ["Layouter"]
  CALL R8 1 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R12 R1 K14 ["Core"]
  GETTABLEKS R11 R12 K18 ["Types"]
  GETTABLEKS R10 R11 K19 ["Category"]
  CALL R9 1 1
  GETIMPORT R11 K9 [require]
  GETTABLEKS R12 R2 K13 ["Framework"]
  CALL R11 1 1
  GETTABLEKS R10 R11 K20 ["ContextServices"]
  GETTABLEKS R11 R10 K21 ["withContext"]
  GETIMPORT R12 K9 [require]
  GETTABLEKS R15 R1 K14 ["Core"]
  GETTABLEKS R14 R15 K20 ["ContextServices"]
  GETTABLEKS R13 R14 K22 ["Settings"]
  CALL R12 1 1
  GETIMPORT R13 K9 [require]
  GETTABLEKS R16 R1 K14 ["Core"]
  GETTABLEKS R15 R16 K20 ["ContextServices"]
  GETTABLEKS R14 R15 K23 ["NetworkContext"]
  CALL R13 1 1
  GETIMPORT R14 K9 [require]
  GETTABLEKS R17 R1 K14 ["Core"]
  GETTABLEKS R16 R17 K24 ["Components"]
  GETTABLEKS R15 R16 K25 ["AssetGridContainer"]
  CALL R14 1 1
  GETIMPORT R15 K9 [require]
  GETTABLEKS R18 R1 K14 ["Core"]
  GETTABLEKS R17 R18 K24 ["Components"]
  GETTABLEKS R16 R17 K26 ["InfoBanner"]
  CALL R15 1 1
  GETIMPORT R16 K9 [require]
  GETTABLEKS R19 R1 K14 ["Core"]
  GETTABLEKS R18 R19 K24 ["Components"]
  GETTABLEKS R17 R18 K27 ["NoResultsDetail"]
  CALL R16 1 1
  GETIMPORT R17 K9 [require]
  GETTABLEKS R18 R2 K28 ["Dash"]
  CALL R17 1 1
  GETTABLEKS R19 R6 K29 ["UI"]
  GETTABLEKS R18 R19 K30 ["LoadingIndicator"]
  GETTABLEKS R20 R6 K29 ["UI"]
  GETTABLEKS R19 R20 K31 ["Pane"]
  GETTABLEKS R21 R6 K32 ["Wrappers"]
  GETTABLEKS R20 R21 K33 ["withAbsoluteSizeAndPosition"]
  GETIMPORT R21 K9 [require]
  GETTABLEKS R25 R1 K14 ["Core"]
  GETTABLEKS R24 R25 K24 ["Components"]
  GETTABLEKS R23 R24 K34 ["MainView"]
  GETTABLEKS R22 R23 K35 ["MainViewHeader"]
  CALL R21 1 1
  GETIMPORT R22 K9 [require]
  GETTABLEKS R25 R1 K14 ["Core"]
  GETTABLEKS R24 R25 K24 ["Components"]
  GETTABLEKS R23 R24 K36 ["Toast"]
  CALL R22 1 1
  GETIMPORT R23 K9 [require]
  GETTABLEKS R27 R1 K14 ["Core"]
  GETTABLEKS R26 R27 K37 ["Networking"]
  GETTABLEKS R25 R26 K38 ["Requests"]
  GETTABLEKS R24 R25 K39 ["NextPageRequest"]
  CALL R23 1 1
  GETIMPORT R24 K9 [require]
  GETTABLEKS R27 R1 K14 ["Core"]
  GETTABLEKS R26 R27 K18 ["Types"]
  GETTABLEKS R25 R26 K40 ["AutocorrectTypes"]
  CALL R24 1 1
  GETIMPORT R25 K9 [require]
  GETTABLEKS R29 R1 K14 ["Core"]
  GETTABLEKS R28 R29 K24 ["Components"]
  GETTABLEKS R27 R28 K41 ["Font"]
  GETTABLEKS R26 R27 K42 ["FontView"]
  CALL R25 1 1
  GETIMPORT R26 K9 [require]
  GETTABLEKS R30 R1 K14 ["Core"]
  GETTABLEKS R29 R30 K15 ["Util"]
  GETTABLEKS R28 R29 K43 ["SharedFlags"]
  GETTABLEKS R27 R28 K44 ["getFFlagToolboxEnableSearchOptionsRefactor"]
  CALL R26 1 1
  GETIMPORT R27 K9 [require]
  GETTABLEKS R31 R1 K14 ["Core"]
  GETTABLEKS R30 R31 K15 ["Util"]
  GETTABLEKS R29 R30 K43 ["SharedFlags"]
  GETTABLEKS R28 R29 K45 ["getFFlagToolboxAddAutocorrect"]
  CALL R27 1 1
  GETIMPORT R28 K9 [require]
  GETTABLEKS R32 R1 K14 ["Core"]
  GETTABLEKS R31 R32 K15 ["Util"]
  GETTABLEKS R30 R31 K43 ["SharedFlags"]
  GETTABLEKS R29 R30 K46 ["getFFlagToolboxFixInventoryGridSearch"]
  CALL R28 1 1
  GETTABLEKS R29 R3 K47 ["PureComponent"]
  LOADK R31 K34 ["MainView"]
  NAMECALL R29 R29 K48 ["extend"]
  CALL R29 2 1
  DUPCLOSURE R30 K49 [PROTO_1]
  CAPTURE VAL R3
  SETTABLEKS R30 R29 K50 ["init"]
  DUPCLOSURE R30 K51 [PROTO_2]
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R27
  CAPTURE VAL R26
  CAPTURE VAL R24
  CAPTURE VAL R8
  CAPTURE VAL R17
  CAPTURE VAL R3
  CAPTURE VAL R19
  CAPTURE VAL R21
  CAPTURE VAL R25
  CAPTURE VAL R14
  CAPTURE VAL R28
  CAPTURE VAL R18
  SETTABLEKS R30 R29 K52 ["render"]
  MOVE R30 R11
  DUPTABLE R31 K55 [{"Settings", "Localization", "Network"}]
  SETTABLEKS R12 R31 K22 ["Settings"]
  GETTABLEKS R32 R10 K53 ["Localization"]
  SETTABLEKS R32 R31 K53 ["Localization"]
  SETTABLEKS R13 R31 K54 ["Network"]
  CALL R30 1 1
  MOVE R31 R29
  CALL R30 1 1
  MOVE R29 R30
  DUPCLOSURE R30 K56 [PROTO_3]
  CAPTURE VAL R9
  CAPTURE VAL R26
  CAPTURE VAL R5
  CAPTURE VAL R27
  DUPCLOSURE R31 K57 [PROTO_5]
  CAPTURE VAL R23
  GETTABLEKS R32 R4 K58 ["connect"]
  MOVE R33 R30
  MOVE R34 R31
  CALL R32 2 1
  MOVE R33 R29
  CALL R32 1 1
  MOVE R29 R32
  MOVE R32 R20
  MOVE R33 R29
  CALL R32 1 -1
  RETURN R32 -1
