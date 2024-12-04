PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R3 K2 ["rbxassetid://%*"]
  LOADK R5 K3 [14215126016]
  NAMECALL R3 R3 K4 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  NAMECALL R0 R0 K5 ["GetObjects"]
  CALL R0 2 1
  GETTABLEN R1 R0 1
  GETIMPORT R4 K8 [CFrame.new]
  LOADK R5 K9 [{362.373, 4.115, 247.495}]
  CALL R4 1 -1
  NAMECALL R2 R1 K10 ["PivotTo"]
  CALL R2 -1 0
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K11 ["Parent"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R0 0
  LOADK R2 K0 [14215126016]
  NAMECALL R0 R0 K1 ["LoadAsset"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_2:
  GETUPVAL R0 0
  LOADK R2 K0 ["Car"]
  NAMECALL R0 R0 K1 ["FindFirstChild"]
  CALL R0 2 1
  JUMPIFNOT R0 [+1]
  RETURN R0 1
  GETUPVAL R1 1
  JUMPIFNOT R1 [+15]
  GETIMPORT R1 K3 [pcall]
  DUPCLOSURE R2 K4 [PROTO_0]
  CAPTURE UPVAL U0
  CALL R1 1 2
  JUMPIFNOT R1 [+2]
  JUMPIFNOT R2 [+1]
  RETURN R2 1
  GETIMPORT R3 K6 [warn]
  LOADK R4 K7 ["Could not insert car:"]
  MOVE R5 R2
  CALL R3 2 0
  LOADNIL R3
  RETURN R3 1
  GETIMPORT R1 K9 [game]
  LOADK R3 K10 ["InsertService"]
  NAMECALL R1 R1 K11 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K3 [pcall]
  NEWCLOSURE R3 P1
  CAPTURE VAL R1
  CALL R2 1 2
  JUMPIFNOT R2 [+14]
  JUMPIFNOT R3 [+13]
  LOADK R6 K0 ["Car"]
  NAMECALL R4 R3 K1 ["FindFirstChild"]
  CALL R4 2 1
  GETTABLEKS R5 R4 K12 ["PrimaryPart"]
  LOADK R6 K13 [{362.373, 4.115, 247.495}]
  SETTABLEKS R6 R5 K14 ["Position"]
  GETUPVAL R5 0
  SETTABLEKS R5 R4 K15 ["Parent"]
  RETURN R4 1
  GETUPVAL R4 2
  JUMPIFNOT R4 [+5]
  GETIMPORT R4 K6 [warn]
  LOADK R5 K16 ["Could not insert car"]
  MOVE R6 R3
  CALL R4 2 0
  LOADNIL R4
  RETURN R4 1

PROTO_3:
  GETUPVAL R1 0
  LOADK R3 K0 ["Part"]
  NAMECALL R1 R1 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFNOT R1 [+11]
  GETTABLEKS R2 R1 K2 ["Shape"]
  GETIMPORT R3 K6 [Enum.PartType.Wedge]
  JUMPIFNOTEQ R2 R3 [+6]
  GETTABLEKS R2 R0 K7 ["instances"]
  SETTABLEKS R1 R2 K8 ["wedge"]
  RETURN R1 1
  GETIMPORT R2 K11 [Instance.new]
  LOADK R3 K0 ["Part"]
  CALL R2 1 1
  GETIMPORT R3 K6 [Enum.PartType.Wedge]
  SETTABLEKS R3 R2 K2 ["Shape"]
  LOADK R3 K12 [{360, 1.5, 216}]
  SETTABLEKS R3 R2 K13 ["Position"]
  GETUPVAL R3 0
  SETTABLEKS R3 R2 K14 ["Parent"]
  GETTABLEKS R3 R0 K7 ["instances"]
  SETTABLEKS R2 R3 K8 ["wedge"]
  RETURN R2 1

PROTO_4:
  DUPTABLE R1 K5 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R2 K6 ["Standalone"]
  SETTABLEKS R2 R1 K0 ["DataModel"]
  LOADK R2 K6 ["Standalone"]
  SETTABLEKS R2 R1 K1 ["PluginType"]
  LOADK R2 K7 ["Ribbon"]
  SETTABLEKS R2 R1 K2 ["PluginId"]
  LOADK R2 K8 ["Widgets"]
  SETTABLEKS R2 R1 K3 ["Category"]
  SETTABLEKS R0 R1 K4 ["ItemId"]
  RETURN R1 1

PROTO_5:
  DUPTABLE R1 K3 [{"PluginId", "Category", "ItemId"}]
  LOADK R2 K4 ["QtRibbon"]
  SETTABLEKS R2 R1 K0 ["PluginId"]
  LOADK R2 K5 ["Widgets"]
  SETTABLEKS R2 R1 K1 ["Category"]
  SETTABLEKS R0 R1 K2 ["ItemId"]
  RETURN R1 1

PROTO_6:
  GETTABLEKS R1 R0 K0 ["instances"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["CurrentCamera"]
  SETTABLEKS R2 R1 K2 ["camera"]
  GETUPVAL R1 0
  NAMECALL R1 R1 K3 ["GetDescendants"]
  CALL R1 1 3
  FORGPREP R1
  LOADK R8 K4 ["BasePart"]
  NAMECALL R6 R5 K5 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+3]
  LOADB R6 1
  SETTABLEKS R6 R5 K6 ["Locked"]
  FORGLOOP R1 2 [-9]
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["GetDescendants"]
  CALL R0 1 3
  FORGPREP R0
  LOADK R7 K1 ["BasePart"]
  NAMECALL R5 R4 K2 ["IsA"]
  CALL R5 2 1
  JUMPIFNOT R5 [+3]
  LOADB R5 0
  SETTABLEKS R5 R4 K3 ["Locked"]
  FORGLOOP R0 2 [-9]
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  CALL R0 0 0
  RETURN R0 0

PROTO_9:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["TutorialService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  LOADB R3 1
  NAMECALL R1 R0 K4 ["SetTutorialCompletionStatus"]
  CALL R1 2 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  JUMPIFNOT R1 [+3]
  LOADK R2 K0 [{343, 1.5, 250}]
  SETTABLEKS R2 R1 K1 ["Position"]
  RETURN R0 0

PROTO_11:
  GETUPVAL R0 0
  LOADK R1 K0 [{343, 1.5, 250}]
  SETTABLEKS R1 R0 K1 ["Position"]
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETIMPORT R2 K2 [task.delay]
  LOADK R3 K3 [0.1]
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  CALL R2 2 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  JUMPIFNOT R1 [+3]
  LOADK R2 K0 [{360, 1.5, 216}]
  SETTABLEKS R2 R1 K1 ["Position"]
  RETURN R0 0

PROTO_14:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  JUMPIFNOT R1 [+3]
  LOADK R2 K0 [{180, 0, 180}]
  SETTABLEKS R2 R1 K1 ["Rotation"]
  RETURN R0 0

PROTO_15:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  JUMPIFNOT R1 [+6]
  LOADK R2 K0 [{364, 3.6, 216}]
  SETTABLEKS R2 R1 K1 ["Position"]
  LOADK R2 K2 [{15, 5, 15}]
  SETTABLEKS R2 R1 K3 ["Size"]
  RETURN R0 0

PROTO_16:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  JUMPIFNOT R1 [+8]
  GETIMPORT R2 K2 [Color3.fromRGB]
  LOADN R3 129
  LOADN R4 246
  LOADN R5 136
  CALL R2 3 1
  SETTABLEKS R2 R1 K3 ["Color"]
  RETURN R0 0

PROTO_17:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  JUMPIFNOT R1 [+3]
  LOADB R2 1
  SETTABLEKS R2 R1 K0 ["Anchored"]
  RETURN R0 0

PROTO_18:
  GETTABLEKS R1 R0 K0 ["dataModel"]
  LOADK R4 K1 ["Selection"]
  NAMECALL R2 R1 K2 ["GetService"]
  CALL R2 2 1
  NEWTABLE R5 0 1
  LOADK R8 K3 ["Workspace"]
  NAMECALL R6 R1 K2 ["GetService"]
  CALL R6 2 -1
  SETLIST R5 R6 -1 [1]
  NAMECALL R3 R2 K4 ["Set"]
  CALL R3 2 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+14]
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["Selection"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  NEWTABLE R4 0 1
  MOVE R5 R0
  SETLIST R4 R5 1 [1]
  NAMECALL R2 R1 K4 ["Set"]
  CALL R2 2 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+14]
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["Selection"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  NEWTABLE R4 0 1
  MOVE R5 R0
  SETLIST R4 R5 1 [1]
  NAMECALL R2 R1 K4 ["Set"]
  CALL R2 2 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+5]
  LOADK R3 K0 ["MaxSpeed"]
  LOADN R4 60
  NAMECALL R1 R0 K1 ["SetAttribute"]
  CALL R1 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Flags"]
  GETTABLEKS R2 R3 K7 ["getFFlagTutorialsUseExtensibilityApi"]
  CALL R1 1 1
  CALL R1 0 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K5 ["Src"]
  GETTABLEKS R4 R5 K6 ["Flags"]
  GETTABLEKS R3 R4 K8 ["getFFlagTutorialsUseLuaRibbon"]
  CALL R2 1 1
  CALL R2 0 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K5 ["Src"]
  GETTABLEKS R5 R6 K6 ["Flags"]
  GETTABLEKS R4 R5 K9 ["getFFlagSpotlightManager"]
  CALL R3 1 1
  CALL R3 0 1
  GETIMPORT R4 K11 [game]
  LOADK R6 K12 ["StudioTour2FixInsertCar"]
  LOADB R7 0
  NAMECALL R4 R4 K13 ["DefineFastFlag"]
  CALL R4 3 1
  GETIMPORT R5 K11 [game]
  LOADK R7 K14 ["FixStudioTour2ToolboxSpotlight"]
  LOADB R8 0
  NAMECALL R5 R5 K13 ["DefineFastFlag"]
  CALL R5 3 1
  GETIMPORT R6 K11 [game]
  LOADK R8 K15 ["Workspace"]
  NAMECALL R6 R6 K16 ["GetService"]
  CALL R6 2 1
  DUPTABLE R7 K20 [{"assetIds", "positionOverride", "scriptWarningOverride"}]
  NEWTABLE R8 0 1
  LOADK R9 K21 [14215126016]
  SETLIST R8 R9 1 [1]
  SETTABLEKS R8 R7 K17 ["assetIds"]
  LOADK R8 K22 [{362.373, 4.115, 247.495}]
  SETTABLEKS R8 R7 K18 ["positionOverride"]
  LOADB R8 1
  SETTABLEKS R8 R7 K19 ["scriptWarningOverride"]
  DUPCLOSURE R8 K23 [PROTO_2]
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R3
  DUPCLOSURE R9 K24 [PROTO_3]
  CAPTURE VAL R6
  DUPCLOSURE R10 K25 [PROTO_4]
  DUPCLOSURE R11 K26 [PROTO_5]
  DUPTABLE R12 K30 [{"PluginId", "Category", "ItemId"}]
  LOADK R13 K31 ["Explorer"]
  SETTABLEKS R13 R12 K27 ["PluginId"]
  LOADK R13 K32 ["Widgets"]
  SETTABLEKS R13 R12 K28 ["Category"]
  LOADK R13 K33 ["Main"]
  SETTABLEKS R13 R12 K29 ["ItemId"]
  DUPTABLE R13 K30 [{"PluginId", "Category", "ItemId"}]
  LOADK R14 K34 ["Properties"]
  SETTABLEKS R14 R13 K27 ["PluginId"]
  LOADK R14 K32 ["Widgets"]
  SETTABLEKS R14 R13 K28 ["Category"]
  LOADK R14 K33 ["Main"]
  SETTABLEKS R14 R13 K29 ["ItemId"]
  DUPTABLE R14 K37 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R15 K38 ["Edit"]
  SETTABLEKS R15 R14 K35 ["DataModel"]
  LOADK R15 K39 ["Asset"]
  SETTABLEKS R15 R14 K36 ["PluginType"]
  LOADK R15 K40 ["Toolbox"]
  SETTABLEKS R15 R14 K27 ["PluginId"]
  LOADK R15 K32 ["Widgets"]
  SETTABLEKS R15 R14 K28 ["Category"]
  JUMPIFNOT R5 [+2]
  LOADK R15 K40 ["Toolbox"]
  JUMP [+1]
  LOADK R15 K33 ["Main"]
  SETTABLEKS R15 R14 K29 ["ItemId"]
  DUPTABLE R15 K45 [{"id", "onStart", "onComplete", "steps"}]
  LOADK R16 K46 ["StudioTour2"]
  SETTABLEKS R16 R15 K41 ["id"]
  DUPCLOSURE R16 K47 [PROTO_6]
  CAPTURE VAL R6
  SETTABLEKS R16 R15 K42 ["onStart"]
  DUPCLOSURE R16 K48 [PROTO_7]
  CAPTURE VAL R6
  SETTABLEKS R16 R15 K43 ["onComplete"]
  NEWTABLE R16 0 22
  DUPTABLE R17 K53 [{"id", "kind", "keys", "topic", "widgets"}]
  LOADK R18 K54 ["moveCamera"]
  SETTABLEKS R18 R17 K41 ["id"]
  LOADK R18 K55 ["Input"]
  SETTABLEKS R18 R17 K49 ["kind"]
  NEWTABLE R18 0 4
  GETIMPORT R19 K59 [Enum.KeyCode.W]
  GETIMPORT R20 K61 [Enum.KeyCode.A]
  GETIMPORT R21 K63 [Enum.KeyCode.S]
  GETIMPORT R22 K65 [Enum.KeyCode.D]
  SETLIST R18 R19 4 [1]
  SETTABLEKS R18 R17 K50 ["keys"]
  LOADK R18 K66 ["navigation"]
  SETTABLEKS R18 R17 K51 ["topic"]
  LOADK R18 K67 [""]
  SETTABLEKS R18 R17 K52 ["widgets"]
  DUPTABLE R18 K68 [{"id", "kind", "keys", "topic"}]
  LOADK R19 K69 ["panCamera"]
  SETTABLEKS R19 R18 K41 ["id"]
  LOADK R19 K55 ["Input"]
  SETTABLEKS R19 R18 K49 ["kind"]
  NEWTABLE R19 0 2
  GETIMPORT R20 K71 [Enum.KeyCode.E]
  GETIMPORT R21 K73 [Enum.KeyCode.Q]
  SETLIST R19 R20 2 [1]
  SETTABLEKS R19 R18 K50 ["keys"]
  LOADK R19 K66 ["navigation"]
  SETTABLEKS R19 R18 K51 ["topic"]
  DUPTABLE R19 K75 [{"id", "kind", "inputs", "topic"}]
  LOADK R20 K76 ["zoomCamera"]
  SETTABLEKS R20 R19 K41 ["id"]
  LOADK R20 K55 ["Input"]
  SETTABLEKS R20 R19 K49 ["kind"]
  NEWTABLE R20 0 1
  GETIMPORT R21 K79 [Enum.UserInputType.MouseWheel]
  SETLIST R20 R21 1 [1]
  SETTABLEKS R20 R19 K74 ["inputs"]
  LOADK R20 K66 ["navigation"]
  SETTABLEKS R20 R19 K51 ["topic"]
  DUPTABLE R20 K81 [{"id", "kind", "topic", "instanceId"}]
  LOADK R21 K82 ["rotateCamera"]
  SETTABLEKS R21 R20 K41 ["id"]
  LOADK R21 K83 ["Rotate"]
  SETTABLEKS R21 R20 K49 ["kind"]
  LOADK R21 K66 ["navigation"]
  SETTABLEKS R21 R20 K51 ["topic"]
  LOADK R21 K84 ["camera"]
  SETTABLEKS R21 R20 K80 ["instanceId"]
  DUPTABLE R21 K88 [{"id", "topic", "widgets", "showNext", "spotlight", "toolboxLimits"}]
  LOADK R22 K89 ["marketplace"]
  SETTABLEKS R22 R21 K41 ["id"]
  LOADK R22 K89 ["marketplace"]
  SETTABLEKS R22 R21 K51 ["topic"]
  LOADK R22 K40 ["Toolbox"]
  SETTABLEKS R22 R21 K52 ["widgets"]
  LOADB R22 1
  SETTABLEKS R22 R21 K85 ["showNext"]
  JUMPIFNOT R3 [+13]
  DUPTABLE R22 K94 [{"TargetWidgetUri", "ShowBox", "ShowHighlight", "ShowShadows"}]
  SETTABLEKS R14 R22 K90 ["TargetWidgetUri"]
  LOADB R23 1
  SETTABLEKS R23 R22 K91 ["ShowBox"]
  LOADB R23 1
  SETTABLEKS R23 R22 K92 ["ShowHighlight"]
  LOADB R23 1
  SETTABLEKS R23 R22 K93 ["ShowShadows"]
  JUMP [+13]
  DUPTABLE R22 K99 [{"target", "showBox", "showHighlight", "showShadows"}]
  LOADK R23 K100 ["edit_builtin_Toolbox.rbxm_Toolbox"]
  SETTABLEKS R23 R22 K95 ["target"]
  LOADB R23 1
  SETTABLEKS R23 R22 K96 ["showBox"]
  LOADB R23 1
  SETTABLEKS R23 R22 K97 ["showHighlight"]
  LOADB R23 1
  SETTABLEKS R23 R22 K98 ["showShadows"]
  SETTABLEKS R22 R21 K86 ["spotlight"]
  SETTABLEKS R7 R21 K87 ["toolboxLimits"]
  DUPTABLE R22 K102 [{"id", "kind", "search", "toolboxLimits", "topic", "widgets"}]
  LOADK R23 K103 ["searchMarketplace"]
  SETTABLEKS R23 R22 K41 ["id"]
  LOADK R23 K104 ["ToolboxSearch"]
  SETTABLEKS R23 R22 K49 ["kind"]
  LOADK R23 K105 ["car"]
  SETTABLEKS R23 R22 K101 ["search"]
  SETTABLEKS R7 R22 K87 ["toolboxLimits"]
  LOADK R23 K89 ["marketplace"]
  SETTABLEKS R23 R22 K51 ["topic"]
  LOADK R23 K40 ["Toolbox"]
  SETTABLEKS R23 R22 K52 ["widgets"]
  DUPTABLE R23 K107 [{"id", "kind", "toolboxLimits", "topic", "onSkip", "widgets"}]
  LOADK R24 K108 ["insertMarketplace"]
  SETTABLEKS R24 R23 K41 ["id"]
  LOADK R24 K109 ["ToolboxInsert"]
  SETTABLEKS R24 R23 K49 ["kind"]
  SETTABLEKS R7 R23 K87 ["toolboxLimits"]
  LOADK R24 K89 ["marketplace"]
  SETTABLEKS R24 R23 K51 ["topic"]
  DUPCLOSURE R24 K110 [PROTO_8]
  CAPTURE VAL R8
  SETTABLEKS R24 R23 K106 ["onSkip"]
  LOADK R24 K40 ["Toolbox"]
  SETTABLEKS R24 R23 K52 ["widgets"]
  DUPTABLE R24 K117 [{"id", "kind", "topic", "callout", "spotlight", "instanceId", "className", "properties", "onBind", "onSkip", "onUnbind", "hideWidgets", "widgets"}]
  LOADK R25 K118 ["wedge"]
  SETTABLEKS R25 R24 K41 ["id"]
  LOADK R25 K119 ["Insert"]
  SETTABLEKS R25 R24 K49 ["kind"]
  LOADK R25 K120 ["parts"]
  SETTABLEKS R25 R24 K51 ["topic"]
  JUMPIFNOT R2 [+27]
  DUPTABLE R25 K122 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R26 K37 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R27 K123 ["Standalone"]
  SETTABLEKS R27 R26 K35 ["DataModel"]
  LOADK R27 K123 ["Standalone"]
  SETTABLEKS R27 R26 K36 ["PluginType"]
  LOADK R27 K124 ["Ribbon"]
  SETTABLEKS R27 R26 K27 ["PluginId"]
  LOADK R27 K32 ["Widgets"]
  SETTABLEKS R27 R26 K28 ["Category"]
  LOADK R27 K125 ["Tabs/Home/Part"]
  SETTABLEKS R27 R26 K29 ["ItemId"]
  SETTABLEKS R26 R25 K90 ["TargetWidgetUri"]
  GETIMPORT R26 K128 [Vector2.new]
  LOADN R27 5
  LOADN R28 20
  CALL R26 2 1
  SETTABLEKS R26 R25 K121 ["Offset"]
  JUMP [+33]
  JUMPIFNOT R1 [+21]
  DUPTABLE R25 K122 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R26 K30 [{"PluginId", "Category", "ItemId"}]
  LOADK R27 K129 ["QtRibbon"]
  SETTABLEKS R27 R26 K27 ["PluginId"]
  LOADK R27 K32 ["Widgets"]
  SETTABLEKS R27 R26 K28 ["Category"]
  LOADK R27 K130 ["Part"]
  SETTABLEKS R27 R26 K29 ["ItemId"]
  SETTABLEKS R26 R25 K90 ["TargetWidgetUri"]
  GETIMPORT R26 K128 [Vector2.new]
  LOADN R27 0
  LOADN R28 5
  CALL R26 2 1
  SETTABLEKS R26 R25 K121 ["Offset"]
  JUMP [+11]
  DUPTABLE R25 K132 [{"target", "offset"}]
  LOADK R26 K133 ["placePartActionRibbonControl"]
  SETTABLEKS R26 R25 K95 ["target"]
  GETIMPORT R26 K128 [Vector2.new]
  LOADN R27 0
  LOADN R28 5
  CALL R26 2 1
  SETTABLEKS R26 R25 K131 ["offset"]
  SETTABLEKS R25 R24 K111 ["callout"]
  JUMPIFNOT R2 [+24]
  JUMPIFNOT R3 [+23]
  DUPTABLE R25 K134 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R26 K37 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R27 K123 ["Standalone"]
  SETTABLEKS R27 R26 K35 ["DataModel"]
  LOADK R27 K123 ["Standalone"]
  SETTABLEKS R27 R26 K36 ["PluginType"]
  LOADK R27 K124 ["Ribbon"]
  SETTABLEKS R27 R26 K27 ["PluginId"]
  LOADK R27 K32 ["Widgets"]
  SETTABLEKS R27 R26 K28 ["Category"]
  LOADK R27 K125 ["Tabs/Home/Part"]
  SETTABLEKS R27 R26 K29 ["ItemId"]
  SETTABLEKS R26 R25 K90 ["TargetWidgetUri"]
  LOADB R26 1
  SETTABLEKS R26 R25 K92 ["ShowHighlight"]
  JUMP [+7]
  DUPTABLE R25 K135 [{"target", "showHighlight"}]
  LOADK R26 K133 ["placePartActionRibbonControl"]
  SETTABLEKS R26 R25 K95 ["target"]
  LOADB R26 1
  SETTABLEKS R26 R25 K97 ["showHighlight"]
  SETTABLEKS R25 R24 K86 ["spotlight"]
  LOADK R25 K118 ["wedge"]
  SETTABLEKS R25 R24 K80 ["instanceId"]
  LOADK R25 K130 ["Part"]
  SETTABLEKS R25 R24 K112 ["className"]
  DUPTABLE R25 K137 [{"Shape"}]
  GETIMPORT R26 K140 [Enum.PartType.Wedge]
  SETTABLEKS R26 R25 K136 ["Shape"]
  SETTABLEKS R25 R24 K113 ["properties"]
  DUPCLOSURE R25 K141 [PROTO_9]
  SETTABLEKS R25 R24 K114 ["onBind"]
  DUPCLOSURE R25 K142 [PROTO_10]
  CAPTURE VAL R9
  SETTABLEKS R25 R24 K106 ["onSkip"]
  DUPCLOSURE R25 K143 [PROTO_12]
  CAPTURE VAL R9
  SETTABLEKS R25 R24 K115 ["onUnbind"]
  LOADK R25 K40 ["Toolbox"]
  SETTABLEKS R25 R24 K116 ["hideWidgets"]
  LOADK R25 K144 ["Ribbon-Home"]
  SETTABLEKS R25 R24 K52 ["widgets"]
  DUPTABLE R25 K147 [{"id", "kind", "topic", "callout", "spotlight", "position", "distance", "instanceId", "onSkip", "widgets"}]
  LOADK R26 K148 ["move"]
  SETTABLEKS R26 R25 K41 ["id"]
  LOADK R26 K149 ["Move"]
  SETTABLEKS R26 R25 K49 ["kind"]
  LOADK R26 K120 ["parts"]
  SETTABLEKS R26 R25 K51 ["topic"]
  JUMPIFNOT R2 [+27]
  DUPTABLE R26 K122 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R27 K37 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R28 K123 ["Standalone"]
  SETTABLEKS R28 R27 K35 ["DataModel"]
  LOADK R28 K123 ["Standalone"]
  SETTABLEKS R28 R27 K36 ["PluginType"]
  LOADK R28 K124 ["Ribbon"]
  SETTABLEKS R28 R27 K27 ["PluginId"]
  LOADK R28 K32 ["Widgets"]
  SETTABLEKS R28 R27 K28 ["Category"]
  LOADK R28 K150 ["Tabs/Home/Move"]
  SETTABLEKS R28 R27 K29 ["ItemId"]
  SETTABLEKS R27 R26 K90 ["TargetWidgetUri"]
  GETIMPORT R27 K128 [Vector2.new]
  LOADN R28 0
  LOADN R29 20
  CALL R27 2 1
  SETTABLEKS R27 R26 K121 ["Offset"]
  JUMP [+33]
  JUMPIFNOT R1 [+21]
  DUPTABLE R26 K122 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R27 K30 [{"PluginId", "Category", "ItemId"}]
  LOADK R28 K129 ["QtRibbon"]
  SETTABLEKS R28 R27 K27 ["PluginId"]
  LOADK R28 K32 ["Widgets"]
  SETTABLEKS R28 R27 K28 ["Category"]
  LOADK R28 K149 ["Move"]
  SETTABLEKS R28 R27 K29 ["ItemId"]
  SETTABLEKS R27 R26 K90 ["TargetWidgetUri"]
  GETIMPORT R27 K128 [Vector2.new]
  LOADN R28 0
  LOADN R29 5
  CALL R27 2 1
  SETTABLEKS R27 R26 K121 ["Offset"]
  JUMP [+11]
  DUPTABLE R26 K132 [{"target", "offset"}]
  LOADK R27 K151 ["advTranslateAction"]
  SETTABLEKS R27 R26 K95 ["target"]
  GETIMPORT R27 K128 [Vector2.new]
  LOADN R28 0
  LOADN R29 5
  CALL R27 2 1
  SETTABLEKS R27 R26 K131 ["offset"]
  SETTABLEKS R26 R25 K111 ["callout"]
  JUMPIFNOT R2 [+24]
  JUMPIFNOT R3 [+23]
  DUPTABLE R26 K134 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R27 K37 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R28 K123 ["Standalone"]
  SETTABLEKS R28 R27 K35 ["DataModel"]
  LOADK R28 K123 ["Standalone"]
  SETTABLEKS R28 R27 K36 ["PluginType"]
  LOADK R28 K124 ["Ribbon"]
  SETTABLEKS R28 R27 K27 ["PluginId"]
  LOADK R28 K32 ["Widgets"]
  SETTABLEKS R28 R27 K28 ["Category"]
  LOADK R28 K150 ["Tabs/Home/Move"]
  SETTABLEKS R28 R27 K29 ["ItemId"]
  SETTABLEKS R27 R26 K90 ["TargetWidgetUri"]
  LOADB R27 1
  SETTABLEKS R27 R26 K92 ["ShowHighlight"]
  JUMP [+7]
  DUPTABLE R26 K135 [{"target", "showHighlight"}]
  LOADK R27 K151 ["advTranslateAction"]
  SETTABLEKS R27 R26 K95 ["target"]
  LOADB R27 1
  SETTABLEKS R27 R26 K97 ["showHighlight"]
  SETTABLEKS R26 R25 K86 ["spotlight"]
  LOADK R26 K152 [{360, 1, 200}]
  SETTABLEKS R26 R25 K145 ["position"]
  LOADN R26 20
  SETTABLEKS R26 R25 K146 ["distance"]
  LOADK R26 K118 ["wedge"]
  SETTABLEKS R26 R25 K80 ["instanceId"]
  DUPCLOSURE R26 K153 [PROTO_13]
  CAPTURE VAL R9
  SETTABLEKS R26 R25 K106 ["onSkip"]
  LOADK R26 K144 ["Ribbon-Home"]
  SETTABLEKS R26 R25 K52 ["widgets"]
  DUPTABLE R26 K155 [{"id", "kind", "topic", "callout", "spotlight", "rotation", "distance", "instanceId", "onSkip", "widgets"}]
  LOADK R27 K156 ["rotate"]
  SETTABLEKS R27 R26 K41 ["id"]
  LOADK R27 K83 ["Rotate"]
  SETTABLEKS R27 R26 K49 ["kind"]
  LOADK R27 K120 ["parts"]
  SETTABLEKS R27 R26 K51 ["topic"]
  JUMPIFNOT R2 [+27]
  DUPTABLE R27 K122 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R28 K37 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R29 K123 ["Standalone"]
  SETTABLEKS R29 R28 K35 ["DataModel"]
  LOADK R29 K123 ["Standalone"]
  SETTABLEKS R29 R28 K36 ["PluginType"]
  LOADK R29 K124 ["Ribbon"]
  SETTABLEKS R29 R28 K27 ["PluginId"]
  LOADK R29 K32 ["Widgets"]
  SETTABLEKS R29 R28 K28 ["Category"]
  LOADK R29 K157 ["Tabs/Home/Rotate"]
  SETTABLEKS R29 R28 K29 ["ItemId"]
  SETTABLEKS R28 R27 K90 ["TargetWidgetUri"]
  GETIMPORT R28 K128 [Vector2.new]
  LOADN R29 0
  LOADN R30 20
  CALL R28 2 1
  SETTABLEKS R28 R27 K121 ["Offset"]
  JUMP [+33]
  JUMPIFNOT R1 [+21]
  DUPTABLE R27 K122 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R28 K30 [{"PluginId", "Category", "ItemId"}]
  LOADK R29 K129 ["QtRibbon"]
  SETTABLEKS R29 R28 K27 ["PluginId"]
  LOADK R29 K32 ["Widgets"]
  SETTABLEKS R29 R28 K28 ["Category"]
  LOADK R29 K83 ["Rotate"]
  SETTABLEKS R29 R28 K29 ["ItemId"]
  SETTABLEKS R28 R27 K90 ["TargetWidgetUri"]
  GETIMPORT R28 K128 [Vector2.new]
  LOADN R29 0
  LOADN R30 5
  CALL R28 2 1
  SETTABLEKS R28 R27 K121 ["Offset"]
  JUMP [+11]
  DUPTABLE R27 K132 [{"target", "offset"}]
  LOADK R28 K158 ["advRotateAction"]
  SETTABLEKS R28 R27 K95 ["target"]
  GETIMPORT R28 K128 [Vector2.new]
  LOADN R29 0
  LOADN R30 5
  CALL R28 2 1
  SETTABLEKS R28 R27 K131 ["offset"]
  SETTABLEKS R27 R26 K111 ["callout"]
  JUMPIFNOT R2 [+24]
  JUMPIFNOT R3 [+23]
  DUPTABLE R27 K134 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R28 K37 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R29 K123 ["Standalone"]
  SETTABLEKS R29 R28 K35 ["DataModel"]
  LOADK R29 K123 ["Standalone"]
  SETTABLEKS R29 R28 K36 ["PluginType"]
  LOADK R29 K124 ["Ribbon"]
  SETTABLEKS R29 R28 K27 ["PluginId"]
  LOADK R29 K32 ["Widgets"]
  SETTABLEKS R29 R28 K28 ["Category"]
  LOADK R29 K157 ["Tabs/Home/Rotate"]
  SETTABLEKS R29 R28 K29 ["ItemId"]
  SETTABLEKS R28 R27 K90 ["TargetWidgetUri"]
  LOADB R28 1
  SETTABLEKS R28 R27 K92 ["ShowHighlight"]
  JUMP [+7]
  DUPTABLE R27 K135 [{"target", "showHighlight"}]
  LOADK R28 K158 ["advRotateAction"]
  SETTABLEKS R28 R27 K95 ["target"]
  LOADB R28 1
  SETTABLEKS R28 R27 K97 ["showHighlight"]
  SETTABLEKS R27 R26 K86 ["spotlight"]
  LOADK R27 K159 [{180, 0, 180}]
  SETTABLEKS R27 R26 K154 ["rotation"]
  LOADN R27 30
  SETTABLEKS R27 R26 K146 ["distance"]
  LOADK R27 K118 ["wedge"]
  SETTABLEKS R27 R26 K80 ["instanceId"]
  DUPCLOSURE R27 K160 [PROTO_14]
  CAPTURE VAL R9
  SETTABLEKS R27 R26 K106 ["onSkip"]
  LOADK R27 K144 ["Ribbon-Home"]
  SETTABLEKS R27 R26 K52 ["widgets"]
  DUPTABLE R27 K162 [{"id", "kind", "topic", "callout", "spotlight", "minSize", "instanceId", "onSkip", "widgets"}]
  LOADK R28 K163 ["scale"]
  SETTABLEKS R28 R27 K41 ["id"]
  LOADK R28 K164 ["Scale"]
  SETTABLEKS R28 R27 K49 ["kind"]
  LOADK R28 K120 ["parts"]
  SETTABLEKS R28 R27 K51 ["topic"]
  JUMPIFNOT R2 [+27]
  DUPTABLE R28 K122 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R29 K37 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R30 K123 ["Standalone"]
  SETTABLEKS R30 R29 K35 ["DataModel"]
  LOADK R30 K123 ["Standalone"]
  SETTABLEKS R30 R29 K36 ["PluginType"]
  LOADK R30 K124 ["Ribbon"]
  SETTABLEKS R30 R29 K27 ["PluginId"]
  LOADK R30 K32 ["Widgets"]
  SETTABLEKS R30 R29 K28 ["Category"]
  LOADK R30 K165 ["Tabs/Home/Scale"]
  SETTABLEKS R30 R29 K29 ["ItemId"]
  SETTABLEKS R29 R28 K90 ["TargetWidgetUri"]
  GETIMPORT R29 K128 [Vector2.new]
  LOADN R30 0
  LOADN R31 20
  CALL R29 2 1
  SETTABLEKS R29 R28 K121 ["Offset"]
  JUMP [+33]
  JUMPIFNOT R1 [+21]
  DUPTABLE R28 K122 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R29 K30 [{"PluginId", "Category", "ItemId"}]
  LOADK R30 K129 ["QtRibbon"]
  SETTABLEKS R30 R29 K27 ["PluginId"]
  LOADK R30 K32 ["Widgets"]
  SETTABLEKS R30 R29 K28 ["Category"]
  LOADK R30 K164 ["Scale"]
  SETTABLEKS R30 R29 K29 ["ItemId"]
  SETTABLEKS R29 R28 K90 ["TargetWidgetUri"]
  GETIMPORT R29 K128 [Vector2.new]
  LOADN R30 0
  LOADN R31 5
  CALL R29 2 1
  SETTABLEKS R29 R28 K121 ["Offset"]
  JUMP [+11]
  DUPTABLE R28 K132 [{"target", "offset"}]
  LOADK R29 K166 ["resizeAction"]
  SETTABLEKS R29 R28 K95 ["target"]
  GETIMPORT R29 K128 [Vector2.new]
  LOADN R30 0
  LOADN R31 5
  CALL R29 2 1
  SETTABLEKS R29 R28 K131 ["offset"]
  SETTABLEKS R28 R27 K111 ["callout"]
  JUMPIFNOT R2 [+24]
  JUMPIFNOT R3 [+23]
  DUPTABLE R28 K134 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R29 K37 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R30 K123 ["Standalone"]
  SETTABLEKS R30 R29 K35 ["DataModel"]
  LOADK R30 K123 ["Standalone"]
  SETTABLEKS R30 R29 K36 ["PluginType"]
  LOADK R30 K124 ["Ribbon"]
  SETTABLEKS R30 R29 K27 ["PluginId"]
  LOADK R30 K32 ["Widgets"]
  SETTABLEKS R30 R29 K28 ["Category"]
  LOADK R30 K165 ["Tabs/Home/Scale"]
  SETTABLEKS R30 R29 K29 ["ItemId"]
  SETTABLEKS R29 R28 K90 ["TargetWidgetUri"]
  LOADB R29 1
  SETTABLEKS R29 R28 K92 ["ShowHighlight"]
  JUMP [+7]
  DUPTABLE R28 K135 [{"target", "showHighlight"}]
  LOADK R29 K166 ["resizeAction"]
  SETTABLEKS R29 R28 K95 ["target"]
  LOADB R29 1
  SETTABLEKS R29 R28 K97 ["showHighlight"]
  SETTABLEKS R28 R27 K86 ["spotlight"]
  LOADK R28 K167 [{5, 3, 5}]
  SETTABLEKS R28 R27 K161 ["minSize"]
  LOADK R28 K118 ["wedge"]
  SETTABLEKS R28 R27 K80 ["instanceId"]
  DUPCLOSURE R28 K168 [PROTO_15]
  CAPTURE VAL R9
  SETTABLEKS R28 R27 K106 ["onSkip"]
  LOADK R28 K144 ["Ribbon-Home"]
  SETTABLEKS R28 R27 K52 ["widgets"]
  DUPTABLE R28 K170 [{"id", "kind", "topic", "callout", "spotlight", "className", "changes", "onSkip", "widgets"}]
  LOADK R29 K171 ["color"]
  SETTABLEKS R29 R28 K41 ["id"]
  LOADK R29 K38 ["Edit"]
  SETTABLEKS R29 R28 K49 ["kind"]
  LOADK R29 K113 ["properties"]
  SETTABLEKS R29 R28 K51 ["topic"]
  JUMPIFNOT R2 [+27]
  DUPTABLE R29 K122 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R30 K37 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R31 K123 ["Standalone"]
  SETTABLEKS R31 R30 K35 ["DataModel"]
  LOADK R31 K123 ["Standalone"]
  SETTABLEKS R31 R30 K36 ["PluginType"]
  LOADK R31 K124 ["Ribbon"]
  SETTABLEKS R31 R30 K27 ["PluginId"]
  LOADK R31 K32 ["Widgets"]
  SETTABLEKS R31 R30 K28 ["Category"]
  LOADK R31 K172 ["Tabs/Home/Color"]
  SETTABLEKS R31 R30 K29 ["ItemId"]
  SETTABLEKS R30 R29 K90 ["TargetWidgetUri"]
  GETIMPORT R30 K128 [Vector2.new]
  LOADN R31 5
  LOADN R32 20
  CALL R30 2 1
  SETTABLEKS R30 R29 K121 ["Offset"]
  JUMP [+33]
  JUMPIFNOT R1 [+21]
  DUPTABLE R29 K122 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R30 K30 [{"PluginId", "Category", "ItemId"}]
  LOADK R31 K129 ["QtRibbon"]
  SETTABLEKS R31 R30 K27 ["PluginId"]
  LOADK R31 K32 ["Widgets"]
  SETTABLEKS R31 R30 K28 ["Category"]
  LOADK R31 K173 ["Color"]
  SETTABLEKS R31 R30 K29 ["ItemId"]
  SETTABLEKS R30 R29 K90 ["TargetWidgetUri"]
  GETIMPORT R30 K128 [Vector2.new]
  LOADN R31 0
  LOADN R32 5
  CALL R30 2 1
  SETTABLEKS R30 R29 K121 ["Offset"]
  JUMP [+11]
  DUPTABLE R29 K132 [{"target", "offset"}]
  LOADK R30 K174 ["actionColorSelector"]
  SETTABLEKS R30 R29 K95 ["target"]
  GETIMPORT R30 K128 [Vector2.new]
  LOADN R31 0
  LOADN R32 5
  CALL R30 2 1
  SETTABLEKS R30 R29 K131 ["offset"]
  SETTABLEKS R29 R28 K111 ["callout"]
  JUMPIFNOT R2 [+24]
  JUMPIFNOT R3 [+23]
  DUPTABLE R29 K134 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R30 K37 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R31 K123 ["Standalone"]
  SETTABLEKS R31 R30 K35 ["DataModel"]
  LOADK R31 K123 ["Standalone"]
  SETTABLEKS R31 R30 K36 ["PluginType"]
  LOADK R31 K124 ["Ribbon"]
  SETTABLEKS R31 R30 K27 ["PluginId"]
  LOADK R31 K32 ["Widgets"]
  SETTABLEKS R31 R30 K28 ["Category"]
  LOADK R31 K172 ["Tabs/Home/Color"]
  SETTABLEKS R31 R30 K29 ["ItemId"]
  SETTABLEKS R30 R29 K90 ["TargetWidgetUri"]
  LOADB R30 1
  SETTABLEKS R30 R29 K92 ["ShowHighlight"]
  JUMP [+7]
  DUPTABLE R29 K135 [{"target", "showHighlight"}]
  LOADK R30 K174 ["actionColorSelector"]
  SETTABLEKS R30 R29 K95 ["target"]
  LOADB R30 1
  SETTABLEKS R30 R29 K97 ["showHighlight"]
  SETTABLEKS R29 R28 K86 ["spotlight"]
  LOADK R29 K130 ["Part"]
  SETTABLEKS R29 R28 K112 ["className"]
  DUPTABLE R29 K175 [{"Color"}]
  LOADB R30 1
  SETTABLEKS R30 R29 K173 ["Color"]
  SETTABLEKS R29 R28 K169 ["changes"]
  DUPCLOSURE R29 K176 [PROTO_16]
  CAPTURE VAL R9
  SETTABLEKS R29 R28 K106 ["onSkip"]
  LOADK R29 K144 ["Ribbon-Home"]
  SETTABLEKS R29 R28 K52 ["widgets"]
  DUPTABLE R29 K170 [{"id", "kind", "topic", "callout", "spotlight", "className", "changes", "onSkip", "widgets"}]
  LOADK R30 K177 ["anchor"]
  SETTABLEKS R30 R29 K41 ["id"]
  LOADK R30 K38 ["Edit"]
  SETTABLEKS R30 R29 K49 ["kind"]
  LOADK R30 K113 ["properties"]
  SETTABLEKS R30 R29 K51 ["topic"]
  JUMPIFNOT R2 [+27]
  DUPTABLE R30 K122 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R31 K37 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R32 K123 ["Standalone"]
  SETTABLEKS R32 R31 K35 ["DataModel"]
  LOADK R32 K123 ["Standalone"]
  SETTABLEKS R32 R31 K36 ["PluginType"]
  LOADK R32 K124 ["Ribbon"]
  SETTABLEKS R32 R31 K27 ["PluginId"]
  LOADK R32 K32 ["Widgets"]
  SETTABLEKS R32 R31 K28 ["Category"]
  LOADK R32 K178 ["Tabs/Home/Anchor"]
  SETTABLEKS R32 R31 K29 ["ItemId"]
  SETTABLEKS R31 R30 K90 ["TargetWidgetUri"]
  GETIMPORT R31 K128 [Vector2.new]
  LOADN R32 0
  LOADN R33 20
  CALL R31 2 1
  SETTABLEKS R31 R30 K121 ["Offset"]
  JUMP [+33]
  JUMPIFNOT R1 [+21]
  DUPTABLE R30 K122 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R31 K30 [{"PluginId", "Category", "ItemId"}]
  LOADK R32 K129 ["QtRibbon"]
  SETTABLEKS R32 R31 K27 ["PluginId"]
  LOADK R32 K32 ["Widgets"]
  SETTABLEKS R32 R31 K28 ["Category"]
  LOADK R32 K179 ["Anchor"]
  SETTABLEKS R32 R31 K29 ["ItemId"]
  SETTABLEKS R31 R30 K90 ["TargetWidgetUri"]
  GETIMPORT R31 K128 [Vector2.new]
  LOADN R32 0
  LOADN R33 5
  CALL R31 2 1
  SETTABLEKS R31 R30 K121 ["Offset"]
  JUMP [+11]
  DUPTABLE R30 K132 [{"target", "offset"}]
  LOADK R31 K180 ["anchorAction"]
  SETTABLEKS R31 R30 K95 ["target"]
  GETIMPORT R31 K128 [Vector2.new]
  LOADN R32 0
  LOADN R33 5
  CALL R31 2 1
  SETTABLEKS R31 R30 K131 ["offset"]
  SETTABLEKS R30 R29 K111 ["callout"]
  JUMPIFNOT R2 [+24]
  JUMPIFNOT R3 [+23]
  DUPTABLE R30 K134 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R31 K37 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R32 K123 ["Standalone"]
  SETTABLEKS R32 R31 K35 ["DataModel"]
  LOADK R32 K123 ["Standalone"]
  SETTABLEKS R32 R31 K36 ["PluginType"]
  LOADK R32 K124 ["Ribbon"]
  SETTABLEKS R32 R31 K27 ["PluginId"]
  LOADK R32 K32 ["Widgets"]
  SETTABLEKS R32 R31 K28 ["Category"]
  LOADK R32 K178 ["Tabs/Home/Anchor"]
  SETTABLEKS R32 R31 K29 ["ItemId"]
  SETTABLEKS R31 R30 K90 ["TargetWidgetUri"]
  LOADB R31 1
  SETTABLEKS R31 R30 K92 ["ShowHighlight"]
  JUMP [+7]
  DUPTABLE R30 K135 [{"target", "showHighlight"}]
  LOADK R31 K180 ["anchorAction"]
  SETTABLEKS R31 R30 K95 ["target"]
  LOADB R31 1
  SETTABLEKS R31 R30 K97 ["showHighlight"]
  SETTABLEKS R30 R29 K86 ["spotlight"]
  LOADK R30 K130 ["Part"]
  SETTABLEKS R30 R29 K112 ["className"]
  DUPTABLE R30 K182 [{"Anchored"}]
  LOADB R31 1
  SETTABLEKS R31 R30 K181 ["Anchored"]
  SETTABLEKS R30 R29 K169 ["changes"]
  DUPCLOSURE R30 K183 [PROTO_17]
  CAPTURE VAL R9
  SETTABLEKS R30 R29 K106 ["onSkip"]
  LOADK R30 K144 ["Ribbon-Home"]
  SETTABLEKS R30 R29 K52 ["widgets"]
  DUPTABLE R30 K184 [{"id", "callout", "spotlight", "topic", "showNext", "widgets"}]
  LOADK R31 K185 ["explorer"]
  SETTABLEKS R31 R30 K41 ["id"]
  JUMPIFNOT R1 [+25]
  DUPTABLE R31 K188 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  SETTABLEKS R12 R31 K90 ["TargetWidgetUri"]
  GETIMPORT R32 K128 [Vector2.new]
  LOADN R33 1
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K186 ["SubjectAnchorPoint"]
  GETIMPORT R32 K128 [Vector2.new]
  LOADN R33 0
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K187 ["TargetAnchorPoint"]
  GETIMPORT R32 K128 [Vector2.new]
  LOADN R33 246
  LOADN R34 20
  CALL R32 2 1
  SETTABLEKS R32 R31 K121 ["Offset"]
  JUMP [+28]
  DUPTABLE R31 K192 [{"target", "sourceAnchorPoint", "targetAnchorPoint", "offset", "hideArrow"}]
  LOADK R32 K193 ["explorerWidgetPanel"]
  SETTABLEKS R32 R31 K95 ["target"]
  GETIMPORT R32 K128 [Vector2.new]
  LOADN R33 1
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K189 ["sourceAnchorPoint"]
  GETIMPORT R32 K128 [Vector2.new]
  LOADN R33 0
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K190 ["targetAnchorPoint"]
  GETIMPORT R32 K128 [Vector2.new]
  LOADN R33 246
  LOADN R34 20
  CALL R32 2 1
  SETTABLEKS R32 R31 K131 ["offset"]
  LOADB R32 1
  SETTABLEKS R32 R31 K191 ["hideArrow"]
  SETTABLEKS R31 R30 K111 ["callout"]
  JUMPIFNOT R3 [+13]
  DUPTABLE R31 K94 [{"TargetWidgetUri", "ShowBox", "ShowHighlight", "ShowShadows"}]
  SETTABLEKS R12 R31 K90 ["TargetWidgetUri"]
  LOADB R32 1
  SETTABLEKS R32 R31 K91 ["ShowBox"]
  LOADB R32 1
  SETTABLEKS R32 R31 K92 ["ShowHighlight"]
  LOADB R32 1
  SETTABLEKS R32 R31 K93 ["ShowShadows"]
  JUMP [+13]
  DUPTABLE R31 K99 [{"target", "showBox", "showHighlight", "showShadows"}]
  LOADK R32 K193 ["explorerWidgetPanel"]
  SETTABLEKS R32 R31 K95 ["target"]
  LOADB R32 1
  SETTABLEKS R32 R31 K96 ["showBox"]
  LOADB R32 1
  SETTABLEKS R32 R31 K97 ["showHighlight"]
  LOADB R32 1
  SETTABLEKS R32 R31 K98 ["showShadows"]
  SETTABLEKS R31 R30 K86 ["spotlight"]
  LOADK R31 K185 ["explorer"]
  SETTABLEKS R31 R30 K51 ["topic"]
  LOADB R31 1
  SETTABLEKS R31 R30 K85 ["showNext"]
  LOADK R31 K194 ["Ribbon-Home,Explorer"]
  SETTABLEKS R31 R30 K52 ["widgets"]
  DUPTABLE R31 K196 [{"id", "path", "topic", "callout", "spotlight", "showNext", "onBind", "widgets"}]
  LOADK R32 K197 ["workspace"]
  SETTABLEKS R32 R31 K41 ["id"]
  LOADK R32 K15 ["Workspace"]
  SETTABLEKS R32 R31 K195 ["path"]
  LOADK R32 K185 ["explorer"]
  SETTABLEKS R32 R31 K51 ["topic"]
  JUMPIFNOT R1 [+25]
  DUPTABLE R32 K188 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  SETTABLEKS R12 R32 K90 ["TargetWidgetUri"]
  GETIMPORT R33 K128 [Vector2.new]
  LOADN R34 1
  LOADN R35 0
  CALL R33 2 1
  SETTABLEKS R33 R32 K186 ["SubjectAnchorPoint"]
  GETIMPORT R33 K128 [Vector2.new]
  LOADN R34 0
  LOADN R35 0
  CALL R33 2 1
  SETTABLEKS R33 R32 K187 ["TargetAnchorPoint"]
  GETIMPORT R33 K128 [Vector2.new]
  LOADN R34 246
  LOADN R35 20
  CALL R33 2 1
  SETTABLEKS R33 R32 K121 ["Offset"]
  JUMP [+31]
  DUPTABLE R32 K199 [{"target", "rowName", "sourceAnchorPoint", "targetAnchorPoint", "offset", "hideArrow"}]
  LOADK R33 K193 ["explorerWidgetPanel"]
  SETTABLEKS R33 R32 K95 ["target"]
  LOADK R33 K15 ["Workspace"]
  SETTABLEKS R33 R32 K198 ["rowName"]
  GETIMPORT R33 K128 [Vector2.new]
  LOADN R34 1
  LOADN R35 0
  CALL R33 2 1
  SETTABLEKS R33 R32 K189 ["sourceAnchorPoint"]
  GETIMPORT R33 K128 [Vector2.new]
  LOADN R34 0
  LOADN R35 0
  CALL R33 2 1
  SETTABLEKS R33 R32 K190 ["targetAnchorPoint"]
  GETIMPORT R33 K128 [Vector2.new]
  LOADN R34 246
  LOADN R35 20
  CALL R33 2 1
  SETTABLEKS R33 R32 K131 ["offset"]
  LOADB R33 1
  SETTABLEKS R33 R32 K191 ["hideArrow"]
  SETTABLEKS R32 R31 K111 ["callout"]
  JUMPIFNOT R1 [+3]
  JUMPIFNOT R3 [+2]
  LOADNIL R32
  JUMP [+16]
  DUPTABLE R32 K200 [{"target", "rowName", "showBox", "showHighlight", "showShadows"}]
  LOADK R33 K193 ["explorerWidgetPanel"]
  SETTABLEKS R33 R32 K95 ["target"]
  LOADK R33 K15 ["Workspace"]
  SETTABLEKS R33 R32 K198 ["rowName"]
  LOADB R33 1
  SETTABLEKS R33 R32 K96 ["showBox"]
  LOADB R33 1
  SETTABLEKS R33 R32 K97 ["showHighlight"]
  LOADB R33 1
  SETTABLEKS R33 R32 K98 ["showShadows"]
  SETTABLEKS R32 R31 K86 ["spotlight"]
  LOADB R32 1
  SETTABLEKS R32 R31 K85 ["showNext"]
  DUPCLOSURE R32 K201 [PROTO_18]
  SETTABLEKS R32 R31 K114 ["onBind"]
  LOADK R32 K194 ["Ribbon-Home,Explorer"]
  SETTABLEKS R32 R31 K52 ["widgets"]
  DUPTABLE R32 K202 [{"id", "kind", "path", "topic", "callout", "onSkip", "widgets"}]
  LOADK R33 K203 ["select"]
  SETTABLEKS R33 R32 K41 ["id"]
  LOADK R33 K204 ["Select"]
  SETTABLEKS R33 R32 K49 ["kind"]
  LOADK R33 K205 ["Car"]
  SETTABLEKS R33 R32 K195 ["path"]
  LOADK R33 K206 ["selection"]
  SETTABLEKS R33 R32 K51 ["topic"]
  JUMPIFNOT R1 [+25]
  DUPTABLE R33 K188 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  SETTABLEKS R12 R33 K90 ["TargetWidgetUri"]
  GETIMPORT R34 K128 [Vector2.new]
  LOADN R35 1
  LOADN R36 0
  CALL R34 2 1
  SETTABLEKS R34 R33 K186 ["SubjectAnchorPoint"]
  GETIMPORT R34 K128 [Vector2.new]
  LOADN R35 0
  LOADN R36 0
  CALL R34 2 1
  SETTABLEKS R34 R33 K187 ["TargetAnchorPoint"]
  GETIMPORT R34 K128 [Vector2.new]
  LOADN R35 246
  LOADN R36 0
  CALL R34 2 1
  SETTABLEKS R34 R33 K121 ["Offset"]
  JUMP [+28]
  DUPTABLE R33 K192 [{"target", "sourceAnchorPoint", "targetAnchorPoint", "offset", "hideArrow"}]
  LOADK R34 K193 ["explorerWidgetPanel"]
  SETTABLEKS R34 R33 K95 ["target"]
  GETIMPORT R34 K128 [Vector2.new]
  LOADN R35 1
  LOADN R36 0
  CALL R34 2 1
  SETTABLEKS R34 R33 K189 ["sourceAnchorPoint"]
  GETIMPORT R34 K128 [Vector2.new]
  LOADN R35 0
  LOADN R36 0
  CALL R34 2 1
  SETTABLEKS R34 R33 K190 ["targetAnchorPoint"]
  GETIMPORT R34 K128 [Vector2.new]
  LOADN R35 246
  LOADN R36 0
  CALL R34 2 1
  SETTABLEKS R34 R33 K131 ["offset"]
  LOADB R34 1
  SETTABLEKS R34 R33 K191 ["hideArrow"]
  SETTABLEKS R33 R32 K111 ["callout"]
  DUPCLOSURE R33 K207 [PROTO_19]
  CAPTURE VAL R8
  SETTABLEKS R33 R32 K106 ["onSkip"]
  LOADK R33 K194 ["Ribbon-Home,Explorer"]
  SETTABLEKS R33 R32 K52 ["widgets"]
  SETLIST R16 R17 16 [1]
  DUPTABLE R17 K208 [{"id", "topic", "kind", "callout", "onSkip", "widgets"}]
  LOADK R18 K209 ["focus"]
  SETTABLEKS R18 R17 K41 ["id"]
  LOADK R18 K206 ["selection"]
  SETTABLEKS R18 R17 K51 ["topic"]
  LOADK R18 K210 ["Focus"]
  SETTABLEKS R18 R17 K49 ["kind"]
  JUMPIFNOT R1 [+25]
  DUPTABLE R18 K188 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  SETTABLEKS R12 R18 K90 ["TargetWidgetUri"]
  GETIMPORT R19 K128 [Vector2.new]
  LOADN R20 1
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K186 ["SubjectAnchorPoint"]
  GETIMPORT R19 K128 [Vector2.new]
  LOADN R20 0
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K187 ["TargetAnchorPoint"]
  GETIMPORT R19 K128 [Vector2.new]
  LOADN R20 246
  LOADN R21 20
  CALL R19 2 1
  SETTABLEKS R19 R18 K121 ["Offset"]
  JUMP [+1]
  LOADNIL R18
  SETTABLEKS R18 R17 K111 ["callout"]
  DUPCLOSURE R18 K211 [PROTO_20]
  CAPTURE VAL R8
  SETTABLEKS R18 R17 K106 ["onSkip"]
  LOADK R18 K194 ["Ribbon-Home,Explorer"]
  SETTABLEKS R18 R17 K52 ["widgets"]
  DUPTABLE R18 K212 [{"id", "topic", "callout", "spotlight", "showNext", "widgets"}]
  LOADK R19 K113 ["properties"]
  SETTABLEKS R19 R18 K41 ["id"]
  LOADK R19 K213 ["attributes"]
  SETTABLEKS R19 R18 K51 ["topic"]
  JUMPIFNOT R1 [+25]
  DUPTABLE R19 K188 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  SETTABLEKS R13 R19 K90 ["TargetWidgetUri"]
  GETIMPORT R20 K128 [Vector2.new]
  LOADN R21 1
  LOADN R22 1
  CALL R20 2 1
  SETTABLEKS R20 R19 K186 ["SubjectAnchorPoint"]
  GETIMPORT R20 K128 [Vector2.new]
  LOADN R21 0
  LOADN R22 1
  CALL R20 2 1
  SETTABLEKS R20 R19 K187 ["TargetAnchorPoint"]
  GETIMPORT R20 K128 [Vector2.new]
  LOADN R21 246
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K121 ["Offset"]
  JUMP [+28]
  DUPTABLE R19 K192 [{"target", "sourceAnchorPoint", "targetAnchorPoint", "offset", "hideArrow"}]
  LOADK R20 K214 ["propertiesWidgetPanel"]
  SETTABLEKS R20 R19 K95 ["target"]
  GETIMPORT R20 K128 [Vector2.new]
  LOADN R21 1
  LOADN R22 1
  CALL R20 2 1
  SETTABLEKS R20 R19 K189 ["sourceAnchorPoint"]
  GETIMPORT R20 K128 [Vector2.new]
  LOADN R21 0
  LOADN R22 1
  CALL R20 2 1
  SETTABLEKS R20 R19 K190 ["targetAnchorPoint"]
  GETIMPORT R20 K128 [Vector2.new]
  LOADN R21 246
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K131 ["offset"]
  LOADB R20 1
  SETTABLEKS R20 R19 K191 ["hideArrow"]
  SETTABLEKS R19 R18 K111 ["callout"]
  JUMPIFNOT R3 [+13]
  DUPTABLE R19 K94 [{"TargetWidgetUri", "ShowBox", "ShowHighlight", "ShowShadows"}]
  SETTABLEKS R13 R19 K90 ["TargetWidgetUri"]
  LOADB R20 1
  SETTABLEKS R20 R19 K91 ["ShowBox"]
  LOADB R20 1
  SETTABLEKS R20 R19 K92 ["ShowHighlight"]
  LOADB R20 1
  SETTABLEKS R20 R19 K93 ["ShowShadows"]
  JUMP [+13]
  DUPTABLE R19 K99 [{"target", "showBox", "showHighlight", "showShadows"}]
  LOADK R20 K214 ["propertiesWidgetPanel"]
  SETTABLEKS R20 R19 K95 ["target"]
  LOADB R20 1
  SETTABLEKS R20 R19 K96 ["showBox"]
  LOADB R20 1
  SETTABLEKS R20 R19 K97 ["showHighlight"]
  LOADB R20 1
  SETTABLEKS R20 R19 K98 ["showShadows"]
  SETTABLEKS R19 R18 K86 ["spotlight"]
  LOADB R19 1
  SETTABLEKS R19 R18 K85 ["showNext"]
  LOADK R19 K215 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R19 R18 K52 ["widgets"]
  DUPTABLE R19 K216 [{"id", "topic", "kind", "callout", "className", "changes", "onSkip", "widgets"}]
  LOADK R20 K217 ["maxSpeed"]
  SETTABLEKS R20 R19 K41 ["id"]
  LOADK R20 K213 ["attributes"]
  SETTABLEKS R20 R19 K51 ["topic"]
  LOADK R20 K38 ["Edit"]
  SETTABLEKS R20 R19 K49 ["kind"]
  JUMPIFNOT R1 [+25]
  DUPTABLE R20 K188 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  SETTABLEKS R13 R20 K90 ["TargetWidgetUri"]
  GETIMPORT R21 K128 [Vector2.new]
  LOADN R22 1
  LOADN R23 1
  CALL R21 2 1
  SETTABLEKS R21 R20 K186 ["SubjectAnchorPoint"]
  GETIMPORT R21 K128 [Vector2.new]
  LOADN R22 0
  LOADN R23 1
  CALL R21 2 1
  SETTABLEKS R21 R20 K187 ["TargetAnchorPoint"]
  GETIMPORT R21 K128 [Vector2.new]
  LOADN R22 246
  LOADN R23 0
  CALL R21 2 1
  SETTABLEKS R21 R20 K121 ["Offset"]
  JUMP [+28]
  DUPTABLE R20 K192 [{"target", "sourceAnchorPoint", "targetAnchorPoint", "offset", "hideArrow"}]
  LOADK R21 K214 ["propertiesWidgetPanel"]
  SETTABLEKS R21 R20 K95 ["target"]
  GETIMPORT R21 K128 [Vector2.new]
  LOADN R22 1
  LOADN R23 1
  CALL R21 2 1
  SETTABLEKS R21 R20 K189 ["sourceAnchorPoint"]
  GETIMPORT R21 K128 [Vector2.new]
  LOADN R22 0
  LOADN R23 1
  CALL R21 2 1
  SETTABLEKS R21 R20 K190 ["targetAnchorPoint"]
  GETIMPORT R21 K128 [Vector2.new]
  LOADN R22 246
  LOADN R23 0
  CALL R21 2 1
  SETTABLEKS R21 R20 K131 ["offset"]
  LOADB R21 1
  SETTABLEKS R21 R20 K191 ["hideArrow"]
  SETTABLEKS R20 R19 K111 ["callout"]
  LOADK R20 K218 ["Model"]
  SETTABLEKS R20 R19 K112 ["className"]
  DUPTABLE R20 K220 [{"Attributes"}]
  DUPTABLE R21 K222 [{"MaxSpeed"}]
  LOADB R22 1
  SETTABLEKS R22 R21 K221 ["MaxSpeed"]
  SETTABLEKS R21 R20 K219 ["Attributes"]
  SETTABLEKS R20 R19 K169 ["changes"]
  DUPCLOSURE R20 K223 [PROTO_21]
  CAPTURE VAL R8
  SETTABLEKS R20 R19 K106 ["onSkip"]
  LOADK R20 K215 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R20 R19 K52 ["widgets"]
  DUPTABLE R20 K224 [{"id", "topic", "kind", "widgets", "spotlight"}]
  LOADK R21 K225 ["playtest"]
  SETTABLEKS R21 R20 K41 ["id"]
  LOADK R21 K225 ["playtest"]
  SETTABLEKS R21 R20 K51 ["topic"]
  LOADK R21 K226 ["StartPlaytest"]
  SETTABLEKS R21 R20 K49 ["kind"]
  LOADK R21 K215 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R21 R20 K52 ["widgets"]
  JUMPIFNOT R3 [+23]
  DUPTABLE R21 K134 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R22 K37 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R23 K123 ["Standalone"]
  SETTABLEKS R23 R22 K35 ["DataModel"]
  LOADK R23 K123 ["Standalone"]
  SETTABLEKS R23 R22 K36 ["PluginType"]
  LOADK R23 K124 ["Ribbon"]
  SETTABLEKS R23 R22 K27 ["PluginId"]
  LOADK R23 K32 ["Widgets"]
  SETTABLEKS R23 R22 K28 ["Category"]
  LOADK R23 K227 ["LeftMezzanine/PlayControls/1"]
  SETTABLEKS R23 R22 K29 ["ItemId"]
  SETTABLEKS R22 R21 K90 ["TargetWidgetUri"]
  LOADB R22 1
  SETTABLEKS R22 R21 K92 ["ShowHighlight"]
  JUMP [+7]
  DUPTABLE R21 K135 [{"target", "showHighlight"}]
  LOADK R22 K228 ["playGameActionGroupRibbonControl"]
  SETTABLEKS R22 R21 K95 ["target"]
  LOADB R22 1
  SETTABLEKS R22 R21 K97 ["showHighlight"]
  SETTABLEKS R21 R20 K86 ["spotlight"]
  DUPTABLE R21 K230 [{"id", "topic", "kind", "state", "widgets"}]
  LOADK R22 K231 ["avatar"]
  SETTABLEKS R22 R21 K41 ["id"]
  LOADK R22 K225 ["playtest"]
  SETTABLEKS R22 R21 K51 ["topic"]
  LOADK R22 K232 ["Avatar"]
  SETTABLEKS R22 R21 K49 ["kind"]
  GETIMPORT R22 K235 [Enum.HumanoidStateType.Seated]
  SETTABLEKS R22 R21 K229 ["state"]
  LOADK R22 K215 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R22 R21 K52 ["widgets"]
  DUPTABLE R22 K236 [{"id", "topic", "kind", "widgets"}]
  LOADK R33 K237 ["stopPlaytest"]
  SETTABLEKS R33 R22 K41 ["id"]
  LOADK R33 K225 ["playtest"]
  SETTABLEKS R33 R22 K51 ["topic"]
  LOADK R33 K238 ["StopPlaytest"]
  SETTABLEKS R33 R22 K49 ["kind"]
  LOADK R33 K215 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R33 R22 K52 ["widgets"]
  SETLIST R16 R17 6 [17]
  SETTABLEKS R16 R15 K44 ["steps"]
  RETURN R15 1
