MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Ribbon"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["StudioUri"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K10 ["fromAction"]
  GETTABLEKS R4 R1 K11 ["fromSetting"]
  NEWTABLE R5 0 30
  DUPTABLE R6 K15 [{"Id", "Type", "Action"}]
  LOADK R7 K16 ["Select"]
  SETTABLEKS R7 R6 K12 ["Id"]
  LOADK R7 K17 ["IconButton"]
  SETTABLEKS R7 R6 K13 ["Type"]
  MOVE R7 R3
  LOADK R8 K18 ["BuilderTools"]
  LOADK R9 K16 ["Select"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K14 ["Action"]
  DUPTABLE R7 K15 [{"Id", "Type", "Action"}]
  LOADK R8 K19 ["Move"]
  SETTABLEKS R8 R7 K12 ["Id"]
  LOADK R8 K17 ["IconButton"]
  SETTABLEKS R8 R7 K13 ["Type"]
  MOVE R8 R3
  LOADK R9 K18 ["BuilderTools"]
  LOADK R10 K19 ["Move"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K14 ["Action"]
  DUPTABLE R8 K15 [{"Id", "Type", "Action"}]
  LOADK R9 K20 ["Scale"]
  SETTABLEKS R9 R8 K12 ["Id"]
  LOADK R9 K17 ["IconButton"]
  SETTABLEKS R9 R8 K13 ["Type"]
  MOVE R9 R3
  LOADK R10 K18 ["BuilderTools"]
  LOADK R11 K20 ["Scale"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K14 ["Action"]
  DUPTABLE R9 K15 [{"Id", "Type", "Action"}]
  LOADK R10 K21 ["Rotate"]
  SETTABLEKS R10 R9 K12 ["Id"]
  LOADK R10 K17 ["IconButton"]
  SETTABLEKS R10 R9 K13 ["Type"]
  MOVE R10 R3
  LOADK R11 K18 ["BuilderTools"]
  LOADK R12 K21 ["Rotate"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K14 ["Action"]
  DUPTABLE R10 K15 [{"Id", "Type", "Action"}]
  LOADK R11 K22 ["Transform"]
  SETTABLEKS R11 R10 K12 ["Id"]
  LOADK R11 K17 ["IconButton"]
  SETTABLEKS R11 R10 K13 ["Type"]
  MOVE R11 R3
  LOADK R12 K18 ["BuilderTools"]
  LOADK R13 K22 ["Transform"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K14 ["Action"]
  DUPTABLE R11 K24 [{"Type", "Size"}]
  LOADK R12 K25 ["Separator"]
  SETTABLEKS R12 R11 K13 ["Type"]
  LOADK R12 K26 ["Large"]
  SETTABLEKS R12 R11 K23 ["Size"]
  DUPTABLE R12 K29 [{"Id", "Type", "Setting", "Children"}]
  LOADK R13 K30 ["DraggerMode"]
  SETTABLEKS R13 R12 K12 ["Id"]
  LOADK R13 K31 ["SplitButton"]
  SETTABLEKS R13 R12 K13 ["Type"]
  MOVE R13 R4
  LOADK R14 K18 ["BuilderTools"]
  LOADK R15 K30 ["DraggerMode"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K27 ["Setting"]
  NEWTABLE R13 0 1
  DUPTABLE R14 K33 [{"Type", "Tags", "Children"}]
  LOADK R15 K34 ["Column"]
  SETTABLEKS R15 R14 K13 ["Type"]
  LOADK R15 K35 ["X-ColumnSpace100"]
  SETTABLEKS R15 R14 K32 ["Tags"]
  NEWTABLE R15 0 3
  DUPTABLE R16 K36 [{"Id", "Type", "Setting"}]
  LOADK R17 K30 ["DraggerMode"]
  SETTABLEKS R17 R16 K12 ["Id"]
  LOADK R17 K37 ["SegmentedButton"]
  SETTABLEKS R17 R16 K13 ["Type"]
  MOVE R17 R4
  LOADK R18 K18 ["BuilderTools"]
  LOADK R19 K30 ["DraggerMode"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K27 ["Setting"]
  DUPTABLE R17 K36 [{"Id", "Type", "Setting"}]
  LOADK R18 K38 ["Collisions"]
  SETTABLEKS R18 R17 K12 ["Id"]
  LOADK R18 K39 ["Checkbox"]
  SETTABLEKS R18 R17 K13 ["Type"]
  MOVE R18 R4
  LOADK R19 K18 ["BuilderTools"]
  LOADK R20 K38 ["Collisions"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K27 ["Setting"]
  DUPTABLE R18 K36 [{"Id", "Type", "Setting"}]
  LOADK R19 K40 ["JoinSurfaces"]
  SETTABLEKS R19 R18 K12 ["Id"]
  LOADK R19 K39 ["Checkbox"]
  SETTABLEKS R19 R18 K13 ["Type"]
  MOVE R19 R4
  LOADK R20 K18 ["BuilderTools"]
  LOADK R21 K40 ["JoinSurfaces"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K27 ["Setting"]
  SETLIST R15 R16 3 [1]
  SETTABLEKS R15 R14 K28 ["Children"]
  SETLIST R13 R14 1 [1]
  SETTABLEKS R13 R12 K28 ["Children"]
  DUPTABLE R13 K33 [{"Type", "Tags", "Children"}]
  LOADK R14 K41 ["Row"]
  SETTABLEKS R14 R13 K13 ["Type"]
  LOADK R14 K42 ["X-RowSpace200"]
  SETTABLEKS R14 R13 K32 ["Tags"]
  NEWTABLE R14 0 2
  DUPTABLE R15 K33 [{"Type", "Tags", "Children"}]
  LOADK R16 K34 ["Column"]
  SETTABLEKS R16 R15 K13 ["Type"]
  LOADK R16 K35 ["X-ColumnSpace100"]
  SETTABLEKS R16 R15 K32 ["Tags"]
  NEWTABLE R16 0 2
  DUPTABLE R17 K36 [{"Id", "Type", "Setting"}]
  LOADK R18 K43 ["MoveGrid"]
  SETTABLEKS R18 R17 K12 ["Id"]
  LOADK R18 K39 ["Checkbox"]
  SETTABLEKS R18 R17 K13 ["Type"]
  MOVE R18 R4
  LOADK R19 K18 ["BuilderTools"]
  LOADK R20 K43 ["MoveGrid"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K27 ["Setting"]
  DUPTABLE R18 K36 [{"Id", "Type", "Setting"}]
  LOADK R19 K44 ["RotateGrid"]
  SETTABLEKS R19 R18 K12 ["Id"]
  LOADK R19 K39 ["Checkbox"]
  SETTABLEKS R19 R18 K13 ["Type"]
  MOVE R19 R4
  LOADK R20 K18 ["BuilderTools"]
  LOADK R21 K44 ["RotateGrid"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K27 ["Setting"]
  SETLIST R16 R17 2 [1]
  SETTABLEKS R16 R15 K28 ["Children"]
  DUPTABLE R16 K33 [{"Type", "Tags", "Children"}]
  LOADK R17 K34 ["Column"]
  SETTABLEKS R17 R16 K13 ["Type"]
  LOADK R17 K35 ["X-ColumnSpace100"]
  SETTABLEKS R17 R16 K32 ["Tags"]
  NEWTABLE R17 0 2
  DUPTABLE R18 K36 [{"Id", "Type", "Setting"}]
  LOADK R19 K45 ["MoveGridSize"]
  SETTABLEKS R19 R18 K12 ["Id"]
  LOADK R19 K46 ["Spinbox"]
  SETTABLEKS R19 R18 K13 ["Type"]
  MOVE R19 R4
  LOADK R20 K18 ["BuilderTools"]
  LOADK R21 K45 ["MoveGridSize"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K27 ["Setting"]
  DUPTABLE R19 K36 [{"Id", "Type", "Setting"}]
  LOADK R20 K47 ["RotateGridSize"]
  SETTABLEKS R20 R19 K12 ["Id"]
  LOADK R20 K46 ["Spinbox"]
  SETTABLEKS R20 R19 K13 ["Type"]
  MOVE R20 R4
  LOADK R21 K18 ["BuilderTools"]
  LOADK R22 K47 ["RotateGridSize"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K27 ["Setting"]
  SETLIST R17 R18 2 [1]
  SETTABLEKS R17 R16 K28 ["Children"]
  SETLIST R14 R15 2 [1]
  SETTABLEKS R14 R13 K28 ["Children"]
  DUPTABLE R14 K24 [{"Type", "Size"}]
  LOADK R15 K25 ["Separator"]
  SETTABLEKS R15 R14 K13 ["Type"]
  LOADK R15 K26 ["Large"]
  SETTABLEKS R15 R14 K23 ["Size"]
  DUPTABLE R15 K48 [{"Id", "Type", "Action", "Children"}]
  LOADK R16 K49 ["Pivot"]
  SETTABLEKS R16 R15 K12 ["Id"]
  LOADK R16 K31 ["SplitButton"]
  SETTABLEKS R16 R15 K13 ["Type"]
  MOVE R16 R3
  LOADK R17 K18 ["BuilderTools"]
  LOADK R18 K50 ["EditPivot"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K14 ["Action"]
  NEWTABLE R16 0 1
  DUPTABLE R17 K51 [{"Type", "Children"}]
  LOADK R18 K34 ["Column"]
  SETTABLEKS R18 R17 K13 ["Type"]
  NEWTABLE R18 0 1
  DUPTABLE R19 K36 [{"Id", "Type", "Setting"}]
  LOADK R20 K52 ["PivotSnap"]
  SETTABLEKS R20 R19 K12 ["Id"]
  LOADK R20 K39 ["Checkbox"]
  SETTABLEKS R20 R19 K13 ["Type"]
  MOVE R20 R4
  LOADK R21 K18 ["BuilderTools"]
  LOADK R22 K52 ["PivotSnap"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K27 ["Setting"]
  SETLIST R18 R19 1 [1]
  SETTABLEKS R18 R17 K28 ["Children"]
  SETLIST R16 R17 1 [1]
  SETTABLEKS R16 R15 K28 ["Children"]
  DUPTABLE R16 K15 [{"Id", "Type", "Action"}]
  LOADK R17 K53 ["ResetPivot"]
  SETTABLEKS R17 R16 K12 ["Id"]
  LOADK R17 K17 ["IconButton"]
  SETTABLEKS R17 R16 K13 ["Type"]
  MOVE R17 R3
  LOADK R18 K18 ["BuilderTools"]
  LOADK R19 K53 ["ResetPivot"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K14 ["Action"]
  DUPTABLE R17 K24 [{"Type", "Size"}]
  LOADK R18 K25 ["Separator"]
  SETTABLEKS R18 R17 K13 ["Type"]
  LOADK R18 K26 ["Large"]
  SETTABLEKS R18 R17 K23 ["Size"]
  DUPTABLE R18 K56 [{"Id", "Type", "Setting", "DefaultAction", "ShowSettingOptions"}]
  LOADK R19 K57 ["Part"]
  SETTABLEKS R19 R18 K12 ["Id"]
  LOADK R19 K31 ["SplitButton"]
  SETTABLEKS R19 R18 K13 ["Type"]
  MOVE R19 R4
  LOADK R20 K18 ["BuilderTools"]
  LOADK R21 K58 ["PartShape"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K27 ["Setting"]
  MOVE R19 R3
  LOADK R20 K18 ["BuilderTools"]
  LOADK R21 K59 ["Insert/Block"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K54 ["DefaultAction"]
  LOADB R19 1
  SETTABLEKS R19 R18 K55 ["ShowSettingOptions"]
  DUPTABLE R19 K56 [{"Id", "Type", "Setting", "DefaultAction", "ShowSettingOptions"}]
  LOADK R20 K60 ["Effect"]
  SETTABLEKS R20 R19 K12 ["Id"]
  LOADK R20 K31 ["SplitButton"]
  SETTABLEKS R20 R19 K13 ["Type"]
  MOVE R20 R4
  LOADK R21 K18 ["BuilderTools"]
  LOADK R22 K61 ["EffectType"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K27 ["Setting"]
  MOVE R20 R3
  LOADK R21 K18 ["BuilderTools"]
  LOADK R22 K62 ["Insert/Sparkles"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K54 ["DefaultAction"]
  LOADB R20 1
  SETTABLEKS R20 R19 K55 ["ShowSettingOptions"]
  DUPTABLE R20 K56 [{"Id", "Type", "Setting", "DefaultAction", "ShowSettingOptions"}]
  LOADK R21 K63 ["Constraint"]
  SETTABLEKS R21 R20 K12 ["Id"]
  LOADK R21 K31 ["SplitButton"]
  SETTABLEKS R21 R20 K13 ["Type"]
  MOVE R21 R4
  LOADK R22 K18 ["BuilderTools"]
  LOADK R23 K64 ["ConstraintType"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K27 ["Setting"]
  MOVE R21 R3
  LOADK R22 K18 ["BuilderTools"]
  LOADK R23 K65 ["Insert/ConstraintAlignPosition"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K54 ["DefaultAction"]
  LOADB R21 1
  SETTABLEKS R21 R20 K55 ["ShowSettingOptions"]
  DUPTABLE R21 K24 [{"Type", "Size"}]
  LOADK R22 K25 ["Separator"]
  SETTABLEKS R22 R21 K13 ["Type"]
  LOADK R22 K26 ["Large"]
  SETTABLEKS R22 R21 K23 ["Size"]
  SETLIST R5 R6 16 [1]
  DUPTABLE R6 K15 [{"Id", "Type", "Action"}]
  LOADK R7 K66 ["Material"]
  SETTABLEKS R7 R6 K12 ["Id"]
  LOADK R7 K17 ["IconButton"]
  SETTABLEKS R7 R6 K13 ["Type"]
  MOVE R7 R3
  LOADK R8 K67 ["MaterialManager"]
  LOADK R9 K68 ["Toggle"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K14 ["Action"]
  DUPTABLE R7 K15 [{"Id", "Type", "Action"}]
  LOADK R8 K69 ["Color"]
  SETTABLEKS R8 R7 K12 ["Id"]
  LOADK R8 K17 ["IconButton"]
  SETTABLEKS R8 R7 K13 ["Type"]
  MOVE R8 R3
  LOADK R9 K18 ["BuilderTools"]
  LOADK R10 K70 ["SelectColor"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K14 ["Action"]
  DUPTABLE R8 K56 [{"Id", "Type", "Setting", "DefaultAction", "ShowSettingOptions"}]
  LOADK R9 K71 ["Group"]
  SETTABLEKS R9 R8 K12 ["Id"]
  LOADK R9 K31 ["SplitButton"]
  SETTABLEKS R9 R8 K13 ["Type"]
  MOVE R9 R4
  LOADK R10 K18 ["BuilderTools"]
  LOADK R11 K71 ["Group"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K27 ["Setting"]
  MOVE R9 R3
  LOADK R10 K18 ["BuilderTools"]
  LOADK R11 K72 ["GroupAsModel"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K54 ["DefaultAction"]
  LOADB R9 1
  SETTABLEKS R9 R8 K55 ["ShowSettingOptions"]
  DUPTABLE R9 K74 [{"Id", "Type", "Setting", "DefaultAction", "Children", "FastFlag"}]
  LOADK R10 K75 ["Lock"]
  SETTABLEKS R10 R9 K12 ["Id"]
  LOADK R10 K31 ["SplitButton"]
  SETTABLEKS R10 R9 K13 ["Type"]
  MOVE R10 R4
  LOADK R11 K18 ["BuilderTools"]
  LOADK R12 K76 ["LockMode"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K27 ["Setting"]
  MOVE R10 R3
  LOADK R11 K18 ["BuilderTools"]
  LOADK R12 K75 ["Lock"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K54 ["DefaultAction"]
  NEWTABLE R10 0 1
  DUPTABLE R11 K51 [{"Type", "Children"}]
  LOADK R12 K41 ["Row"]
  SETTABLEKS R12 R11 K13 ["Type"]
  NEWTABLE R12 0 1
  DUPTABLE R13 K78 [{"Id", "Type", "Setting", "ActionOnToggle"}]
  LOADK R14 K76 ["LockMode"]
  SETTABLEKS R14 R13 K12 ["Id"]
  LOADK R14 K79 ["RibbonToggle"]
  SETTABLEKS R14 R13 K13 ["Type"]
  MOVE R14 R4
  LOADK R15 K18 ["BuilderTools"]
  LOADK R16 K76 ["LockMode"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K27 ["Setting"]
  MOVE R14 R3
  LOADK R15 K18 ["BuilderTools"]
  LOADK R16 K80 ["LockTool"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K77 ["ActionOnToggle"]
  SETLIST R12 R13 1 [1]
  SETTABLEKS R12 R11 K28 ["Children"]
  SETLIST R10 R11 1 [1]
  SETTABLEKS R10 R9 K28 ["Children"]
  LOADK R10 K81 ["LuaRibbonAnchorLockModes"]
  SETTABLEKS R10 R9 K73 ["FastFlag"]
  DUPTABLE R10 K82 [{"Id", "Type", "Action", "Children", "FastFlag"}]
  LOADK R11 K75 ["Lock"]
  SETTABLEKS R11 R10 K12 ["Id"]
  LOADK R11 K31 ["SplitButton"]
  SETTABLEKS R11 R10 K13 ["Type"]
  MOVE R11 R3
  LOADK R12 K18 ["BuilderTools"]
  LOADK R13 K75 ["Lock"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K14 ["Action"]
  NEWTABLE R11 0 1
  DUPTABLE R12 K51 [{"Type", "Children"}]
  LOADK R13 K41 ["Row"]
  SETTABLEKS R13 R12 K13 ["Type"]
  NEWTABLE R13 0 1
  DUPTABLE R14 K15 [{"Id", "Type", "Action"}]
  LOADK R15 K76 ["LockMode"]
  SETTABLEKS R15 R14 K12 ["Id"]
  LOADK R15 K79 ["RibbonToggle"]
  SETTABLEKS R15 R14 K13 ["Type"]
  MOVE R15 R3
  LOADK R16 K18 ["BuilderTools"]
  LOADK R17 K76 ["LockMode"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K14 ["Action"]
  SETLIST R13 R14 1 [1]
  SETTABLEKS R13 R12 K28 ["Children"]
  SETLIST R11 R12 1 [1]
  SETTABLEKS R11 R10 K28 ["Children"]
  LOADK R11 K83 ["!LuaRibbonAnchorLockModes"]
  SETTABLEKS R11 R10 K73 ["FastFlag"]
  DUPTABLE R11 K74 [{"Id", "Type", "Setting", "DefaultAction", "Children", "FastFlag"}]
  LOADK R12 K84 ["Anchor"]
  SETTABLEKS R12 R11 K12 ["Id"]
  LOADK R12 K31 ["SplitButton"]
  SETTABLEKS R12 R11 K13 ["Type"]
  MOVE R12 R4
  LOADK R13 K18 ["BuilderTools"]
  LOADK R14 K85 ["AnchorMode"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K27 ["Setting"]
  MOVE R12 R3
  LOADK R13 K18 ["BuilderTools"]
  LOADK R14 K84 ["Anchor"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K54 ["DefaultAction"]
  NEWTABLE R12 0 1
  DUPTABLE R13 K51 [{"Type", "Children"}]
  LOADK R14 K41 ["Row"]
  SETTABLEKS R14 R13 K13 ["Type"]
  NEWTABLE R14 0 1
  DUPTABLE R15 K78 [{"Id", "Type", "Setting", "ActionOnToggle"}]
  LOADK R16 K85 ["AnchorMode"]
  SETTABLEKS R16 R15 K12 ["Id"]
  LOADK R16 K79 ["RibbonToggle"]
  SETTABLEKS R16 R15 K13 ["Type"]
  MOVE R16 R4
  LOADK R17 K18 ["BuilderTools"]
  LOADK R18 K85 ["AnchorMode"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K27 ["Setting"]
  MOVE R16 R3
  LOADK R17 K18 ["BuilderTools"]
  LOADK R18 K86 ["AnchorTool"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K77 ["ActionOnToggle"]
  SETLIST R14 R15 1 [1]
  SETTABLEKS R14 R13 K28 ["Children"]
  SETLIST R12 R13 1 [1]
  SETTABLEKS R12 R11 K28 ["Children"]
  LOADK R12 K81 ["LuaRibbonAnchorLockModes"]
  SETTABLEKS R12 R11 K73 ["FastFlag"]
  DUPTABLE R12 K82 [{"Id", "Type", "Action", "Children", "FastFlag"}]
  LOADK R13 K84 ["Anchor"]
  SETTABLEKS R13 R12 K12 ["Id"]
  LOADK R13 K31 ["SplitButton"]
  SETTABLEKS R13 R12 K13 ["Type"]
  MOVE R13 R3
  LOADK R14 K18 ["BuilderTools"]
  LOADK R15 K84 ["Anchor"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K14 ["Action"]
  NEWTABLE R13 0 1
  DUPTABLE R14 K51 [{"Type", "Children"}]
  LOADK R15 K41 ["Row"]
  SETTABLEKS R15 R14 K13 ["Type"]
  NEWTABLE R15 0 1
  DUPTABLE R16 K15 [{"Id", "Type", "Action"}]
  LOADK R17 K85 ["AnchorMode"]
  SETTABLEKS R17 R16 K12 ["Id"]
  LOADK R17 K79 ["RibbonToggle"]
  SETTABLEKS R17 R16 K13 ["Type"]
  MOVE R17 R3
  LOADK R18 K18 ["BuilderTools"]
  LOADK R19 K85 ["AnchorMode"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K14 ["Action"]
  SETLIST R15 R16 1 [1]
  SETTABLEKS R15 R14 K28 ["Children"]
  SETLIST R13 R14 1 [1]
  SETTABLEKS R13 R12 K28 ["Children"]
  LOADK R13 K83 ["!LuaRibbonAnchorLockModes"]
  SETTABLEKS R13 R12 K73 ["FastFlag"]
  DUPTABLE R13 K24 [{"Type", "Size"}]
  LOADK R14 K25 ["Separator"]
  SETTABLEKS R14 R13 K13 ["Type"]
  LOADK R14 K26 ["Large"]
  SETTABLEKS R14 R13 K23 ["Size"]
  DUPTABLE R14 K15 [{"Id", "Type", "Action"}]
  LOADK R15 K87 ["Align"]
  SETTABLEKS R15 R14 K12 ["Id"]
  LOADK R15 K17 ["IconButton"]
  SETTABLEKS R15 R14 K13 ["Type"]
  MOVE R15 R3
  LOADK R16 K18 ["BuilderTools"]
  LOADK R17 K87 ["Align"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K14 ["Action"]
  DUPTABLE R15 K24 [{"Type", "Size"}]
  LOADK R16 K25 ["Separator"]
  SETTABLEKS R16 R15 K13 ["Type"]
  LOADK R16 K26 ["Large"]
  SETTABLEKS R16 R15 K23 ["Size"]
  DUPTABLE R16 K15 [{"Id", "Type", "Action"}]
  LOADK R17 K88 ["Union"]
  SETTABLEKS R17 R16 K12 ["Id"]
  LOADK R17 K17 ["IconButton"]
  SETTABLEKS R17 R16 K13 ["Type"]
  MOVE R17 R3
  LOADK R18 K18 ["BuilderTools"]
  LOADK R19 K89 ["UnionSelection"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K14 ["Action"]
  DUPTABLE R17 K15 [{"Id", "Type", "Action"}]
  LOADK R18 K90 ["Intersect"]
  SETTABLEKS R18 R17 K12 ["Id"]
  LOADK R18 K17 ["IconButton"]
  SETTABLEKS R18 R17 K13 ["Type"]
  MOVE R18 R3
  LOADK R19 K18 ["BuilderTools"]
  LOADK R20 K91 ["IntersectSelection"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K14 ["Action"]
  DUPTABLE R18 K15 [{"Id", "Type", "Action"}]
  LOADK R19 K92 ["Separate"]
  SETTABLEKS R19 R18 K12 ["Id"]
  LOADK R19 K17 ["IconButton"]
  SETTABLEKS R19 R18 K13 ["Type"]
  MOVE R19 R3
  LOADK R20 K18 ["BuilderTools"]
  LOADK R21 K93 ["SeparateSelection"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K14 ["Action"]
  DUPTABLE R19 K15 [{"Id", "Type", "Action"}]
  LOADK R22 K94 ["Negate"]
  SETTABLEKS R22 R19 K12 ["Id"]
  LOADK R22 K17 ["IconButton"]
  SETTABLEKS R22 R19 K13 ["Type"]
  MOVE R22 R3
  LOADK R23 K18 ["BuilderTools"]
  LOADK R24 K95 ["NegateSelection"]
  CALL R22 2 1
  SETTABLEKS R22 R19 K14 ["Action"]
  SETLIST R5 R6 14 [17]
  RETURN R5 1
