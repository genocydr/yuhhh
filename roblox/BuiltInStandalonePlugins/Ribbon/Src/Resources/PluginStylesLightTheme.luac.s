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
  LOADK R8 K71 ["#000000"]
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
  LOADK R8 K71 ["#000000"]
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
  LOADK R7 K84 ["#111216"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K85 ["SemanticColorActionPrimaryFill"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K86 ["#E5E5E6"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K87 ["SemanticColorComponentMediaFill"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K88 ["#BBBCBE"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K89 ["SemanticColorContentDisabled"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K90 ["#696A6D"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K91 ["SemanticColorContentMuted"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K84 ["#111216"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K92 ["SemanticColorContentStandard"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K93 ["#F9F9F9"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K94 ["SemanticColorContentStandardInverse"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K95 ["#FFFFFF"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K96 ["SemanticColorContentStaticLight"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K97 ["#333B4C"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K98 ["SemanticColorComponentInputFill"]
  LOADK R6 K82 [0.92]
  SETTABLEKS R6 R5 K99 ["SemanticColorComponentInputFillTransparency"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K97 ["#333B4C"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K100 ["SemanticColorComponentInputHover"]
  LOADK R6 K78 [0.84]
  SETTABLEKS R6 R5 K101 ["SemanticColorComponentInputHoverTransparency"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K71 ["#000000"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K102 ["SemanticColorDivider"]
  LOADK R6 K103 [0.88]
  SETTABLEKS R6 R5 K104 ["SemanticColorDividerTransparency"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K105 ["#3C64FA"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K106 ["SemanticColorFocusBorderPrimaryBrand"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K97 ["#333B4C"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K107 ["SemanticColorStatesHover"]
  LOADK R6 K108 [0.94]
  SETTABLEKS R6 R5 K109 ["SemanticColorStatesHoverTransparency"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K71 ["#000000"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K110 ["SemanticColorStateLayerHover"]
  LOADK R6 K82 [0.92]
  SETTABLEKS R6 R5 K111 ["SemanticColorStateLayerHoverTransparency"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K71 ["#000000"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K112 ["SemanticColorStateLayerPress"]
  LOADK R6 K78 [0.84]
  SETTABLEKS R6 R5 K113 ["SemanticColorStateLayerPressTransparency"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K95 ["#FFFFFF"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K114 ["SemanticColorStateLayerHoverInverse"]
  LOADK R6 K82 [0.92]
  SETTABLEKS R6 R5 K115 ["SemanticColorStateLayerHoverTransparencyInverse"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K95 ["#FFFFFF"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K116 ["SemanticColorStateLayerPressInverse"]
  LOADK R6 K78 [0.84]
  SETTABLEKS R6 R5 K117 ["SemanticColorStateLayerPressTransparencyInverse"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K95 ["#FFFFFF"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K118 ["SemanticColorSurface100"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K95 ["#FFFFFF"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K119 ["SemanticColorSurface200"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K120 ["#F2F2F3"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K121 ["SemanticColorSurface300"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K122 ["#2B2D33"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K123 ["SemanticColorSurface300Inverse"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K97 ["#333B4C"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K124 ["SemanticColorStatesSelected"]
  LOADK R6 K103 [0.88]
  SETTABLEKS R6 R5 K125 ["SemanticColorStatesSelectedTransparency"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K95 ["#FFFFFF"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K126 ["DEPRECATED_MainBackground"]
  GETIMPORT R6 K70 [Color3.fromHex]
  LOADK R7 K95 ["#FFFFFF"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K127 ["White"]
  LOADK R6 K128 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonArrowDownAngleSmall.png"]
  SETTABLEKS R6 R5 K129 ["ArrowDownAngleSmall"]
  LOADK R6 K130 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonArrowRightSmall.png"]
  SETTABLEKS R6 R5 K131 ["ArrowRightSmall"]
  LOADK R6 K132 ["rbxasset://studio_svg_textures/Shared/Navigation/Light/Standard/ArrowDown.png"]
  SETTABLEKS R6 R5 K133 ["ArrowDown"]
  LOADK R6 K134 ["rbxasset://studio_svg_textures/Shared/Navigation/Light/Standard/ArrowUp.png"]
  SETTABLEKS R6 R5 K135 ["ArrowUp"]
  LOADK R6 K136 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxCheckedDefaultSmall.png"]
  SETTABLEKS R6 R5 K137 ["CheckboxCheckedDefault"]
  LOADK R6 K138 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxCheckedDisabledSmall.png"]
  SETTABLEKS R6 R5 K139 ["CheckboxCheckedDisabled"]
  LOADK R6 K140 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxMixDefaultSmall.png"]
  SETTABLEKS R6 R5 K141 ["CheckboxMixDefault"]
  LOADK R6 K142 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxMixDisabledSmall.png"]
  SETTABLEKS R6 R5 K143 ["CheckboxMixDisabled"]
  LOADK R6 K144 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxOffDefaultSmall.png"]
  SETTABLEKS R6 R5 K145 ["CheckboxOffDefault"]
  LOADK R6 K146 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxOffDisabledSmall.png"]
  SETTABLEKS R6 R5 K147 ["CheckboxOffDisabled"]
  LOADK R6 K148 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxOffHoverSmall.png"]
  SETTABLEKS R6 R5 K149 ["CheckboxOffHover"]
  JUMPIFNOT R4 [+2]
  LOADK R6 K150 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonDropDownArrowDownSmall.png"]
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K151 ["DropDownArrowDown"]
  JUMPIFNOT R4 [+2]
  LOADK R6 K152 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonDropDownArrowUpSmall.png"]
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K153 ["DropDownArrowUp"]
  JUMPIFNOT R3 [+2]
  LOADK R6 K154 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonPlayerSmall.png"]
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K155 ["Player"]
  LOADK R6 K156 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonRadioButtonCheckedDefaultSmall.png"]
  SETTABLEKS R6 R5 K157 ["RadioButtonCheckedDefault"]
  LOADK R6 K158 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonRadioButtonCheckedDisabledSmall.png"]
  SETTABLEKS R6 R5 K159 ["RadioButtonCheckedDisabled"]
  LOADK R6 K160 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonRadioButtonUncheckedDefaultSmall.png"]
  SETTABLEKS R6 R5 K161 ["RadioButtonUncheckedDefault"]
  LOADK R6 K162 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonRadioButtonUncheckedDisabledSmall.png"]
  SETTABLEKS R6 R5 K163 ["RadioButtonUncheckedDisabled"]
  LOADK R6 K164 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonRadioButtonUncheckedHoverSmall.png"]
  SETTABLEKS R6 R5 K165 ["RadioButtonUncheckedHover"]
  LOADK R6 K166 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonSpinboxControllerUpDefaultSmall.png"]
  SETTABLEKS R6 R5 K167 ["SpinboxControllerUpDefault"]
  LOADK R6 K168 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonSpinboxControllerUpDisabledSmall.png"]
  SETTABLEKS R6 R5 K169 ["SpinboxControllerUpDisabled"]
  LOADK R6 K170 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonSpinboxControllerUpHoverSmall.png"]
  SETTABLEKS R6 R5 K171 ["SpinboxControllerUpHover"]
  LOADK R6 K172 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonSpinboxControllerDownDefaultSmall.png"]
  SETTABLEKS R6 R5 K173 ["SpinboxControllerDownDefault"]
  LOADK R6 K174 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonSpinboxControllerDownDisabledSmall.png"]
  SETTABLEKS R6 R5 K175 ["SpinboxControllerDownDisabled"]
  LOADK R6 K176 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonSpinboxControllerDownHoverSmall.png"]
  SETTABLEKS R6 R5 K177 ["SpinboxControllerDownHover"]
  LOADK R6 K178 ["rbxasset://studio_svg_textures/Shared/WidgetIcons/Light/Standard/AddCollaborator.png"]
  SETTABLEKS R6 R5 K179 ["AddCollaborator"]
  LOADK R6 K180 ["rbxasset://studio_svg_textures/Shared/WidgetIcons/Light/Standard/AddCollaboratorInverse.png"]
  SETTABLEKS R6 R5 K181 ["AddCollaboratorInverse"]
  MOVE R6 R2
  LOADK R7 K182 ["RibbonLightTheme"]
  NEWTABLE R8 0 0
  MOVE R9 R5
  CALL R6 3 -1
  RETURN R6 -1
