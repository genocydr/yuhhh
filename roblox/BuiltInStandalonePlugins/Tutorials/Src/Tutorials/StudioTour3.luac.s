PROTO_0:
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

PROTO_1:
  DUPTABLE R1 K3 [{"PluginId", "Category", "ItemId"}]
  LOADK R2 K4 ["QtRibbon"]
  SETTABLEKS R2 R1 K0 ["PluginId"]
  LOADK R2 K5 ["Widgets"]
  SETTABLEKS R2 R1 K1 ["Category"]
  SETTABLEKS R0 R1 K2 ["ItemId"]
  RETURN R1 1

PROTO_2:
  GETIMPORT R0 K1 [game]
  LOADK R3 K2 ["rbxassetid://%*"]
  LOADK R5 K3 [17274156146]
  NAMECALL R3 R3 K4 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  NAMECALL R0 R0 K5 ["GetObjects"]
  CALL R0 2 1
  GETTABLEN R1 R0 1
  GETIMPORT R4 K8 [CFrame.new]
  LOADK R5 K9 [{-363.583, 18.009, 74.073}]
  CALL R4 1 -1
  NAMECALL R2 R1 K10 ["SetPrimaryPartCFrame"]
  CALL R2 -1 0
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K11 ["Parent"]
  RETURN R1 1

PROTO_3:
  GETUPVAL R0 0
  LOADK R2 K0 ["Ball"]
  NAMECALL R0 R0 K1 ["FindFirstChild"]
  CALL R0 2 1
  JUMPIFNOT R0 [+1]
  RETURN R0 1
  GETIMPORT R1 K3 [pcall]
  DUPCLOSURE R2 K4 [PROTO_2]
  CAPTURE UPVAL U0
  CALL R1 1 2
  JUMPIFNOT R1 [+2]
  JUMPIFNOT R2 [+1]
  RETURN R2 1
  GETIMPORT R3 K6 [warn]
  LOADK R4 K7 ["Could not insert ball:"]
  MOVE R5 R2
  CALL R3 2 0
  LOADNIL R3
  RETURN R3 1

PROTO_4:
  GETUPVAL R1 0
  LOADK R3 K0 ["Part"]
  NAMECALL R1 R1 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFEQKNIL R1 [+12]
  LOADK R4 K2 ["BasePart"]
  NAMECALL R2 R1 K3 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+6]
  GETTABLEKS R2 R1 K4 ["Shape"]
  GETIMPORT R3 K8 [Enum.PartType.Wedge]
  JUMPIFEQ R2 R3 [+22]
  GETIMPORT R2 K11 [Instance.new]
  LOADK R3 K0 ["Part"]
  CALL R2 1 1
  MOVE R1 R2
  GETIMPORT R2 K8 [Enum.PartType.Wedge]
  SETTABLEKS R2 R1 K4 ["Shape"]
  LOADK R2 K12 [{0, -90, 0}]
  SETTABLEKS R2 R1 K13 ["Rotation"]
  LOADK R2 K14 [{40, 15, 25}]
  SETTABLEKS R2 R1 K15 ["Size"]
  LOADK R2 K16 [{-846.491, -185.828, 67.012}]
  SETTABLEKS R2 R1 K17 ["Position"]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K18 ["Parent"]
  GETTABLEKS R2 R0 K19 ["instances"]
  SETTABLEKS R1 R2 K20 ["wedge"]
  RETURN R1 1

PROTO_5:
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

PROTO_6:
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

PROTO_7:
  GETUPVAL R0 0
  CALL R0 0 0
  RETURN R0 0

