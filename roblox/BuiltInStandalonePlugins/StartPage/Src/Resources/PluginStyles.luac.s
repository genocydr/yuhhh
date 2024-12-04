MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  GETTABLEKS R4 R1 K8 ["Styling"]
  GETTABLEKS R3 R4 K10 ["createStyleSheet"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K11 ["Src"]
  GETTABLEKS R6 R7 K12 ["SharedFlags"]
  GETTABLEKS R5 R6 K13 ["getFFlagLuaStartPageQuickLoad"]
  CALL R4 1 1
  CALL R4 0 1
  NEWTABLE R5 0 82
  MOVE R6 R2
  LOADK R7 K14 [".StartPage-Background"]
  DUPTABLE R8 K17 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R9 K18 ["$Background"]
  SETTABLEKS R9 R8 K15 ["BackgroundColor3"]
  LOADN R9 0
  SETTABLEKS R9 R8 K16 ["BackgroundTransparency"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K19 [".StartPage-PageBackground"]
  DUPTABLE R9 K17 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R10 K20 ["$PageBackground"]
  SETTABLEKS R10 R9 K15 ["BackgroundColor3"]
  LOADN R10 0
  SETTABLEKS R10 R9 K16 ["BackgroundTransparency"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K21 [".StartPage-MenuBackground"]
  DUPTABLE R10 K17 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R11 K22 ["$MenuBackground"]
  SETTABLEKS R11 R10 K15 ["BackgroundColor3"]
  LOADN R11 0
  SETTABLEKS R11 R10 K16 ["BackgroundTransparency"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K23 [".StartPage-ContextMenuBackground"]
  DUPTABLE R11 K17 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R12 K24 ["$ContextMenuBackground"]
  SETTABLEKS R12 R11 K15 ["BackgroundColor3"]
  LOADN R12 0
  SETTABLEKS R12 R11 K16 ["BackgroundTransparency"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K25 [".StartPage-Selected"]
  DUPTABLE R12 K26 [{"BackgroundColor3"}]
  LOADK R13 K27 ["$Selected"]
  SETTABLEKS R13 R12 K15 ["BackgroundColor3"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K28 [".StartPage-Contrast"]
  DUPTABLE R13 K17 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R14 K29 ["$Contrast"]
  SETTABLEKS R14 R13 K15 ["BackgroundColor3"]
  LOADN R14 0
  SETTABLEKS R14 R13 K16 ["BackgroundTransparency"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K30 [".StartPage-NoTextStroke"]
  DUPTABLE R14 K32 [{"TextStrokeTransparency"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K31 ["TextStrokeTransparency"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K33 [".StartPage-TextColor"]
  DUPTABLE R15 K35 [{"TextColor3"}]
  LOADK R16 K36 ["$TextColor"]
  SETTABLEKS R16 R15 K34 ["TextColor3"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K37 [".StartPage-ContrastTextColor"]
  DUPTABLE R16 K35 [{"TextColor3"}]
  LOADK R17 K38 ["$ContrastTextColor"]
  SETTABLEKS R17 R16 K34 ["TextColor3"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K39 [".StartPage-DisabledTextColor"]
  DUPTABLE R17 K35 [{"TextColor3"}]
  LOADK R18 K40 ["$Disabled"]
  SETTABLEKS R18 R17 K34 ["TextColor3"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K41 [".StartPage-ButtonBackgroundColor"]
  DUPTABLE R18 K17 [{"BackgroundColor3", "BackgroundTransparency"}]
  GETIMPORT R19 K44 [Color3.fromHex]
  LOADK R20 K45 ["#3C64FA"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K15 ["BackgroundColor3"]
  LOADN R19 0
  SETTABLEKS R19 R18 K16 ["BackgroundTransparency"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K46 [".StartPage-Font"]
  DUPTABLE R19 K49 [{"Font", "LineHeight"}]
  GETIMPORT R20 K52 [Enum.Font.BuilderSans]
  SETTABLEKS R20 R19 K47 ["Font"]
  LOADK R20 K53 [1.142]
  SETTABLEKS R20 R19 K48 ["LineHeight"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K54 [".StartPage-FontBold"]
  DUPTABLE R20 K49 [{"Font", "LineHeight"}]
  GETIMPORT R21 K56 [Enum.Font.BuilderSansBold]
  SETTABLEKS R21 R20 K47 ["Font"]
  LOADK R21 K57 [1.6]
  SETTABLEKS R21 R20 K48 ["LineHeight"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K58 [".StartPage-FontExtraBold"]
  DUPTABLE R21 K49 [{"Font", "LineHeight"}]
  GETIMPORT R22 K60 [Enum.Font.BuilderSansExtraBold]
  SETTABLEKS R22 R21 K47 ["Font"]
  LOADK R22 K57 [1.6]
  SETTABLEKS R22 R21 K48 ["LineHeight"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K61 [".StartPage-TextSizeXS"]
  DUPTABLE R22 K63 [{"TextSize"}]
  LOADK R23 K64 ["$TextSizeXS"]
  SETTABLEKS R23 R22 K62 ["TextSize"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K65 [".StartPage-TextSize"]
  DUPTABLE R23 K63 [{"TextSize"}]
  LOADK R24 K66 ["$TextSize"]
  SETTABLEKS R24 R23 K62 ["TextSize"]
  CALL R21 2 1
  SETLIST R5 R6 16 [1]
  MOVE R6 R2
  LOADK R7 K67 [".StartPage-TextSizeM"]
  DUPTABLE R8 K63 [{"TextSize"}]
  LOADK R9 K68 ["$TextSizeM"]
  SETTABLEKS R9 R8 K62 ["TextSize"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K69 [".StartPage-TextSizeL"]
  DUPTABLE R9 K63 [{"TextSize"}]
  LOADK R10 K70 ["$TextSizeL"]
  SETTABLEKS R10 R9 K62 ["TextSize"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K71 [".StartPage-IconSize"]
  DUPTABLE R10 K73 [{"Size"}]
  LOADK R11 K74 ["$IconSize"]
  SETTABLEKS R11 R10 K72 ["Size"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K75 [".StartPage-IconSizeM"]
  DUPTABLE R11 K73 [{"Size"}]
  LOADK R12 K76 ["$IconSizeM"]
  SETTABLEKS R12 R11 K72 ["Size"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K77 [".StartPage-RoundedCorner8 ::UICorner"]
  DUPTABLE R12 K79 [{"CornerRadius"}]
  LOADK R13 K80 ["$CornerSize8"]
  SETTABLEKS R13 R12 K78 ["CornerRadius"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K81 [".StartPage-RoundedCorner12 ::UICorner"]
  DUPTABLE R13 K79 [{"CornerRadius"}]
  LOADK R14 K82 ["$CornerSize12"]
  SETTABLEKS R14 R13 K78 ["CornerRadius"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K83 [".StartPage-RoundedCorner16 ::UICorner"]
  DUPTABLE R14 K79 [{"CornerRadius"}]
  LOADK R15 K84 ["$CornerSize16"]
  SETTABLEKS R15 R14 K78 ["CornerRadius"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K85 [".StartPage-RoundedCorner32 ::UICorner"]
  DUPTABLE R15 K79 [{"CornerRadius"}]
  LOADK R16 K86 ["$CornerSize32"]
  SETTABLEKS R16 R15 K78 ["CornerRadius"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K87 [".StartPage-Circular ::UICorner"]
  DUPTABLE R16 K79 [{"CornerRadius"}]
  GETIMPORT R17 K90 [UDim.new]
  LOADN R18 1
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K78 ["CornerRadius"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K91 [".StartPage-SearchBar"]
  DUPTABLE R17 K94 [{"TextXAlignment", "Font", "BorderSizePixel", "BackgroundColor3"}]
  GETIMPORT R18 K96 [Enum.TextXAlignment.Left]
  SETTABLEKS R18 R17 K92 ["TextXAlignment"]
  GETIMPORT R18 K52 [Enum.Font.BuilderSans]
  SETTABLEKS R18 R17 K47 ["Font"]
  LOADN R18 0
  SETTABLEKS R18 R17 K93 ["BorderSizePixel"]
  LOADK R18 K20 ["$PageBackground"]
  SETTABLEKS R18 R17 K15 ["BackgroundColor3"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K97 [".StartPage-Highlight"]
  DUPTABLE R18 K17 [{"BackgroundColor3", "BackgroundTransparency"}]
  GETIMPORT R19 K44 [Color3.fromHex]
  LOADK R20 K98 ["#BBBCBE"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K15 ["BackgroundColor3"]
  LOADK R19 K99 [0.92]
  SETTABLEKS R19 R18 K16 ["BackgroundTransparency"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K100 [".StartPage-TileBorder ::UIStroke"]
  DUPTABLE R19 K104 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R20 K106 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R20 R19 K101 ["ApplyStrokeMode"]
  LOADK R20 K107 ["$HoverBorder"]
  SETTABLEKS R20 R19 K102 ["Color"]
  LOADN R20 1
  SETTABLEKS R20 R19 K103 ["Thickness"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K108 [".StartPage-PillPaddingS ::UIPadding"]
  DUPTABLE R20 K113 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R21 K90 [UDim.new]
  LOADN R22 0
  LOADN R23 10
  CALL R21 2 1
  SETTABLEKS R21 R20 K109 ["PaddingLeft"]
  GETIMPORT R21 K90 [UDim.new]
  LOADN R22 0
  LOADN R23 10
  CALL R21 2 1
  SETTABLEKS R21 R20 K110 ["PaddingRight"]
  GETIMPORT R21 K90 [UDim.new]
  LOADN R22 0
  LOADN R23 4
  CALL R21 2 1
  SETTABLEKS R21 R20 K111 ["PaddingTop"]
  GETIMPORT R21 K90 [UDim.new]
  LOADN R22 0
  LOADN R23 4
  CALL R21 2 1
  SETTABLEKS R21 R20 K112 ["PaddingBottom"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K114 [".StartPage-PillPadding ::UIPadding"]
  DUPTABLE R21 K113 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R22 K90 [UDim.new]
  LOADN R23 0
  LOADN R24 12
  CALL R22 2 1
  SETTABLEKS R22 R21 K109 ["PaddingLeft"]
  GETIMPORT R22 K90 [UDim.new]
  LOADN R23 0
  LOADN R24 12
  CALL R22 2 1
  SETTABLEKS R22 R21 K110 ["PaddingRight"]
  GETIMPORT R22 K90 [UDim.new]
  LOADN R23 0
  LOADN R24 8
  CALL R22 2 1
  SETTABLEKS R22 R21 K111 ["PaddingTop"]
  GETIMPORT R22 K90 [UDim.new]
  LOADN R23 0
  LOADN R24 8
  CALL R22 2 1
  SETTABLEKS R22 R21 K112 ["PaddingBottom"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K115 [".StartPage-ButtonPadding ::UIPadding"]
  DUPTABLE R22 K113 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R23 K90 [UDim.new]
  LOADN R24 0
  LOADN R25 20
  CALL R23 2 1
  SETTABLEKS R23 R22 K109 ["PaddingLeft"]
  GETIMPORT R23 K90 [UDim.new]
  LOADN R24 0
  LOADN R25 20
  CALL R23 2 1
  SETTABLEKS R23 R22 K110 ["PaddingRight"]
  GETIMPORT R23 K90 [UDim.new]
  LOADN R24 0
  LOADN R25 12
  CALL R23 2 1
  SETTABLEKS R23 R22 K111 ["PaddingTop"]
  GETIMPORT R23 K90 [UDim.new]
  LOADN R24 0
  LOADN R25 12
  CALL R23 2 1
  SETTABLEKS R23 R22 K112 ["PaddingBottom"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K116 [".StartPage-TilePadding ::UIPadding"]
  DUPTABLE R23 K113 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R24 K90 [UDim.new]
  LOADN R25 0
  LOADN R26 12
  CALL R24 2 1
  SETTABLEKS R24 R23 K109 ["PaddingLeft"]
  GETIMPORT R24 K90 [UDim.new]
  LOADN R25 0
  LOADN R26 12
  CALL R24 2 1
  SETTABLEKS R24 R23 K110 ["PaddingRight"]
  GETIMPORT R24 K90 [UDim.new]
  LOADN R25 0
  LOADN R26 12
  CALL R24 2 1
  SETTABLEKS R24 R23 K111 ["PaddingTop"]
  GETIMPORT R24 K90 [UDim.new]
  LOADN R25 0
  LOADN R26 12
  CALL R24 2 1
  SETTABLEKS R24 R23 K112 ["PaddingBottom"]
  CALL R21 2 1
  SETLIST R5 R6 16 [17]
  MOVE R6 R2
  LOADK R7 K117 [".StartPage-TablePadding ::UIPadding"]
  DUPTABLE R8 K113 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  JUMPIFNOT R4 [+2]
  LOADNIL R9
  JUMP [+5]
  GETIMPORT R9 K90 [UDim.new]
  LOADN R10 0
  LOADN R11 16
  CALL R9 2 1
  SETTABLEKS R9 R8 K109 ["PaddingLeft"]
  JUMPIFNOT R4 [+2]
  LOADNIL R9
  JUMP [+5]
  GETIMPORT R9 K90 [UDim.new]
  LOADN R10 0
  LOADN R11 16
  CALL R9 2 1
  SETTABLEKS R9 R8 K110 ["PaddingRight"]
  GETIMPORT R9 K90 [UDim.new]
  LOADN R10 0
  LOADN R11 10
  CALL R9 2 1
  SETTABLEKS R9 R8 K111 ["PaddingTop"]
  GETIMPORT R9 K90 [UDim.new]
  LOADN R10 0
  LOADN R11 10
  CALL R9 2 1
  SETTABLEKS R9 R8 K112 ["PaddingBottom"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K118 [".StartPage-DescPadding ::UIPadding"]
  DUPTABLE R9 K113 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R10 K90 [UDim.new]
  LOADN R11 0
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K109 ["PaddingLeft"]
  GETIMPORT R10 K90 [UDim.new]
  LOADN R11 0
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K110 ["PaddingRight"]
  GETIMPORT R10 K90 [UDim.new]
  LOADN R11 0
  LOADN R12 12
  CALL R10 2 1
  SETTABLEKS R10 R9 K111 ["PaddingTop"]
  GETIMPORT R10 K90 [UDim.new]
  LOADN R11 0
  LOADN R12 12
  CALL R10 2 1
  SETTABLEKS R10 R9 K112 ["PaddingBottom"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K119 [".StartPage-SearchRowPadding ::UIPadding"]
  DUPTABLE R10 K113 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R11 K90 [UDim.new]
  LOADN R12 0
  LOADN R13 8
  CALL R11 2 1
  SETTABLEKS R11 R10 K109 ["PaddingLeft"]
  GETIMPORT R11 K90 [UDim.new]
  LOADN R12 0
  LOADN R13 8
  CALL R11 2 1
  SETTABLEKS R11 R10 K110 ["PaddingRight"]
  GETIMPORT R11 K90 [UDim.new]
  LOADN R12 0
  LOADN R13 8
  CALL R11 2 1
  SETTABLEKS R11 R10 K111 ["PaddingTop"]
  GETIMPORT R11 K90 [UDim.new]
  LOADN R12 0
  LOADN R13 8
  CALL R11 2 1
  SETTABLEKS R11 R10 K112 ["PaddingBottom"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K120 [".StartPage-GamePagePadding ::UIPadding"]
  DUPTABLE R11 K113 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R12 K90 [UDim.new]
  LOADN R13 0
  LOADN R14 32
  CALL R12 2 1
  SETTABLEKS R12 R11 K109 ["PaddingLeft"]
  GETIMPORT R12 K90 [UDim.new]
  LOADN R13 0
  LOADN R14 32
  CALL R12 2 1
  SETTABLEKS R12 R11 K110 ["PaddingRight"]
  GETIMPORT R12 K90 [UDim.new]
  LOADN R13 0
  LOADN R14 17
  CALL R12 2 1
  SETTABLEKS R12 R11 K111 ["PaddingTop"]
  GETIMPORT R12 K90 [UDim.new]
  LOADN R13 0
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K112 ["PaddingBottom"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K121 [".StartPage-LeftPadding32 ::UIPadding"]
  DUPTABLE R12 K113 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R13 K90 [UDim.new]
  LOADN R14 0
  LOADN R15 32
  CALL R13 2 1
  SETTABLEKS R13 R12 K109 ["PaddingLeft"]
  GETIMPORT R13 K90 [UDim.new]
  LOADN R14 0
  LOADN R15 15
  CALL R13 2 1
  SETTABLEKS R13 R12 K110 ["PaddingRight"]
  GETIMPORT R13 K90 [UDim.new]
  LOADN R14 0
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K111 ["PaddingTop"]
  GETIMPORT R13 K90 [UDim.new]
  LOADN R14 0
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K112 ["PaddingBottom"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K122 [".StartPage-PaddingX8 ::UIPadding"]
  DUPTABLE R13 K113 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R14 K90 [UDim.new]
  LOADN R15 0
  LOADN R16 8
  CALL R14 2 1
  SETTABLEKS R14 R13 K109 ["PaddingLeft"]
  GETIMPORT R14 K90 [UDim.new]
  LOADN R15 0
  LOADN R16 8
  CALL R14 2 1
  SETTABLEKS R14 R13 K110 ["PaddingRight"]
  GETIMPORT R14 K90 [UDim.new]
  LOADN R15 0
  LOADN R16 0
  CALL R14 2 1
  SETTABLEKS R14 R13 K111 ["PaddingTop"]
  GETIMPORT R14 K90 [UDim.new]
  LOADN R15 0
  LOADN R16 0
  CALL R14 2 1
  SETTABLEKS R14 R13 K112 ["PaddingBottom"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K123 [".StartPage-PaddingY8 ::UIPadding"]
  DUPTABLE R14 K113 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R15 K90 [UDim.new]
  LOADN R16 0
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K109 ["PaddingLeft"]
  GETIMPORT R15 K90 [UDim.new]
  LOADN R16 0
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K110 ["PaddingRight"]
  GETIMPORT R15 K90 [UDim.new]
  LOADN R16 0
  LOADN R17 8
  CALL R15 2 1
  SETTABLEKS R15 R14 K111 ["PaddingTop"]
  GETIMPORT R15 K90 [UDim.new]
  LOADN R16 0
  LOADN R17 8
  CALL R15 2 1
  SETTABLEKS R15 R14 K112 ["PaddingBottom"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K124 [".StartPage-Padding16 ::UIPadding"]
  DUPTABLE R15 K113 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R16 K90 [UDim.new]
  LOADN R17 0
  LOADN R18 16
  CALL R16 2 1
  SETTABLEKS R16 R15 K109 ["PaddingLeft"]
  GETIMPORT R16 K90 [UDim.new]
  LOADN R17 0
  LOADN R18 16
  CALL R16 2 1
  SETTABLEKS R16 R15 K110 ["PaddingRight"]
  GETIMPORT R16 K90 [UDim.new]
  LOADN R17 0
  LOADN R18 16
  CALL R16 2 1
  SETTABLEKS R16 R15 K111 ["PaddingTop"]
  GETIMPORT R16 K90 [UDim.new]
  LOADN R17 0
  LOADN R18 16
  CALL R16 2 1
  SETTABLEKS R16 R15 K112 ["PaddingBottom"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K125 [".StartPage-Padding24 ::UIPadding"]
  DUPTABLE R16 K113 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R17 K90 [UDim.new]
  LOADN R18 0
  LOADN R19 24
  CALL R17 2 1
  SETTABLEKS R17 R16 K109 ["PaddingLeft"]
  GETIMPORT R17 K90 [UDim.new]
  LOADN R18 0
  LOADN R19 24
  CALL R17 2 1
  SETTABLEKS R17 R16 K110 ["PaddingRight"]
  GETIMPORT R17 K90 [UDim.new]
  LOADN R18 0
  LOADN R19 24
  CALL R17 2 1
  SETTABLEKS R17 R16 K111 ["PaddingTop"]
  GETIMPORT R17 K90 [UDim.new]
  LOADN R18 0
  LOADN R19 24
  CALL R17 2 1
  SETTABLEKS R17 R16 K112 ["PaddingBottom"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K126 [".StartPage-Padding32 ::UIPadding"]
  DUPTABLE R17 K113 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R18 K90 [UDim.new]
  LOADN R19 0
  LOADN R20 32
  CALL R18 2 1
  SETTABLEKS R18 R17 K109 ["PaddingLeft"]
  GETIMPORT R18 K90 [UDim.new]
  LOADN R19 0
  LOADN R20 32
  CALL R18 2 1
  SETTABLEKS R18 R17 K110 ["PaddingRight"]
  GETIMPORT R18 K90 [UDim.new]
  LOADN R19 0
  LOADN R20 32
  CALL R18 2 1
  SETTABLEKS R18 R17 K111 ["PaddingTop"]
  GETIMPORT R18 K90 [UDim.new]
  LOADN R19 0
  LOADN R20 32
  CALL R18 2 1
  SETTABLEKS R18 R17 K112 ["PaddingBottom"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K127 [".StartPage-ContextMenuPadding ::UIPadding"]
  DUPTABLE R18 K113 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R19 K90 [UDim.new]
  LOADN R20 0
  LOADN R21 8
  CALL R19 2 1
  SETTABLEKS R19 R18 K109 ["PaddingLeft"]
  GETIMPORT R19 K90 [UDim.new]
  LOADN R20 0
  LOADN R21 8
  CALL R19 2 1
  SETTABLEKS R19 R18 K110 ["PaddingRight"]
  GETIMPORT R19 K90 [UDim.new]
  LOADN R20 0
  LOADN R21 8
  CALL R19 2 1
  SETTABLEKS R19 R18 K111 ["PaddingTop"]
  GETIMPORT R19 K90 [UDim.new]
  LOADN R20 0
  LOADN R21 8
  CALL R19 2 1
  SETTABLEKS R19 R18 K112 ["PaddingBottom"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K128 [".StartPage-ContextMenuRowPadding ::UIPadding"]
  DUPTABLE R19 K113 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R20 K90 [UDim.new]
  LOADN R21 0
  LOADN R22 8
  CALL R20 2 1
  SETTABLEKS R20 R19 K109 ["PaddingLeft"]
  GETIMPORT R20 K90 [UDim.new]
  LOADN R21 0
  LOADN R22 8
  CALL R20 2 1
  SETTABLEKS R20 R19 K110 ["PaddingRight"]
  GETIMPORT R20 K90 [UDim.new]
  LOADN R21 0
  LOADN R22 4
  CALL R20 2 1
  SETTABLEKS R20 R19 K111 ["PaddingTop"]
  GETIMPORT R20 K90 [UDim.new]
  LOADN R21 0
  LOADN R22 4
  CALL R20 2 1
  SETTABLEKS R20 R19 K112 ["PaddingBottom"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K129 [".StartPage-PadScrollingCarouselLeft ::UIPadding"]
  DUPTABLE R20 K130 [{"PaddingLeft"}]
  GETIMPORT R21 K90 [UDim.new]
  LOADN R22 0
  LOADN R23 2
  CALL R21 2 1
  SETTABLEKS R21 R20 K109 ["PaddingLeft"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K131 [".StartPage-Border ::UIStroke"]
  DUPTABLE R21 K133 [{"ApplyStrokeMode", "Color", "Transparency", "Thickness"}]
  GETIMPORT R22 K106 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R22 R21 K101 ["ApplyStrokeMode"]
  LOADK R22 K134 ["$Border"]
  SETTABLEKS R22 R21 K102 ["Color"]
  LOADK R22 K135 [0.88]
  SETTABLEKS R22 R21 K132 ["Transparency"]
  LOADN R22 1
  SETTABLEKS R22 R21 K103 ["Thickness"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K136 [".StartPage-NoBorder"]
  DUPTABLE R22 K137 [{"BorderSizePixel"}]
  LOADN R23 0
  SETTABLEKS R23 R22 K93 ["BorderSizePixel"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K138 [".StartPage-BorderColor"]
  DUPTABLE R23 K139 [{"BackgroundColor3", "Transparency"}]
  LOADK R24 K134 ["$Border"]
  SETTABLEKS R24 R23 K15 ["BackgroundColor3"]
  LOADK R24 K135 [0.88]
  SETTABLEKS R24 R23 K132 ["Transparency"]
  CALL R21 2 1
  SETLIST R5 R6 16 [33]
  MOVE R6 R2
  LOADK R7 K140 [".StartPage-StandardTextColor"]
  DUPTABLE R8 K35 [{"TextColor3"}]
  LOADK R9 K141 ["$Standard"]
  SETTABLEKS R9 R8 K34 ["TextColor3"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K142 [".StartPage-StandardDarkTextColor"]
  DUPTABLE R9 K35 [{"TextColor3"}]
  LOADK R10 K143 ["$StandardDark"]
  SETTABLEKS R10 R9 K34 ["TextColor3"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K144 [".StartPage-MutedTextColor"]
  DUPTABLE R10 K35 [{"TextColor3"}]
  LOADK R11 K145 ["$SemanticColorContentMuted"]
  SETTABLEKS R11 R10 K34 ["TextColor3"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K146 [".StartPage-LinkTextColor"]
  DUPTABLE R11 K35 [{"TextColor3"}]
  LOADK R12 K147 ["$SemanticColorContentAction"]
  SETTABLEKS R12 R11 K34 ["TextColor3"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K148 [".StartPage-Standard"]
  DUPTABLE R12 K26 [{"BackgroundColor3"}]
  LOADK R13 K141 ["$Standard"]
  SETTABLEKS R13 R12 K15 ["BackgroundColor3"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K149 [".StartPage-StandardDarkBackground"]
  DUPTABLE R13 K26 [{"BackgroundColor3"}]
  LOADK R14 K143 ["$StandardDark"]
  SETTABLEKS R14 R13 K15 ["BackgroundColor3"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K150 [".StartPage-TileBackground"]
  DUPTABLE R14 K17 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R15 K151 ["$TileBackground"]
  SETTABLEKS R15 R14 K15 ["BackgroundColor3"]
  LOADN R15 0
  SETTABLEKS R15 R14 K16 ["BackgroundTransparency"]
  NEWTABLE R15 0 1
  MOVE R16 R2
  LOADK R17 K152 [":hover :: UIStroke"]
  DUPTABLE R18 K154 [{"StrokeApplyStrokeMode", "Color", "Transparency", "Thickness"}]
  GETIMPORT R19 K106 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R19 R18 K153 ["StrokeApplyStrokeMode"]
  LOADK R19 K134 ["$Border"]
  SETTABLEKS R19 R18 K102 ["Color"]
  LOADK R19 K135 [0.88]
  SETTABLEKS R19 R18 K132 ["Transparency"]
  LOADN R19 2
  SETTABLEKS R19 R18 K103 ["Thickness"]
  CALL R16 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K155 [".StartPage-PillBackground"]
  DUPTABLE R15 K17 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R16 K156 ["$PillBackground"]
  SETTABLEKS R16 R15 K15 ["BackgroundColor3"]
  LOADN R16 0
  SETTABLEKS R16 R15 K16 ["BackgroundTransparency"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K157 [".StartPage-MenuItemSelectedBackground"]
  DUPTABLE R16 K17 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R17 K158 ["$MenuItemSelectedBackground"]
  SETTABLEKS R17 R16 K15 ["BackgroundColor3"]
  LOADN R17 0
  SETTABLEKS R17 R16 K16 ["BackgroundTransparency"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K159 [".StartPage-ShimmerBackground"]
  DUPTABLE R17 K17 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R18 K160 ["$ShimmerBackground"]
  SETTABLEKS R18 R17 K15 ["BackgroundColor3"]
  LOADK R18 K161 ["$ShimmerBackgroundTransparency"]
  SETTABLEKS R18 R17 K16 ["BackgroundTransparency"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K162 [".StartPage-ShimmerForeground"]
  DUPTABLE R18 K26 [{"BackgroundColor3"}]
  LOADK R19 K163 ["$ShimmerForeground"]
  SETTABLEKS R19 R18 K15 ["BackgroundColor3"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K164 [".StartPage-ShimmerGradient"]
  DUPTABLE R19 K165 [{"Transparency"}]
  LOADK R20 K166 ["$ShimmerGradientTransparency"]
  SETTABLEKS R20 R19 K132 ["Transparency"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K167 [".StartPage-NoExperiences"]
  DUPTABLE R20 K169 [{"Image", "Size"}]
  LOADK R21 K170 ["$NoExperiences"]
  SETTABLEKS R21 R20 K168 ["Image"]
  GETIMPORT R21 K172 [UDim2.new]
  LOADN R22 0
  LOADN R23 96
  LOADN R24 0
  LOADN R25 96
  CALL R21 4 1
  SETTABLEKS R21 R20 K72 ["Size"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K173 [".StartPage-RightIcon"]
  DUPTABLE R21 K169 [{"Image", "Size"}]
  LOADK R22 K174 ["$RightChevron"]
  SETTABLEKS R22 R21 K168 ["Image"]
  LOADK R22 K76 ["$IconSizeM"]
  SETTABLEKS R22 R21 K72 ["Size"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K175 [".StartPage-HomeIcon"]
  DUPTABLE R22 K169 [{"Image", "Size"}]
  LOADK R23 K176 ["$Home"]
  SETTABLEKS R23 R22 K168 ["Image"]
  LOADK R23 K76 ["$IconSizeM"]
  SETTABLEKS R23 R22 K72 ["Size"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K177 [".StartPage-PlusIcon"]
  DUPTABLE R23 K169 [{"Image", "Size"}]
  LOADK R24 K178 ["$Plus"]
  SETTABLEKS R24 R23 K168 ["Image"]
  GETIMPORT R24 K172 [UDim2.new]
  LOADN R25 0
  LOADN R26 16
  LOADN R27 0
  LOADN R28 16
  CALL R24 4 1
  SETTABLEKS R24 R23 K72 ["Size"]
  CALL R21 2 1
  SETLIST R5 R6 16 [49]
  MOVE R6 R2
  LOADK R7 K179 [".StartPage-GridIcon"]
  DUPTABLE R8 K169 [{"Image", "Size"}]
  LOADK R9 K180 ["$Grid"]
  SETTABLEKS R9 R8 K168 ["Image"]
  GETIMPORT R9 K172 [UDim2.new]
  LOADN R10 0
  LOADN R11 24
  LOADN R12 0
  LOADN R13 24
  CALL R9 4 1
  SETTABLEKS R9 R8 K72 ["Size"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K181 [".StartPage-ListIcon"]
  DUPTABLE R9 K169 [{"Image", "Size"}]
  LOADK R10 K182 ["$List"]
  SETTABLEKS R10 R9 K168 ["Image"]
  GETIMPORT R10 K172 [UDim2.new]
  LOADN R11 0
  LOADN R12 24
  LOADN R13 0
  LOADN R14 24
  CALL R10 4 1
  SETTABLEKS R10 R9 K72 ["Size"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K183 [".StartPage-ExperiencesIcon"]
  DUPTABLE R10 K169 [{"Image", "Size"}]
  LOADK R11 K184 ["$Experiences"]
  SETTABLEKS R11 R10 K168 ["Image"]
  LOADK R11 K76 ["$IconSizeM"]
  SETTABLEKS R11 R10 K72 ["Size"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K185 [".StartPage-ArchiveIcon"]
  DUPTABLE R11 K169 [{"Image", "Size"}]
  LOADK R12 K186 ["$Archive"]
  SETTABLEKS R12 R11 K168 ["Image"]
  LOADK R12 K76 ["$IconSizeM"]
  SETTABLEKS R12 R11 K72 ["Size"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K187 [".StartPage-TemplatesIcon"]
  DUPTABLE R12 K169 [{"Image", "Size"}]
  LOADK R13 K188 ["$Templates"]
  SETTABLEKS R13 R12 K168 ["Image"]
  LOADK R13 K76 ["$IconSizeM"]
  SETTABLEKS R13 R12 K72 ["Size"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K189 [".StartPage-RecentsIcon"]
  DUPTABLE R13 K169 [{"Image", "Size"}]
  LOADK R14 K190 ["$Recents"]
  SETTABLEKS R14 R13 K168 ["Image"]
  LOADK R14 K76 ["$IconSizeM"]
  SETTABLEKS R14 R13 K72 ["Size"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K191 [".StartPage-SearchIcon"]
  DUPTABLE R14 K169 [{"Image", "Size"}]
  LOADK R15 K192 ["$Search"]
  SETTABLEKS R15 R14 K168 ["Image"]
  LOADK R15 K76 ["$IconSizeM"]
  SETTABLEKS R15 R14 K72 ["Size"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K193 [".StartPage-KebabIcon"]
  DUPTABLE R15 K169 [{"Image", "Size"}]
  LOADK R16 K194 ["$Kebab"]
  SETTABLEKS R16 R15 K168 ["Image"]
  LOADK R16 K195 ["$IconSizeL"]
  SETTABLEKS R16 R15 K72 ["Size"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K196 [".StartPage-CancelIcon"]
  DUPTABLE R16 K169 [{"Image", "Size"}]
  LOADK R17 K197 ["$Cancel"]
  SETTABLEKS R17 R16 K168 ["Image"]
  LOADK R17 K198 ["$IconSizeS"]
  SETTABLEKS R17 R16 K72 ["Size"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K199 [".StartPage-CancelWhiteIcon"]
  DUPTABLE R17 K169 [{"Image", "Size"}]
  LOADK R18 K200 ["$CancelWhite"]
  SETTABLEKS R18 R17 K168 ["Image"]
  LOADK R18 K198 ["$IconSizeS"]
  SETTABLEKS R18 R17 K72 ["Size"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K201 [".StartPage-Chevron"]
  DUPTABLE R18 K202 [{"Image"}]
  LOADK R19 K203 ["$Chevron"]
  SETTABLEKS R19 R18 K168 ["Image"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K204 [".StartPage-TeamCreateOnlineBackground"]
  DUPTABLE R19 K26 [{"BackgroundColor3"}]
  LOADK R20 K205 ["$TeamCreatePresenceOnlineColor"]
  SETTABLEKS R20 R19 K15 ["BackgroundColor3"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K206 [".StartPage-AdditionalTCCollaboratorBackground"]
  DUPTABLE R20 K26 [{"BackgroundColor3"}]
  LOADK R21 K107 ["$HoverBorder"]
  SETTABLEKS R21 R20 K15 ["BackgroundColor3"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K207 [".StartPage-ColumnTutorialPopup"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K208 ["::UIListLayout"]
  DUPTABLE R25 K212 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R26 K214 [Enum.FillDirection.Vertical]
  SETTABLEKS R26 R25 K209 ["FillDirection"]
  GETIMPORT R26 K90 [UDim.new]
  LOADN R27 0
  LOADN R28 32
  CALL R26 2 1
  SETTABLEKS R26 R25 K210 ["Padding"]
  GETIMPORT R26 K216 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R26 R25 K211 ["SortOrder"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K217 [".StartPage-SearchResultRowColumn"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K208 ["::UIListLayout"]
  DUPTABLE R26 K212 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R27 K214 [Enum.FillDirection.Vertical]
  SETTABLEKS R27 R26 K209 ["FillDirection"]
  GETIMPORT R27 K90 [UDim.new]
  LOADN R28 0
  LOADN R29 6
  CALL R27 2 1
  SETTABLEKS R27 R26 K210 ["Padding"]
  GETIMPORT R27 K216 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R27 R26 K211 ["SortOrder"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K218 [".StartPage-HomePageColumn"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K208 ["::UIListLayout"]
  DUPTABLE R27 K212 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R28 K214 [Enum.FillDirection.Vertical]
  SETTABLEKS R28 R27 K209 ["FillDirection"]
  GETIMPORT R28 K90 [UDim.new]
  LOADN R29 0
  LOADN R30 16
  CALL R28 2 1
  SETTABLEKS R28 R27 K210 ["Padding"]
  GETIMPORT R28 K216 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R28 R27 K211 ["SortOrder"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  SETLIST R5 R6 16 [65]
  MOVE R6 R2
  LOADK R7 K219 [".StartPage-PopupTextboxColumn"]
  NEWTABLE R8 0 0
  NEWTABLE R9 0 1
  MOVE R10 R2
  LOADK R11 K208 ["::UIListLayout"]
  DUPTABLE R12 K212 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R13 K214 [Enum.FillDirection.Vertical]
  SETTABLEKS R13 R12 K209 ["FillDirection"]
  GETIMPORT R13 K90 [UDim.new]
  LOADN R14 0
  LOADN R15 8
  CALL R13 2 1
  SETTABLEKS R13 R12 K210 ["Padding"]
  GETIMPORT R13 K216 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R13 R12 K211 ["SortOrder"]
  CALL R10 2 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 1
  MOVE R7 R2
  LOADK R8 K220 [".StartPage-PopupTextBoxTextButtonColumn"]
  NEWTABLE R9 0 0
  NEWTABLE R10 0 1
  MOVE R11 R2
  LOADK R12 K208 ["::UIListLayout"]
  DUPTABLE R13 K212 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R14 K214 [Enum.FillDirection.Vertical]
  SETTABLEKS R14 R13 K209 ["FillDirection"]
  GETIMPORT R14 K90 [UDim.new]
  LOADN R15 0
  LOADN R16 16
  CALL R14 2 1
  SETTABLEKS R14 R13 K210 ["Padding"]
  GETIMPORT R14 K216 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R14 R13 K211 ["SortOrder"]
  CALL R11 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 -1
  SETLIST R5 R6 -1 [81]
  DUPTABLE R6 K233 [{"IconSizeS", "IconSize", "IconSizeM", "IconSizeL", "CornerSize8", "CornerSize12", "CornerSize16", "CornerSize32", "TextSizeXS", "TextSize", "TextSizeM", "TextSizeL", "TeamCreatePresenceOnlineColor"}]
  GETIMPORT R7 K172 [UDim2.new]
  LOADN R8 0
  LOADN R9 12
  LOADN R10 0
  LOADN R11 12
  CALL R7 4 1
  SETTABLEKS R7 R6 K221 ["IconSizeS"]
  GETIMPORT R7 K172 [UDim2.new]
  LOADN R8 0
  LOADN R9 16
  LOADN R10 0
  LOADN R11 16
  CALL R7 4 1
  SETTABLEKS R7 R6 K222 ["IconSize"]
  GETIMPORT R7 K172 [UDim2.new]
  LOADN R8 0
  LOADN R9 24
  LOADN R10 0
  LOADN R11 24
  CALL R7 4 1
  SETTABLEKS R7 R6 K223 ["IconSizeM"]
  GETIMPORT R7 K172 [UDim2.new]
  LOADN R8 0
  LOADN R9 32
  LOADN R10 0
  LOADN R11 32
  CALL R7 4 1
  SETTABLEKS R7 R6 K224 ["IconSizeL"]
  GETIMPORT R7 K90 [UDim.new]
  LOADN R8 0
  LOADN R9 8
  CALL R7 2 1
  SETTABLEKS R7 R6 K225 ["CornerSize8"]
  GETIMPORT R7 K90 [UDim.new]
  LOADN R8 0
  LOADN R9 12
  CALL R7 2 1
  SETTABLEKS R7 R6 K226 ["CornerSize12"]
  GETIMPORT R7 K90 [UDim.new]
  LOADN R8 0
  LOADN R9 16
  CALL R7 2 1
  SETTABLEKS R7 R6 K227 ["CornerSize16"]
  GETIMPORT R7 K90 [UDim.new]
  LOADN R8 0
  LOADN R9 32
  CALL R7 2 1
  SETTABLEKS R7 R6 K228 ["CornerSize32"]
  LOADN R7 12
  SETTABLEKS R7 R6 K229 ["TextSizeXS"]
  LOADN R7 16
  SETTABLEKS R7 R6 K62 ["TextSize"]
  LOADN R7 24
  SETTABLEKS R7 R6 K230 ["TextSizeM"]
  LOADN R7 40
  SETTABLEKS R7 R6 K231 ["TextSizeL"]
  GETIMPORT R7 K44 [Color3.fromHex]
  LOADK R8 K234 ["#0fb369"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K232 ["TeamCreatePresenceOnlineColor"]
  MOVE R7 R3
  LOADK R8 K2 ["StartPage"]
  MOVE R9 R5
  MOVE R10 R6
  CALL R7 3 -1
  RETURN R7 -1
