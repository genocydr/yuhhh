MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Ribbon"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleSheet"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["SharedFlags"]
  GETTABLEKS R4 R5 K12 ["getFFlagAddPlayerIcon"]
  CALL R3 1 1
  CALL R3 0 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["SharedFlags"]
  GETTABLEKS R5 R6 K13 ["getFFlagAddTestModeDropDown"]
  CALL R4 1 1
  CALL R4 0 1
  NEWTABLE R5 128 0
  GETIMPORT R6 K16 [Vector2.new]
  LOADK R7 K17 [0.5]
  LOADK R8 K17 [0.5]
  CALL R6 2 1
  SETTABLEKS R6 R5 K18 ["AnchorCenter"]
  LOADN R6 0
  SETTABLEKS R6 R5 K19 ["BorderNone"]
  LOADN R6 1
  SETTABLEKS R6 R5 K20 ["BorderMedium"]
  GETIMPORT R6 K23 [UDim2.fromOffset]
  LOADN R7 24
  LOADN R8 24
  CALL R6 2 1
  SETTABLEKS R6 R5 K24 ["AvatarXS"]
  GETIMPORT R6 K23 [UDim2.fromOffset]
  LOADN R7 16
  LOADN R8 16
  CALL R6 2 1
  SETTABLEKS R6 R5 K25 ["IconSmall"]
  GETIMPORT R6 K23 [UDim2.fromOffset]
  LOADN R7 24
  LOADN R8 24
  CALL R6 2 1
  SETTABLEKS R6 R5 K26 ["IconLarge"]
  GETIMPORT R6 K28 [UDim2.fromScale]
  LOADK R7 K17 [0.5]
  LOADK R8 K17 [0.5]
  CALL R6 2 1
  SETTABLEKS R6 R5 K29 ["PositionCenter"]
  LOADN R6 1
  SETTABLEKS R6 R5 K30 ["BackgroundTransparent"]
  LOADN R6 0
  SETTABLEKS R6 R5 K31 ["BackgroundNonTransparent"]
  LOADK R6 K17 [0.5]
  SETTABLEKS R6 R5 K32 ["HalfTransparent"]
  LOADK R6 K33 [0.62]
  SETTABLEKS R6 R5 K34 ["IconDisabled"]
  LOADK R6 K35 [0.4]
  SETTABLEKS R6 R5 K36 ["IconMuted"]
  GETIMPORT R6 K38 [UDim.new]
  LOADN R7 0
  LOADN R8 4
  CALL R6 2 1
  SETTABLEKS R6 R5 K39 ["GlobalRadiusXSmall"]
  GETIMPORT R6 K38 [UDim.new]
  LOADN R7 0
  LOADN R8 6
  CALL R6 2 1
  SETTABLEKS R6 R5 K40 ["GlobalRadiusSmall"]
  GETIMPORT R6 K38 [UDim.new]
  LOADN R7 0
  LOADN R8 8
  CALL R6 2 1
  SETTABLEKS R6 R5 K41 ["GlobalRadiusMedium"]
  GETIMPORT R6 K38 [UDim.new]
  LOADN R7 0
  LOADN R8 100
  CALL R6 2 1
  SETTABLEKS R6 R5 K42 ["GlobalRadiusCircle"]
  GETIMPORT R6 K38 [UDim.new]
  LOADN R7 0
  LOADN R8 2
  CALL R6 2 1
  SETTABLEKS R6 R5 K43 ["GlobalSpace25"]
  GETIMPORT R6 K38 [UDim.new]
  LOADN R7 0
  LOADN R8 4
  CALL R6 2 1
  SETTABLEKS R6 R5 K44 ["GlobalSpace50"]
  GETIMPORT R6 K38 [UDim.new]
  LOADN R7 0
  LOADN R8 6
  CALL R6 2 1
  SETTABLEKS R6 R5 K45 ["GlobalSpace75"]
  GETIMPORT R6 K38 [UDim.new]
  LOADN R7 0
  LOADN R8 8
  CALL R6 2 1
  SETTABLEKS R6 R5 K46 ["GlobalSpace100"]
  GETIMPORT R6 K38 [UDim.new]
  LOADN R7 0
  LOADN R8 12
  CALL R6 2 1
  SETTABLEKS R6 R5 K47 ["GlobalSpace150"]
  GETIMPORT R6 K38 [UDim.new]
  LOADN R7 0
  LOADN R8 16
  CALL R6 2 1
  SETTABLEKS R6 R5 K48 ["GlobalSpace200"]
  GETIMPORT R6 K38 [UDim.new]
  LOADN R7 0
  LOADN R8 20
  CALL R6 2 1
  SETTABLEKS R6 R5 K49 ["GlobalSpace250"]
  GETIMPORT R6 K38 [UDim.new]
  LOADN R7 0
  LOADN R8 28
  CALL R6 2 1
  SETTABLEKS R6 R5 K50 ["GlobalSpace350"]
  LOADN R6 10
  SETTABLEKS R6 R5 K51 ["FontSize25"]
  LOADN R6 12
  SETTABLEKS R6 R5 K52 ["FontSize50"]
  LOADN R6 14
  SETTABLEKS R6 R5 K53 ["FontSize75"]
  LOADN R6 16
  SETTABLEKS R6 R5 K54 ["FontSize100"]
  LOADN R6 18
  SETTABLEKS R6 R5 K55 ["FontSize150"]
  LOADN R6 20
  SETTABLEKS R6 R5 K56 ["FontSize200"]
  LOADN R6 24
  SETTABLEKS R6 R5 K57 ["FontSize300"]
  GETIMPORT R6 K61 [Enum.Font.SourceSans]
  SETTABLEKS R6 R5 K62 ["FontWeight400"]
  GETIMPORT R6 K64 [Enum.Font.SourceSansBold]
  SETTABLEKS R6 R5 K65 ["FontWeight700"]
  GETIMPORT R6 K67 [ColorSequence.new]
  GETIMPORT R7 K70 [Color3.fromHex]
  LOADK R8 K71 ["#FFFFFF"]
  CALL R7 1 -1
  CALL R6 -1 1
  SETTABLEKS R6 R5 K72 ["SemanticColorStateLayerPressGradient"]
  LOADN R6 45
  SETTABLEKS R6 R5 K73 ["SemanticColorStateLayerPressGradientRotation"]
  GETIMPORT R6 K75 [NumberSequence.new]
  NEWTABLE R7 0 3
  GETIMPORT R8 K77 [NumberSequenceKeypoint.new]
  LOADN R9 0
  LOADN R10 1
  CALL R8 2 1
  GETIMPORT R9 K77 [NumberSequenceKeypoint.new]
  LOADK R10 K17 [0.5]
  LOADN R11 1
  CALL R9 2 1
  GETIMPORT R10 K77 [NumberSequenceKeypoint.new]
  LOADN R11 1
  LOADK R12 K78 [0.84]
  CALL R10 2 -1
  SETLIST R7 R8 -1 [1]
  CALL R6 1 1
  SETTABLEKS R6 R5 K79 ["SemanticColorStateLayerPressGradientTransparency"]
  GETIMPORT R6 K67 [ColorSequence.new]
  GETIMPORT R7 K70 [Color3.fromHex]
  LOADK R8 K71 ["#FFFFFF"]
  CALL R7 1 -1
  CALL R6 -1 1
  SETTABLEKS R6 R5 K80 ["SemanticColorStateLayerHoverGradient"]
  LOADN R6 45
  SETTABLEKS R6 R5 K81 ["SemanticColorStateLayerHoverGradientRotation"]
  GETIMPORT R6 K75 [NumberSequence.new]
  NEWTABLE R7 0 3
  GETIMPORT R8 K77 [NumberSequenceKeypoint.new]
  LOADN R9 0
  LOADN R10 1
  CALL R8 2 1
  GETIMPORT R9 K77 [NumberSequenceKeypoint.new]
  LOADK R10 K17 [0.5]
  LOADN R11 1
  CALL R9 2 1
  GETIMPORT R10 K77 [NumberSequenceKeypoint.new]
  LOADN R11 1
  LOADK R12 K82 [0.92]
  CALL R10 2 -1
  SETLIST R7 R8 -1 [1]
  CALL R6 1 1
  SETTABLEKS R6 R5 K83 ["SemanticColorStateLayerHoverGradientTransparency"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K84 ["#F9F9F9"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K85 ["SemanticColorActionPrimaryFill"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K86 ["#2B2D33"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K87 ["SemanticColorComponentMediaFill"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K88 ["#696A6D"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K89 ["SemanticColorContentDisabled"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K90 ["#BBBCBE"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K91 ["SemanticColorContentMuted"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K84 ["#F9F9F9"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K92 ["SemanticColorContentStandard"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K93 ["#111216"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K94 ["SemanticColorContentStandardInverse"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K71 ["#FFFFFF"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K95 ["SemanticColorContentStaticLight"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K96 ["#BBC2D1"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K97 ["SemanticColorComponentInputFill"]
  LOADK R6 K98 [0.88]
  SETTABLEKS R6 R5 K99 ["SemanticColorComponentInputFillTransparency"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K96 ["#BBC2D1"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K100 ["SemanticColorComponentInputHover"]
  LOADK R6 K78 [0.84]
  SETTABLEKS R6 R5 K101 ["SemanticColorComponentInputHoverTransparency"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K71 ["#FFFFFF"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K102 ["SemanticColorDivider"]
  LOADK R6 K98 [0.88]
  SETTABLEKS R6 R5 K103 ["SemanticColorDividerTransparency"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K104 ["#3C64FA"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K105 ["SemanticColorFocusBorderPrimaryBrand"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K96 ["#BBC2D1"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K106 ["SemanticColorStatesHover"]
  LOADK R6 K82 [0.92]
  SETTABLEKS R6 R5 K107 ["SemanticColorStatesHoverTransparency"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K71 ["#FFFFFF"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K108 ["SemanticColorStateLayerHover"]
  LOADK R6 K82 [0.92]
  SETTABLEKS R6 R5 K109 ["SemanticColorStateLayerHoverTransparency"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K71 ["#FFFFFF"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K110 ["SemanticColorStateLayerPress"]
  LOADK R6 K78 [0.84]
  SETTABLEKS R6 R5 K111 ["SemanticColorStateLayerPressTransparency"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K112 ["#000000"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K113 ["SemanticColorStateLayerHoverInverse"]
  LOADK R6 K82 [0.92]
  SETTABLEKS R6 R5 K114 ["SemanticColorStateLayerHoverTransparencyInverse"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K112 ["#000000"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K115 ["SemanticColorStateLayerPressInverse"]
  LOADK R6 K78 [0.84]
  SETTABLEKS R6 R5 K116 ["SemanticColorStateLayerPressTransparencyInverse"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K117 ["#1F2024"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K118 ["SemanticColorSurface100"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K119 ["#25262C"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K120 ["SemanticColorSurface200"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K86 ["#2B2D33"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K121 ["SemanticColorSurface300"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K122 ["#F2F2F3"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K123 ["SemanticColorSurface300Inverse"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K96 ["#BBC2D1"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K124 ["SemanticColorStatesSelected"]
  LOADK R6 K78 [0.84]
  SETTABLEKS R6 R5 K125 ["SemanticColorStatesSelectedTransparency"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K126 ["#2E2E2E"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K127 ["DEPRECATED_MainBackground"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K71 ["#FFFFFF"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K128 ["White"]
  LOADK R6 K129 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonArrowDownAngleSmall.png"]
  SETTABLEKS R6 R5 K130 ["ArrowDownAngleSmall"]
  LOADK R6 K131 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonArrowRightSmall.png"]
  SETTABLEKS R6 R5 K132 ["ArrowRightSmall"]
  LOADK R6 K133 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/ArrowDown.png"]
  SETTABLEKS R6 R5 K134 ["ArrowDown"]
  LOADK R6 K135 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/ArrowUp.png"]
  SETTABLEKS R6 R5 K136 ["ArrowUp"]
  LOADK R6 K137 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxCheckedDefaultSmall.png"]
  SETTABLEKS R6 R5 K138 ["CheckboxCheckedDefault"]
  LOADK R6 K139 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxCheckedDisabledSmall.png"]
  SETTABLEKS R6 R5 K140 ["CheckboxCheckedDisabled"]
  LOADK R6 K141 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxMixDefaultSmall.png"]
  SETTABLEKS R6 R5 K142 ["CheckboxMixDefault"]
  LOADK R6 K143 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxMixDisabledSmall.png"]
  SETTABLEKS R6 R5 K144 ["CheckboxMixDisabled"]
  LOADK R6 K145 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxOffDefaultSmall.png"]
  SETTABLEKS R6 R5 K146 ["CheckboxOffDefault"]
  LOADK R6 K147 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxOffDisabledSmall.png"]
  SETTABLEKS R6 R5 K148 ["CheckboxOffDisabled"]
  LOADK R6 K149 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxOffHoverSmall.png"]
  SETTABLEKS R6 R5 K150 ["CheckboxOffHover"]
  JUMPIFNOT R4 [+2]
  LOADK R6 K151 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonDropDownArrowDownSmall.png"]
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K152 ["DropDownArrowDown"]
  JUMPIFNOT R4 [+2]
  LOADK R6 K153 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonDropDownArrowUpSmall.png"]
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K154 ["DropDownArrowUp"]
  JUMPIFNOT R3 [+2]
  LOADK R6 K155 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonPlayerSmall.png"]
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K156 ["Player"]
  LOADK R6 K157 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonRadioButtonCheckedDefaultSmall.png"]
  SETTABLEKS R6 R5 K158 ["RadioButtonCheckedDefault"]
  LOADK R6 K159 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonRadioButtonCheckedDisabledSmall.png"]
  SETTABLEKS R6 R5 K160 ["RadioButtonCheckedDisabled"]
  LOADK R6 K161 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonRadioButtonUncheckedDefaultSmall.png"]
  SETTABLEKS R6 R5 K162 ["RadioButtonUncheckedDefault"]
  LOADK R6 K163 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonRadioButtonUncheckedDisabledSmall.png"]
  SETTABLEKS R6 R5 K164 ["RadioButtonUncheckedDisabled"]
  LOADK R6 K165 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonRadioButtonUncheckedHoverSmall.png"]
  SETTABLEKS R6 R5 K166 ["RadioButtonUncheckedHover"]
  LOADK R6 K167 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerUpDefaultSmall.png"]
  SETTABLEKS R6 R5 K168 ["SpinboxControllerUpDefault"]
  LOADK R6 K169 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerUpDisabledSmall.png"]
  SETTABLEKS R6 R5 K170 ["SpinboxControllerUpDisabled"]
  LOADK R6 K171 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerUpHoverSmall.png"]
  SETTABLEKS R6 R5 K172 ["SpinboxControllerUpHover"]
  LOADK R6 K173 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerDownDefaultSmall.png"]
  SETTABLEKS R6 R5 K174 ["SpinboxControllerDownDefault"]
  LOADK R6 K175 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerDownDisabledSmall.png"]
  SETTABLEKS R6 R5 K176 ["SpinboxControllerDownDisabled"]
  LOADK R6 K177 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerDownHoverSmall.png"]
  SETTABLEKS R6 R5 K178 ["SpinboxControllerDownHover"]
  LOADK R6 K179 ["rbxasset://studio_svg_textures/Shared/WidgetIcons/Dark/Standard/AddCollaborator.png"]
  SETTABLEKS R6 R5 K180 ["AddCollaborator"]
  LOADK R6 K181 ["rbxasset://studio_svg_textures/Shared/WidgetIcons/Dark/Standard/AddCollaboratorInverse.png"]
  SETTABLEKS R6 R5 K182 ["AddCollaboratorInverse"]
  MOVE R6 R2
  LOADK R7 K183 ["RibbonDarkTheme"]
  NEWTABLE R8 0 0
  MOVE R9 R5
  CALL R6 3 -1
  RETURN R6 -1
