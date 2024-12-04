PROTO_0:
  DUPTABLE R4 K2 [{"key", "source"}]
  MOVE R5 R3
  JUMPIF R5 [+5]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["toString"]
  MOVE R6 R0
  CALL R5 1 1
  SETTABLEKS R5 R4 K0 ["key"]
  DUPTABLE R5 K8 [{"type", "uri", "expectation", "shouldShow"}]
  LOADK R6 K9 ["studioAction"]
  SETTABLEKS R6 R5 K4 ["type"]
  SETTABLEKS R0 R5 K5 ["uri"]
  SETTABLEKS R1 R5 K6 ["expectation"]
  SETTABLEKS R2 R5 K7 ["shouldShow"]
  SETTABLEKS R5 R4 K1 ["source"]
  RETURN R4 1

PROTO_1:
  DUPTABLE R2 K2 [{"key", "source"}]
  SETTABLEKS R0 R2 K0 ["key"]
  DUPTABLE R3 K5 [{"type", "submenuCategories"}]
  LOADK R4 K6 ["submenu"]
  SETTABLEKS R4 R3 K3 ["type"]
  SETTABLEKS R1 R3 K4 ["submenuCategories"]
  SETTABLEKS R3 R2 K1 ["source"]
  RETURN R2 1

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["fromAction"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  NAMECALL R3 R0 K0 ["GetChildren"]
  CALL R3 1 1
  LENGTH R2 R3
  LOADN R3 0
  JUMPIFLT R3 R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_4:
  LOADK R4 K0 ["PackageLink"]
  NAMECALL R2 R0 K1 ["FindFirstChildWhichIsA"]
  CALL R2 2 1
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_5:
  GETUPVAL R3 0
  NAMECALL R1 R0 K0 ["IsA"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_6:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  RETURN R1 1

PROTO_7:
  LOADK R3 K0 ["BasePart"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+5]
  LOADK R4 K2 ["Terrain"]
  NAMECALL R2 R0 K1 ["IsA"]
  CALL R2 2 1
  NOT R1 R2
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ExplorerPlugin"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["SharedFeatures"]
  GETTABLEKS R3 R4 K8 ["ContextMenu"]
  GETTABLEKS R2 R3 K9 ["ContextMenuTypes"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["Explorer"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K10 ["Packages"]
  GETTABLEKS R4 R5 K12 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K13 ["Util"]
  GETTABLEKS R4 R5 K14 ["StudioUri"]
  DUPCLOSURE R5 K15 [PROTO_0]
  CAPTURE VAL R4
  DUPCLOSURE R6 K16 [PROTO_1]
  DUPCLOSURE R7 K17 [PROTO_2]
  CAPTURE VAL R4
  NEWTABLE R8 8 0
  DUPCLOSURE R9 K18 [PROTO_3]
  SETTABLEKS R9 R8 K19 ["hasChildren"]
  DUPCLOSURE R9 K20 [PROTO_4]
  SETTABLEKS R9 R8 K21 ["hasPackageLink"]
  DUPCLOSURE R9 K22 [PROTO_6]
  SETTABLEKS R9 R8 K23 ["createInstanceIsA"]
  DUPCLOSURE R9 K24 [PROTO_7]
  SETTABLEKS R9 R8 K25 ["isAPart"]
  GETTABLEKS R9 R8 K23 ["createInstanceIsA"]
  LOADK R10 K26 ["BasePart"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K27 ["isAPartIncludingTerrain"]
  GETTABLEKS R9 R8 K23 ["createInstanceIsA"]
  LOADK R10 K28 ["PVInstance"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K29 ["isAPVInstance"]
  GETTABLEKS R9 R8 K23 ["createInstanceIsA"]
  LOADK R10 K30 ["LuaSourceContainer"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K31 ["isAScript"]
  GETTABLEKS R9 R8 K23 ["createInstanceIsA"]
  LOADK R10 K32 ["UnionOperation"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K33 ["isAUnion"]
  NEWTABLE R9 0 0
  NEWTABLE R12 0 3
  MOVE R13 R5
  GETTABLEKS R14 R4 K34 ["fromAction"]
  LOADK R15 K35 ["ScriptTools"]
  LOADK R16 K36 ["Open"]
  CALL R14 2 1
  LOADK R15 K37 ["NonServices"]
  GETTABLEKS R16 R8 K31 ["isAScript"]
  CALL R13 3 1
  MOVE R14 R5
  GETTABLEKS R15 R4 K34 ["fromAction"]
  LOADK R16 K35 ["ScriptTools"]
  LOADK R17 K38 ["OpenScriptHistory"]
  CALL R15 2 1
  LOADK R16 K37 ["NonServices"]
  GETTABLEKS R17 R8 K31 ["isAScript"]
  CALL R14 3 1
  MOVE R15 R5
  GETTABLEKS R16 R4 K34 ["fromAction"]
  LOADK R17 K35 ["ScriptTools"]
  LOADK R18 K39 ["ToggleScripts"]
  CALL R16 2 1
  LOADK R17 K37 ["NonServices"]
  GETTABLEKS R18 R8 K31 ["isAScript"]
  CALL R15 3 1
  SETLIST R12 R13 3 [1]
  FASTCALL2 TABLE_INSERT R9 R12 [+4]
  MOVE R11 R9
  GETIMPORT R10 K42 [table.insert]
  CALL R10 2 0
  NEWTABLE R12 0 6
  MOVE R13 R5
  GETTABLEKS R14 R4 K34 ["fromAction"]
  LOADK R15 K43 ["Common"]
  LOADK R16 K44 ["Cut"]
  CALL R14 2 1
  LOADK R15 K37 ["NonServices"]
  CALL R13 2 1
  MOVE R14 R5
  GETTABLEKS R15 R4 K34 ["fromAction"]
  LOADK R16 K43 ["Common"]
  LOADK R17 K45 ["Copy"]
  CALL R15 2 1
  LOADK R16 K37 ["NonServices"]
  CALL R14 2 1
  MOVE R15 R5
  GETTABLEKS R16 R4 K34 ["fromAction"]
  LOADK R17 K43 ["Common"]
  LOADK R18 K46 ["PasteInto"]
  CALL R16 2 1
  LOADK R17 K47 ["All"]
  CALL R15 2 1
  NEWTABLE R17 0 1
  NEWTABLE R18 0 2
  MOVE R19 R5
  GETTABLEKS R20 R4 K34 ["fromAction"]
  LOADK R21 K48 ["BuilderTools"]
  LOADK R22 K49 ["PasteAtOriginalLocation"]
  CALL R20 2 1
  LOADK R21 K47 ["All"]
  CALL R19 2 1
  MOVE R20 R5
  GETTABLEKS R21 R4 K34 ["fromAction"]
  LOADK R22 K48 ["BuilderTools"]
  LOADK R23 K50 ["PasteIntoAtOriginalLocation"]
  CALL R21 2 1
  LOADK R22 K47 ["All"]
  CALL R20 2 1
  SETLIST R18 R19 2 [1]
  SETLIST R17 R18 1 [1]
  DUPTABLE R16 K53 [{"key", "source"}]
  LOADK R18 K54 ["morePasteOptions"]
  SETTABLEKS R18 R16 K51 ["key"]
  DUPTABLE R18 K57 [{"type", "submenuCategories"}]
  LOADK R19 K58 ["submenu"]
  SETTABLEKS R19 R18 K55 ["type"]
  SETTABLEKS R17 R18 K56 ["submenuCategories"]
  SETTABLEKS R18 R16 K52 ["source"]
  MOVE R17 R5
  GETTABLEKS R18 R4 K34 ["fromAction"]
  LOADK R19 K43 ["Common"]
  LOADK R20 K59 ["Duplicate"]
  CALL R18 2 1
  LOADK R19 K37 ["NonServices"]
  CALL R17 2 1
  MOVE R18 R5
  GETTABLEKS R19 R4 K34 ["fromAction"]
  LOADK R20 K43 ["Common"]
  LOADK R21 K60 ["Delete"]
  CALL R19 2 1
  LOADK R20 K37 ["NonServices"]
  CALL R18 2 1
  SETLIST R12 R13 6 [1]
  FASTCALL2 TABLE_INSERT R9 R12 [+4]
  MOVE R11 R9
  GETIMPORT R10 K42 [table.insert]
  CALL R10 2 0
  NEWTABLE R12 0 2
  MOVE R13 R5
  GETTABLEKS R14 R4 K34 ["fromAction"]
  LOADK R15 K61 ["InsertService"]
  LOADK R16 K62 ["ShowServices"]
  CALL R14 2 1
  LOADK R15 K63 ["ServicesAndBlank"]
  CALL R13 2 1
  MOVE R14 R5
  GETTABLEKS R15 R4 K34 ["fromAction"]
  LOADK R16 K61 ["InsertService"]
  LOADK R17 K64 ["HideService"]
  CALL R15 2 1
  LOADK R16 K65 ["Services"]
  CALL R14 2 1
  SETLIST R12 R13 2 [1]
  FASTCALL2 TABLE_INSERT R9 R12 [+4]
  MOVE R11 R9
  GETIMPORT R10 K42 [table.insert]
  CALL R10 2 0
  NEWTABLE R12 0 3
  MOVE R13 R5
  GETTABLEKS R14 R4 K34 ["fromAction"]
  LOADK R15 K48 ["BuilderTools"]
  LOADK R16 K66 ["GroupAsModel"]
  CALL R14 2 1
  LOADK R15 K37 ["NonServices"]
  CALL R13 2 1
  MOVE R14 R5
  GETTABLEKS R15 R4 K34 ["fromAction"]
  LOADK R16 K48 ["BuilderTools"]
  LOADK R17 K67 ["GroupAsFolder"]
  CALL R15 2 1
  LOADK R16 K37 ["NonServices"]
  CALL R14 2 1
  NEWTABLE R16 0 1
  NEWTABLE R17 0 4
  MOVE R18 R5
  GETTABLEKS R19 R4 K34 ["fromAction"]
  LOADK R20 K48 ["BuilderTools"]
  LOADK R21 K68 ["UnionSelection"]
  CALL R19 2 1
  LOADK R20 K37 ["NonServices"]
  GETTABLEKS R21 R8 K25 ["isAPart"]
  CALL R18 3 1
  MOVE R19 R5
  GETTABLEKS R20 R4 K34 ["fromAction"]
  LOADK R21 K48 ["BuilderTools"]
  LOADK R22 K69 ["IntersectSelection"]
  CALL R20 2 1
  LOADK R21 K37 ["NonServices"]
  GETTABLEKS R22 R8 K25 ["isAPart"]
  CALL R19 3 1
  MOVE R20 R5
  GETTABLEKS R21 R4 K34 ["fromAction"]
  LOADK R22 K48 ["BuilderTools"]
  LOADK R23 K70 ["NegateSelection"]
  CALL R21 2 1
  LOADK R22 K37 ["NonServices"]
  GETTABLEKS R23 R8 K25 ["isAPart"]
  CALL R20 3 1
  MOVE R21 R5
  GETTABLEKS R22 R4 K34 ["fromAction"]
  LOADK R23 K48 ["BuilderTools"]
  LOADK R24 K71 ["SeparateSelection"]
  CALL R22 2 1
  LOADK R23 K37 ["NonServices"]
  GETTABLEKS R24 R8 K25 ["isAPart"]
  CALL R21 3 1
  SETLIST R17 R18 4 [1]
  SETLIST R16 R17 1 [1]
  DUPTABLE R15 K53 [{"key", "source"}]
  LOADK R17 K72 ["solidModeling"]
  SETTABLEKS R17 R15 K51 ["key"]
  DUPTABLE R17 K57 [{"type", "submenuCategories"}]
  LOADK R18 K58 ["submenu"]
  SETTABLEKS R18 R17 K55 ["type"]
  SETTABLEKS R16 R17 K56 ["submenuCategories"]
  SETTABLEKS R17 R15 K52 ["source"]
  SETLIST R12 R13 3 [1]
  FASTCALL2 TABLE_INSERT R9 R12 [+4]
  MOVE R11 R9
  GETIMPORT R10 K42 [table.insert]
  CALL R10 2 0
  NEWTABLE R12 0 3
  NEWTABLE R14 0 1
  NEWTABLE R15 0 3
  MOVE R16 R5
  GETTABLEKS R17 R4 K34 ["fromAction"]
  LOADK R18 K48 ["BuilderTools"]
  LOADK R19 K73 ["InsertPart"]
  CALL R17 2 1
  LOADK R18 K47 ["All"]
  CALL R16 2 1
  MOVE R17 R5
  GETTABLEKS R18 R4 K34 ["fromAction"]
  LOADK R19 K48 ["BuilderTools"]
  LOADK R20 K74 ["InsertObject"]
  CALL R18 2 1
  LOADK R19 K47 ["All"]
  CALL R17 2 1
  MOVE R18 R5
  GETTABLEKS R19 R4 K34 ["fromAction"]
  LOADK R20 K48 ["BuilderTools"]
  LOADK R21 K75 ["InsertFromFile"]
  CALL R19 2 1
  LOADK R20 K47 ["All"]
  CALL R18 2 1
  SETLIST R15 R16 3 [1]
  SETLIST R14 R15 1 [1]
  DUPTABLE R13 K53 [{"key", "source"}]
  LOADK R15 K41 ["insert"]
  SETTABLEKS R15 R13 K51 ["key"]
  DUPTABLE R15 K57 [{"type", "submenuCategories"}]
  LOADK R16 K58 ["submenu"]
  SETTABLEKS R16 R15 K55 ["type"]
  SETTABLEKS R14 R15 K56 ["submenuCategories"]
  SETTABLEKS R15 R13 K52 ["source"]
  NEWTABLE R15 0 1
  NEWTABLE R16 0 1
  MOVE R17 R5
  GETTABLEKS R18 R4 K34 ["fromAction"]
  LOADK R19 K11 ["Explorer"]
  LOADK R20 K76 ["ExpandAll"]
  CALL R18 2 1
  LOADK R19 K47 ["All"]
  GETTABLEKS R20 R8 K19 ["hasChildren"]
  GETTABLEKS R24 R2 K77 ["Data"]
  GETTABLEKS R23 R24 K8 ["ContextMenu"]
  GETTABLEKS R22 R23 K78 ["coreItems"]
  GETTABLEKS R21 R22 K79 ["expandAll"]
  CALL R17 4 1
  SETLIST R16 R17 1 [1]
  SETLIST R15 R16 1 [1]
  DUPTABLE R14 K53 [{"key", "source"}]
  LOADK R16 K80 ["hierarchy"]
  SETTABLEKS R16 R14 K51 ["key"]
  DUPTABLE R16 K57 [{"type", "submenuCategories"}]
  LOADK R17 K58 ["submenu"]
  SETTABLEKS R17 R16 K55 ["type"]
  SETTABLEKS R15 R16 K56 ["submenuCategories"]
  SETTABLEKS R16 R14 K52 ["source"]
  MOVE R15 R5
  GETTABLEKS R16 R4 K34 ["fromAction"]
  LOADK R17 K48 ["BuilderTools"]
  LOADK R18 K81 ["ZoomExtents"]
  CALL R16 2 1
  LOADK R17 K37 ["NonServices"]
  GETTABLEKS R18 R8 K27 ["isAPartIncludingTerrain"]
  CALL R15 3 1
  SETLIST R12 R13 3 [1]
  FASTCALL2 TABLE_INSERT R9 R12 [+4]
  MOVE R11 R9
  GETIMPORT R10 K42 [table.insert]
  CALL R10 2 0
  NEWTABLE R12 0 2
  MOVE R13 R5
  GETTABLEKS R14 R4 K34 ["fromAction"]
  LOADK R15 K82 ["PackageTools"]
  LOADK R16 K83 ["PublishPackage"]
  CALL R14 2 1
  LOADK R15 K37 ["NonServices"]
  CALL R13 2 1
  NEWTABLE R15 0 1
  NEWTABLE R16 0 3
  MOVE R17 R5
  GETTABLEKS R18 R4 K34 ["fromAction"]
  LOADK R19 K82 ["PackageTools"]
  LOADK R20 K84 ["MassUpdate"]
  CALL R18 2 1
  LOADK R19 K37 ["NonServices"]
  GETTABLEKS R20 R8 K21 ["hasPackageLink"]
  CALL R17 3 1
  MOVE R18 R5
  GETTABLEKS R19 R4 K34 ["fromAction"]
  LOADK R20 K82 ["PackageTools"]
  LOADK R21 K85 ["ShowPackagesDiff"]
  CALL R19 2 1
  LOADK R20 K37 ["NonServices"]
  GETTABLEKS R21 R8 K21 ["hasPackageLink"]
  CALL R18 3 1
  MOVE R19 R5
  GETTABLEKS R20 R4 K34 ["fromAction"]
  LOADK R21 K82 ["PackageTools"]
  LOADK R22 K86 ["PackageDetails"]
  CALL R20 2 1
  LOADK R21 K37 ["NonServices"]
  GETTABLEKS R22 R8 K21 ["hasPackageLink"]
  CALL R19 3 1
  SETLIST R16 R17 3 [1]
  SETLIST R15 R16 1 [1]
  DUPTABLE R14 K53 [{"key", "source"}]
  LOADK R16 K87 ["morePackageOptions"]
  SETTABLEKS R16 R14 K51 ["key"]
  DUPTABLE R16 K57 [{"type", "submenuCategories"}]
  LOADK R17 K58 ["submenu"]
  SETTABLEKS R17 R16 K55 ["type"]
  SETTABLEKS R15 R16 K56 ["submenuCategories"]
  SETTABLEKS R16 R14 K52 ["source"]
  SETLIST R12 R13 2 [1]
  FASTCALL2 TABLE_INSERT R9 R12 [+4]
  MOVE R11 R9
  GETIMPORT R10 K42 [table.insert]
  CALL R10 2 0
  NEWTABLE R12 0 2
  MOVE R13 R5
  GETTABLEKS R14 R4 K34 ["fromAction"]
  LOADK R15 K82 ["PackageTools"]
  LOADK R16 K88 ["DEPRECATED_ConvertToPackage"]
  CALL R14 2 1
  LOADK R15 K37 ["NonServices"]
  CALL R13 2 1
  NEWTABLE R15 0 1
  NEWTABLE R16 0 5
  MOVE R17 R5
  GETTABLEKS R18 R4 K34 ["fromAction"]
  LOADK R19 K89 ["Export"]
  LOADK R20 K90 ["PublishSelectionToRoblox"]
  CALL R18 2 1
  LOADK R19 K37 ["NonServices"]
  CALL R17 2 1
  MOVE R18 R5
  GETTABLEKS R19 R4 K34 ["fromAction"]
  LOADK R20 K89 ["Export"]
  LOADK R21 K91 ["SaveSelectionToFile"]
  CALL R19 2 1
  LOADK R20 K47 ["All"]
  CALL R18 2 1
  MOVE R19 R5
  GETTABLEKS R20 R4 K34 ["fromAction"]
  LOADK R21 K92 ["PluginManagement"]
  LOADK R22 K93 ["SaveAsLocalPlugin"]
  CALL R20 2 1
  LOADK R21 K47 ["All"]
  GETTABLEKS R22 R8 K31 ["isAScript"]
  CALL R19 3 1
  MOVE R20 R5
  GETTABLEKS R21 R4 K34 ["fromAction"]
  LOADK R22 K92 ["PluginManagement"]
  LOADK R23 K94 ["PublishToRoblox"]
  CALL R21 2 1
  LOADK R22 K47 ["All"]
  CALL R20 2 1
  MOVE R21 R5
  GETTABLEKS R22 R4 K34 ["fromAction"]
  LOADK R23 K89 ["Export"]
  LOADK R24 K95 ["ExportSelection"]
  CALL R22 2 1
  LOADK R23 K47 ["All"]
  CALL R21 2 1
  SETLIST R16 R17 5 [1]
  SETLIST R15 R16 1 [1]
  DUPTABLE R14 K53 [{"key", "source"}]
  LOADK R16 K96 ["saveAndExport"]
  SETTABLEKS R16 R14 K51 ["key"]
  DUPTABLE R16 K57 [{"type", "submenuCategories"}]
  LOADK R17 K58 ["submenu"]
  SETTABLEKS R17 R16 K55 ["type"]
  SETTABLEKS R15 R16 K56 ["submenuCategories"]
  SETTABLEKS R16 R14 K52 ["source"]
  SETLIST R12 R13 2 [1]
  FASTCALL2 TABLE_INSERT R9 R12 [+4]
  MOVE R11 R9
  GETIMPORT R10 K42 [table.insert]
  CALL R10 2 0
  NEWTABLE R12 0 1
  MOVE R13 R5
  GETTABLEKS R14 R4 K34 ["fromAction"]
  LOADK R15 K43 ["Common"]
  LOADK R16 K97 ["Help"]
  CALL R14 2 1
  LOADK R15 K47 ["All"]
  CALL R13 2 1
  SETLIST R12 R13 1 [1]
  FASTCALL2 TABLE_INSERT R9 R12 [+4]
  MOVE R11 R9
  GETIMPORT R10 K42 [table.insert]
  CALL R10 2 0
  RETURN R9 1
