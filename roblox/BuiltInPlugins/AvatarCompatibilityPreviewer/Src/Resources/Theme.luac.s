MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["Style"]
  GETTABLEKS R4 R3 K10 ["StyleKey"]
  GETTABLEKS R6 R2 K11 ["Util"]
  GETTABLEKS R5 R6 K12 ["StyleModifier"]
  GETTABLEKS R6 R3 K13 ["ComponentSymbols"]
  GETTABLEKS R7 R2 K14 ["UIData"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R7 K15 ["Alert"]
  GETTABLEKS R9 R10 K16 ["style"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R7 K17 ["Button"]
  GETTABLEKS R10 R11 K16 ["style"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R12 R7 K18 ["DropdownMenu"]
  GETTABLEKS R11 R12 K16 ["style"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R7 K19 ["Image"]
  GETTABLEKS R12 R13 K16 ["style"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R14 R7 K20 ["Pane"]
  GETTABLEKS R13 R14 K16 ["style"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R15 R7 K21 ["ScrollingFrame"]
  GETTABLEKS R14 R15 K16 ["style"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R16 R7 K22 ["SelectInput"]
  GETTABLEKS R15 R16 K16 ["style"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R17 R7 K23 ["Separator"]
  GETTABLEKS R16 R17 K16 ["style"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R18 R7 K24 ["SimpleTab"]
  GETTABLEKS R17 R18 K16 ["style"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R19 R7 K25 ["Tooltip"]
  GETTABLEKS R18 R19 K16 ["style"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K26 ["Src"]
  GETTABLEKS R20 R21 K27 ["Flags"]
  GETTABLEKS R19 R20 K28 ["getFFlagAvatarPreviewerAutoSetup"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K26 ["Src"]
  GETTABLEKS R21 R22 K27 ["Flags"]
  GETTABLEKS R20 R21 K29 ["getFFlagAvatarPreviewerEditingTools"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R23 R0 K26 ["Src"]
  GETTABLEKS R22 R23 K27 ["Flags"]
  GETTABLEKS R21 R22 K30 ["getFFlagAvatarPreviewerPickTabsMenu"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETTABLEKS R24 R0 K26 ["Src"]
  GETTABLEKS R23 R24 K27 ["Flags"]
  GETTABLEKS R22 R23 K31 ["getFFlagAvatarPreviewerRerunValidation"]
  CALL R21 1 1
  GETIMPORT R22 K5 [require]
  GETTABLEKS R25 R0 K26 ["Src"]
  GETTABLEKS R24 R25 K27 ["Flags"]
  GETTABLEKS R23 R24 K32 ["getFFlagStudioAvatarAutosetupReportsProgress"]
  CALL R22 1 1
  GETIMPORT R23 K34 [game]
  LOADK R25 K35 ["AvatarPreviewerTabBarTopLine"]
  LOADB R26 0
  NAMECALL R23 R23 K36 ["DefineFastFlag"]
  CALL R23 3 1
  GETIMPORT R24 K5 [require]
  GETTABLEKS R27 R0 K26 ["Src"]
  GETTABLEKS R26 R27 K27 ["Flags"]
  GETTABLEKS R25 R26 K37 ["getFFlagAvatarPreviewerBetterUI"]
  CALL R24 1 1
  GETIMPORT R25 K34 [game]
  LOADK R27 K38 ["DebugAvatarPreviewerDropdownMenuInfiniteMaxHeight"]
  LOADB R28 0
  NAMECALL R25 R25 K36 ["DefineFastFlag"]
  CALL R25 3 1
  NEWTABLE R26 0 0
  MOVE R28 R24
  CALL R28 0 1
  JUMPIFNOT R28 [+2]
  LOADN R27 50
  JUMP [+1]
  LOADN R27 42
  MOVE R29 R24
  CALL R29 0 1
  JUMPIFNOT R29 [+2]
  LOADN R28 45
  JUMP [+1]
  LOADN R28 32
  LOADK R31 K39 ["AddItemButton"]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  GETTABLEKS R29 R6 K39 ["AddItemButton"]
  DUPTABLE R30 K50 [{"Height", "Image", "ImageColor", "ImageColorDisabled", "ImageSize", "PaddingTop", "PaddingLeft", "PaddingRight", "PaddingBottom", "FailureDialogSpacing"}]
  SETTABLEKS R27 R30 K41 ["Height"]
  LOADK R31 K51 ["rbxasset://textures/AvatarCompatibilityPreviewer/add.png"]
  SETTABLEKS R31 R30 K19 ["Image"]
  GETTABLEKS R31 R4 K52 ["TextSecondary"]
  SETTABLEKS R31 R30 K42 ["ImageColor"]
  GETTABLEKS R31 R4 K53 ["TextDisabled"]
  SETTABLEKS R31 R30 K43 ["ImageColorDisabled"]
  LOADN R31 20
  SETTABLEKS R31 R30 K44 ["ImageSize"]
  MOVE R32 R24
  CALL R32 0 1
  JUMPIFNOT R32 [+2]
  LOADN R31 5
  JUMP [+1]
  LOADN R31 3
  SETTABLEKS R31 R30 K45 ["PaddingTop"]
  MOVE R32 R24
  CALL R32 0 1
  JUMPIFNOT R32 [+2]
  LOADN R31 5
  JUMP [+1]
  LOADNIL R31
  SETTABLEKS R31 R30 K46 ["PaddingLeft"]
  MOVE R32 R24
  CALL R32 0 1
  JUMPIFNOT R32 [+2]
  LOADN R31 9
  JUMP [+1]
  LOADNIL R31
  SETTABLEKS R31 R30 K47 ["PaddingRight"]
  MOVE R32 R24
  CALL R32 0 1
  JUMPIFNOT R32 [+2]
  LOADN R31 5
  JUMP [+1]
  LOADN R31 3
  SETTABLEKS R31 R30 K48 ["PaddingBottom"]
  GETIMPORT R31 K56 [UDim.new]
  LOADN R32 0
  LOADN R33 4
  CALL R31 2 1
  SETTABLEKS R31 R30 K49 ["FailureDialogSpacing"]
  SETTABLE R30 R26 R29
  LOADK R31 K57 ["AnimationControllerDisplay"]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  GETTABLEKS R29 R6 K57 ["AnimationControllerDisplay"]
  DUPTABLE R30 K61 [{"Padding", "Position", "Size"}]
  LOADN R31 30
  SETTABLEKS R31 R30 K58 ["Padding"]
  GETIMPORT R31 K63 [UDim2.new]
  LOADN R32 0
  LOADN R33 0
  LOADN R34 1
  LOADN R35 244
  CALL R31 4 1
  SETTABLEKS R31 R30 K59 ["Position"]
  GETIMPORT R31 K63 [UDim2.new]
  LOADN R32 1
  LOADN R33 0
  LOADN R34 0
  LOADN R35 32
  CALL R31 4 1
  SETTABLEKS R31 R30 K60 ["Size"]
  SETTABLE R30 R26 R29
  LOADK R31 K64 ["AnimationPlaybackSlider"]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  GETTABLEKS R29 R6 K64 ["AnimationPlaybackSlider"]
  DUPTABLE R30 K69 [{"PlayImage", "PauseImage", "PlayButtonWidth", "PlayTimeLabelWidth", "Padding"}]
  GETTABLEKS R31 R4 K65 ["PlayImage"]
  SETTABLEKS R31 R30 K65 ["PlayImage"]
  LOADK R31 K70 ["rbxasset://textures/LayeredClothingEditor/Icon_Pause.png"]
  SETTABLEKS R31 R30 K66 ["PauseImage"]
  LOADN R31 20
  SETTABLEKS R31 R30 K67 ["PlayButtonWidth"]
  LOADN R31 60
  SETTABLEKS R31 R30 K68 ["PlayTimeLabelWidth"]
  LOADN R31 12
  SETTABLEKS R31 R30 K58 ["Padding"]
  SETTABLE R30 R26 R29
  LOADK R31 K71 ["AnimationPreview"]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  GETTABLEKS R29 R6 K71 ["AnimationPreview"]
  NEWTABLE R30 4 0
  LOADK R31 K72 [0.5]
  SETTABLEKS R31 R30 K73 ["PausedAnimationAlpha"]
  DUPTABLE R31 K75 [{"FrontRightAngleLerp"}]
  LOADK R32 K76 [0.4]
  SETTABLEKS R32 R31 K74 ["FrontRightAngleLerp"]
  SETTABLEKS R31 R30 K77 ["&BodyPreview"]
  DUPTABLE R31 K80 [{"FieldOfView", "FrontRightAngleLerp", "InitialDistance"}]
  LOADN R32 30
  SETTABLEKS R32 R31 K78 ["FieldOfView"]
  LOADK R32 K81 [0.08]
  SETTABLEKS R32 R31 K74 ["FrontRightAngleLerp"]
  LOADK R32 K82 [2.8]
  SETTABLEKS R32 R31 K79 ["InitialDistance"]
  SETTABLEKS R31 R30 K83 ["&FacePreview"]
  SETTABLE R30 R26 R29
  LOADK R31 K84 ["AssetPalettes"]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  GETTABLEKS R29 R6 K84 ["AssetPalettes"]
  DUPTABLE R30 K87 [{"BackgroundColor", "BackgroundColorHover", "ScrollingFrame", "Size"}]
  GETTABLEKS R31 R4 K88 ["SubBackground2"]
  SETTABLEKS R31 R30 K85 ["BackgroundColor"]
  GETTABLEKS R31 R4 K89 ["ActionHover"]
  SETTABLEKS R31 R30 K86 ["BackgroundColorHover"]
  GETTABLEKS R32 R1 K90 ["Dictionary"]
  GETTABLEKS R31 R32 K91 ["join"]
  MOVE R32 R13
  DUPTABLE R33 K96 [{"BackgroundColor3", "BackgroundTransparency", "Padding", "ScrollBarThickness", "Spacing"}]
  GETTABLEKS R34 R4 K88 ["SubBackground2"]
  SETTABLEKS R34 R33 K92 ["BackgroundColor3"]
  LOADN R34 0
  SETTABLEKS R34 R33 K93 ["BackgroundTransparency"]
  LOADN R34 0
  SETTABLEKS R34 R33 K58 ["Padding"]
  LOADN R34 0
  SETTABLEKS R34 R33 K94 ["ScrollBarThickness"]
  GETIMPORT R34 K56 [UDim.new]
  LOADN R35 0
  LOADN R36 5
  CALL R34 2 1
  SETTABLEKS R34 R33 K95 ["Spacing"]
  CALL R31 2 1
  SETTABLEKS R31 R30 K21 ["ScrollingFrame"]
  GETIMPORT R31 K63 [UDim2.new]
  LOADN R32 1
  LOADN R33 0
  LOADN R34 0
  LOADN R35 24
  CALL R31 4 1
  SETTABLEKS R31 R30 K60 ["Size"]
  SETTABLE R30 R26 R29
  LOADK R31 K97 ["AutoSetupScreen"]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  GETTABLEKS R29 R6 K97 ["AutoSetupScreen"]
  DUPTABLE R30 K102 [{"AlertPaddingHorizontal", "AlertPaddingVertical", "ControlsPosition", "SpinRate"}]
  GETIMPORT R31 K56 [UDim.new]
  LOADN R32 0
  LOADN R33 20
  CALL R31 2 1
  SETTABLEKS R31 R30 K98 ["AlertPaddingHorizontal"]
  GETIMPORT R31 K56 [UDim.new]
  LOADN R32 0
  LOADN R33 8
  CALL R31 2 1
  SETTABLEKS R31 R30 K99 ["AlertPaddingVertical"]
  GETIMPORT R31 K63 [UDim2.new]
  LOADN R32 1
  LOADN R33 240
  LOADN R34 1
  LOADN R35 240
  CALL R31 4 1
  SETTABLEKS R31 R30 K100 ["ControlsPosition"]
  LOADK R31 K103 [-0.25]
  SETTABLEKS R31 R30 K101 ["SpinRate"]
  SETTABLE R30 R26 R29
  LOADK R31 K104 ["AvatarScreen"]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  GETTABLEKS R29 R6 K104 ["AvatarScreen"]
  DUPTABLE R30 K106 [{"AssetPalettes", "Tabs"}]
  DUPTABLE R31 K110 [{"BackgroundColor", "SeparatorColor", "SeparatorWidth", "Width"}]
  GETTABLEKS R32 R4 K88 ["SubBackground2"]
  SETTABLEKS R32 R31 K85 ["BackgroundColor"]
  GETTABLEKS R32 R4 K111 ["SubBackground"]
  SETTABLEKS R32 R31 K107 ["SeparatorColor"]
  MOVE R33 R24
  CALL R33 0 1
  JUMPIFNOT R33 [+2]
  LOADN R32 0
  JUMP [+1]
  LOADN R32 4
  SETTABLEKS R32 R31 K108 ["SeparatorWidth"]
  MOVE R33 R24
  CALL R33 0 1
  JUMPIFNOT R33 [+2]
  LOADN R32 104
  JUMP [+1]
  LOADN R32 122
  SETTABLEKS R32 R31 K109 ["Width"]
  SETTABLEKS R31 R30 K84 ["AssetPalettes"]
  DUPTABLE R31 K113 [{"Height", "VerticalOffset"}]
  LOADN R32 64
  SETTABLEKS R32 R31 K41 ["Height"]
  LOADN R32 252
  SETTABLEKS R32 R31 K112 ["VerticalOffset"]
  SETTABLEKS R31 R30 K105 ["Tabs"]
  SETTABLE R30 R26 R29
  LOADK R31 K114 ["Background"]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  GETTABLEKS R29 R6 K114 ["Background"]
  DUPTABLE R30 K115 [{"Image"}]
  GETTABLEKS R31 R4 K116 ["PreviewerBackgroundImage"]
  SETTABLEKS R31 R30 K19 ["Image"]
  SETTABLE R30 R26 R29
  MOVE R29 R19
  CALL R29 0 1
  JUMPIFNOT R29 [+16]
  LOADK R31 K117 ["BodyPointsTool"]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  GETTABLEKS R29 R6 K117 ["BodyPointsTool"]
  DUPTABLE R30 K120 [{"ProjectionImage", "SymmetricalImage"}]
  GETTABLEKS R31 R4 K121 ["Projection"]
  SETTABLEKS R31 R30 K118 ["ProjectionImage"]
  GETTABLEKS R31 R4 K122 ["Symmetry"]
  SETTABLEKS R31 R30 K119 ["SymmetricalImage"]
  SETTABLE R30 R26 R29
  MOVE R29 R19
  CALL R29 0 1
  JUMPIFNOT R29 [+32]
  LOADK R31 K123 ["CageEditingTool"]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  GETTABLEKS R29 R6 K123 ["CageEditingTool"]
  DUPTABLE R30 K130 [{"FalloffImage", "MirrorToLeftImage", "MirrorToRightImage", "RadiusImage", "ResetChangesImage", "SymmetryImage"}]
  GETTABLEKS R31 R4 K131 ["Falloff"]
  SETTABLEKS R31 R30 K124 ["FalloffImage"]
  GETTABLEKS R31 R4 K132 ["MirrorToLeft"]
  SETTABLEKS R31 R30 K125 ["MirrorToLeftImage"]
  GETTABLEKS R31 R4 K133 ["MirrorToRight"]
  SETTABLEKS R31 R30 K126 ["MirrorToRightImage"]
  GETTABLEKS R31 R4 K134 ["Radius"]
  SETTABLEKS R31 R30 K127 ["RadiusImage"]
  GETTABLEKS R31 R4 K135 ["ResetChanges"]
  SETTABLEKS R31 R30 K128 ["ResetChangesImage"]
  GETTABLEKS R31 R4 K122 ["Symmetry"]
  SETTABLEKS R31 R30 K129 ["SymmetryImage"]
  SETTABLE R30 R26 R29
  LOADK R31 K136 ["Catalog"]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  GETTABLEKS R29 R6 K136 ["Catalog"]
  DUPTABLE R30 K139 [{"ScrollingFrame", "ScrollingFrameHeight", "CellSize"}]
  GETTABLEKS R32 R1 K90 ["Dictionary"]
  GETTABLEKS R31 R32 K91 ["join"]
  MOVE R32 R13
  DUPTABLE R33 K142 [{"BorderColor3", "Padding", "ScrollBarThickness", "VerticalScrollBarInset"}]
  GETTABLEKS R34 R4 K143 ["Border"]
  SETTABLEKS R34 R33 K140 ["BorderColor3"]
  MOVE R35 R24
  CALL R35 0 1
  JUMPIFNOT R35 [+2]
  LOADN R34 0
  JUMP [+1]
  LOADN R34 10
  SETTABLEKS R34 R33 K58 ["Padding"]
  MOVE R35 R24
  CALL R35 0 1
  JUMPIFNOT R35 [+2]
  LOADN R34 4
  JUMP [+1]
  LOADNIL R34
  SETTABLEKS R34 R33 K94 ["ScrollBarThickness"]
  MOVE R35 R24
  CALL R35 0 1
  JUMPIFNOT R35 [+3]
  GETIMPORT R34 K147 [Enum.ScrollBarInset.Always]
  JUMP [+2]
  GETIMPORT R34 K149 [Enum.ScrollBarInset.ScrollBar]
  SETTABLEKS R34 R33 K141 ["VerticalScrollBarInset"]
  CALL R31 2 1
  SETTABLEKS R31 R30 K21 ["ScrollingFrame"]
  GETIMPORT R31 K56 [UDim.new]
  LOADN R32 1
  MINUS R33 R27
  CALL R31 2 1
  SETTABLEKS R31 R30 K137 ["ScrollingFrameHeight"]
  GETIMPORT R31 K151 [UDim2.fromOffset]
  LOADN R32 90
  LOADN R33 90
  CALL R31 2 1
  SETTABLEKS R31 R30 K138 ["CellSize"]
  SETTABLE R30 R26 R29
  LOADK R31 K152 ["CatalogItemButton"]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  GETTABLEKS R29 R6 K152 ["CatalogItemButton"]
  DUPTABLE R30 K158 [{"HoverX", "AccessoryTypeImage", "UserImage", "Padding", "TextLabelPadding", "DEPRECATED_ItemNamePaddingBottom"}]
  DUPTABLE R31 K161 [{"Color", "Image", "AnchorPoint", "Position", "Size"}]
  GETTABLEKS R32 R4 K52 ["TextSecondary"]
  SETTABLEKS R32 R31 K159 ["Color"]
  LOADK R32 K162 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/x_dark.png"]
  SETTABLEKS R32 R31 K19 ["Image"]
  GETIMPORT R32 K164 [Vector2.new]
  LOADN R33 1
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K160 ["AnchorPoint"]
  GETIMPORT R32 K63 [UDim2.new]
  LOADN R33 1
  LOADN R34 252
  LOADN R35 0
  LOADN R36 4
  CALL R32 4 1
  SETTABLEKS R32 R31 K59 ["Position"]
  GETIMPORT R32 K151 [UDim2.fromOffset]
  LOADN R33 13
  LOADN R34 13
  CALL R32 2 1
  SETTABLEKS R32 R31 K60 ["Size"]
  SETTABLEKS R31 R30 K153 ["HoverX"]
  DUPTABLE R31 K167 [{"Color", "AnchorPoint", "Position", "Size", "LayeredImage", "RigidImage"}]
  GETTABLEKS R32 R4 K52 ["TextSecondary"]
  SETTABLEKS R32 R31 K159 ["Color"]
  GETIMPORT R32 K164 [Vector2.new]
  LOADN R33 0
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K160 ["AnchorPoint"]
  GETIMPORT R32 K151 [UDim2.fromOffset]
  LOADN R33 4
  LOADN R34 4
  CALL R32 2 1
  SETTABLEKS R32 R31 K59 ["Position"]
  GETIMPORT R32 K151 [UDim2.fromOffset]
  LOADN R33 13
  LOADN R34 13
  CALL R32 2 1
  SETTABLEKS R32 R31 K60 ["Size"]
  LOADK R32 K168 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/layered@2x.png"]
  SETTABLEKS R32 R31 K165 ["LayeredImage"]
  LOADK R32 K169 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/rigid@2x.png"]
  SETTABLEKS R32 R31 K166 ["RigidImage"]
  SETTABLEKS R31 R30 K154 ["AccessoryTypeImage"]
  DUPTABLE R31 K161 [{"Color", "Image", "AnchorPoint", "Position", "Size"}]
  GETTABLEKS R32 R4 K52 ["TextSecondary"]
  SETTABLEKS R32 R31 K159 ["Color"]
  LOADK R32 K170 ["rbxasset://textures/AvatarCompatibilityPreviewer/user.png"]
  SETTABLEKS R32 R31 K19 ["Image"]
  GETIMPORT R32 K164 [Vector2.new]
  LOADN R33 1
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K160 ["AnchorPoint"]
  GETIMPORT R32 K63 [UDim2.new]
  LOADN R33 1
  LOADN R34 252
  LOADN R35 1
  LOADN R36 236
  CALL R32 4 1
  SETTABLEKS R32 R31 K59 ["Position"]
  GETIMPORT R32 K151 [UDim2.fromOffset]
  LOADN R33 13
  LOADN R34 16
  CALL R32 2 1
  SETTABLEKS R32 R31 K60 ["Size"]
  SETTABLEKS R31 R30 K155 ["UserImage"]
  LOADN R31 4
  SETTABLEKS R31 R30 K58 ["Padding"]
  GETIMPORT R31 K56 [UDim.new]
  LOADN R32 0
  LOADN R33 8
  CALL R31 2 1
  SETTABLEKS R31 R30 K156 ["TextLabelPadding"]
  MOVE R32 R24
  CALL R32 0 1
  JUMPIFNOT R32 [+2]
  LOADNIL R31
  JUMP [+5]
  GETIMPORT R31 K56 [UDim.new]
  LOADN R32 0
  LOADN R33 12
  CALL R31 2 1
  SETTABLEKS R31 R30 K157 ["DEPRECATED_ItemNamePaddingBottom"]
  SETTABLE R30 R26 R29
  LOADK R31 K171 ["ContextualSurveyDialogButton"]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  GETTABLEKS R29 R6 K171 ["ContextualSurveyDialogButton"]
  DUPTABLE R30 K172 [{"Image", "Position", "Size"}]
  GETTABLEKS R31 R4 K173 ["SendFeedback"]
  SETTABLEKS R31 R30 K19 ["Image"]
  GETIMPORT R31 K63 [UDim2.new]
  LOADN R32 0
  LOADN R33 28
  LOADN R34 1
  LOADN R35 196
  CALL R31 4 1
  SETTABLEKS R31 R30 K59 ["Position"]
  GETIMPORT R31 K151 [UDim2.fromOffset]
  LOADN R32 24
  LOADN R33 24
  CALL R31 2 1
  SETTABLEKS R31 R30 K60 ["Size"]
  SETTABLE R30 R26 R29
  MOVE R29 R22
  CALL R29 0 1
  JUMPIFNOT R29 [+50]
  LOADK R31 K174 ["GenerationCard"]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  GETTABLEKS R29 R6 K174 ["GenerationCard"]
  DUPTABLE R30 K185 [{"TitleFont", "PrimaryActionFont", "BackgroundColor", "BackgroundColorHoverDarkerMultiplier", "TextColor", "TextSize", "CornerRadius", "InnerPadding", "MaxWidth", "StrokeColor", "StrokeThickness"}]
  GETIMPORT R31 K188 [Enum.Font.SourceSansBold]
  SETTABLEKS R31 R30 K175 ["TitleFont"]
  GETIMPORT R31 K190 [Enum.Font.SourceSans]
  SETTABLEKS R31 R30 K176 ["PrimaryActionFont"]
  GETTABLEKS R31 R4 K191 ["AlertBackgroundDefault"]
  SETTABLEKS R31 R30 K85 ["BackgroundColor"]
  LOADK R31 K192 [0.15]
  SETTABLEKS R31 R30 K177 ["BackgroundColorHoverDarkerMultiplier"]
  GETTABLEKS R31 R4 K193 ["TextPrimary"]
  SETTABLEKS R31 R30 K178 ["TextColor"]
  LOADN R31 18
  SETTABLEKS R31 R30 K179 ["TextSize"]
  GETIMPORT R31 K56 [UDim.new]
  LOADN R32 0
  LOADN R33 8
  CALL R31 2 1
  SETTABLEKS R31 R30 K180 ["CornerRadius"]
  LOADN R31 12
  SETTABLEKS R31 R30 K181 ["InnerPadding"]
  LOADN R31 244
  SETTABLEKS R31 R30 K182 ["MaxWidth"]
  GETTABLEKS R31 R4 K194 ["OtherDivider"]
  SETTABLEKS R31 R30 K183 ["StrokeColor"]
  LOADN R31 1
  SETTABLEKS R31 R30 K184 ["StrokeThickness"]
  SETTABLE R30 R26 R29
  MOVE R29 R18
  CALL R29 0 1
  JUMPIF R29 [+36]
  LOADK R31 K195 ["DummyPreview"]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  GETTABLEKS R29 R6 K195 ["DummyPreview"]
  DUPTABLE R30 K202 [{"Ambient", "LightColor", "LightDirection", "PanSpeedMultiplier", "PlatformHeight", "PlatformSize"}]
  GETIMPORT R31 K205 [Color3.fromRGB]
  LOADN R32 170
  LOADN R33 185
  LOADN R34 200
  CALL R31 3 1
  SETTABLEKS R31 R30 K196 ["Ambient"]
  GETIMPORT R31 K205 [Color3.fromRGB]
  LOADN R32 242
  LOADN R33 236
  LOADN R34 227
  CALL R31 3 1
  SETTABLEKS R31 R30 K197 ["LightColor"]
  LOADK R31 K206 [{0.5, -1, 0.1}]
  SETTABLEKS R31 R30 K198 ["LightDirection"]
  LOADK R31 K207 [0.25]
  SETTABLEKS R31 R30 K199 ["PanSpeedMultiplier"]
  LOADK R31 K208 [0.2]
  SETTABLEKS R31 R30 K200 ["PlatformHeight"]
  LOADN R31 5
  SETTABLEKS R31 R30 K201 ["PlatformSize"]
  SETTABLE R30 R26 R29
  MOVE R29 R19
  CALL R29 0 1
  JUMPIFNOT R29 [+20]
  LOADK R31 K209 ["EditingTools"]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  GETTABLEKS R29 R6 K209 ["EditingTools"]
  DUPTABLE R30 K213 [{"AttachmentToolImage", "CageEditingToolImage", "ShowClothingImage"}]
  GETTABLEKS R31 R4 K214 ["AttachmentTool"]
  SETTABLEKS R31 R30 K210 ["AttachmentToolImage"]
  GETTABLEKS R31 R4 K215 ["CageTool"]
  SETTABLEKS R31 R30 K211 ["CageEditingToolImage"]
  GETTABLEKS R31 R4 K216 ["ShowClothing"]
  SETTABLEKS R31 R30 K212 ["ShowClothingImage"]
  SETTABLE R30 R26 R29
  LOADK R31 K217 ["EquippedItemsSidebar"]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  GETTABLEKS R29 R6 K217 ["EquippedItemsSidebar"]
  DUPTABLE R30 K224 [{"CellSize", "FrameSizeOffset", "ItemSpacing", "DEPRECATED_PositionOffset", "ScrollingFrameSizeOffset", "ScrollBarThickness", "SidebarSpacing", "Size", "SidebarPadding"}]
  MOVE R32 R24
  CALL R32 0 1
  JUMPIFNOT R32 [+6]
  GETIMPORT R31 K151 [UDim2.fromOffset]
  MOVE R32 R28
  MOVE R33 R28
  CALL R31 2 1
  JUMP [+5]
  GETIMPORT R31 K151 [UDim2.fromOffset]
  LOADN R32 50
  LOADN R33 50
  CALL R31 2 1
  SETTABLEKS R31 R30 K138 ["CellSize"]
  LOADN R31 50
  SETTABLEKS R31 R30 K218 ["FrameSizeOffset"]
  MOVE R32 R24
  CALL R32 0 1
  JUMPIFNOT R32 [+6]
  GETIMPORT R31 K56 [UDim.new]
  LOADN R32 0
  LOADN R33 5
  CALL R31 2 1
  JUMP [+5]
  GETIMPORT R31 K56 [UDim.new]
  LOADN R32 0
  LOADN R33 2
  CALL R31 2 1
  SETTABLEKS R31 R30 K219 ["ItemSpacing"]
  MOVE R32 R24
  CALL R32 0 1
  JUMPIFNOT R32 [+6]
  GETIMPORT R31 K151 [UDim2.fromOffset]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  JUMP [+5]
  GETIMPORT R31 K151 [UDim2.fromOffset]
  LOADN R32 5
  LOADN R33 10
  CALL R31 2 1
  SETTABLEKS R31 R30 K220 ["DEPRECATED_PositionOffset"]
  MOVE R32 R24
  CALL R32 0 1
  JUMPIFNOT R32 [+3]
  LOADN R32 2
  MUL R31 R32 R28
  JUMP [+1]
  LOADN R31 83
  SETTABLEKS R31 R30 K221 ["ScrollingFrameSizeOffset"]
  LOADN R31 4
  SETTABLEKS R31 R30 K94 ["ScrollBarThickness"]
  MOVE R32 R24
  CALL R32 0 1
  JUMPIFNOT R32 [+2]
  LOADN R31 15
  JUMP [+1]
  LOADN R31 10
  SETTABLEKS R31 R30 K222 ["SidebarSpacing"]
  MOVE R32 R24
  CALL R32 0 1
  JUMPIFNOT R32 [+6]
  GETIMPORT R31 K151 [UDim2.fromOffset]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  JUMP [+7]
  GETIMPORT R31 K63 [UDim2.new]
  LOADN R32 0
  LOADN R33 50
  LOADN R34 1
  LOADN R35 236
  CALL R31 4 1
  SETTABLEKS R31 R30 K60 ["Size"]
  LOADN R31 10
  SETTABLEKS R31 R30 K223 ["SidebarPadding"]
  SETTABLE R30 R26 R29
  LOADK R31 K225 ["EquippedItemPreview"]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  GETTABLEKS R29 R6 K225 ["EquippedItemPreview"]
  DUPTABLE R30 K228 [{"HoverX", "CornerRadius", "StrokeColor", "StrokeThickness", "ItemHiddenTransparency", "ItemWornTransparency"}]
  DUPTABLE R31 K229 [{"Image", "AnchorPoint", "Position", "Size"}]
  LOADK R32 K162 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/x_dark.png"]
  SETTABLEKS R32 R31 K19 ["Image"]
  GETIMPORT R32 K164 [Vector2.new]
  LOADN R33 1
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K160 ["AnchorPoint"]
  MOVE R33 R24
  CALL R33 0 1
  JUMPIFNOT R33 [+8]
  GETIMPORT R32 K63 [UDim2.new]
  LOADN R33 1
  LOADN R34 254
  LOADN R35 0
  LOADN R36 2
  CALL R32 4 1
  JUMP [+7]
  GETIMPORT R32 K63 [UDim2.new]
  LOADN R33 1
  LOADN R34 252
  LOADN R35 0
  LOADN R36 4
  CALL R32 4 1
  SETTABLEKS R32 R31 K59 ["Position"]
  GETIMPORT R32 K151 [UDim2.fromOffset]
  LOADN R33 13
  LOADN R34 13
  CALL R32 2 1
  SETTABLEKS R32 R31 K60 ["Size"]
  SETTABLEKS R31 R30 K153 ["HoverX"]
  GETIMPORT R31 K56 [UDim.new]
  LOADN R32 0
  LOADN R33 4
  CALL R31 2 1
  SETTABLEKS R31 R30 K180 ["CornerRadius"]
  GETTABLEKS R31 R4 K143 ["Border"]
  SETTABLEKS R31 R30 K183 ["StrokeColor"]
  LOADN R31 1
  SETTABLEKS R31 R30 K184 ["StrokeThickness"]
  LOADK R31 K230 [0.7]
  SETTABLEKS R31 R30 K226 ["ItemHiddenTransparency"]
  LOADN R31 0
  SETTABLEKS R31 R30 K227 ["ItemWornTransparency"]
  SETTABLE R30 R26 R29
  LOADK R31 K231 ["EquippedItemSideMenu"]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  GETTABLEKS R29 R6 K231 ["EquippedItemSideMenu"]
  DUPTABLE R30 K236 [{"DotsBackground", "DotsBackgroundHover", "IconSize", "Margin"}]
  GETTABLEKS R31 R4 K52 ["TextSecondary"]
  SETTABLEKS R31 R30 K232 ["DotsBackground"]
  GETTABLEKS R31 R4 K237 ["TextContrast"]
  SETTABLEKS R31 R30 K233 ["DotsBackgroundHover"]
  LOADN R31 16
  SETTABLEKS R31 R30 K234 ["IconSize"]
  LOADN R31 1
  SETTABLEKS R31 R30 K235 ["Margin"]
  SETTABLE R30 R26 R29
  LOADK R31 K238 ["ImportPage"]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  GETTABLEKS R29 R6 K238 ["ImportPage"]
  DUPTABLE R30 K246 [{"ArrowImage", "ArrowColor", "Avatar", "BackButton", "HeaderHeight", "GridPadding", "SearchBarHeight"}]
  LOADK R31 K247 ["rbxasset://textures/AvatarCompatibilityPreviewer/img_triangle.png"]
  SETTABLEKS R31 R30 K239 ["ArrowImage"]
  GETTABLEKS R31 R4 K193 ["TextPrimary"]
  SETTABLEKS R31 R30 K240 ["ArrowColor"]
  DUPTABLE R31 K252 [{"IconSize", "InnerPadding", "NameFontSize", "NameLines", "Padding", "TitleColor", "PreviewAmbient"}]
  LOADN R32 75
  SETTABLEKS R32 R31 K234 ["IconSize"]
  LOADN R32 2
  SETTABLEKS R32 R31 K181 ["InnerPadding"]
  LOADN R32 16
  SETTABLEKS R32 R31 K248 ["NameFontSize"]
  LOADN R32 2
  SETTABLEKS R32 R31 K249 ["NameLines"]
  LOADN R32 4
  SETTABLEKS R32 R31 K58 ["Padding"]
  GETTABLEKS R32 R4 K253 ["TextLink"]
  SETTABLEKS R32 R31 K250 ["TitleColor"]
  GETIMPORT R32 K254 [Color3.new]
  LOADK R33 K76 [0.4]
  LOADK R34 K76 [0.4]
  LOADK R35 K76 [0.4]
  CALL R32 3 1
  SETTABLEKS R32 R31 K251 ["PreviewAmbient"]
  SETTABLEKS R31 R30 K241 ["Avatar"]
  DUPTABLE R31 K255 [{"Size", "IconSize"}]
  GETIMPORT R32 K151 [UDim2.fromOffset]
  LOADN R33 24
  LOADN R34 24
  CALL R32 2 1
  SETTABLEKS R32 R31 K60 ["Size"]
  LOADN R32 12
  SETTABLEKS R32 R31 K234 ["IconSize"]
  SETTABLEKS R31 R30 K242 ["BackButton"]
  LOADN R31 35
  SETTABLEKS R31 R30 K243 ["HeaderHeight"]
  GETIMPORT R31 K151 [UDim2.fromOffset]
  LOADN R32 5
  LOADN R33 15
  CALL R31 2 1
  SETTABLEKS R31 R30 K244 ["GridPadding"]
  GETIMPORT R31 K56 [UDim.new]
  LOADK R32 K0 ["script"]
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K245 ["SearchBarHeight"]
  SETTABLE R30 R26 R29
  LOADK R31 K1 [script]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  GETTABLEKS R29 R6 K257 ["ItemDataPreviewModel"]
  DUPTABLE R30 K259 [{"InstanceAmbient"}]
  GETIMPORT R31 K254 [Color3.new]
  LOADK R32 K76 [0.4]
  LOADK R33 K76 [0.4]
  LOADK R34 K76 [0.4]
  CALL R31 3 1
  SETTABLEKS R31 R30 K258 ["InstanceAmbient"]
  SETTABLE R30 R26 R29
  LOADK R31 K4 ["require"]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  GETTABLEKS R29 R6 K260 ["ModelPreview"]
  DUPTABLE R30 K262 [{"Ambient", "EnableSky", "LightColor", "LightDirection", "PanSpeedMultiplier", "PlatformHeight", "PlatformSize"}]
  GETIMPORT R31 K205 [Color3.fromRGB]
  LOADN R32 170
  LOADN R33 185
  LOADN R34 200
  CALL R31 3 1
  SETTABLEKS R31 R30 K196 ["Ambient"]
  LOADB R31 1
  SETTABLEKS R31 R30 K261 ["EnableSky"]
  GETIMPORT R31 K205 [Color3.fromRGB]
  LOADN R32 221
  LOADN R33 242
  LOADN R34 242
  CALL R31 3 1
  SETTABLEKS R31 R30 K197 ["LightColor"]
  LOADK R31 K7 ["Cryo"]
  SETTABLEKS R31 R30 K198 ["LightDirection"]
  LOADK R31 K207 [0.25]
  SETTABLEKS R31 R30 K199 ["PanSpeedMultiplier"]
  LOADK R31 K208 [0.2]
  SETTABLEKS R31 R30 K200 ["PlatformHeight"]
  LOADN R31 5
  SETTABLEKS R31 R30 K201 ["PlatformSize"]
  SETTABLE R30 R26 R29
  LOADK R31 K8 ["Framework"]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  GETTABLEKS R29 R6 K264 ["Notice"]
  DUPTABLE R30 K265 [{"BackgroundColor", "CornerRadius", "TextColor", "TextSize", "Padding"}]
  GETTABLEKS R31 R4 K111 ["SubBackground"]
  SETTABLEKS R31 R30 K85 ["BackgroundColor"]
  GETIMPORT R31 K56 [UDim.new]
  LOADN R32 0
  LOADN R33 6
  CALL R31 2 1
  SETTABLEKS R31 R30 K180 ["CornerRadius"]
  GETTABLEKS R31 R4 K193 ["TextPrimary"]
  SETTABLEKS R31 R30 K178 ["TextColor"]
  LOADN R31 20
  SETTABLEKS R31 R30 K179 ["TextSize"]
  DUPTABLE R31 K270 [{"Left", "Right", "Top", "Bottom"}]
  LOADN R32 8
  SETTABLEKS R32 R31 K266 ["Left"]
  LOADN R32 8
  SETTABLEKS R32 R31 K267 ["Right"]
  LOADN R32 4
  SETTABLEKS R32 R31 K268 ["Top"]
  LOADN R32 4
  SETTABLEKS R32 R31 K269 ["Bottom"]
  SETTABLEKS R31 R30 K58 ["Padding"]
  SETTABLE R30 R26 R29
  LOADK R31 K15 ["Alert"]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  MOVE R29 R20
  CALL R29 0 1
  JUMPIFNOT R29 [+34]
  GETTABLEKS R29 R6 K271 ["PickTabMenu"]
  DUPTABLE R30 K272 [{"CornerRadius", "ImageColor", "Padding", "Position", "Size"}]
  GETIMPORT R31 K56 [UDim.new]
  LOADN R32 0
  LOADN R33 6
  CALL R31 2 1
  SETTABLEKS R31 R30 K180 ["CornerRadius"]
  GETTABLEKS R31 R4 K193 ["TextPrimary"]
  SETTABLEKS R31 R30 K42 ["ImageColor"]
  LOADN R31 6
  SETTABLEKS R31 R30 K58 ["Padding"]
  GETIMPORT R31 K63 [UDim2.new]
  LOADN R32 1
  LOADN R33 224
  LOADN R34 0
  LOADN R35 0
  CALL R31 4 1
  SETTABLEKS R31 R30 K59 ["Position"]
  GETIMPORT R31 K151 [UDim2.fromOffset]
  LOADN R32 32
  LOADN R33 32
  CALL R31 2 1
  SETTABLEKS R31 R30 K60 ["Size"]
  SETTABLE R30 R26 R29
  MOVE R29 R18
  CALL R29 0 1
  JUMPIF R29 [+12]
  LOADK R31 K17 ["Button"]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  GETTABLEKS R29 R6 K273 ["PrimaryDummyPreview"]
  DUPTABLE R30 K275 [{"BackgroundImage"}]
  GETTABLEKS R31 R4 K116 ["PreviewerBackgroundImage"]
  SETTABLEKS R31 R30 K274 ["BackgroundImage"]
  SETTABLE R30 R26 R29
  LOADK R31 K20 ["Pane"]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  GETTABLEKS R29 R6 K276 ["ResetCameraButton"]
  DUPTABLE R30 K277 [{"Size", "Spacing", "Image"}]
  GETIMPORT R31 K151 [UDim2.fromOffset]
  MOVE R32 R28
  MOVE R33 R28
  CALL R31 2 1
  SETTABLEKS R31 R30 K60 ["Size"]
  LOADN R31 5
  SETTABLEKS R31 R30 K95 ["Spacing"]
  GETTABLEKS R31 R4 K278 ["ResetCameraImage"]
  SETTABLEKS R31 R30 K19 ["Image"]
  SETTABLE R30 R26 R29
  LOADK R31 K23 ["Separator"]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  GETTABLEKS R29 R6 K279 ["SelectScreen"]
  DUPTABLE R30 K281 [{"ButtonHeight", "Spacing"}]
  LOADN R31 24
  SETTABLEKS R31 R30 K280 ["ButtonHeight"]
  GETIMPORT R31 K56 [UDim.new]
  LOADN R32 0
  LOADN R33 18
  CALL R31 2 1
  SETTABLEKS R31 R30 K95 ["Spacing"]
  SETTABLE R30 R26 R29
  LOADK R31 K26 ["Src"]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  GETTABLEKS R29 R6 K282 ["SimpleSelectScreen"]
  DUPTABLE R30 K288 [{"BackgroundColor", "ImageBackgroundColor", "IconColor", "LineColor", "FontFace", "ImageSize", "Spacing", "LineSize", "ButtonHeight"}]
  GETTABLEKS R31 R4 K289 ["IconBackgroundColor"]
  SETTABLEKS R31 R30 K85 ["BackgroundColor"]
  GETTABLEKS R31 R4 K111 ["SubBackground"]
  SETTABLEKS R31 R30 K283 ["ImageBackgroundColor"]
  GETIMPORT R31 K205 [Color3.fromRGB]
  LOADN R32 248
  LOADN R33 121
  LOADN R34 43
  CALL R31 3 1
  SETTABLEKS R31 R30 K284 ["IconColor"]
  GETTABLEKS R33 R2 K9 ["Style"]
  GETTABLEKS R32 R33 K290 ["Colors"]
  GETTABLEKS R31 R32 K291 ["Gray_Mid"]
  SETTABLEKS R31 R30 K285 ["LineColor"]
  GETIMPORT R31 K292 [Font.new]
  GETIMPORT R33 K294 [Font.fromEnum]
  GETIMPORT R34 K190 [Enum.Font.SourceSans]
  CALL R33 1 1
  GETTABLEKS R32 R33 K295 ["Family"]
  GETIMPORT R33 K298 [Enum.FontWeight.SemiBold]
  CALL R31 2 1
  SETTABLEKS R31 R30 K286 ["FontFace"]
  GETIMPORT R31 K151 [UDim2.fromOffset]
  LOADN R32 50
  LOADN R33 50
  CALL R31 2 1
  SETTABLEKS R31 R30 K44 ["ImageSize"]
  GETIMPORT R31 K56 [UDim.new]
  LOADN R32 0
  LOADN R33 10
  CALL R31 2 1
  SETTABLEKS R31 R30 K95 ["Spacing"]
  GETIMPORT R31 K63 [UDim2.new]
  LOADN R32 0
  LOADN R33 15
  LOADN R34 0
  LOADN R35 1
  CALL R31 4 1
  SETTABLEKS R31 R30 K287 ["LineSize"]
  LOADN R31 32
  SETTABLEKS R31 R30 K280 ["ButtonHeight"]
  SETTABLE R30 R26 R29
  LOADK R31 K43 ["ImageColorDisabled"]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  GETTABLEKS R29 R6 K299 ["SkinPreview"]
  DUPTABLE R30 K305 [{"HoveredBorderColor", "HoveredBorderThickness", "SelectedBorderColor", "SelectedBorderThickness", "DisabledColorToBlend"}]
  GETTABLEKS R31 R4 K306 ["SecondaryStatesHoverOutlineBorder"]
  SETTABLEKS R31 R30 K300 ["HoveredBorderColor"]
  LOADN R31 1
  SETTABLEKS R31 R30 K301 ["HoveredBorderThickness"]
  GETTABLEKS R31 R4 K307 ["PrimaryMain"]
  SETTABLEKS R31 R30 K302 ["SelectedBorderColor"]
  LOADN R31 2
  SETTABLEKS R31 R30 K303 ["SelectedBorderThickness"]
  GETIMPORT R31 K205 [Color3.fromRGB]
  LOADN R32 76
  LOADN R33 76
  LOADN R34 76
  CALL R31 3 1
  SETTABLEKS R31 R30 K304 ["DisabledColorToBlend"]
  SETTABLE R30 R26 R29
  LOADK R31 K52 ["TextSecondary"]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  GETTABLEKS R29 R6 K308 ["StageSelector"]
  DUPTABLE R30 K311 [{"BackgroundColor", "ButtonSelectedBackgroundColor", "ButtonHeight", "IconColor", "IconColorDisabled", "IconSize", "Width"}]
  GETTABLEKS R31 R4 K312 ["MainBackground"]
  SETTABLEKS R31 R30 K85 ["BackgroundColor"]
  GETTABLEKS R31 R4 K313 ["ButtonHover"]
  SETTABLEKS R31 R30 K309 ["ButtonSelectedBackgroundColor"]
  LOADN R31 32
  SETTABLEKS R31 R30 K280 ["ButtonHeight"]
  GETTABLEKS R31 R4 K314 ["MainText"]
  SETTABLEKS R31 R30 K284 ["IconColor"]
  GETTABLEKS R31 R4 K315 ["MainTextDisabled"]
  SETTABLEKS R31 R30 K310 ["IconColorDisabled"]
  LOADN R31 18
  SETTABLEKS R31 R30 K234 ["IconSize"]
  LOADN R31 64
  SETTABLEKS R31 R30 K109 ["Width"]
  SETTABLE R30 R26 R29
  LOADK R31 K60 ["Size"]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  GETTABLEKS R29 R6 K316 ["Stars"]
  DUPTABLE R30 K323 [{"StarColor", "StarSize", "StarFilled", "StarUnfilled", "StarSpacing", "RatingSpacing"}]
  GETTABLEKS R31 R4 K314 ["MainText"]
  SETTABLEKS R31 R30 K317 ["StarColor"]
  GETIMPORT R31 K151 [UDim2.fromOffset]
  LOADN R32 16
  LOADN R33 16
  CALL R31 2 1
  SETTABLEKS R31 R30 K318 ["StarSize"]
  GETTABLEKS R31 R4 K324 ["Star"]
  SETTABLEKS R31 R30 K319 ["StarFilled"]
  GETTABLEKS R31 R4 K320 ["StarUnfilled"]
  SETTABLEKS R31 R30 K320 ["StarUnfilled"]
  LOADN R31 4
  SETTABLEKS R31 R30 K321 ["StarSpacing"]
  LOADN R31 10
  SETTABLEKS R31 R30 K322 ["RatingSpacing"]
  SETTABLE R30 R26 R29
  LOADK R31 K69 [{"PlayImage", "PauseImage", "PlayButtonWidth", "PlayTimeLabelWidth", "Padding"}]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  GETTABLEKS R29 R6 K325 ["SubmitDialog"]
  DUPTABLE R30 K326 [{"Width"}]
  LOADN R31 244
  SETTABLEKS R31 R30 K109 ["Width"]
  SETTABLE R30 R26 R29
  LOADK R31 K71 ["AnimationPreview"]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  GETTABLEKS R29 R6 K327 ["SubmitInner"]
  DUPTABLE R30 K331 [{"CallToActionSpacing", "CheckboxSpacing", "ContentPadding"}]
  GETIMPORT R31 K56 [UDim.new]
  LOADN R32 0
  LOADN R33 18
  CALL R31 2 1
  SETTABLEKS R31 R30 K328 ["CallToActionSpacing"]
  GETIMPORT R31 K56 [UDim.new]
  LOADN R32 0
  LOADN R33 4
  CALL R31 2 1
  SETTABLEKS R31 R30 K329 ["CheckboxSpacing"]
  LOADN R31 40
  SETTABLEKS R31 R30 K330 ["ContentPadding"]
  SETTABLE R30 R26 R29
  LOADK R31 K76 [0.4]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  GETTABLEKS R29 R6 K332 ["Survey"]
  DUPTABLE R30 K335 [{"HeadIndent", "Spacing", "MessageHeight"}]
  LOADN R31 22
  SETTABLEKS R31 R30 K333 ["HeadIndent"]
  LOADN R31 10
  SETTABLEKS R31 R30 K95 ["Spacing"]
  LOADN R31 96
  SETTABLEKS R31 R30 K334 ["MessageHeight"]
  SETTABLE R30 R26 R29
  LOADK R31 K80 [{"FieldOfView", "FrontRightAngleLerp", "InitialDistance"}]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  GETTABLEKS R29 R6 K336 ["SurveyDialog"]
  DUPTABLE R30 K338 [{"Width", "FinishDialogSize"}]
  LOADN R31 184
  SETTABLEKS R31 R30 K109 ["Width"]
  GETIMPORT R31 K164 [Vector2.new]
  LOADN R32 250
  LOADN R33 30
  CALL R31 2 1
  SETTABLEKS R31 R30 K337 ["FinishDialogSize"]
  SETTABLE R30 R26 R29
  LOADK R31 K83 ["&FacePreview"]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  MOVE R29 R20
  CALL R29 0 1
  JUMPIFNOT R29 [+12]
  GETTABLEKS R29 R6 K339 ["TabBar"]
  DUPTABLE R30 K340 [{"BackgroundColor", "BackgroundColorHover"}]
  GETTABLEKS R31 R4 K111 ["SubBackground"]
  SETTABLEKS R31 R30 K85 ["BackgroundColor"]
  GETTABLEKS R31 R4 K89 ["ActionHover"]
  SETTABLEKS R31 R30 K86 ["BackgroundColorHover"]
  SETTABLE R30 R26 R29
  LOADK R31 K85 ["BackgroundColor"]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  GETTABLEKS R29 R6 K341 ["TestingScreen"]
  DUPTABLE R30 K281 [{"ButtonHeight", "Spacing"}]
  LOADN R31 24
  SETTABLEKS R31 R30 K280 ["ButtonHeight"]
  GETIMPORT R31 K56 [UDim.new]
  LOADN R32 0
  LOADN R33 18
  CALL R31 2 1
  SETTABLEKS R31 R30 K95 ["Spacing"]
  SETTABLE R30 R26 R29
  LOADK R31 K86 ["BackgroundColorHover"]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  GETTABLEKS R29 R6 K342 ["ResizeNotice"]
  DUPTABLE R30 K343 [{"BackgroundColor", "Position", "AnchorPoint", "Size"}]
  GETTABLEKS R31 R4 K111 ["SubBackground"]
  SETTABLEKS R31 R30 K85 ["BackgroundColor"]
  GETIMPORT R31 K63 [UDim2.new]
  LOADN R32 0
  LOADN R33 10
  LOADN R34 0
  LOADN R35 60
  CALL R31 4 1
  SETTABLEKS R31 R30 K59 ["Position"]
  GETIMPORT R31 K164 [Vector2.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K160 ["AnchorPoint"]
  GETIMPORT R31 K63 [UDim2.new]
  LOADN R32 1
  MINUS R34 R28
  LOADN R35 50
  SUB R33 R34 R35
  LOADN R34 0
  LOADN R35 0
  CALL R31 4 1
  SETTABLEKS R31 R30 K60 ["Size"]
  SETTABLE R30 R26 R29
  LOADK R31 K89 ["ActionHover"]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  GETTABLEKS R29 R6 K345 ["UGCValidationErrorDialog"]
  DUPTABLE R30 K353 [{"DetailsSpacing", "IconTextSpacing", "TitleDetailsSpacing", "AlertMinContentSize", "TextSize", "WarningColor", "WarningFont", "WarningImage"}]
  LOADN R31 12
  SETTABLEKS R31 R30 K346 ["DetailsSpacing"]
  LOADN R31 4
  SETTABLEKS R31 R30 K347 ["IconTextSpacing"]
  LOADN R31 26
  SETTABLEKS R31 R30 K348 ["TitleDetailsSpacing"]
  GETIMPORT R31 K164 [Vector2.new]
  LOADN R32 244
  LOADN R33 44
  CALL R31 2 1
  SETTABLEKS R31 R30 K349 ["AlertMinContentSize"]
  LOADN R31 18
  SETTABLEKS R31 R30 K179 ["TextSize"]
  GETTABLEKS R31 R4 K354 ["WarningText"]
  SETTABLEKS R31 R30 K350 ["WarningColor"]
  GETIMPORT R31 K356 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R31 R30 K351 ["WarningFont"]
  LOADK R32 K101 ["SpinRate"]
  LOADK R33 K102 [{"AlertPaddingHorizontal", "AlertPaddingVertical", "ControlsPosition", "SpinRate"}]
  CONCAT R31 R32 R33
  SETTABLEKS R31 R30 K352 ["WarningImage"]
  SETTABLE R30 R26 R29
  LOADK R31 K103 [-0.25]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  GETTABLEKS R29 R6 K359 ["UGCValidationNotice"]
  DUPTABLE R30 K361 [{"Position", "Size", "ValidationIconSize", "WarningColor", "WarningImage"}]
  MOVE R32 R24
  CALL R32 0 1
  JUMPIFNOT R32 [+6]
  GETIMPORT R31 K151 [UDim2.fromOffset]
  LOADN R32 10
  LOADN R33 10
  CALL R31 2 1
  JUMP [+5]
  GETIMPORT R31 K151 [UDim2.fromOffset]
  LOADN R32 8
  LOADN R33 252
  CALL R31 2 1
  SETTABLEKS R31 R30 K59 ["Position"]
  MOVE R32 R24
  CALL R32 0 1
  JUMPIFNOT R32 [+10]
  GETIMPORT R31 K63 [UDim2.new]
  LOADN R32 1
  MINUS R34 R28
  LOADN R35 50
  SUB R33 R34 R35
  LOADN R34 0
  LOADN R35 48
  CALL R31 4 1
  JUMP [+9]
  GETIMPORT R31 K63 [UDim2.new]
  LOADN R32 1
  MINUS R34 R28
  LOADN R35 32
  SUB R33 R34 R35
  LOADN R34 0
  LOADN R35 48
  CALL R31 4 1
  SETTABLEKS R31 R30 K60 ["Size"]
  GETIMPORT R31 K151 [UDim2.fromOffset]
  LOADN R32 24
  LOADN R33 24
  CALL R31 2 1
  SETTABLEKS R31 R30 K360 ["ValidationIconSize"]
  GETTABLEKS R31 R4 K354 ["WarningText"]
  SETTABLEKS R31 R30 K350 ["WarningColor"]
  LOADK R32 K101 ["SpinRate"]
  LOADK R33 K102 [{"AlertPaddingHorizontal", "AlertPaddingVertical", "ControlsPosition", "SpinRate"}]
  CONCAT R31 R32 R33
  SETTABLEKS R31 R30 K352 ["WarningImage"]
  SETTABLE R30 R26 R29
  LOADK R31 K107 ["SeparatorColor"]
  NAMECALL R29 R6 K40 ["add"]
  CALL R29 2 0
  DUPTABLE R29 K364 [{"Color", "Position", "Size"}]
  GETIMPORT R30 K254 [Color3.new]
  LOADN R31 1
  LOADN R32 1
  LOADN R33 1
  CALL R30 3 1
  SETTABLEKS R30 R29 K159 ["Color"]
  GETIMPORT R30 K151 [UDim2.fromOffset]
  LOADN R31 4
  LOADN R32 14
  CALL R30 2 1
  SETTABLEKS R30 R29 K59 ["Position"]
  GETIMPORT R30 K151 [UDim2.fromOffset]
  LOADN R31 24
  LOADN R32 24
  CALL R30 2 1
  SETTABLEKS R30 R29 K60 ["Size"]
  GETTABLEKS R30 R6 K363 ["UGCValidationStatusIcon"]
  NEWTABLE R31 4 0
  GETTABLEKS R33 R1 K90 ["Dictionary"]
  GETTABLEKS R32 R33 K91 ["join"]
  MOVE R33 R29
  DUPTABLE R34 K365 [{"Color", "Image"}]
  GETTABLEKS R35 R4 K354 ["WarningText"]
  SETTABLEKS R35 R34 K159 ["Color"]
  LOADK R36 K101 ["SpinRate"]
  LOADK R37 K102 [{"AlertPaddingHorizontal", "AlertPaddingVertical", "ControlsPosition", "SpinRate"}]
  CONCAT R35 R36 R37
  SETTABLEKS R35 R34 K19 ["Image"]
  CALL R32 2 1
  SETTABLEKS R32 R31 K366 ["&Failure"]
  GETTABLEKS R33 R1 K90 ["Dictionary"]
  GETTABLEKS R32 R33 K91 ["join"]
  MOVE R33 R29
  DUPTABLE R34 K115 [{"Image"}]
  GETTABLEKS R35 R4 K367 ["UGCValidationSuccessImage"]
  SETTABLEKS R35 R34 K19 ["Image"]
  CALL R32 2 1
  SETTABLEKS R32 R31 K368 ["&Success"]
  MOVE R32 R21
  CALL R32 0 1
  JUMPIFNOT R32 [+22]
  DUPTABLE R32 K369 [{"Color", "Position", "Size", "Image"}]
  GETTABLEKS R33 R4 K370 ["DimmedText"]
  SETTABLEKS R33 R32 K159 ["Color"]
  GETIMPORT R33 K151 [UDim2.fromOffset]
  LOADN R34 4
  LOADN R35 14
  CALL R33 2 1
  SETTABLEKS R33 R32 K59 ["Position"]
  GETIMPORT R33 K151 [UDim2.fromOffset]
  LOADN R34 20
  LOADN R35 20
  CALL R33 2 1
  SETTABLEKS R33 R32 K60 ["Size"]
  LOADK R33 K115 [{"Image"}]
  SETTABLEKS R33 R32 K19 ["Image"]
  SETTABLEKS R32 R31 K372 ["&InProgress"]
  SETTABLE R31 R26 R30
  LOADK R32 K117 ["BodyPointsTool"]
  NAMECALL R30 R6 K40 ["add"]
  CALL R30 2 0
  GETTABLEKS R30 R6 K373 ["DisambiguationMenu"]
  DUPTABLE R31 K383 [{"MinContentSize", "ConfirmCancelContentSize", "HorizontalSpacing", "VerticalSpacing", "TitleContentsSpacing", "TextSpacing", "DropdownWidth", "AttachmentDropdownWidth", "IconBackground", "IconSize"}]
  GETIMPORT R32 K164 [Vector2.new]
  LOADN R33 244
  LOADN R34 44
  CALL R32 2 1
  SETTABLEKS R32 R31 K374 ["MinContentSize"]
  GETIMPORT R32 K164 [Vector2.new]
  LOADN R33 200
  LOADN R34 150
  CALL R32 2 1
  SETTABLEKS R32 R31 K375 ["ConfirmCancelContentSize"]
  LOADN R32 8
  SETTABLEKS R32 R31 K376 ["HorizontalSpacing"]
  LOADN R32 8
  SETTABLEKS R32 R31 K377 ["VerticalSpacing"]
  LOADN R32 24
  SETTABLEKS R32 R31 K378 ["TitleContentsSpacing"]
  LOADN R32 8
  SETTABLEKS R32 R31 K379 ["TextSpacing"]
  LOADN R32 150
  SETTABLEKS R32 R31 K380 ["DropdownWidth"]
  LOADN R32 120
  SETTABLEKS R32 R31 K381 ["AttachmentDropdownWidth"]
  GETTABLEKS R32 R4 K111 ["SubBackground"]
  SETTABLEKS R32 R31 K382 ["IconBackground"]
  GETIMPORT R32 K151 [UDim2.fromOffset]
  LOADN R33 72
  LOADN R34 72
  CALL R32 2 1
  SETTABLEKS R32 R31 K234 ["IconSize"]
  SETTABLE R31 R26 R30
  LOADK R32 K128 ["ResetChangesImage"]
  NAMECALL R30 R6 K40 ["add"]
  CALL R30 2 0
  GETTABLEKS R30 R6 K384 ["AvatarSizeRuler"]
  DUPTABLE R31 K391 [{"GridSize", "DimTransparency", "MainTransparency", "Padding", "TextSize", "PixelsPerStud", "MajorStep", "RulerColor"}]
  LOADK R32 K136 ["Catalog"]
  SETTABLEKS R32 R31 K385 ["GridSize"]
  LOADK R32 K137 ["ScrollingFrameHeight"]
  SETTABLEKS R32 R31 K386 ["DimTransparency"]
  LOADK R32 K72 [0.5]
  SETTABLEKS R32 R31 K387 ["MainTransparency"]
  LOADN R32 30
  SETTABLEKS R32 R31 K58 ["Padding"]
  LOADN R32 60
  SETTABLEKS R32 R31 K179 ["TextSize"]
  LOADN R32 200
  SETTABLEKS R32 R31 K388 ["PixelsPerStud"]
  LOADN R32 10
  SETTABLEKS R32 R31 K389 ["MajorStep"]
  GETIMPORT R32 K254 [Color3.new]
  LOADN R33 1
  LOADN R34 1
  LOADN R35 1
  CALL R32 3 1
  SETTABLEKS R32 R31 K390 ["RulerColor"]
  SETTABLE R31 R26 R30
  LOADK R32 K138 ["CellSize"]
  NAMECALL R30 R6 K40 ["add"]
  CALL R30 2 0
  GETTABLEKS R30 R6 K394 ["AvatarSizingBoundingBox"]
  DUPTABLE R31 K400 [{"NeutralColor", "ValidColor", "InvalidColor", "ValidTransparency", "NeutralTransparency"}]
  GETIMPORT R32 K254 [Color3.new]
  LOADK R33 K72 [0.5]
  LOADK R34 K72 [0.5]
  LOADK R35 K72 [0.5]
  CALL R32 3 1
  SETTABLEKS R32 R31 K395 ["NeutralColor"]
  GETIMPORT R32 K254 [Color3.new]
  LOADK R33 K72 [0.5]
  LOADN R34 1
  LOADK R35 K72 [0.5]
  CALL R32 3 1
  SETTABLEKS R32 R31 K396 ["ValidColor"]
  GETIMPORT R32 K254 [Color3.new]
  LOADN R33 1
  LOADK R34 K72 [0.5]
  LOADK R35 K72 [0.5]
  CALL R32 3 1
  SETTABLEKS R32 R31 K397 ["InvalidColor"]
  LOADK R32 K0 ["script"]
  SETTABLEKS R32 R31 K398 ["ValidTransparency"]
  LOADK R32 K72 [0.5]
  SETTABLEKS R32 R31 K399 ["NeutralTransparency"]
  SETTABLE R31 R26 R30
  GETTABLEKS R30 R6 K15 ["Alert"]
  GETTABLEKS R32 R1 K90 ["Dictionary"]
  GETTABLEKS R31 R32 K91 ["join"]
  MOVE R32 R8
  NEWTABLE R33 8 0
  GETTABLEKS R35 R1 K90 ["Dictionary"]
  GETTABLEKS R34 R35 K91 ["join"]
  GETTABLEKS R35 R8 K401 ["&Warning"]
  DUPTABLE R36 K404 [{"HorizontalPadding", "TopPadding"}]
  MOVE R38 R24
  CALL R38 0 1
  JUMPIFNOT R38 [+6]
  GETIMPORT R37 K56 [UDim.new]
  LOADN R38 0
  LOADN R39 0
  CALL R37 2 1
  JUMP [+1]
  LOADNIL R37
  SETTABLEKS R37 R36 K402 ["HorizontalPadding"]
  MOVE R38 R24
  CALL R38 0 1
  JUMPIFNOT R38 [+6]
  GETIMPORT R37 K56 [UDim.new]
  LOADN R38 0
  LOADN R39 0
  CALL R37 2 1
  JUMP [+1]
  LOADNIL R37
  SETTABLEKS R37 R36 K403 ["TopPadding"]
  CALL R34 2 1
  SETTABLEKS R34 R33 K401 ["&Warning"]
  GETTABLEKS R35 R1 K90 ["Dictionary"]
  GETTABLEKS R34 R35 K91 ["join"]
  GETTABLEKS R35 R8 K405 ["&Error"]
  DUPTABLE R36 K404 [{"HorizontalPadding", "TopPadding"}]
  MOVE R38 R24
  CALL R38 0 1
  JUMPIFNOT R38 [+6]
  GETIMPORT R37 K56 [UDim.new]
  LOADN R38 0
  LOADN R39 0
  CALL R37 2 1
  JUMP [+1]
  LOADNIL R37
  SETTABLEKS R37 R36 K402 ["HorizontalPadding"]
  MOVE R38 R24
  CALL R38 0 1
  JUMPIFNOT R38 [+6]
  GETIMPORT R37 K56 [UDim.new]
  LOADN R38 0
  LOADN R39 0
  CALL R37 2 1
  JUMP [+1]
  LOADNIL R37
  SETTABLEKS R37 R36 K403 ["TopPadding"]
  CALL R34 2 1
  SETTABLEKS R34 R33 K405 ["&Error"]
  GETTABLEKS R35 R1 K90 ["Dictionary"]
  GETTABLEKS R34 R35 K91 ["join"]
  GETTABLEKS R35 R8 K368 ["&Success"]
  DUPTABLE R36 K404 [{"HorizontalPadding", "TopPadding"}]
  MOVE R38 R24
  CALL R38 0 1
  JUMPIFNOT R38 [+6]
  GETIMPORT R37 K56 [UDim.new]
  LOADN R38 0
  LOADN R39 0
  CALL R37 2 1
  JUMP [+1]
  LOADNIL R37
  SETTABLEKS R37 R36 K402 ["HorizontalPadding"]
  MOVE R38 R24
  CALL R38 0 1
  JUMPIFNOT R38 [+6]
  GETIMPORT R37 K56 [UDim.new]
  LOADN R38 0
  LOADN R39 0
  CALL R37 2 1
  JUMP [+1]
  LOADNIL R37
  SETTABLEKS R37 R36 K403 ["TopPadding"]
  CALL R34 2 1
  SETTABLEKS R34 R33 K368 ["&Success"]
  GETTABLEKS R35 R1 K90 ["Dictionary"]
  GETTABLEKS R34 R35 K91 ["join"]
  GETTABLEKS R35 R8 K406 ["&Info"]
  DUPTABLE R36 K404 [{"HorizontalPadding", "TopPadding"}]
  MOVE R38 R24
  CALL R38 0 1
  JUMPIFNOT R38 [+6]
  GETIMPORT R37 K56 [UDim.new]
  LOADN R38 0
  LOADN R39 0
  CALL R37 2 1
  JUMP [+1]
  LOADNIL R37
  SETTABLEKS R37 R36 K402 ["HorizontalPadding"]
  MOVE R38 R24
  CALL R38 0 1
  JUMPIFNOT R38 [+6]
  GETIMPORT R37 K56 [UDim.new]
  LOADN R38 0
  LOADN R39 0
  CALL R37 2 1
  JUMP [+1]
  LOADNIL R37
  SETTABLEKS R37 R36 K403 ["TopPadding"]
  CALL R34 2 1
  SETTABLEKS R34 R33 K406 ["&Info"]
  GETTABLEKS R35 R1 K90 ["Dictionary"]
  GETTABLEKS R34 R35 K91 ["join"]
  GETTABLEKS R35 R8 K401 ["&Warning"]
  DUPTABLE R36 K407 [{"HorizontalPadding", "TopPadding", "MaxWidth"}]
  MOVE R38 R24
  CALL R38 0 1
  JUMPIFNOT R38 [+6]
  GETIMPORT R37 K56 [UDim.new]
  LOADN R38 0
  LOADN R39 0
  CALL R37 2 1
  JUMP [+1]
  LOADNIL R37
  SETTABLEKS R37 R36 K402 ["HorizontalPadding"]
  MOVE R38 R24
  CALL R38 0 1
  JUMPIFNOT R38 [+6]
  GETIMPORT R37 K56 [UDim.new]
  LOADN R38 0
  LOADN R39 0
  CALL R37 2 1
  JUMP [+1]
  LOADNIL R37
  SETTABLEKS R37 R36 K403 ["TopPadding"]
  LOADN R37 132
  SETTABLEKS R37 R36 K182 ["MaxWidth"]
  CALL R34 2 1
  SETTABLEKS R34 R33 K408 ["&WarningLong"]
  CALL R31 2 1
  SETTABLE R31 R26 R30
  MOVE R30 R19
  CALL R30 0 1
  JUMPIF R30 [+3]
  MOVE R30 R24
  CALL R30 0 1
  JUMPIFNOT R30 [+65]
  GETTABLEKS R30 R6 K17 ["Button"]
  GETTABLEKS R32 R1 K90 ["Dictionary"]
  GETTABLEKS R31 R32 K91 ["join"]
  MOVE R32 R9
  NEWTABLE R33 1 0
  GETTABLEKS R35 R1 K90 ["Dictionary"]
  GETTABLEKS R34 R35 K91 ["join"]
  GETTABLEKS R35 R9 K409 ["&Round"]
  NEWTABLE R36 2 0
  GETTABLEKS R38 R1 K90 ["Dictionary"]
  GETTABLEKS R37 R38 K91 ["join"]
  GETTABLEKS R38 R9 K410 ["BackgroundStyle"]
  DUPTABLE R39 K412 [{"BorderColor"}]
  GETTABLEKS R40 R4 K413 ["SubText"]
  SETTABLEKS R40 R39 K411 ["BorderColor"]
  CALL R37 2 1
  SETTABLEKS R37 R36 K410 ["BackgroundStyle"]
  GETTABLEKS R37 R5 K414 ["Hover"]
  GETTABLEKS R39 R1 K90 ["Dictionary"]
  GETTABLEKS R38 R39 K91 ["join"]
  GETTABLEKS R40 R5 K414 ["Hover"]
  GETTABLE R39 R9 R40
  DUPTABLE R40 K415 [{"BackgroundStyle"}]
  GETTABLEKS R42 R1 K90 ["Dictionary"]
  GETTABLEKS R41 R42 K91 ["join"]
  GETTABLEKS R44 R5 K414 ["Hover"]
  GETTABLE R43 R9 R44
  GETTABLEKS R42 R43 K410 ["BackgroundStyle"]
  DUPTABLE R43 K412 [{"BorderColor"}]
  GETTABLEKS R44 R4 K413 ["SubText"]
  SETTABLEKS R44 R43 K411 ["BorderColor"]
  CALL R41 2 1
  SETTABLEKS R41 R40 K410 ["BackgroundStyle"]
  CALL R38 2 1
  SETTABLE R38 R36 R37
  CALL R34 2 1
  SETTABLEKS R34 R33 K416 ["&RoundHighlighted"]
  CALL R31 2 1
  SETTABLE R31 R26 R30
  JUMPIFNOT R25 [+36]
  GETTABLEKS R30 R6 K18 ["DropdownMenu"]
  GETTABLEKS R32 R1 K90 ["Dictionary"]
  GETTABLEKS R31 R32 K91 ["join"]
  MOVE R32 R10
  DUPTABLE R33 K418 [{"MaxHeight"}]
  LOADK R34 K163 ["Vector2"]
  SETTABLEKS R34 R33 K417 ["MaxHeight"]
  CALL R31 2 1
  SETTABLE R31 R26 R30
  GETTABLEKS R30 R6 K22 ["SelectInput"]
  GETTABLEKS R32 R1 K90 ["Dictionary"]
  GETTABLEKS R31 R32 K91 ["join"]
  MOVE R32 R14
  DUPTABLE R33 K420 [{"DropdownMenu"}]
  GETTABLEKS R35 R1 K90 ["Dictionary"]
  GETTABLEKS R34 R35 K91 ["join"]
  GETTABLEKS R35 R14 K18 ["DropdownMenu"]
  DUPTABLE R36 K418 [{"MaxHeight"}]
  LOADK R37 K163 ["Vector2"]
  SETTABLEKS R37 R36 K417 ["MaxHeight"]
  CALL R34 2 1
  SETTABLEKS R34 R33 K18 ["DropdownMenu"]
  CALL R31 2 1
  SETTABLE R31 R26 R30
  GETTABLEKS R30 R6 K19 ["Image"]
  GETTABLEKS R32 R1 K90 ["Dictionary"]
  GETTABLEKS R31 R32 K91 ["join"]
  MOVE R32 R11
  NEWTABLE R33 8 0
  DUPTABLE R34 K115 [{"Image"}]
  GETTABLEKS R35 R4 K421 ["Hide"]
  SETTABLEKS R35 R34 K19 ["Image"]
  SETTABLEKS R34 R33 K422 ["&EquippedItemHideIcon"]
  DUPTABLE R34 K115 [{"Image"}]
  GETTABLEKS R35 R4 K423 ["HideHover"]
  SETTABLEKS R35 R34 K19 ["Image"]
  SETTABLEKS R34 R33 K424 ["&EquippedItemHideHoverIcon"]
  DUPTABLE R34 K115 [{"Image"}]
  GETTABLEKS R35 R4 K425 ["HoverMenu"]
  SETTABLEKS R35 R34 K19 ["Image"]
  SETTABLEKS R34 R33 K426 ["&EquippedItemHoverMenuBackground"]
  DUPTABLE R34 K115 [{"Image"}]
  GETTABLEKS R35 R4 K427 ["Unhide"]
  SETTABLEKS R35 R34 K19 ["Image"]
  SETTABLEKS R34 R33 K428 ["&EquippedItemUnhideIcon"]
  DUPTABLE R34 K115 [{"Image"}]
  GETTABLEKS R35 R4 K429 ["UnhideHover"]
  SETTABLEKS R35 R34 K19 ["Image"]
  SETTABLEKS R34 R33 K430 ["&EquippedItemUnhideHoverIcon"]
  DUPTABLE R34 K115 [{"Image"}]
  GETTABLEKS R35 R4 K431 ["HoverMenuDisabled"]
  SETTABLEKS R35 R34 K19 ["Image"]
  SETTABLEKS R34 R33 K432 ["&EquippedItemDisabledBackground"]
  NEWTABLE R34 4 0
  GETTABLEKS R35 R4 K433 ["Dots"]
  SETTABLEKS R35 R34 K19 ["Image"]
  GETTABLEKS R35 R4 K17 ["Button"]
  SETTABLEKS R35 R34 K434 ["ImageColor3"]
  GETTABLEKS R35 R5 K414 ["Hover"]
  DUPTABLE R36 K435 [{"ImageColor3"}]
  GETTABLEKS R37 R4 K436 ["ImageButtonHover"]
  SETTABLEKS R37 R36 K434 ["ImageColor3"]
  SETTABLE R36 R34 R35
  SETTABLEKS R34 R33 K437 ["&EquippedItemDotsIcon"]
  DUPTABLE R34 K438 [{"Image", "Size"}]
  GETTABLEKS R35 R4 K439 ["DotsVertical"]
  SETTABLEKS R35 R34 K19 ["Image"]
  GETIMPORT R35 K151 [UDim2.fromOffset]
  LOADN R36 20
  LOADN R37 20
  CALL R35 2 1
  SETTABLEKS R35 R34 K60 ["Size"]
  SETTABLEKS R34 R33 K440 ["&PickTabMenu"]
  CALL R31 2 1
  SETTABLE R31 R26 R30
  GETTABLEKS R30 R6 K23 ["Separator"]
  GETTABLEKS R32 R1 K90 ["Dictionary"]
  GETTABLEKS R31 R32 K91 ["join"]
  MOVE R32 R15
  NEWTABLE R33 1 0
  DUPTABLE R34 K442 [{"StretchMargin"}]
  LOADN R35 5
  SETTABLEKS R35 R34 K441 ["StretchMargin"]
  SETTABLEKS R34 R33 K443 ["&SelectScreenSeparator"]
  CALL R31 2 1
  SETTABLE R31 R26 R30
  GETTABLEKS R30 R6 K20 ["Pane"]
  GETTABLEKS R32 R1 K90 ["Dictionary"]
  GETTABLEKS R31 R32 K91 ["join"]
  MOVE R32 R12
  NEWTABLE R33 4 0
  NEWTABLE R34 4 0
  GETTABLEKS R35 R4 K17 ["Button"]
  SETTABLEKS R35 R34 K114 ["Background"]
  GETIMPORT R35 K56 [UDim.new]
  LOADN R36 0
  LOADN R37 4
  CALL R35 2 1
  SETTABLEKS R35 R34 K180 ["CornerRadius"]
  GETTABLEKS R35 R5 K414 ["Hover"]
  DUPTABLE R36 K444 [{"Background"}]
  GETTABLEKS R37 R4 K313 ["ButtonHover"]
  SETTABLEKS R37 R36 K114 ["Background"]
  SETTABLE R36 R34 R35
  GETTABLEKS R35 R5 K445 ["Disabled"]
  DUPTABLE R36 K444 [{"Background"}]
  GETTABLEKS R37 R4 K446 ["ButtonPressed"]
  SETTABLEKS R37 R36 K114 ["Background"]
  SETTABLE R36 R34 R35
  SETTABLEKS R34 R33 K447 ["&EquippedItemPreview"]
  DUPTABLE R34 K448 [{"CornerRadius"}]
  GETIMPORT R35 K56 [UDim.new]
  LOADN R36 0
  LOADN R37 4
  CALL R35 2 1
  SETTABLEKS R35 R34 K180 ["CornerRadius"]
  SETTABLEKS R34 R33 K449 ["&EquippedItemPreviewInner"]
  DUPTABLE R34 K444 [{"Background"}]
  GETTABLEKS R35 R4 K450 ["ForegroundMuted"]
  SETTABLEKS R35 R34 K114 ["Background"]
  SETTABLEKS R34 R33 K451 ["&EquippedItemHoverMenu"]
  DUPTABLE R34 K448 [{"CornerRadius"}]
  GETIMPORT R35 K56 [UDim.new]
  LOADN R36 0
  LOADN R37 4
  CALL R35 2 1
  SETTABLEKS R35 R34 K180 ["CornerRadius"]
  SETTABLEKS R34 R33 K452 ["&SkinPreview"]
  CALL R31 2 1
  SETTABLE R31 R26 R30
  GETTABLEKS R30 R6 K24 ["SimpleTab"]
  GETTABLEKS R32 R1 K90 ["Dictionary"]
  GETTABLEKS R31 R32 K91 ["join"]
  MOVE R32 R16
  NEWTABLE R33 2 0
  NEWTABLE R34 8 0
  GETTABLEKS R35 R4 K88 ["SubBackground2"]
  SETTABLEKS R35 R34 K85 ["BackgroundColor"]
  LOADN R35 1
  SETTABLEKS R35 R34 K93 ["BackgroundTransparency"]
  LOADN R35 0
  SETTABLEKS R35 R34 K453 ["BorderSize"]
  DUPTABLE R35 K454 [{"Left", "Top", "Bottom", "Right"}]
  LOADN R36 12
  SETTABLEKS R36 R35 K266 ["Left"]
  LOADN R36 2
  SETTABLEKS R36 R35 K268 ["Top"]
  LOADN R36 0
  SETTABLEKS R36 R35 K269 ["Bottom"]
  LOADN R36 12
  SETTABLEKS R36 R35 K267 ["Right"]
  SETTABLEKS R35 R34 K58 ["Padding"]
  LOADN R35 0
  SETTABLEKS R35 R34 K455 ["TopLineHeight"]
  GETTABLEKS R35 R5 K456 ["Selected"]
  DUPTABLE R36 K457 [{"BackgroundColor", "Font"}]
  GETTABLEKS R37 R4 K88 ["SubBackground2"]
  SETTABLEKS R37 R36 K85 ["BackgroundColor"]
  GETIMPORT R37 K188 [Enum.Font.SourceSansBold]
  SETTABLEKS R37 R36 K186 ["Font"]
  SETTABLE R36 R34 R35
  SETTABLEKS R34 R33 K458 ["&AssetPaletteTab"]
  DUPTABLE R34 K459 [{"BorderSize", "TopLineHeight"}]
  LOADN R35 0
  SETTABLEKS R35 R34 K453 ["BorderSize"]
  JUMPIFNOT R23 [+2]
  LOADN R35 3
  JUMP [+1]
  LOADNIL R35
  SETTABLEKS R35 R34 K455 ["TopLineHeight"]
  SETTABLEKS R34 R33 K460 ["&CategoryTab"]
  CALL R31 2 1
  SETTABLE R31 R26 R30
  GETTABLEKS R30 R6 K25 ["Tooltip"]
  GETTABLEKS R32 R1 K90 ["Dictionary"]
  GETTABLEKS R31 R32 K91 ["join"]
  MOVE R32 R17
  NEWTABLE R33 1 0
  DUPTABLE R34 K462 [{"ShowDelay"}]
  LOADN R35 0
  SETTABLEKS R35 R34 K461 ["ShowDelay"]
  SETTABLEKS R34 R33 K463 ["&NoDelay"]
  CALL R31 2 1
  SETTABLE R31 R26 R30
  RETURN R26 1
