MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PlaceAnnotations"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleSheet"]
  NEWTABLE R3 64 0
  LOADK R4 K10 ["rbxasset://studio_svg_textures/Shared/WidgetIcons/Light/Large/Annotations.png"]
  SETTABLEKS R4 R3 K11 ["AnnotationLarge"]
  LOADK R4 K12 ["rbxasset://studio_svg_textures/Shared/Utility/Light/Standard/CheckboxOn.png"]
  SETTABLEKS R4 R3 K13 ["CheckboxOn"]
  LOADK R4 K14 ["rbxasset://studio_svg_textures/Shared/Utility/Light/Standard/CheckboxOff.png"]
  SETTABLEKS R4 R3 K15 ["CheckboxOff"]
  LOADK R4 K16 ["rbxasset://studio_svg_textures/Lua/PlaceAnnotations/Light/Standard/Resolve.png"]
  SETTABLEKS R4 R3 K17 ["ResolveIcon"]
  LOADK R4 K18 ["rbxasset://studio_svg_textures/Shared/Alerts/Light/Standard/Success.png"]
  SETTABLEKS R4 R3 K19 ["ResolveIconResolved"]
  LOADK R4 K20 ["rbxasset://studio_svg_textures/Shared/Alerts/Light/Standard/Error.png"]
  SETTABLEKS R4 R3 K21 ["Error"]
  LOADK R4 K22 ["rbxasset://studio_svg_textures/Shared/Navigation/Light/Standard/CloseWidget.png"]
  SETTABLEKS R4 R3 K23 ["Close"]
  LOADK R4 K24 ["rbxasset://studio_svg_textures/Shared/Navigation/Light/Standard/Settings.png"]
  SETTABLEKS R4 R3 K25 ["Settings"]
  GETIMPORT R4 K28 [Color3.fromHex]
  LOADK R5 K29 ["#111216"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K30 ["SemanticColorActionPrimaryFill"]
  GETIMPORT R4 K28 [Color3.fromHex]
  LOADK R5 K31 ["#333B4C"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K32 ["SemanticColorActionSecondaryFill"]
  LOADK R4 K33 [0.92]
  SETTABLEKS R4 R3 K34 ["SemanticColorActionSecondaryFillTransparency"]
  LOADK R4 K35 [0.84]
  SETTABLEKS R4 R3 K36 ["SemanticColorActionSecondaryFillHoverTransparency"]
  LOADK R4 K37 [0.76]
  SETTABLEKS R4 R3 K38 ["SemanticColorActionSecondaryFillPressTransparency"]
  GETIMPORT R4 K28 [Color3.fromHex]
  LOADK R5 K39 ["#E5E5E6"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K40 ["SemanticColorComponentMediaFill"]
  GETIMPORT R4 K28 [Color3.fromHex]
  LOADK R5 K41 ["#BBBCBE"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K42 ["SemanticColorContentDisabled"]
  GETIMPORT R4 K28 [Color3.fromHex]
  LOADK R5 K43 ["#696A6D"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K44 ["SemanticColorContentMuted"]
  GETIMPORT R4 K28 [Color3.fromHex]
  LOADK R5 K29 ["#111216"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K45 ["SemanticColorContentStandard"]
  GETIMPORT R4 K28 [Color3.fromHex]
  LOADK R5 K46 ["#F9F9F9"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K47 ["SemanticColorContentStandardInverse"]
  GETIMPORT R4 K28 [Color3.fromHex]
  LOADK R5 K48 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K49 ["SemanticColorContentStaticLight"]
  GETIMPORT R4 K28 [Color3.fromHex]
  LOADK R5 K31 ["#333B4C"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K50 ["SemanticColorComponentInputFill"]
  LOADK R4 K33 [0.92]
  SETTABLEKS R4 R3 K51 ["SemanticColorComponentInputFillTransparency"]
  GETIMPORT R4 K28 [Color3.fromHex]
  LOADK R5 K31 ["#333B4C"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K52 ["SemanticColorComponentInputHover"]
  LOADK R4 K35 [0.84]
  SETTABLEKS R4 R3 K53 ["SemanticColorComponentInputHoverTransparency"]
  LOADK R4 K54 [0.94]
  SETTABLEKS R4 R3 K55 ["SemanticColorComponentInputDisabledTransparency"]
  GETIMPORT R4 K28 [Color3.fromHex]
  LOADK R5 K56 ["#000000"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K57 ["SemanticColorDivider"]
  LOADK R4 K58 [0.88]
  SETTABLEKS R4 R3 K59 ["SemanticColorDividerTransparency"]
  GETIMPORT R4 K28 [Color3.fromHex]
  LOADK R5 K60 ["#3C64FA"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K61 ["SemanticColorFocusBorderPrimaryBrand"]
  GETIMPORT R4 K28 [Color3.fromHex]
  LOADK R5 K31 ["#333B4C"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K62 ["SemanticColorStatesHover"]
  LOADK R4 K54 [0.94]
  SETTABLEKS R4 R3 K63 ["SemanticColorStatesHoverTransparency"]
  GETIMPORT R4 K28 [Color3.fromHex]
  LOADK R5 K56 ["#000000"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K64 ["SemanticColorStateLayerHover"]
  LOADK R4 K33 [0.92]
  SETTABLEKS R4 R3 K65 ["SemanticColorStateLayerHoverTransparency"]
  GETIMPORT R4 K28 [Color3.fromHex]
  LOADK R5 K56 ["#000000"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K66 ["SemanticColorStateLayerPress"]
  LOADK R4 K35 [0.84]
  SETTABLEKS R4 R3 K67 ["SemanticColorStateLayerPressTransparency"]
  GETIMPORT R4 K28 [Color3.fromHex]
  LOADK R5 K48 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K68 ["SemanticColorStateLayerHoverInverse"]
  LOADK R4 K33 [0.92]
  SETTABLEKS R4 R3 K69 ["SemanticColorStateLayerHoverTransparencyInverse"]
  GETIMPORT R4 K28 [Color3.fromHex]
  LOADK R5 K48 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K70 ["SemanticColorStateLayerPressInverse"]
  LOADK R4 K35 [0.84]
  SETTABLEKS R4 R3 K71 ["SemanticColorStateLayerPressTransparencyInverse"]
  GETIMPORT R4 K28 [Color3.fromHex]
  LOADK R5 K48 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K72 ["SemanticColorSurface100"]
  GETIMPORT R4 K28 [Color3.fromHex]
  LOADK R5 K48 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K73 ["SemanticColorSurface200"]
  GETIMPORT R4 K28 [Color3.fromHex]
  LOADK R5 K74 ["#F2F2F3"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K75 ["SemanticColorSurface300"]
  GETIMPORT R4 K28 [Color3.fromHex]
  LOADK R5 K76 ["#2B2D33"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K77 ["SemanticColorSurface300Inverse"]
  GETIMPORT R4 K28 [Color3.fromHex]
  LOADK R5 K31 ["#333B4C"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K78 ["SemanticColorStatesSelected"]
  LOADK R4 K58 [0.88]
  SETTABLEKS R4 R3 K79 ["SemanticColorStatesSelectedTransparency"]
  GETIMPORT R4 K28 [Color3.fromHex]
  LOADK R5 K80 ["#E1E1E1"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K81 ["ResolveIconBase"]
  GETIMPORT R4 K28 [Color3.fromHex]
  LOADK R5 K82 ["#CBCBCB"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K83 ["ResolveIconHovered"]
  GETIMPORT R4 K28 [Color3.fromHex]
  LOADK R5 K84 ["#989898"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K85 ["ResolveIconSelected"]
  LOADK R4 K86 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Medium/RibbonBack.png"]
  SETTABLEKS R4 R3 K87 ["BackArrow"]
  LOADK R4 K88 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Medium/RibbonFwd.png"]
  SETTABLEKS R4 R3 K89 ["NextArrow"]
  LOADK R4 K90 ["rbxasset://studio_svg_textures/Shared/Navigation/Light/Standard/More.png"]
  SETTABLEKS R4 R3 K91 ["MoreIcon"]
  MOVE R4 R2
  LOADK R5 K92 ["PlaceAnnotationsLightTheme"]
  NEWTABLE R6 0 0
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1