PROTO_8:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["TutorialService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  LOADB R3 1
  NAMECALL R1 R0 K4 ["SetTutorialCompletionStatus"]
  CALL R1 2 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R1 R0 K0 ["instances"]
  GETUPVAL R2 0
  LOADK R4 K1 ["Part"]
  NAMECALL R2 R2 K2 ["FindFirstChild"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K3 ["wedge"]
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  LOADK R2 K0 [{-843.991, -192.828, 68.512}]
  SETTABLEKS R2 R1 K1 ["Position"]
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  LOADK R2 K0 [{0, -90, 0}]
  SETTABLEKS R2 R1 K1 ["Rotation"]
  RETURN R0 0

PROTO_13:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  LOADK R2 K0 [{-846.491, -185.828, 67.012}]
  SETTABLEKS R2 R1 K1 ["Position"]
  LOADK R2 K2 [{40, 15, 25}]
  SETTABLEKS R2 R1 K3 ["Size"]
  RETURN R0 0

PROTO_14:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETIMPORT R2 K2 [Color3.fromRGB]
  LOADN R3 129
  LOADN R4 246
  LOADN R5 136
  CALL R2 3 1
  SETTABLEKS R2 R1 K3 ["Color"]
  RETURN R0 0

PROTO_15:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  LOADB R2 1
  SETTABLEKS R2 R1 K0 ["Anchored"]
  RETURN R0 0

PROTO_16:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+9]
  GETUPVAL R1 1
  NEWTABLE R3 0 1
  MOVE R4 R0
  SETLIST R3 R4 1 [1]
  NAMECALL R1 R1 K0 ["Set"]
  CALL R1 2 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+9]
  GETUPVAL R1 1
  NEWTABLE R3 0 1
  MOVE R4 R0
  SETLIST R3 R4 1 [1]
  NAMECALL R1 R1 K0 ["Set"]
  CALL R1 2 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+5]
  LOADK R3 K0 ["Speed"]
  LOADN R4 250
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
  LOADK R6 K12 ["Workspace"]
  NAMECALL R4 R4 K13 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K11 [game]
  LOADK R7 K14 ["Selection"]
  NAMECALL R5 R5 K13 ["GetService"]
  CALL R5 2 1
  DUPTABLE R6 K18 [{"assetIds", "positionOverride", "scriptWarningOverride"}]
  NEWTABLE R7 0 1
  LOADK R8 K19 [17274156146]
  SETLIST R7 R8 1 [1]
  SETTABLEKS R7 R6 K15 ["assetIds"]
  LOADK R7 K20 [{-363.583, 18.009, 74.073}]
  SETTABLEKS R7 R6 K16 ["positionOverride"]
  LOADB R7 1
  SETTABLEKS R7 R6 K17 ["scriptWarningOverride"]
  DUPCLOSURE R7 K21 [PROTO_0]
  DUPCLOSURE R8 K22 [PROTO_1]
  DUPTABLE R9 K26 [{"PluginId", "Category", "ItemId"}]
  LOADK R10 K27 ["Explorer"]
  SETTABLEKS R10 R9 K23 ["PluginId"]
  LOADK R10 K28 ["Widgets"]
  SETTABLEKS R10 R9 K24 ["Category"]
  LOADK R10 K29 ["Main"]
  SETTABLEKS R10 R9 K25 ["ItemId"]
  DUPTABLE R10 K26 [{"PluginId", "Category", "ItemId"}]
  LOADK R11 K30 ["Properties"]
  SETTABLEKS R11 R10 K23 ["PluginId"]
  LOADK R11 K28 ["Widgets"]
  SETTABLEKS R11 R10 K24 ["Category"]
  LOADK R11 K29 ["Main"]
  SETTABLEKS R11 R10 K25 ["ItemId"]
  DUPTABLE R11 K33 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R12 K34 ["Edit"]
  SETTABLEKS R12 R11 K31 ["DataModel"]
  LOADK R12 K35 ["Asset"]
  SETTABLEKS R12 R11 K32 ["PluginType"]
  LOADK R12 K36 ["Toolbox"]
  SETTABLEKS R12 R11 K23 ["PluginId"]
  LOADK R12 K28 ["Widgets"]
  SETTABLEKS R12 R11 K24 ["Category"]
  LOADK R12 K36 ["Toolbox"]
  SETTABLEKS R12 R11 K25 ["ItemId"]
  DUPCLOSURE R12 K37 [PROTO_3]
  CAPTURE VAL R4
  DUPCLOSURE R13 K38 [PROTO_4]
  CAPTURE VAL R4
  DUPTABLE R14 K43 [{"id", "onStart", "onComplete", "steps"}]
  LOADK R15 K44 ["StudioTour3"]
  SETTABLEKS R15 R14 K39 ["id"]
  DUPCLOSURE R15 K45 [PROTO_5]
  CAPTURE VAL R4
  SETTABLEKS R15 R14 K40 ["onStart"]
  DUPCLOSURE R15 K46 [PROTO_6]
  CAPTURE VAL R4
  SETTABLEKS R15 R14 K41 ["onComplete"]
  NEWTABLE R15 0 27
  DUPTABLE R16 K52 [{"id", "topic", "showNext", "cameraFocus", "cameraOffset", "cameraMoveDuration"}]
  LOADK R17 K53 ["intro1"]
  SETTABLEKS R17 R16 K39 ["id"]
  LOADK R17 K54 ["introduction"]
  SETTABLEKS R17 R16 K47 ["topic"]
  LOADB R17 1
  SETTABLEKS R17 R16 K48 ["showNext"]
  LOADK R17 K20 [{-363.583, 18.009, 74.073}]
  SETTABLEKS R17 R16 K49 ["cameraFocus"]
  LOADK R17 K55 [{80, 30, -20}]
  SETTABLEKS R17 R16 K50 ["cameraOffset"]
  LOADN R17 0
  SETTABLEKS R17 R16 K51 ["cameraMoveDuration"]
  DUPTABLE R17 K56 [{"id", "topic", "showNext"}]
  LOADK R18 K57 ["intro2"]
  SETTABLEKS R18 R17 K39 ["id"]
  LOADK R18 K54 ["introduction"]
  SETTABLEKS R18 R17 K47 ["topic"]
  LOADB R18 1
  SETTABLEKS R18 R17 K48 ["showNext"]
  DUPTABLE R18 K60 [{"id", "kind", "topic", "instanceId"}]
  LOADK R19 K61 ["rotateCamera"]
  SETTABLEKS R19 R18 K39 ["id"]
  LOADK R19 K62 ["Rotate"]
  SETTABLEKS R19 R18 K58 ["kind"]
  LOADK R19 K63 ["navigation"]
  SETTABLEKS R19 R18 K47 ["topic"]
  LOADK R19 K64 ["camera"]
  SETTABLEKS R19 R18 K59 ["instanceId"]
  DUPTABLE R19 K66 [{"id", "kind", "keys", "topic"}]
  LOADK R20 K67 ["moveCamera"]
  SETTABLEKS R20 R19 K39 ["id"]
  LOADK R20 K68 ["Input"]
  SETTABLEKS R20 R19 K58 ["kind"]
  NEWTABLE R20 0 4
  GETIMPORT R21 K72 [Enum.KeyCode.W]
  GETIMPORT R22 K74 [Enum.KeyCode.A]
  GETIMPORT R23 K76 [Enum.KeyCode.S]
  GETIMPORT R24 K78 [Enum.KeyCode.D]
  SETLIST R20 R21 4 [1]
  SETTABLEKS R20 R19 K65 ["keys"]
  LOADK R20 K63 ["navigation"]
  SETTABLEKS R20 R19 K47 ["topic"]
  DUPTABLE R20 K66 [{"id", "kind", "keys", "topic"}]
  LOADK R21 K79 ["panCamera"]
  SETTABLEKS R21 R20 K39 ["id"]
  LOADK R21 K68 ["Input"]
  SETTABLEKS R21 R20 K58 ["kind"]
  NEWTABLE R21 0 2
  GETIMPORT R22 K81 [Enum.KeyCode.E]
  GETIMPORT R23 K83 [Enum.KeyCode.Q]
  SETLIST R21 R22 2 [1]
  SETTABLEKS R21 R20 K65 ["keys"]
  LOADK R21 K63 ["navigation"]
  SETTABLEKS R21 R20 K47 ["topic"]
  DUPTABLE R21 K85 [{"id", "kind", "inputs", "topic"}]
  LOADK R22 K86 ["zoomCamera"]
  SETTABLEKS R22 R21 K39 ["id"]
  LOADK R22 K68 ["Input"]
  SETTABLEKS R22 R21 K58 ["kind"]
  NEWTABLE R22 0 1
  GETIMPORT R23 K89 [Enum.UserInputType.MouseWheel]
  SETLIST R22 R23 1 [1]
  SETTABLEKS R22 R21 K84 ["inputs"]
  LOADK R22 K63 ["navigation"]
  SETTABLEKS R22 R21 K47 ["topic"]
  DUPTABLE R22 K93 [{"id", "topic", "widgets", "showNext", "spotlight", "toolboxLimits"}]
  LOADK R23 K94 ["marketplace"]
  SETTABLEKS R23 R22 K39 ["id"]
  LOADK R23 K94 ["marketplace"]
  SETTABLEKS R23 R22 K47 ["topic"]
  LOADK R23 K36 ["Toolbox"]
  SETTABLEKS R23 R22 K90 ["widgets"]
  LOADB R23 1
  SETTABLEKS R23 R22 K48 ["showNext"]
  JUMPIFNOT R3 [+13]
  DUPTABLE R23 K99 [{"TargetWidgetUri", "ShowBox", "ShowHighlight", "ShowShadows"}]
  SETTABLEKS R11 R23 K95 ["TargetWidgetUri"]
  LOADB R24 1
  SETTABLEKS R24 R23 K96 ["ShowBox"]
  LOADB R24 1
  SETTABLEKS R24 R23 K97 ["ShowHighlight"]
  LOADB R24 1
  SETTABLEKS R24 R23 K98 ["ShowShadows"]
  JUMP [+13]
  DUPTABLE R23 K104 [{"target", "showBox", "showHighlight", "showShadows"}]
  LOADK R24 K105 ["edit_builtin_Toolbox.rbxm_Toolbox"]
  SETTABLEKS R24 R23 K100 ["target"]
  LOADB R24 1
  SETTABLEKS R24 R23 K101 ["showBox"]
  LOADB R24 1
  SETTABLEKS R24 R23 K102 ["showHighlight"]
  LOADB R24 1
  SETTABLEKS R24 R23 K103 ["showShadows"]
  SETTABLEKS R23 R22 K91 ["spotlight"]
  SETTABLEKS R6 R22 K92 ["toolboxLimits"]
  DUPTABLE R23 K107 [{"id", "kind", "search", "toolboxLimits", "topic", "widgets"}]
  LOADK R24 K108 ["searchMarketplace"]
  SETTABLEKS R24 R23 K39 ["id"]
  LOADK R24 K109 ["ToolboxSearch"]
  SETTABLEKS R24 R23 K58 ["kind"]
  LOADK R24 K110 ["ball"]
  SETTABLEKS R24 R23 K106 ["search"]
  SETTABLEKS R6 R23 K92 ["toolboxLimits"]
  LOADK R24 K94 ["marketplace"]
  SETTABLEKS R24 R23 K47 ["topic"]
  LOADK R24 K36 ["Toolbox"]
  SETTABLEKS R24 R23 K90 ["widgets"]
  DUPTABLE R24 K112 [{"id", "kind", "toolboxLimits", "topic", "onSkip", "widgets"}]
  LOADK R25 K113 ["insertMarketplace"]
  SETTABLEKS R25 R24 K39 ["id"]
  LOADK R25 K114 ["ToolboxInsert"]
  SETTABLEKS R25 R24 K58 ["kind"]
  SETTABLEKS R6 R24 K92 ["toolboxLimits"]
  LOADK R25 K94 ["marketplace"]
  SETTABLEKS R25 R24 K47 ["topic"]
  DUPCLOSURE R25 K115 [PROTO_7]
  CAPTURE VAL R12
  SETTABLEKS R25 R24 K111 ["onSkip"]
  LOADK R25 K36 ["Toolbox"]
  SETTABLEKS R25 R24 K90 ["widgets"]
  DUPTABLE R25 K117 [{"id", "topic", "kind", "widgets", "hideWidgets"}]
  LOADK R26 K118 ["playtest"]
  SETTABLEKS R26 R25 K39 ["id"]
  LOADK R26 K118 ["playtest"]
  SETTABLEKS R26 R25 K47 ["topic"]
  LOADK R26 K119 ["StartPlaytest"]
  SETTABLEKS R26 R25 K58 ["kind"]
  LOADK R26 K120 ["Ribbon-Home"]
  SETTABLEKS R26 R25 K90 ["widgets"]
  LOADK R26 K36 ["Toolbox"]
  SETTABLEKS R26 R25 K116 ["hideWidgets"]
  DUPTABLE R26 K122 [{"id", "topic", "kind", "state", "widgets"}]
  LOADK R27 K123 ["avatar"]
  SETTABLEKS R27 R26 K39 ["id"]
  LOADK R27 K118 ["playtest"]
  SETTABLEKS R27 R26 K47 ["topic"]
  LOADK R27 K124 ["Avatar"]
  SETTABLEKS R27 R26 K58 ["kind"]
  GETIMPORT R27 K127 [Enum.HumanoidStateType.Seated]
  SETTABLEKS R27 R26 K121 ["state"]
  LOADK R27 K120 ["Ribbon-Home"]
  SETTABLEKS R27 R26 K90 ["widgets"]
  DUPTABLE R27 K128 [{"id", "topic", "kind", "widgets"}]
  LOADK R28 K129 ["stopPlaytest"]
  SETTABLEKS R28 R27 K39 ["id"]
  LOADK R28 K118 ["playtest"]
  SETTABLEKS R28 R27 K47 ["topic"]
  LOADK R28 K130 ["StopPlaytest"]
  SETTABLEKS R28 R27 K58 ["kind"]
  LOADK R28 K120 ["Ribbon-Home"]
  SETTABLEKS R28 R27 K90 ["widgets"]
  DUPTABLE R28 K136 [{"id", "kind", "topic", "callout", "spotlight", "cameraFocus", "cameraOffset", "instanceId", "className", "properties", "onBind", "onSkip", "onUnbind", "widgets"}]
  LOADK R29 K137 ["wedge"]
  SETTABLEKS R29 R28 K39 ["id"]
  LOADK R29 K138 ["Insert"]
  SETTABLEKS R29 R28 K58 ["kind"]
  LOADK R29 K139 ["parts"]
  SETTABLEKS R29 R28 K47 ["topic"]
  JUMPIFNOT R2 [+27]
  DUPTABLE R29 K141 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R30 K33 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R31 K142 ["Standalone"]
  SETTABLEKS R31 R30 K31 ["DataModel"]
  LOADK R31 K142 ["Standalone"]
  SETTABLEKS R31 R30 K32 ["PluginType"]
  LOADK R31 K143 ["Ribbon"]
  SETTABLEKS R31 R30 K23 ["PluginId"]
  LOADK R31 K28 ["Widgets"]
  SETTABLEKS R31 R30 K24 ["Category"]
  LOADK R31 K144 ["Tabs/Home/Part"]
  SETTABLEKS R31 R30 K25 ["ItemId"]
  SETTABLEKS R30 R29 K95 ["TargetWidgetUri"]
  GETIMPORT R30 K147 [Vector2.new]
  LOADN R31 5
  LOADN R32 20
  CALL R30 2 1
  SETTABLEKS R30 R29 K140 ["Offset"]
  JUMP [+33]
  JUMPIFNOT R1 [+21]
  DUPTABLE R29 K141 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R30 K26 [{"PluginId", "Category", "ItemId"}]
  LOADK R31 K148 ["QtRibbon"]
  SETTABLEKS R31 R30 K23 ["PluginId"]
  LOADK R31 K28 ["Widgets"]
  SETTABLEKS R31 R30 K24 ["Category"]
  LOADK R31 K149 ["Part"]
  SETTABLEKS R31 R30 K25 ["ItemId"]
  SETTABLEKS R30 R29 K95 ["TargetWidgetUri"]
  GETIMPORT R30 K147 [Vector2.new]
  LOADN R31 0
  LOADN R32 5
  CALL R30 2 1
  SETTABLEKS R30 R29 K140 ["Offset"]
  JUMP [+11]
  DUPTABLE R29 K151 [{"target", "offset"}]
  LOADK R30 K152 ["placePartActionRibbonControl"]
  SETTABLEKS R30 R29 K100 ["target"]
  GETIMPORT R30 K147 [Vector2.new]
  LOADN R31 0
  LOADN R32 5
  CALL R30 2 1
  SETTABLEKS R30 R29 K150 ["offset"]
  SETTABLEKS R29 R28 K131 ["callout"]
  JUMPIFNOT R2 [+24]
  JUMPIFNOT R3 [+23]
  DUPTABLE R29 K153 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R30 K33 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R31 K142 ["Standalone"]
  SETTABLEKS R31 R30 K31 ["DataModel"]
  LOADK R31 K142 ["Standalone"]
  SETTABLEKS R31 R30 K32 ["PluginType"]
  LOADK R31 K143 ["Ribbon"]
  SETTABLEKS R31 R30 K23 ["PluginId"]
  LOADK R31 K28 ["Widgets"]
  SETTABLEKS R31 R30 K24 ["Category"]
  LOADK R31 K144 ["Tabs/Home/Part"]
  SETTABLEKS R31 R30 K25 ["ItemId"]
  SETTABLEKS R30 R29 K95 ["TargetWidgetUri"]
  LOADB R30 1
  SETTABLEKS R30 R29 K97 ["ShowHighlight"]
  JUMP [+7]
  DUPTABLE R29 K154 [{"target", "showHighlight"}]
  LOADK R30 K152 ["placePartActionRibbonControl"]
  SETTABLEKS R30 R29 K100 ["target"]
  LOADB R30 1
  SETTABLEKS R30 R29 K102 ["showHighlight"]
  SETTABLEKS R29 R28 K91 ["spotlight"]
  LOADK R29 K155 [{-843.991, -192.828, 68.512}]
  SETTABLEKS R29 R28 K49 ["cameraFocus"]
  LOADK R29 K156 [{20, 20, 5}]
  SETTABLEKS R29 R28 K50 ["cameraOffset"]
  LOADK R29 K137 ["wedge"]
  SETTABLEKS R29 R28 K59 ["instanceId"]
  LOADK R29 K149 ["Part"]
  SETTABLEKS R29 R28 K132 ["className"]
  DUPTABLE R29 K158 [{"Shape"}]
  GETIMPORT R30 K161 [Enum.PartType.Wedge]
  SETTABLEKS R30 R29 K157 ["Shape"]
  SETTABLEKS R29 R28 K133 ["properties"]
  DUPCLOSURE R29 K162 [PROTO_8]
  SETTABLEKS R29 R28 K134 ["onBind"]
  DUPCLOSURE R29 K163 [PROTO_9]
  CAPTURE VAL R13
  SETTABLEKS R29 R28 K111 ["onSkip"]
  DUPCLOSURE R29 K164 [PROTO_10]
  CAPTURE VAL R4
  SETTABLEKS R29 R28 K135 ["onUnbind"]
  LOADK R29 K120 ["Ribbon-Home"]
  SETTABLEKS R29 R28 K90 ["widgets"]
  DUPTABLE R29 K167 [{"id", "kind", "topic", "callout", "spotlight", "position", "distance", "instanceId", "onSkip", "widgets"}]
  LOADK R30 K168 ["move"]
  SETTABLEKS R30 R29 K39 ["id"]
  LOADK R30 K169 ["Move"]
  SETTABLEKS R30 R29 K58 ["kind"]
  LOADK R30 K139 ["parts"]
  SETTABLEKS R30 R29 K47 ["topic"]
  JUMPIFNOT R2 [+41]
  DUPTABLE R30 K172 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
  DUPTABLE R31 K33 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R32 K142 ["Standalone"]
  SETTABLEKS R32 R31 K31 ["DataModel"]
  LOADK R32 K142 ["Standalone"]
  SETTABLEKS R32 R31 K32 ["PluginType"]
  LOADK R32 K143 ["Ribbon"]
  SETTABLEKS R32 R31 K23 ["PluginId"]
  LOADK R32 K28 ["Widgets"]
  SETTABLEKS R32 R31 K24 ["Category"]
  LOADK R32 K173 ["Tabs/Home/Move"]
  SETTABLEKS R32 R31 K25 ["ItemId"]
  SETTABLEKS R31 R30 K95 ["TargetWidgetUri"]
  GETIMPORT R31 K147 [Vector2.new]
  LOADN R32 0
  LOADN R33 1
  CALL R31 2 1
  SETTABLEKS R31 R30 K170 ["TargetAnchorPoint"]
  GETIMPORT R31 K147 [Vector2.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K171 ["SubjectAnchorPoint"]
  GETIMPORT R31 K147 [Vector2.new]
  LOADN R32 0
  LOADN R33 20
  CALL R31 2 1
  SETTABLEKS R31 R30 K140 ["Offset"]
  JUMP [+61]
  JUMPIFNOT R1 [+35]
  DUPTABLE R30 K172 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
  DUPTABLE R31 K26 [{"PluginId", "Category", "ItemId"}]
  LOADK R32 K148 ["QtRibbon"]
  SETTABLEKS R32 R31 K23 ["PluginId"]
  LOADK R32 K28 ["Widgets"]
  SETTABLEKS R32 R31 K24 ["Category"]
  LOADK R32 K169 ["Move"]
  SETTABLEKS R32 R31 K25 ["ItemId"]
  SETTABLEKS R31 R30 K95 ["TargetWidgetUri"]
  GETIMPORT R31 K147 [Vector2.new]
  LOADN R32 0
  LOADN R33 1
  CALL R31 2 1
  SETTABLEKS R31 R30 K170 ["TargetAnchorPoint"]
  GETIMPORT R31 K147 [Vector2.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K171 ["SubjectAnchorPoint"]
  GETIMPORT R31 K147 [Vector2.new]
  LOADN R32 0
  LOADN R33 5
  CALL R31 2 1
  SETTABLEKS R31 R30 K140 ["Offset"]
  JUMP [+25]
  DUPTABLE R30 K176 [{"target", "targetAnchorPoint", "subjectAnchorPoint", "offset"}]
  LOADK R31 K177 ["advTranslateAction"]
  SETTABLEKS R31 R30 K100 ["target"]
  GETIMPORT R31 K147 [Vector2.new]
  LOADN R32 0
  LOADN R33 1
  CALL R31 2 1
  SETTABLEKS R31 R30 K174 ["targetAnchorPoint"]
  GETIMPORT R31 K147 [Vector2.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K175 ["subjectAnchorPoint"]
  GETIMPORT R31 K147 [Vector2.new]
  LOADN R32 0
  LOADN R33 5
  CALL R31 2 1
  SETTABLEKS R31 R30 K150 ["offset"]
  SETTABLEKS R30 R29 K131 ["callout"]
  JUMPIFNOT R2 [+38]
  JUMPIFNOT R3 [+37]
  DUPTABLE R30 K178 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "ShowHighlight"}]
  DUPTABLE R31 K33 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R32 K142 ["Standalone"]
  SETTABLEKS R32 R31 K31 ["DataModel"]
  LOADK R32 K142 ["Standalone"]
  SETTABLEKS R32 R31 K32 ["PluginType"]
  LOADK R32 K143 ["Ribbon"]
  SETTABLEKS R32 R31 K23 ["PluginId"]
  LOADK R32 K28 ["Widgets"]
  SETTABLEKS R32 R31 K24 ["Category"]
  LOADK R32 K173 ["Tabs/Home/Move"]
  SETTABLEKS R32 R31 K25 ["ItemId"]
  SETTABLEKS R31 R30 K95 ["TargetWidgetUri"]
  GETIMPORT R31 K147 [Vector2.new]
  LOADN R32 0
  LOADN R33 1
  CALL R31 2 1
  SETTABLEKS R31 R30 K170 ["TargetAnchorPoint"]
  GETIMPORT R31 K147 [Vector2.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K171 ["SubjectAnchorPoint"]
  LOADB R31 1
  SETTABLEKS R31 R30 K97 ["ShowHighlight"]
  JUMP [+21]
  DUPTABLE R30 K179 [{"target", "targetAnchorPoint", "subjectAnchorPoint", "showHighlight"}]
  LOADK R31 K177 ["advTranslateAction"]
  SETTABLEKS R31 R30 K100 ["target"]
  GETIMPORT R31 K147 [Vector2.new]
  LOADN R32 0
  LOADN R33 1
  CALL R31 2 1
  SETTABLEKS R31 R30 K174 ["targetAnchorPoint"]
  GETIMPORT R31 K147 [Vector2.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K175 ["subjectAnchorPoint"]
  LOADB R31 1
  SETTABLEKS R31 R30 K102 ["showHighlight"]
  SETTABLEKS R30 R29 K91 ["spotlight"]
  LOADK R30 K180 [{-851.33, -193.045, 60.764}]
  SETTABLEKS R30 R29 K165 ["position"]
  LOADN R30 80
  SETTABLEKS R30 R29 K166 ["distance"]
  LOADK R30 K137 ["wedge"]
  SETTABLEKS R30 R29 K59 ["instanceId"]
  DUPCLOSURE R30 K181 [PROTO_11]
  CAPTURE VAL R13
  SETTABLEKS R30 R29 K111 ["onSkip"]
  LOADK R30 K120 ["Ribbon-Home"]
  SETTABLEKS R30 R29 K90 ["widgets"]
  DUPTABLE R30 K183 [{"id", "kind", "topic", "callout", "spotlight", "rotation", "distance", "instanceId", "onSkip", "widgets"}]
  LOADK R31 K184 ["rotate"]
  SETTABLEKS R31 R30 K39 ["id"]
  LOADK R31 K62 ["Rotate"]
  SETTABLEKS R31 R30 K58 ["kind"]
  LOADK R31 K139 ["parts"]
  SETTABLEKS R31 R30 K47 ["topic"]
  JUMPIFNOT R2 [+41]
  DUPTABLE R31 K172 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
  DUPTABLE R32 K33 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R33 K142 ["Standalone"]
  SETTABLEKS R33 R32 K31 ["DataModel"]
  LOADK R33 K142 ["Standalone"]
  SETTABLEKS R33 R32 K32 ["PluginType"]
  LOADK R33 K143 ["Ribbon"]
  SETTABLEKS R33 R32 K23 ["PluginId"]
  LOADK R33 K28 ["Widgets"]
  SETTABLEKS R33 R32 K24 ["Category"]
  LOADK R33 K185 ["Tabs/Home/Rotate"]
  SETTABLEKS R33 R32 K25 ["ItemId"]
  SETTABLEKS R32 R31 K95 ["TargetWidgetUri"]
  GETIMPORT R32 K147 [Vector2.new]
  LOADN R33 0
  LOADN R34 1
  CALL R32 2 1
  SETTABLEKS R32 R31 K170 ["TargetAnchorPoint"]
  GETIMPORT R32 K147 [Vector2.new]
  LOADN R33 0
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K171 ["SubjectAnchorPoint"]
  GETIMPORT R32 K147 [Vector2.new]
  LOADN R33 0
  LOADN R34 20
  CALL R32 2 1
  SETTABLEKS R32 R31 K140 ["Offset"]
  JUMP [+61]
  JUMPIFNOT R1 [+35]
  DUPTABLE R31 K172 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
  DUPTABLE R32 K26 [{"PluginId", "Category", "ItemId"}]
  LOADK R33 K148 ["QtRibbon"]
  SETTABLEKS R33 R32 K23 ["PluginId"]
  LOADK R33 K28 ["Widgets"]
  SETTABLEKS R33 R32 K24 ["Category"]
  LOADK R33 K62 ["Rotate"]
  SETTABLEKS R33 R32 K25 ["ItemId"]
  SETTABLEKS R32 R31 K95 ["TargetWidgetUri"]
  GETIMPORT R32 K147 [Vector2.new]
  LOADN R33 0
  LOADN R34 1
  CALL R32 2 1
  SETTABLEKS R32 R31 K170 ["TargetAnchorPoint"]
  GETIMPORT R32 K147 [Vector2.new]
  LOADN R33 0
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K171 ["SubjectAnchorPoint"]
  GETIMPORT R32 K147 [Vector2.new]
  LOADN R33 0
  LOADN R34 5
  CALL R32 2 1
  SETTABLEKS R32 R31 K140 ["Offset"]
  JUMP [+25]
  DUPTABLE R31 K176 [{"target", "targetAnchorPoint", "subjectAnchorPoint", "offset"}]
  LOADK R32 K186 ["advRotateAction"]
  SETTABLEKS R32 R31 K100 ["target"]
  GETIMPORT R32 K147 [Vector2.new]
  LOADN R33 0
  LOADN R34 1
  CALL R32 2 1
  SETTABLEKS R32 R31 K174 ["targetAnchorPoint"]
  GETIMPORT R32 K147 [Vector2.new]
  LOADN R33 0
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K175 ["subjectAnchorPoint"]
  GETIMPORT R32 K147 [Vector2.new]
  LOADN R33 0
  LOADN R34 5
  CALL R32 2 1
  SETTABLEKS R32 R31 K150 ["offset"]
  SETTABLEKS R31 R30 K131 ["callout"]
  JUMPIFNOT R2 [+24]
  JUMPIFNOT R3 [+23]
  DUPTABLE R31 K153 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R32 K33 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R33 K142 ["Standalone"]
  SETTABLEKS R33 R32 K31 ["DataModel"]
  LOADK R33 K142 ["Standalone"]
  SETTABLEKS R33 R32 K32 ["PluginType"]
  LOADK R33 K143 ["Ribbon"]
  SETTABLEKS R33 R32 K23 ["PluginId"]
  LOADK R33 K28 ["Widgets"]
  SETTABLEKS R33 R32 K24 ["Category"]
  LOADK R33 K185 ["Tabs/Home/Rotate"]
  SETTABLEKS R33 R32 K25 ["ItemId"]
  SETTABLEKS R32 R31 K95 ["TargetWidgetUri"]
  LOADB R32 1
  SETTABLEKS R32 R31 K97 ["ShowHighlight"]
  JUMP [+7]
  DUPTABLE R31 K154 [{"target", "showHighlight"}]
  LOADK R32 K186 ["advRotateAction"]
  SETTABLEKS R32 R31 K100 ["target"]
  LOADB R32 1
  SETTABLEKS R32 R31 K102 ["showHighlight"]
  SETTABLEKS R31 R30 K91 ["spotlight"]
  LOADK R31 K187 [{0, -90, 0}]
  SETTABLEKS R31 R30 K182 ["rotation"]
  LOADN R31 30
  SETTABLEKS R31 R30 K166 ["distance"]
  LOADK R31 K137 ["wedge"]
  SETTABLEKS R31 R30 K59 ["instanceId"]
  DUPCLOSURE R31 K188 [PROTO_12]
  CAPTURE VAL R13
  SETTABLEKS R31 R30 K111 ["onSkip"]
  LOADK R31 K120 ["Ribbon-Home"]
  SETTABLEKS R31 R30 K90 ["widgets"]
  DUPTABLE R31 K190 [{"id", "kind", "topic", "callout", "spotlight", "minSize", "instanceId", "onSkip", "widgets"}]
  LOADK R32 K191 ["scale"]
  SETTABLEKS R32 R31 K39 ["id"]
  LOADK R32 K192 ["Scale"]
  SETTABLEKS R32 R31 K58 ["kind"]
  LOADK R32 K139 ["parts"]
  SETTABLEKS R32 R31 K47 ["topic"]
  JUMPIFNOT R2 [+41]
  DUPTABLE R32 K172 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
  DUPTABLE R33 K33 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R34 K142 ["Standalone"]
  SETTABLEKS R34 R33 K31 ["DataModel"]
  LOADK R34 K142 ["Standalone"]
  SETTABLEKS R34 R33 K32 ["PluginType"]
  LOADK R34 K143 ["Ribbon"]
  SETTABLEKS R34 R33 K23 ["PluginId"]
  LOADK R34 K28 ["Widgets"]
  SETTABLEKS R34 R33 K24 ["Category"]
  LOADK R34 K193 ["Tabs/Home/Scale"]
  SETTABLEKS R34 R33 K25 ["ItemId"]
  SETTABLEKS R33 R32 K95 ["TargetWidgetUri"]
  GETIMPORT R33 K147 [Vector2.new]
  LOADN R34 0
  LOADN R35 1
  CALL R33 2 1
  SETTABLEKS R33 R32 K170 ["TargetAnchorPoint"]
  GETIMPORT R33 K147 [Vector2.new]
  LOADN R34 0
  LOADN R35 0
  CALL R33 2 1
  SETTABLEKS R33 R32 K171 ["SubjectAnchorPoint"]
  GETIMPORT R33 K147 [Vector2.new]
  LOADN R34 0
  LOADN R35 20
  CALL R33 2 1
  SETTABLEKS R33 R32 K140 ["Offset"]
  JUMP [+61]
  JUMPIFNOT R1 [+35]
  DUPTABLE R32 K172 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
  DUPTABLE R33 K26 [{"PluginId", "Category", "ItemId"}]
  LOADK R34 K148 ["QtRibbon"]
  SETTABLEKS R34 R33 K23 ["PluginId"]
  LOADK R34 K28 ["Widgets"]
  SETTABLEKS R34 R33 K24 ["Category"]
  LOADK R34 K192 ["Scale"]
  SETTABLEKS R34 R33 K25 ["ItemId"]
  SETTABLEKS R33 R32 K95 ["TargetWidgetUri"]
  GETIMPORT R33 K147 [Vector2.new]
  LOADN R34 0
  LOADN R35 1
  CALL R33 2 1
  SETTABLEKS R33 R32 K170 ["TargetAnchorPoint"]
  GETIMPORT R33 K147 [Vector2.new]
  LOADN R34 0
  LOADN R35 0
  CALL R33 2 1
  SETTABLEKS R33 R32 K171 ["SubjectAnchorPoint"]
  GETIMPORT R33 K147 [Vector2.new]
  LOADN R34 0
  LOADN R35 5
  CALL R33 2 1
  SETTABLEKS R33 R32 K140 ["Offset"]
  JUMP [+25]
  DUPTABLE R32 K176 [{"target", "targetAnchorPoint", "subjectAnchorPoint", "offset"}]
  LOADK R33 K194 ["resizeAction"]
  SETTABLEKS R33 R32 K100 ["target"]
  GETIMPORT R33 K147 [Vector2.new]
  LOADN R34 0
  LOADN R35 1
  CALL R33 2 1
  SETTABLEKS R33 R32 K174 ["targetAnchorPoint"]
  GETIMPORT R33 K147 [Vector2.new]
  LOADN R34 0
  LOADN R35 0
  CALL R33 2 1
  SETTABLEKS R33 R32 K175 ["subjectAnchorPoint"]
  GETIMPORT R33 K147 [Vector2.new]
  LOADN R34 0
  LOADN R35 5
  CALL R33 2 1
  SETTABLEKS R33 R32 K150 ["offset"]
  SETTABLEKS R32 R31 K131 ["callout"]
  JUMPIFNOT R2 [+24]
  JUMPIFNOT R3 [+23]
  DUPTABLE R32 K153 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R33 K33 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R34 K142 ["Standalone"]
  SETTABLEKS R34 R33 K31 ["DataModel"]
  LOADK R34 K142 ["Standalone"]
  SETTABLEKS R34 R33 K32 ["PluginType"]
  LOADK R34 K143 ["Ribbon"]
  SETTABLEKS R34 R33 K23 ["PluginId"]
  LOADK R34 K28 ["Widgets"]
  SETTABLEKS R34 R33 K24 ["Category"]
  LOADK R34 K193 ["Tabs/Home/Scale"]
  SETTABLEKS R34 R33 K25 ["ItemId"]
  SETTABLEKS R33 R32 K95 ["TargetWidgetUri"]
  LOADB R33 1
  SETTABLEKS R33 R32 K97 ["ShowHighlight"]
  JUMP [+7]
  DUPTABLE R32 K154 [{"target", "showHighlight"}]
  LOADK R33 K194 ["resizeAction"]
  SETTABLEKS R33 R32 K100 ["target"]
  LOADB R33 1
  SETTABLEKS R33 R32 K102 ["showHighlight"]
  SETTABLEKS R32 R31 K91 ["spotlight"]
  LOADK R32 K195 [{15, 5, 10}]
  SETTABLEKS R32 R31 K189 ["minSize"]
  LOADK R32 K137 ["wedge"]
  SETTABLEKS R32 R31 K59 ["instanceId"]
  DUPCLOSURE R32 K196 [PROTO_13]
  CAPTURE VAL R13
  SETTABLEKS R32 R31 K111 ["onSkip"]
  LOADK R32 K120 ["Ribbon-Home"]
  SETTABLEKS R32 R31 K90 ["widgets"]
  SETLIST R15 R16 16 [1]
  DUPTABLE R16 K198 [{"id", "kind", "topic", "callout", "spotlight", "className", "changes", "onSkip", "widgets"}]
  LOADK R17 K199 ["color"]
  SETTABLEKS R17 R16 K39 ["id"]
  LOADK R17 K34 ["Edit"]
  SETTABLEKS R17 R16 K58 ["kind"]
  LOADK R17 K133 ["properties"]
  SETTABLEKS R17 R16 K47 ["topic"]
  JUMPIFNOT R2 [+27]
  DUPTABLE R17 K141 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R18 K33 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R19 K142 ["Standalone"]
  SETTABLEKS R19 R18 K31 ["DataModel"]
  LOADK R19 K142 ["Standalone"]
  SETTABLEKS R19 R18 K32 ["PluginType"]
  LOADK R19 K143 ["Ribbon"]
  SETTABLEKS R19 R18 K23 ["PluginId"]
  LOADK R19 K28 ["Widgets"]
  SETTABLEKS R19 R18 K24 ["Category"]
  LOADK R19 K200 ["Tabs/Home/Color"]
  SETTABLEKS R19 R18 K25 ["ItemId"]
  SETTABLEKS R18 R17 K95 ["TargetWidgetUri"]
  GETIMPORT R18 K147 [Vector2.new]
  LOADN R19 5
  LOADN R20 20
  CALL R18 2 1
  SETTABLEKS R18 R17 K140 ["Offset"]
  JUMP [+33]
  JUMPIFNOT R1 [+21]
  DUPTABLE R17 K141 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R18 K26 [{"PluginId", "Category", "ItemId"}]
  LOADK R19 K148 ["QtRibbon"]
  SETTABLEKS R19 R18 K23 ["PluginId"]
  LOADK R19 K28 ["Widgets"]
  SETTABLEKS R19 R18 K24 ["Category"]
  LOADK R19 K201 ["Color"]
  SETTABLEKS R19 R18 K25 ["ItemId"]
  SETTABLEKS R18 R17 K95 ["TargetWidgetUri"]
  GETIMPORT R18 K147 [Vector2.new]
  LOADN R19 0
  LOADN R20 5
  CALL R18 2 1
  SETTABLEKS R18 R17 K140 ["Offset"]
  JUMP [+11]
  DUPTABLE R17 K151 [{"target", "offset"}]
  LOADK R18 K202 ["actionColorSelector"]
  SETTABLEKS R18 R17 K100 ["target"]
  GETIMPORT R18 K147 [Vector2.new]
  LOADN R19 0
  LOADN R20 5
  CALL R18 2 1
  SETTABLEKS R18 R17 K150 ["offset"]
  SETTABLEKS R17 R16 K131 ["callout"]
  JUMPIFNOT R2 [+24]
  JUMPIFNOT R3 [+23]
  DUPTABLE R17 K153 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R18 K33 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R19 K142 ["Standalone"]
  SETTABLEKS R19 R18 K31 ["DataModel"]
  LOADK R19 K142 ["Standalone"]
  SETTABLEKS R19 R18 K32 ["PluginType"]
  LOADK R19 K143 ["Ribbon"]
  SETTABLEKS R19 R18 K23 ["PluginId"]
  LOADK R19 K28 ["Widgets"]
  SETTABLEKS R19 R18 K24 ["Category"]
  LOADK R19 K200 ["Tabs/Home/Color"]
  SETTABLEKS R19 R18 K25 ["ItemId"]
  SETTABLEKS R18 R17 K95 ["TargetWidgetUri"]
  LOADB R18 1
  SETTABLEKS R18 R17 K97 ["ShowHighlight"]
  JUMP [+7]
  DUPTABLE R17 K154 [{"target", "showHighlight"}]
  LOADK R18 K202 ["actionColorSelector"]
  SETTABLEKS R18 R17 K100 ["target"]
  LOADB R18 1
  SETTABLEKS R18 R17 K102 ["showHighlight"]
  SETTABLEKS R17 R16 K91 ["spotlight"]
  LOADK R17 K149 ["Part"]
  SETTABLEKS R17 R16 K132 ["className"]
  DUPTABLE R17 K203 [{"Color"}]
  LOADB R18 1
  SETTABLEKS R18 R17 K201 ["Color"]
  SETTABLEKS R17 R16 K197 ["changes"]
  DUPCLOSURE R17 K204 [PROTO_14]
  CAPTURE VAL R13
  SETTABLEKS R17 R16 K111 ["onSkip"]
  LOADK R17 K120 ["Ribbon-Home"]
  SETTABLEKS R17 R16 K90 ["widgets"]
  DUPTABLE R17 K198 [{"id", "kind", "topic", "callout", "spotlight", "className", "changes", "onSkip", "widgets"}]
  LOADK R18 K205 ["anchor"]
  SETTABLEKS R18 R17 K39 ["id"]
  LOADK R18 K34 ["Edit"]
  SETTABLEKS R18 R17 K58 ["kind"]
  LOADK R18 K133 ["properties"]
  SETTABLEKS R18 R17 K47 ["topic"]
  JUMPIFNOT R2 [+27]
  DUPTABLE R18 K141 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R19 K33 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R20 K142 ["Standalone"]
  SETTABLEKS R20 R19 K31 ["DataModel"]
  LOADK R20 K142 ["Standalone"]
  SETTABLEKS R20 R19 K32 ["PluginType"]
  LOADK R20 K143 ["Ribbon"]
  SETTABLEKS R20 R19 K23 ["PluginId"]
  LOADK R20 K28 ["Widgets"]
  SETTABLEKS R20 R19 K24 ["Category"]
  LOADK R20 K206 ["Tabs/Home/Anchor"]
  SETTABLEKS R20 R19 K25 ["ItemId"]
  SETTABLEKS R19 R18 K95 ["TargetWidgetUri"]
  GETIMPORT R19 K147 [Vector2.new]
  LOADN R20 0
  LOADN R21 20
  CALL R19 2 1
  SETTABLEKS R19 R18 K140 ["Offset"]
  JUMP [+33]
  JUMPIFNOT R1 [+21]
  DUPTABLE R18 K141 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R19 K26 [{"PluginId", "Category", "ItemId"}]
  LOADK R20 K148 ["QtRibbon"]
  SETTABLEKS R20 R19 K23 ["PluginId"]
  LOADK R20 K28 ["Widgets"]
  SETTABLEKS R20 R19 K24 ["Category"]
  LOADK R20 K207 ["Anchor"]
  SETTABLEKS R20 R19 K25 ["ItemId"]
  SETTABLEKS R19 R18 K95 ["TargetWidgetUri"]
  GETIMPORT R19 K147 [Vector2.new]
  LOADN R20 0
  LOADN R21 5
  CALL R19 2 1
  SETTABLEKS R19 R18 K140 ["Offset"]
  JUMP [+11]
  DUPTABLE R18 K151 [{"target", "offset"}]
  LOADK R19 K208 ["anchorAction"]
  SETTABLEKS R19 R18 K100 ["target"]
  GETIMPORT R19 K147 [Vector2.new]
  LOADN R20 0
  LOADN R21 5
  CALL R19 2 1
  SETTABLEKS R19 R18 K150 ["offset"]
  SETTABLEKS R18 R17 K131 ["callout"]
  JUMPIFNOT R2 [+24]
  JUMPIFNOT R3 [+23]
  DUPTABLE R18 K153 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R19 K33 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R20 K142 ["Standalone"]
  SETTABLEKS R20 R19 K31 ["DataModel"]
  LOADK R20 K142 ["Standalone"]
  SETTABLEKS R20 R19 K32 ["PluginType"]
  LOADK R20 K143 ["Ribbon"]
  SETTABLEKS R20 R19 K23 ["PluginId"]
  LOADK R20 K28 ["Widgets"]
  SETTABLEKS R20 R19 K24 ["Category"]
  LOADK R20 K206 ["Tabs/Home/Anchor"]
  SETTABLEKS R20 R19 K25 ["ItemId"]
  SETTABLEKS R19 R18 K95 ["TargetWidgetUri"]
  LOADB R19 1
  SETTABLEKS R19 R18 K97 ["ShowHighlight"]
  JUMP [+7]
  DUPTABLE R18 K154 [{"target", "showHighlight"}]
  LOADK R19 K208 ["anchorAction"]
  SETTABLEKS R19 R18 K100 ["target"]
  LOADB R19 1
  SETTABLEKS R19 R18 K102 ["showHighlight"]
  SETTABLEKS R18 R17 K91 ["spotlight"]
  LOADK R18 K149 ["Part"]
  SETTABLEKS R18 R17 K132 ["className"]
  DUPTABLE R18 K210 [{"Anchored"}]
  LOADB R19 1
  SETTABLEKS R19 R18 K209 ["Anchored"]
  SETTABLEKS R18 R17 K197 ["changes"]
  DUPCLOSURE R18 K211 [PROTO_15]
  CAPTURE VAL R13
  SETTABLEKS R18 R17 K111 ["onSkip"]
  LOADK R18 K120 ["Ribbon-Home"]
  SETTABLEKS R18 R17 K90 ["widgets"]
  DUPTABLE R18 K212 [{"id", "callout", "spotlight", "topic", "showNext", "widgets"}]
  LOADK R19 K213 ["explorer"]
  SETTABLEKS R19 R18 K39 ["id"]
  JUMPIFNOT R1 [+25]
  DUPTABLE R19 K214 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  SETTABLEKS R9 R19 K95 ["TargetWidgetUri"]
  GETIMPORT R20 K147 [Vector2.new]
  LOADN R21 1
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K171 ["SubjectAnchorPoint"]
  GETIMPORT R20 K147 [Vector2.new]
  LOADN R21 0
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K170 ["TargetAnchorPoint"]
  GETIMPORT R20 K147 [Vector2.new]
  LOADN R21 246
  LOADN R22 20
  CALL R20 2 1
  SETTABLEKS R20 R19 K140 ["Offset"]
  JUMP [+28]
  DUPTABLE R19 K217 [{"target", "sourceAnchorPoint", "targetAnchorPoint", "offset", "hideArrow"}]
  LOADK R20 K218 ["explorerWidgetPanel"]
  SETTABLEKS R20 R19 K100 ["target"]
  GETIMPORT R20 K147 [Vector2.new]
  LOADN R21 1
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K215 ["sourceAnchorPoint"]
  GETIMPORT R20 K147 [Vector2.new]
  LOADN R21 0
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K174 ["targetAnchorPoint"]
  GETIMPORT R20 K147 [Vector2.new]
  LOADN R21 246
  LOADN R22 20
  CALL R20 2 1
  SETTABLEKS R20 R19 K150 ["offset"]
  LOADB R20 1
  SETTABLEKS R20 R19 K216 ["hideArrow"]
  SETTABLEKS R19 R18 K131 ["callout"]
  JUMPIFNOT R3 [+13]
  DUPTABLE R19 K99 [{"TargetWidgetUri", "ShowBox", "ShowHighlight", "ShowShadows"}]
  SETTABLEKS R9 R19 K95 ["TargetWidgetUri"]
  LOADB R20 1
  SETTABLEKS R20 R19 K96 ["ShowBox"]
  LOADB R20 1
  SETTABLEKS R20 R19 K97 ["ShowHighlight"]
  LOADB R20 1
  SETTABLEKS R20 R19 K98 ["ShowShadows"]
  JUMP [+13]
  DUPTABLE R19 K104 [{"target", "showBox", "showHighlight", "showShadows"}]
  LOADK R20 K218 ["explorerWidgetPanel"]
  SETTABLEKS R20 R19 K100 ["target"]
  LOADB R20 1
  SETTABLEKS R20 R19 K101 ["showBox"]
  LOADB R20 1
  SETTABLEKS R20 R19 K102 ["showHighlight"]
  LOADB R20 1
  SETTABLEKS R20 R19 K103 ["showShadows"]
  SETTABLEKS R19 R18 K91 ["spotlight"]
  LOADK R19 K133 ["properties"]
  SETTABLEKS R19 R18 K47 ["topic"]
  LOADB R19 1
  SETTABLEKS R19 R18 K48 ["showNext"]
  LOADK R19 K219 ["Ribbon-Home,Explorer"]
  SETTABLEKS R19 R18 K90 ["widgets"]
  DUPTABLE R19 K221 [{"id", "kind", "path", "topic", "callout", "onSkip", "widgets"}]
  LOADK R20 K222 ["select"]
  SETTABLEKS R20 R19 K39 ["id"]
  LOADK R20 K223 ["Select"]
  SETTABLEKS R20 R19 K58 ["kind"]
  LOADK R20 K224 ["Ball"]
  SETTABLEKS R20 R19 K220 ["path"]
  LOADK R20 K133 ["properties"]
  SETTABLEKS R20 R19 K47 ["topic"]
  JUMPIFNOT R1 [+25]
  DUPTABLE R20 K214 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  SETTABLEKS R9 R20 K95 ["TargetWidgetUri"]
  GETIMPORT R21 K147 [Vector2.new]
  LOADN R22 1
  LOADN R23 0
  CALL R21 2 1
  SETTABLEKS R21 R20 K171 ["SubjectAnchorPoint"]
  GETIMPORT R21 K147 [Vector2.new]
  LOADN R22 0
  LOADN R23 0
  CALL R21 2 1
  SETTABLEKS R21 R20 K170 ["TargetAnchorPoint"]
  GETIMPORT R21 K147 [Vector2.new]
  LOADN R22 246
  LOADN R23 20
  CALL R21 2 1
  SETTABLEKS R21 R20 K140 ["Offset"]
  JUMP [+28]
  DUPTABLE R20 K217 [{"target", "sourceAnchorPoint", "targetAnchorPoint", "offset", "hideArrow"}]
  LOADK R21 K218 ["explorerWidgetPanel"]
  SETTABLEKS R21 R20 K100 ["target"]
  GETIMPORT R21 K147 [Vector2.new]
  LOADN R22 1
  LOADN R23 0
  CALL R21 2 1
  SETTABLEKS R21 R20 K215 ["sourceAnchorPoint"]
  GETIMPORT R21 K147 [Vector2.new]
  LOADN R22 0
  LOADN R23 0
  CALL R21 2 1
  SETTABLEKS R21 R20 K174 ["targetAnchorPoint"]
  GETIMPORT R21 K147 [Vector2.new]
  LOADN R22 246
  LOADN R23 20
  CALL R21 2 1
  SETTABLEKS R21 R20 K150 ["offset"]
  LOADB R21 1
  SETTABLEKS R21 R20 K216 ["hideArrow"]
  SETTABLEKS R20 R19 K131 ["callout"]
  DUPCLOSURE R20 K225 [PROTO_16]
  CAPTURE VAL R12
  CAPTURE VAL R5
  SETTABLEKS R20 R19 K111 ["onSkip"]
  LOADK R20 K219 ["Ribbon-Home,Explorer"]
  SETTABLEKS R20 R19 K90 ["widgets"]
  DUPTABLE R20 K226 [{"id", "topic", "kind", "onSkip", "widgets"}]
  LOADK R21 K227 ["focus"]
  SETTABLEKS R21 R20 K39 ["id"]
  LOADK R21 K133 ["properties"]
  SETTABLEKS R21 R20 K47 ["topic"]
  LOADK R21 K228 ["Focus"]
  SETTABLEKS R21 R20 K58 ["kind"]
  DUPCLOSURE R21 K229 [PROTO_17]
  CAPTURE VAL R12
  CAPTURE VAL R5
  SETTABLEKS R21 R20 K111 ["onSkip"]
  LOADK R21 K120 ["Ribbon-Home"]
  SETTABLEKS R21 R20 K90 ["widgets"]
  DUPTABLE R21 K230 [{"id", "topic", "callout", "spotlight", "showNext", "widgets"}]
  LOADK R22 K133 ["properties"]
  SETTABLEKS R22 R21 K39 ["id"]
  LOADK R22 K133 ["properties"]
  SETTABLEKS R22 R21 K47 ["topic"]
  JUMPIFNOT R1 [+25]
  DUPTABLE R22 K214 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  SETTABLEKS R10 R22 K95 ["TargetWidgetUri"]
  GETIMPORT R23 K147 [Vector2.new]
  LOADN R24 1
  LOADN R25 1
  CALL R23 2 1
  SETTABLEKS R23 R22 K171 ["SubjectAnchorPoint"]
  GETIMPORT R23 K147 [Vector2.new]
  LOADN R24 0
  LOADN R25 1
  CALL R23 2 1
  SETTABLEKS R23 R22 K170 ["TargetAnchorPoint"]
  GETIMPORT R23 K147 [Vector2.new]
  LOADN R24 246
  LOADN R25 0
  CALL R23 2 1
  SETTABLEKS R23 R22 K140 ["Offset"]
  JUMP [+28]
  DUPTABLE R22 K217 [{"target", "sourceAnchorPoint", "targetAnchorPoint", "offset", "hideArrow"}]
  LOADK R23 K231 ["propertiesWidgetPanel"]
  SETTABLEKS R23 R22 K100 ["target"]
  GETIMPORT R23 K147 [Vector2.new]
  LOADN R24 1
  LOADN R25 1
  CALL R23 2 1
  SETTABLEKS R23 R22 K215 ["sourceAnchorPoint"]
  GETIMPORT R23 K147 [Vector2.new]
  LOADN R24 0
  LOADN R25 1
  CALL R23 2 1
  SETTABLEKS R23 R22 K174 ["targetAnchorPoint"]
  GETIMPORT R23 K147 [Vector2.new]
  LOADN R24 246
  LOADN R25 0
  CALL R23 2 1
  SETTABLEKS R23 R22 K150 ["offset"]
  LOADB R23 1
  SETTABLEKS R23 R22 K216 ["hideArrow"]
  SETTABLEKS R22 R21 K131 ["callout"]
  JUMPIFNOT R3 [+13]
  DUPTABLE R22 K99 [{"TargetWidgetUri", "ShowBox", "ShowHighlight", "ShowShadows"}]
  SETTABLEKS R10 R22 K95 ["TargetWidgetUri"]
  LOADB R23 1
  SETTABLEKS R23 R22 K96 ["ShowBox"]
  LOADB R23 1
  SETTABLEKS R23 R22 K97 ["ShowHighlight"]
  LOADB R23 1
  SETTABLEKS R23 R22 K98 ["ShowShadows"]
  JUMP [+13]
  DUPTABLE R22 K104 [{"target", "showBox", "showHighlight", "showShadows"}]
  LOADK R23 K231 ["propertiesWidgetPanel"]
  SETTABLEKS R23 R22 K100 ["target"]
  LOADB R23 1
  SETTABLEKS R23 R22 K101 ["showBox"]
  LOADB R23 1
  SETTABLEKS R23 R22 K102 ["showHighlight"]
  LOADB R23 1
  SETTABLEKS R23 R22 K103 ["showShadows"]
  SETTABLEKS R22 R21 K91 ["spotlight"]
  LOADB R22 1
  SETTABLEKS R22 R21 K48 ["showNext"]
  LOADK R22 K232 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R22 R21 K90 ["widgets"]
  DUPTABLE R22 K233 [{"id", "topic", "kind", "callout", "className", "changes", "onSkip", "widgets"}]
  LOADK R23 K234 ["speed"]
  SETTABLEKS R23 R22 K39 ["id"]
  LOADK R23 K133 ["properties"]
  SETTABLEKS R23 R22 K47 ["topic"]
  LOADK R23 K34 ["Edit"]
  SETTABLEKS R23 R22 K58 ["kind"]
  JUMPIFNOT R1 [+25]
  DUPTABLE R23 K214 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  SETTABLEKS R10 R23 K95 ["TargetWidgetUri"]
  GETIMPORT R24 K147 [Vector2.new]
  LOADN R25 1
  LOADN R26 1
  CALL R24 2 1
  SETTABLEKS R24 R23 K171 ["SubjectAnchorPoint"]
  GETIMPORT R24 K147 [Vector2.new]
  LOADN R25 0
  LOADN R26 1
  CALL R24 2 1
  SETTABLEKS R24 R23 K170 ["TargetAnchorPoint"]
  GETIMPORT R24 K147 [Vector2.new]
  LOADN R25 246
  LOADN R26 0
  CALL R24 2 1
  SETTABLEKS R24 R23 K140 ["Offset"]
  JUMP [+28]
  DUPTABLE R23 K217 [{"target", "sourceAnchorPoint", "targetAnchorPoint", "offset", "hideArrow"}]
  LOADK R24 K231 ["propertiesWidgetPanel"]
  SETTABLEKS R24 R23 K100 ["target"]
  GETIMPORT R24 K147 [Vector2.new]
  LOADN R25 1
  LOADN R26 1
  CALL R24 2 1
  SETTABLEKS R24 R23 K215 ["sourceAnchorPoint"]
  GETIMPORT R24 K147 [Vector2.new]
  LOADN R25 0
  LOADN R26 1
  CALL R24 2 1
  SETTABLEKS R24 R23 K174 ["targetAnchorPoint"]
  GETIMPORT R24 K147 [Vector2.new]
  LOADN R25 246
  LOADN R26 0
  CALL R24 2 1
  SETTABLEKS R24 R23 K150 ["offset"]
  LOADB R24 1
  SETTABLEKS R24 R23 K216 ["hideArrow"]
  SETTABLEKS R23 R22 K131 ["callout"]
  LOADK R23 K235 ["Model"]
  SETTABLEKS R23 R22 K132 ["className"]
  DUPTABLE R23 K237 [{"Attributes"}]
  DUPTABLE R24 K239 [{"Speed"}]
  LOADB R25 1
  SETTABLEKS R25 R24 K238 ["Speed"]
  SETTABLEKS R24 R23 K236 ["Attributes"]
  SETTABLEKS R23 R22 K197 ["changes"]
  DUPCLOSURE R23 K240 [PROTO_18]
  CAPTURE VAL R12
  SETTABLEKS R23 R22 K111 ["onSkip"]
  LOADK R23 K232 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R23 R22 K90 ["widgets"]
  DUPTABLE R23 K241 [{"id", "topic", "showNext", "widgets"}]
  LOADK R24 K242 ["save"]
  SETTABLEKS R24 R23 K39 ["id"]
  LOADK R24 K243 ["summary"]
  SETTABLEKS R24 R23 K47 ["topic"]
  LOADB R24 1
  SETTABLEKS R24 R23 K48 ["showNext"]
  LOADK R24 K232 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R24 R23 K90 ["widgets"]
  DUPTABLE R24 K128 [{"id", "topic", "kind", "widgets"}]
  LOADK R25 K244 ["playtest2"]
  SETTABLEKS R25 R24 K39 ["id"]
  LOADK R25 K243 ["summary"]
  SETTABLEKS R25 R24 K47 ["topic"]
  LOADK R25 K119 ["StartPlaytest"]
  SETTABLEKS R25 R24 K58 ["kind"]
  LOADK R25 K232 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R25 R24 K90 ["widgets"]
  DUPTABLE R25 K128 [{"id", "topic", "kind", "widgets"}]
  LOADK R26 K245 ["stopPlaytest2"]
  SETTABLEKS R26 R25 K39 ["id"]
  LOADK R26 K243 ["summary"]
  SETTABLEKS R26 R25 K47 ["topic"]
  LOADK R26 K130 ["StopPlaytest"]
  SETTABLEKS R26 R25 K58 ["kind"]
  LOADK R26 K232 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R26 R25 K90 ["widgets"]
  DUPTABLE R26 K246 [{"id", "topic", "widgets"}]
  LOADK R32 K247 ["complete"]
  SETTABLEKS R32 R26 K39 ["id"]
  LOADK R32 K243 ["summary"]
  SETTABLEKS R32 R26 K47 ["topic"]
  LOADK R32 K232 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R32 R26 K90 ["widgets"]
  SETLIST R15 R16 11 [17]
  SETTABLEKS R15 R14 K42 ["steps"]
  RETURN R14 1
