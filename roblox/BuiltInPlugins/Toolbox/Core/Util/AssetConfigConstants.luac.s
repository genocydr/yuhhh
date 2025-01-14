PROTO_0:
  DUPTABLE R2 K3 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R0 R2 K0 ["type"]
  LOADB R3 1
  SETTABLEKS R3 R2 K1 ["isCatalog"]
  JUMPIFEQKB R1 TRUE [+2]
  LOADB R3 0 +1
  LOADB R3 1
  SETTABLEKS R3 R2 K2 ["isUploadable"]
  RETURN R2 1

PROTO_1:
  DUPTABLE R2 K3 [{"type", "isMarketplace", "isBuyable"}]
  SETTABLEKS R0 R2 K0 ["type"]
  LOADB R3 1
  SETTABLEKS R3 R2 K1 ["isMarketplace"]
  JUMPIFEQKB R1 TRUE [+2]
  LOADB R3 0 +1
  LOADB R3 1
  SETTABLEKS R3 R2 K2 ["isBuyable"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["enumerate"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K7 ["Core"]
  GETTABLEKS R2 R3 K8 ["Util"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K7 ["Core"]
  GETTABLEKS R5 R6 K9 ["Flags"]
  GETTABLEKS R4 R5 K10 ["getFFlagToolboxAddNewUGCAssetTypes"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R8 R0 K7 ["Core"]
  GETTABLEKS R7 R8 K8 ["Util"]
  GETTABLEKS R6 R7 K11 ["SharedFlags"]
  GETTABLEKS R5 R6 K12 ["getFFlagToolboxRestrictAssetConfig"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R6 R2 K13 ["convertArrayToTable"]
  CALL R5 1 1
  NEWTABLE R6 64 0
  LOADN R7 76
  SETTABLEKS R7 R6 K14 ["WIDTH"]
  LOADN R7 92
  SETTABLEKS R7 R6 K15 ["HEIGHT"]
  LOADN R7 132
  SETTABLEKS R7 R6 K16 ["MIN_WIDTH"]
  LOADN R7 244
  SETTABLEKS R7 R6 K17 ["MIN_HEIGHT"]
  LOADK R7 K18 ["https://en.help.roblox.com/hc/en-us/articles/115004647846-Roblox-Terms-of-Use"]
  SETTABLEKS R7 R6 K19 ["TERM_OF_USE_URL"]
  LOADK R7 K20 ["https://www.roblox.com/my/account#!/info"]
  SETTABLEKS R7 R6 K21 ["ACCOUNT_SETTING_URL"]
  LOADN R7 50
  SETTABLEKS R7 R6 K22 ["NAME_CHARACTER_LIMIT"]
  LOADN R7 232
  SETTABLEKS R7 R6 K23 ["DESCRIPTION_CHARACTER_LIMIT"]
  LOADN R7 244
  SETTABLEKS R7 R6 K24 ["PACKAGE_NOTE_CHARACTER_LIMIT"]
  LOADN R7 180
  SETTABLEKS R7 R6 K25 ["TITLE_GUTTER_WIDTH"]
  GETIMPORT R7 K28 [UDim2.new]
  LOADN R8 0
  LOADN R9 150
  LOADN R10 0
  LOADN R11 200
  CALL R7 4 1
  SETTABLEKS R7 R6 K29 ["OverrideAssetItemSize"]
  MOVE R7 R5
  NEWTABLE R8 0 3
  LOADK R9 K30 ["ImagePicker"]
  LOADK R10 K31 ["Thumbnail"]
  LOADK R11 K32 ["ModelPreview"]
  SETLIST R8 R9 3 [1]
  CALL R7 1 1
  SETTABLEKS R7 R6 K33 ["PreviewTypes"]
  MOVE R7 R5
  NEWTABLE R8 0 5
  LOADK R9 K34 ["Sales"]
  LOADK R10 K35 ["General"]
  LOADK R11 K36 ["Versions"]
  LOADK R12 K37 ["Override"]
  LOADK R13 K38 ["Permissions"]
  SETLIST R8 R9 5 [1]
  CALL R7 1 1
  SETTABLEKS R7 R6 K39 ["SIDE_TABS"]
  MOVE R7 R5
  NEWTABLE R8 0 3
  LOADK R9 K40 ["Title"]
  LOADK R10 K41 ["Description"]
  LOADK R11 K42 ["Price"]
  SETLIST R8 R9 3 [1]
  CALL R7 1 1
  SETTABLEKS R7 R6 K43 ["FIELD_NAMES"]
  NEWTABLE R7 0 14
  DUPTABLE R8 K45 [{"name"}]
  GETIMPORT R10 K49 [Enum.Genre.All]
  GETTABLEKS R9 R10 K50 ["Name"]
  SETTABLEKS R9 R8 K44 ["name"]
  DUPTABLE R9 K45 [{"name"}]
  GETIMPORT R11 K52 [Enum.Genre.TownAndCity]
  GETTABLEKS R10 R11 K50 ["Name"]
  SETTABLEKS R10 R9 K44 ["name"]
  DUPTABLE R10 K45 [{"name"}]
  GETIMPORT R12 K54 [Enum.Genre.Fantasy]
  GETTABLEKS R11 R12 K50 ["Name"]
  SETTABLEKS R11 R10 K44 ["name"]
  DUPTABLE R11 K45 [{"name"}]
  GETIMPORT R13 K56 [Enum.Genre.SciFi]
  GETTABLEKS R12 R13 K50 ["Name"]
  SETTABLEKS R12 R11 K44 ["name"]
  DUPTABLE R12 K45 [{"name"}]
  GETIMPORT R14 K58 [Enum.Genre.Ninja]
  GETTABLEKS R13 R14 K50 ["Name"]
  SETTABLEKS R13 R12 K44 ["name"]
  DUPTABLE R13 K45 [{"name"}]
  GETIMPORT R15 K60 [Enum.Genre.Scary]
  GETTABLEKS R14 R15 K50 ["Name"]
  SETTABLEKS R14 R13 K44 ["name"]
  DUPTABLE R14 K45 [{"name"}]
  GETIMPORT R16 K62 [Enum.Genre.Pirate]
  GETTABLEKS R15 R16 K50 ["Name"]
  SETTABLEKS R15 R14 K44 ["name"]
  DUPTABLE R15 K45 [{"name"}]
  GETIMPORT R17 K64 [Enum.Genre.Adventure]
  GETTABLEKS R16 R17 K50 ["Name"]
  SETTABLEKS R16 R15 K44 ["name"]
  DUPTABLE R16 K45 [{"name"}]
  GETIMPORT R18 K66 [Enum.Genre.Sports]
  GETTABLEKS R17 R18 K50 ["Name"]
  SETTABLEKS R17 R16 K44 ["name"]
  DUPTABLE R17 K45 [{"name"}]
  GETIMPORT R19 K68 [Enum.Genre.Funny]
  GETTABLEKS R18 R19 K50 ["Name"]
  SETTABLEKS R18 R17 K44 ["name"]
  DUPTABLE R18 K45 [{"name"}]
  GETIMPORT R20 K70 [Enum.Genre.WildWest]
  GETTABLEKS R19 R20 K50 ["Name"]
  SETTABLEKS R19 R18 K44 ["name"]
  DUPTABLE R19 K45 [{"name"}]
  GETIMPORT R21 K72 [Enum.Genre.War]
  GETTABLEKS R20 R21 K50 ["Name"]
  SETTABLEKS R20 R19 K44 ["name"]
  DUPTABLE R20 K45 [{"name"}]
  GETIMPORT R22 K74 [Enum.Genre.SkatePark]
  GETTABLEKS R21 R22 K50 ["Name"]
  SETTABLEKS R21 R20 K44 ["name"]
  DUPTABLE R21 K45 [{"name"}]
  GETIMPORT R23 K76 [Enum.Genre.Tutorial]
  GETTABLEKS R22 R23 K50 ["Name"]
  SETTABLEKS R22 R21 K44 ["name"]
  SETLIST R7 R8 14 [1]
  SETTABLEKS R7 R6 K77 ["GENRE_TYPE"]
  MOVE R7 R5
  NEWTABLE R8 0 3
  LOADK R9 K78 ["EDIT_FLOW"]
  LOADK R10 K79 ["UPLOAD_FLOW"]
  LOADK R11 K80 ["DOWNLOAD_FLOW"]
  SETLIST R8 R9 3 [1]
  CALL R7 1 1
  SETTABLEKS R7 R6 K81 ["FLOW_TYPE"]
  MOVE R7 R5
  NEWTABLE R8 0 5
  LOADK R9 K82 ["ASSET_TYPE_SELECTION"]
  LOADK R10 K83 ["ASSET_VALIDATION"]
  LOADK R11 K84 ["CONFIGURE_ASSET"]
  LOADK R12 K85 ["UPLOADING_ASSET"]
  LOADK R13 K86 ["UPLOAD_ASSET_RESULT"]
  SETLIST R8 R9 5 [1]
  CALL R7 1 1
  SETTABLEKS R7 R6 K87 ["SCREENS"]
  MOVE R7 R5
  NEWTABLE R8 0 8
  LOADK R9 K88 ["Unknown"]
  LOADK R10 K89 ["ReviewPending"]
  LOADK R11 K90 ["Moderated"]
  LOADK R12 K91 ["ReviewApproved"]
  LOADK R13 K92 ["OnSale"]
  LOADK R14 K93 ["OffSale"]
  LOADK R15 K94 ["DelayedRelease"]
  LOADK R16 K95 ["Free"]
  SETLIST R8 R9 8 [1]
  CALL R7 1 1
  SETTABLEKS R7 R6 K96 ["ASSET_STATUS"]
  MOVE R8 R4
  CALL R8 0 1
  JUMPIFNOT R8 [+17]
  MOVE R7 R5
  NEWTABLE R8 0 10
  LOADK R9 K97 ["AssetType"]
  LOADK R10 K98 ["Authorization"]
  LOADK R11 K99 ["Invalid"]
  LOADK R12 K100 ["KillSwitch"]
  LOADK R13 K101 ["Quota"]
  LOADK R14 K102 ["SafetyStatus"]
  LOADK R15 K103 ["SellerAccountNotOnboarded"]
  LOADK R16 K104 ["SellerAccountRestricted"]
  LOADK R17 K105 ["UnsupportedAssetOwner"]
  LOADK R18 K106 ["Verification"]
  SETLIST R8 R9 10 [1]
  CALL R7 1 1
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K107 ["RESTRICTION_TYPE"]
  MOVE R7 R5
  NEWTABLE R8 0 1
  LOADK R9 K92 ["OnSale"]
  SETLIST R8 R9 1 [1]
  CALL R7 1 1
  SETTABLEKS R7 R6 K108 ["SALES_STATUS_FOR_PRICE"]
  DUPCLOSURE R7 K109 [PROTO_0]
  DUPCLOSURE R8 K110 [PROTO_1]
  NEWTABLE R9 0 28
  GETIMPORT R11 K112 [Enum.AssetType.Hat]
  DUPTABLE R10 K116 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R11 R10 K113 ["type"]
  LOADB R12 1
  SETTABLEKS R12 R10 K114 ["isCatalog"]
  LOADB R12 1
  SETTABLEKS R12 R10 K115 ["isUploadable"]
  GETIMPORT R12 K118 [Enum.AssetType.TShirt]
  DUPTABLE R11 K116 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R12 R11 K113 ["type"]
  LOADB R13 1
  SETTABLEKS R13 R11 K114 ["isCatalog"]
  LOADB R13 0
  SETTABLEKS R13 R11 K115 ["isUploadable"]
  GETIMPORT R13 K120 [Enum.AssetType.Shirt]
  DUPTABLE R12 K116 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R13 R12 K113 ["type"]
  LOADB R14 1
  SETTABLEKS R14 R12 K114 ["isCatalog"]
  LOADB R14 0
  SETTABLEKS R14 R12 K115 ["isUploadable"]
  GETIMPORT R14 K122 [Enum.AssetType.Pants]
  DUPTABLE R13 K116 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R14 R13 K113 ["type"]
  LOADB R15 1
  SETTABLEKS R15 R13 K114 ["isCatalog"]
  LOADB R15 0
  SETTABLEKS R15 R13 K115 ["isUploadable"]
  GETIMPORT R15 K124 [Enum.AssetType.HairAccessory]
  DUPTABLE R14 K116 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R15 R14 K113 ["type"]
  LOADB R16 1
  SETTABLEKS R16 R14 K114 ["isCatalog"]
  LOADB R16 1
  SETTABLEKS R16 R14 K115 ["isUploadable"]
  GETIMPORT R16 K126 [Enum.AssetType.FaceAccessory]
  DUPTABLE R15 K116 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R16 R15 K113 ["type"]
  LOADB R17 1
  SETTABLEKS R17 R15 K114 ["isCatalog"]
  LOADB R17 1
  SETTABLEKS R17 R15 K115 ["isUploadable"]
  GETIMPORT R17 K128 [Enum.AssetType.NeckAccessory]
  DUPTABLE R16 K116 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R17 R16 K113 ["type"]
  LOADB R18 1
  SETTABLEKS R18 R16 K114 ["isCatalog"]
  LOADB R18 1
  SETTABLEKS R18 R16 K115 ["isUploadable"]
  GETIMPORT R18 K130 [Enum.AssetType.ShoulderAccessory]
  DUPTABLE R17 K116 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R18 R17 K113 ["type"]
  LOADB R19 1
  SETTABLEKS R19 R17 K114 ["isCatalog"]
  LOADB R19 1
  SETTABLEKS R19 R17 K115 ["isUploadable"]
  GETIMPORT R19 K132 [Enum.AssetType.FrontAccessory]
  DUPTABLE R18 K116 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R19 R18 K113 ["type"]
  LOADB R20 1
  SETTABLEKS R20 R18 K114 ["isCatalog"]
  LOADB R20 1
  SETTABLEKS R20 R18 K115 ["isUploadable"]
  GETIMPORT R20 K134 [Enum.AssetType.BackAccessory]
  DUPTABLE R19 K116 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R20 R19 K113 ["type"]
  LOADB R21 1
  SETTABLEKS R21 R19 K114 ["isCatalog"]
  LOADB R21 1
  SETTABLEKS R21 R19 K115 ["isUploadable"]
  GETIMPORT R21 K136 [Enum.AssetType.WaistAccessory]
  DUPTABLE R20 K116 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R21 R20 K113 ["type"]
  LOADB R22 1
  SETTABLEKS R22 R20 K114 ["isCatalog"]
  LOADB R22 1
  SETTABLEKS R22 R20 K115 ["isUploadable"]
  GETIMPORT R22 K138 [Enum.AssetType.TShirtAccessory]
  DUPTABLE R21 K116 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R22 R21 K113 ["type"]
  LOADB R23 1
  SETTABLEKS R23 R21 K114 ["isCatalog"]
  LOADB R23 1
  SETTABLEKS R23 R21 K115 ["isUploadable"]
  GETIMPORT R23 K140 [Enum.AssetType.ShirtAccessory]
  DUPTABLE R22 K116 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R23 R22 K113 ["type"]
  LOADB R24 1
  SETTABLEKS R24 R22 K114 ["isCatalog"]
  LOADB R24 1
  SETTABLEKS R24 R22 K115 ["isUploadable"]
  GETIMPORT R24 K142 [Enum.AssetType.PantsAccessory]
  DUPTABLE R23 K116 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R24 R23 K113 ["type"]
  LOADB R25 1
  SETTABLEKS R25 R23 K114 ["isCatalog"]
  LOADB R25 1
  SETTABLEKS R25 R23 K115 ["isUploadable"]
  GETIMPORT R25 K144 [Enum.AssetType.JacketAccessory]
  DUPTABLE R24 K116 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R25 R24 K113 ["type"]
  LOADB R26 1
  SETTABLEKS R26 R24 K114 ["isCatalog"]
  LOADB R26 1
  SETTABLEKS R26 R24 K115 ["isUploadable"]
  GETIMPORT R26 K146 [Enum.AssetType.SweaterAccessory]
  DUPTABLE R25 K116 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R26 R25 K113 ["type"]
  LOADB R27 1
  SETTABLEKS R27 R25 K114 ["isCatalog"]
  LOADB R27 1
  SETTABLEKS R27 R25 K115 ["isUploadable"]
  SETLIST R9 R10 16 [1]
  GETIMPORT R11 K148 [Enum.AssetType.ShortsAccessory]
  DUPTABLE R10 K116 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R11 R10 K113 ["type"]
  LOADB R12 1
  SETTABLEKS R12 R10 K114 ["isCatalog"]
  LOADB R12 1
  SETTABLEKS R12 R10 K115 ["isUploadable"]
  GETIMPORT R12 K150 [Enum.AssetType.LeftShoeAccessory]
  DUPTABLE R11 K116 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R12 R11 K113 ["type"]
  LOADB R13 1
  SETTABLEKS R13 R11 K114 ["isCatalog"]
  LOADB R13 1
  SETTABLEKS R13 R11 K115 ["isUploadable"]
  GETIMPORT R13 K152 [Enum.AssetType.RightShoeAccessory]
  DUPTABLE R12 K116 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R13 R12 K113 ["type"]
  LOADB R14 1
  SETTABLEKS R14 R12 K114 ["isCatalog"]
  LOADB R14 1
  SETTABLEKS R14 R12 K115 ["isUploadable"]
  GETIMPORT R14 K154 [Enum.AssetType.DressSkirtAccessory]
  DUPTABLE R13 K116 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R14 R13 K113 ["type"]
  LOADB R15 1
  SETTABLEKS R15 R13 K114 ["isCatalog"]
  LOADB R15 1
  SETTABLEKS R15 R13 K115 ["isUploadable"]
  GETIMPORT R15 K156 [Enum.AssetType.Model]
  DUPTABLE R14 K159 [{"type", "isMarketplace", "isBuyable"}]
  SETTABLEKS R15 R14 K113 ["type"]
  LOADB R16 1
  SETTABLEKS R16 R14 K157 ["isMarketplace"]
  LOADB R16 0
  SETTABLEKS R16 R14 K158 ["isBuyable"]
  GETIMPORT R16 K161 [Enum.AssetType.Decal]
  DUPTABLE R15 K159 [{"type", "isMarketplace", "isBuyable"}]
  SETTABLEKS R16 R15 K113 ["type"]
  LOADB R17 1
  SETTABLEKS R17 R15 K157 ["isMarketplace"]
  LOADB R17 0
  SETTABLEKS R17 R15 K158 ["isBuyable"]
  GETIMPORT R17 K163 [Enum.AssetType.Mesh]
  DUPTABLE R16 K159 [{"type", "isMarketplace", "isBuyable"}]
  SETTABLEKS R17 R16 K113 ["type"]
  LOADB R18 1
  SETTABLEKS R18 R16 K157 ["isMarketplace"]
  LOADB R18 0
  SETTABLEKS R18 R16 K158 ["isBuyable"]
  GETIMPORT R18 K165 [Enum.AssetType.MeshPart]
  DUPTABLE R17 K159 [{"type", "isMarketplace", "isBuyable"}]
  SETTABLEKS R18 R17 K113 ["type"]
  LOADB R19 1
  SETTABLEKS R19 R17 K157 ["isMarketplace"]
  LOADB R19 0
  SETTABLEKS R19 R17 K158 ["isBuyable"]
  GETIMPORT R19 K167 [Enum.AssetType.Audio]
  DUPTABLE R18 K159 [{"type", "isMarketplace", "isBuyable"}]
  SETTABLEKS R19 R18 K113 ["type"]
  LOADB R20 1
  SETTABLEKS R20 R18 K157 ["isMarketplace"]
  LOADB R20 0
  SETTABLEKS R20 R18 K158 ["isBuyable"]
  GETIMPORT R20 K169 [Enum.AssetType.Animation]
  DUPTABLE R19 K159 [{"type", "isMarketplace", "isBuyable"}]
  SETTABLEKS R20 R19 K113 ["type"]
  LOADB R21 1
  SETTABLEKS R21 R19 K157 ["isMarketplace"]
  LOADB R21 0
  SETTABLEKS R21 R19 K158 ["isBuyable"]
  GETIMPORT R21 K171 [Enum.AssetType.Video]
  DUPTABLE R20 K159 [{"type", "isMarketplace", "isBuyable"}]
  SETTABLEKS R21 R20 K113 ["type"]
  LOADB R22 1
  SETTABLEKS R22 R20 K157 ["isMarketplace"]
  LOADB R22 0
  SETTABLEKS R22 R20 K158 ["isBuyable"]
  GETIMPORT R26 K173 [Enum.AssetType.Plugin]
  DUPTABLE R21 K159 [{"type", "isMarketplace", "isBuyable"}]
  SETTABLEKS R26 R21 K113 ["type"]
  LOADB R27 1
  SETTABLEKS R27 R21 K157 ["isMarketplace"]
  LOADB R27 1
  SETTABLEKS R27 R21 K158 ["isBuyable"]
  SETLIST R9 R10 12 [17]
  SETTABLEKS R9 R6 K174 ["ASSET_TYPE_INFO"]
  GETTABLEKS R10 R6 K174 ["ASSET_TYPE_INFO"]
  GETIMPORT R12 K176 [Enum.AssetType.Package]
  DUPTABLE R11 K159 [{"type", "isMarketplace", "isBuyable"}]
  SETTABLEKS R12 R11 K113 ["type"]
  LOADB R13 1
  SETTABLEKS R13 R11 K157 ["isMarketplace"]
  LOADB R13 0
  SETTABLEKS R13 R11 K158 ["isBuyable"]
  FASTCALL2 TABLE_INSERT R10 R11 [+3]
  GETIMPORT R9 K179 [table.insert]
  CALL R9 2 0
  MOVE R9 R3
  CALL R9 0 1
  JUMPIFNOT R9 [+144]
  GETTABLEKS R10 R6 K174 ["ASSET_TYPE_INFO"]
  GETIMPORT R12 K181 [Enum.AssetType.Torso]
  DUPTABLE R11 K116 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R12 R11 K113 ["type"]
  LOADB R13 1
  SETTABLEKS R13 R11 K114 ["isCatalog"]
  LOADB R13 1
  SETTABLEKS R13 R11 K115 ["isUploadable"]
  FASTCALL2 TABLE_INSERT R10 R11 [+3]
  GETIMPORT R9 K179 [table.insert]
  CALL R9 2 0
  GETTABLEKS R10 R6 K174 ["ASSET_TYPE_INFO"]
  GETIMPORT R12 K183 [Enum.AssetType.RightArm]
  DUPTABLE R11 K116 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R12 R11 K113 ["type"]
  LOADB R13 1
  SETTABLEKS R13 R11 K114 ["isCatalog"]
  LOADB R13 1
  SETTABLEKS R13 R11 K115 ["isUploadable"]
  FASTCALL2 TABLE_INSERT R10 R11 [+3]
  GETIMPORT R9 K179 [table.insert]
  CALL R9 2 0
  GETTABLEKS R10 R6 K174 ["ASSET_TYPE_INFO"]
  GETIMPORT R12 K185 [Enum.AssetType.LeftArm]
  DUPTABLE R11 K116 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R12 R11 K113 ["type"]
  LOADB R13 1
  SETTABLEKS R13 R11 K114 ["isCatalog"]
  LOADB R13 1
  SETTABLEKS R13 R11 K115 ["isUploadable"]
  FASTCALL2 TABLE_INSERT R10 R11 [+3]
  GETIMPORT R9 K179 [table.insert]
  CALL R9 2 0
  GETTABLEKS R10 R6 K174 ["ASSET_TYPE_INFO"]
  GETIMPORT R12 K187 [Enum.AssetType.LeftLeg]
  DUPTABLE R11 K116 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R12 R11 K113 ["type"]
  LOADB R13 1
  SETTABLEKS R13 R11 K114 ["isCatalog"]
  LOADB R13 1
  SETTABLEKS R13 R11 K115 ["isUploadable"]
  FASTCALL2 TABLE_INSERT R10 R11 [+3]
  GETIMPORT R9 K179 [table.insert]
  CALL R9 2 0
  GETTABLEKS R10 R6 K174 ["ASSET_TYPE_INFO"]
  GETIMPORT R12 K189 [Enum.AssetType.RightLeg]
  DUPTABLE R11 K116 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R12 R11 K113 ["type"]
  LOADB R13 1
  SETTABLEKS R13 R11 K114 ["isCatalog"]
  LOADB R13 1
  SETTABLEKS R13 R11 K115 ["isUploadable"]
  FASTCALL2 TABLE_INSERT R10 R11 [+3]
  GETIMPORT R9 K179 [table.insert]
  CALL R9 2 0
  GETTABLEKS R10 R6 K174 ["ASSET_TYPE_INFO"]
  GETIMPORT R12 K191 [Enum.AssetType.DynamicHead]
  DUPTABLE R11 K116 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R12 R11 K113 ["type"]
  LOADB R13 1
  SETTABLEKS R13 R11 K114 ["isCatalog"]
  LOADB R13 1
  SETTABLEKS R13 R11 K115 ["isUploadable"]
  FASTCALL2 TABLE_INSERT R10 R11 [+3]
  GETIMPORT R9 K179 [table.insert]
  CALL R9 2 0
  GETTABLEKS R10 R6 K174 ["ASSET_TYPE_INFO"]
  GETIMPORT R12 K193 [Enum.AssetType.EyebrowAccessory]
  DUPTABLE R11 K116 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R12 R11 K113 ["type"]
  LOADB R13 1
  SETTABLEKS R13 R11 K114 ["isCatalog"]
  LOADB R13 1
  SETTABLEKS R13 R11 K115 ["isUploadable"]
  FASTCALL2 TABLE_INSERT R10 R11 [+3]
  GETIMPORT R9 K179 [table.insert]
  CALL R9 2 0
  GETTABLEKS R10 R6 K174 ["ASSET_TYPE_INFO"]
  GETIMPORT R12 K195 [Enum.AssetType.EyelashAccessory]
  DUPTABLE R11 K116 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R12 R11 K113 ["type"]
  LOADB R13 1
  SETTABLEKS R13 R11 K114 ["isCatalog"]
  LOADB R13 1
  SETTABLEKS R13 R11 K115 ["isUploadable"]
  FASTCALL2 TABLE_INSERT R10 R11 [+3]
  GETIMPORT R9 K179 [table.insert]
  CALL R9 2 0
  GETIMPORT R9 K197 [ipairs]
  GETTABLEKS R10 R6 K174 ["ASSET_TYPE_INFO"]
  CALL R9 1 3
  FORGPREP_INEXT R9
  GETIMPORT R15 K199 [next]
  MOVE R16 R13
  CALL R15 1 1
  JUMPIFNOTEQKNIL R15 [+2]
  LOADB R14 0 +1
  LOADB R14 1
  JUMPIFNOT R14 [+40]
  GETTABLEKS R15 R13 K114 ["isCatalog"]
  JUMPIFNOT R15 [+15]
  GETTABLEKS R15 R13 K157 ["isMarketplace"]
  JUMPIFNOT R15 [+12]
  GETIMPORT R15 K201 [error]
  GETTABLEKS R20 R13 K113 ["type"]
  FASTCALL1 TOSTRING R20 [+2]
  GETIMPORT R19 K203 [tostring]
  CALL R19 1 1
  MOVE R17 R19
  LOADK R18 K204 [" cannot be both a catalog and marketplace asset"]
  CONCAT R16 R17 R18
  CALL R15 1 0
  GETTABLEKS R16 R6 K174 ["ASSET_TYPE_INFO"]
  GETTABLEKS R17 R13 K113 ["type"]
  GETTABLE R15 R16 R17
  JUMPIFNOT R15 [+11]
  GETIMPORT R15 K201 [error]
  LOADK R17 K205 ["AssetConfigConstants.ASSET_TYPE_INFO contains a duplicate of "]
  GETTABLEKS R19 R13 K113 ["type"]
  FASTCALL1 TOSTRING R19 [+2]
  GETIMPORT R18 K203 [tostring]
  CALL R18 1 1
  CONCAT R16 R17 R18
  CALL R15 1 0
  GETTABLEKS R15 R6 K174 ["ASSET_TYPE_INFO"]
  GETTABLEKS R16 R13 K113 ["type"]
  SETTABLE R13 R15 R16
  FORGLOOP R9 2 [inext] [-50]
  MOVE R9 R5
  NEWTABLE R10 0 3
  LOADK R11 K206 ["WhitelistedPlugins"]
  LOADK R12 K207 ["MyPlugins"]
  LOADK R13 K208 ["GroupPlugins"]
  SETLIST R10 R11 3 [1]
  CALL R9 1 1
  SETTABLEKS R9 R6 K209 ["developCategoryType"]
  MOVE R9 R5
  NEWTABLE R10 0 2
  LOADK R11 K210 ["MyPackages"]
  LOADK R12 K211 ["GroupPackages"]
  SETLIST R10 R11 2 [1]
  CALL R9 1 1
  SETTABLEKS R9 R6 K212 ["packagesCategoryType"]
  MOVE R9 R5
  NEWTABLE R10 0 9
  LOADK R11 K213 ["Asset"]
  LOADK R12 K214 ["Avatar"]
  LOADK R13 K215 ["AvatarHeadShot"]
  LOADK R14 K216 ["BadgeIcon"]
  LOADK R15 K217 ["BundleThumbnail"]
  LOADK R16 K218 ["GameIcon"]
  LOADK R17 K219 ["GamePass"]
  LOADK R18 K220 ["GroupIcon"]
  LOADK R19 K221 ["Outfit"]
  SETLIST R10 R11 9 [1]
  CALL R9 1 1
  SETTABLEKS R9 R6 K222 ["rbxThumbTypes"]
  DUPTABLE R9 K226 [{"AvatarHeadshotImageSize", "GroupIconImageSize", "AssetThumbnailSize"}]
  LOADN R10 60
  SETTABLEKS R10 R9 K223 ["AvatarHeadshotImageSize"]
  LOADN R10 150
  SETTABLEKS R10 R9 K224 ["GroupIconImageSize"]
  LOADN R10 164
  SETTABLEKS R10 R9 K225 ["AssetThumbnailSize"]
  SETTABLEKS R9 R6 K227 ["rbxThumbSizes"]
  DUPTABLE R9 K233 [{"MaxThumbnails", "AspectRatioHeight", "AspectRatioWidth", "RecommendedHeight", "RecommendedWidth"}]
  LOADN R10 5
  SETTABLEKS R10 R9 K228 ["MaxThumbnails"]
  LOADN R10 9
  SETTABLEKS R10 R9 K229 ["AspectRatioHeight"]
  LOADN R10 16
  SETTABLEKS R10 R9 K230 ["AspectRatioWidth"]
  LOADN R10 176
  SETTABLEKS R10 R9 K231 ["RecommendedHeight"]
  LOADN R10 0
  SETTABLEKS R10 R9 K232 ["RecommendedWidth"]
  SETTABLEKS R9 R6 K234 ["additionalImages"]
  NEWTABLE R9 0 3
  LOADK R10 K235 ["jpg"]
  LOADK R11 K236 ["jpeg"]
  LOADK R12 K237 ["png"]
  SETLIST R9 R10 3 [1]
  SETTABLEKS R9 R6 K238 ["IMAGE_TYPES"]
  LOADK R9 K239 ["Success"]
  SETTABLEKS R9 R6 K240 ["TAGS_SUGGESTION_SUCCESS"]
  LOADN R9 5
  SETTABLEKS R9 R6 K241 ["MAX_DISPLAY_SUGGESTIONS"]
  LOADN R9 10
  SETTABLEKS R9 R6 K242 ["MAX_FETCH_SUGGESTIONS"]
  LOADK R9 K243 ["avatar_meshpart_accessory"]
  SETTABLEKS R9 R6 K244 ["AVATAR_MESHPART_ACCESSORY_FORMAT"]
  LOADK R9 K245 ["EA0A21C3-8388-4038-9BD5-92C8B1B7BF8E"]
  SETTABLEKS R9 R6 K246 ["MULTIPART_FORM_BOUNDARY"]
  LOADK R9 K247 ["OverrideAssetId"]
  SETTABLEKS R9 R6 K248 ["OVERRIDE_ASSET_ID"]
  DUPTABLE R9 K251 [{"Public", "Private"}]
  LOADB R10 1
  SETTABLEKS R10 R9 K249 ["Public"]
  LOADB R10 0
  SETTABLEKS R10 R9 K250 ["Private"]
  SETTABLEKS R9 R6 K252 ["SHARING_KEYS"]
  MOVE R9 R1
  LOADK R10 K253 ["UGCBundleTypes"]
  NEWTABLE R11 0 2
  LOADK R12 K254 ["Body"]
  LOADK R13 K190 ["DynamicHead"]
  SETLIST R11 R12 2 [1]
  CALL R9 2 1
  SETTABLEKS R9 R6 K253 ["UGCBundleTypes"]
  NEWTABLE R9 2 0
  GETTABLEKS R12 R6 K253 ["UGCBundleTypes"]
  GETTABLEKS R11 R12 K254 ["Body"]
  GETTABLEKS R10 R11 K255 ["rawValue"]
  CALL R10 0 1
  GETTABLEKS R12 R6 K253 ["UGCBundleTypes"]
  GETTABLEKS R11 R12 K254 ["Body"]
  SETTABLE R11 R9 R10
  GETTABLEKS R12 R6 K253 ["UGCBundleTypes"]
  GETTABLEKS R11 R12 K190 ["DynamicHead"]
  GETTABLEKS R10 R11 K255 ["rawValue"]
  CALL R10 0 1
  GETTABLEKS R12 R6 K253 ["UGCBundleTypes"]
  GETTABLEKS R11 R12 K190 ["DynamicHead"]
  SETTABLE R11 R9 R10
  SETTABLEKS R9 R6 K256 ["UGCBundleTypeStringToEnumeration"]
  NEWTABLE R9 16 0
  GETIMPORT R10 K191 [Enum.AssetType.DynamicHead]
  SETTABLEKS R10 R9 K190 ["DynamicHead"]
  GETIMPORT R10 K185 [Enum.AssetType.LeftArm]
  SETTABLEKS R10 R9 K184 ["LeftArm"]
  GETIMPORT R10 K187 [Enum.AssetType.LeftLeg]
  SETTABLEKS R10 R9 K186 ["LeftLeg"]
  GETIMPORT R10 K183 [Enum.AssetType.RightArm]
  SETTABLEKS R10 R9 K182 ["RightArm"]
  GETIMPORT R10 K189 [Enum.AssetType.RightLeg]
  SETTABLEKS R10 R9 K188 ["RightLeg"]
  GETIMPORT R10 K181 [Enum.AssetType.Torso]
  SETTABLEKS R10 R9 K180 ["Torso"]
  GETIMPORT R10 K193 [Enum.AssetType.EyebrowAccessory]
  SETTABLEKS R10 R9 K192 ["EyebrowAccessory"]
  GETIMPORT R10 K195 [Enum.AssetType.EyelashAccessory]
  SETTABLEKS R10 R9 K194 ["EyelashAccessory"]
  GETIMPORT R10 K124 [Enum.AssetType.HairAccessory]
  SETTABLEKS R10 R9 K123 ["HairAccessory"]
  SETTABLEKS R9 R6 K257 ["AllowedAssetStringsMetadataToAssetTypeMap"]
  DUPTABLE R9 K273 [{"Head", "UpperTorso", "LowerTorso", "LeftUpperLeg", "LeftLowerLeg", "LeftHand", "RightUpperArm", "RightLowerArm", "RightHand", "LeftUpperArm", "LeftLowerArm", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot", "EyebrowAccessory", "EyelashAccessory", "HairAccessory"}]
  LOADK R10 K2 ["Parent"]
  SETTABLEKS R10 R9 K258 ["Head"]
  LOADK R10 K3 ["require"]
  SETTABLEKS R10 R9 K259 ["UpperTorso"]
  LOADK R10 K4 [require]
  SETTABLEKS R10 R9 K260 ["LowerTorso"]
  LOADK R10 K5 ["Packages"]
  SETTABLEKS R10 R9 K261 ["LeftUpperLeg"]
  LOADK R10 K6 ["enumerate"]
  SETTABLEKS R10 R9 K262 ["LeftLowerLeg"]
  LOADK R10 K7 ["Core"]
  SETTABLEKS R10 R9 K263 ["LeftHand"]
  LOADK R10 K8 ["Util"]
  SETTABLEKS R10 R9 K264 ["RightUpperArm"]
  LOADK R10 K9 ["Flags"]
  SETTABLEKS R10 R9 K265 ["RightLowerArm"]
  LOADK R10 K10 ["getFFlagToolboxAddNewUGCAssetTypes"]
  SETTABLEKS R10 R9 K266 ["RightHand"]
  LOADK R10 K11 ["SharedFlags"]
  SETTABLEKS R10 R9 K267 ["LeftUpperArm"]
  LOADK R10 K12 ["getFFlagToolboxRestrictAssetConfig"]
  SETTABLEKS R10 R9 K268 ["LeftLowerArm"]
  LOADK R10 K13 ["convertArrayToTable"]
  SETTABLEKS R10 R9 K269 ["LeftFoot"]
  LOADK R10 K14 ["WIDTH"]
  SETTABLEKS R10 R9 K270 ["RightUpperLeg"]
  LOADK R10 K15 ["HEIGHT"]
  SETTABLEKS R10 R9 K271 ["RightLowerLeg"]
  LOADK R10 K16 ["MIN_WIDTH"]
  SETTABLEKS R10 R9 K272 ["RightFoot"]
  LOADK R10 K192 ["EyebrowAccessory"]
  SETTABLEKS R10 R9 K192 ["EyebrowAccessory"]
  LOADK R10 K194 ["EyelashAccessory"]
  SETTABLEKS R10 R9 K194 ["EyelashAccessory"]
  LOADK R10 K123 ["HairAccessory"]
  SETTABLEKS R10 R9 K123 ["HairAccessory"]
  SETTABLEKS R9 R6 K274 ["UGC_BODY_PARTS"]
  NEWTABLE R9 32 0
  GETTABLEKS R11 R6 K274 ["UGC_BODY_PARTS"]
  GETTABLEKS R10 R11 K258 ["Head"]
  GETIMPORT R11 K191 [Enum.AssetType.DynamicHead]
  SETTABLE R11 R9 R10
  GETTABLEKS R11 R6 K274 ["UGC_BODY_PARTS"]
  GETTABLEKS R10 R11 K259 ["UpperTorso"]
  GETIMPORT R11 K181 [Enum.AssetType.Torso]
  SETTABLE R11 R9 R10
  GETTABLEKS R11 R6 K274 ["UGC_BODY_PARTS"]
  GETTABLEKS R10 R11 K260 ["LowerTorso"]
  GETIMPORT R11 K181 [Enum.AssetType.Torso]
  SETTABLE R11 R9 R10
  GETTABLEKS R11 R6 K274 ["UGC_BODY_PARTS"]
  GETTABLEKS R10 R11 K267 ["LeftUpperArm"]
  GETIMPORT R11 K185 [Enum.AssetType.LeftArm]
  SETTABLE R11 R9 R10
  GETTABLEKS R11 R6 K274 ["UGC_BODY_PARTS"]
  GETTABLEKS R10 R11 K268 ["LeftLowerArm"]
  GETIMPORT R11 K185 [Enum.AssetType.LeftArm]
  SETTABLE R11 R9 R10
  GETTABLEKS R11 R6 K274 ["UGC_BODY_PARTS"]
  GETTABLEKS R10 R11 K263 ["LeftHand"]
  GETIMPORT R11 K185 [Enum.AssetType.LeftArm]
  SETTABLE R11 R9 R10
  GETTABLEKS R11 R6 K274 ["UGC_BODY_PARTS"]
  GETTABLEKS R10 R11 K264 ["RightUpperArm"]
  GETIMPORT R11 K183 [Enum.AssetType.RightArm]
  SETTABLE R11 R9 R10
  GETTABLEKS R11 R6 K274 ["UGC_BODY_PARTS"]
  GETTABLEKS R10 R11 K265 ["RightLowerArm"]
  GETIMPORT R11 K183 [Enum.AssetType.RightArm]
  SETTABLE R11 R9 R10
  GETTABLEKS R11 R6 K274 ["UGC_BODY_PARTS"]
  GETTABLEKS R10 R11 K266 ["RightHand"]
  GETIMPORT R11 K183 [Enum.AssetType.RightArm]
  SETTABLE R11 R9 R10
  GETTABLEKS R11 R6 K274 ["UGC_BODY_PARTS"]
  GETTABLEKS R10 R11 K261 ["LeftUpperLeg"]
  GETIMPORT R11 K187 [Enum.AssetType.LeftLeg]
  SETTABLE R11 R9 R10
  GETTABLEKS R11 R6 K274 ["UGC_BODY_PARTS"]
  GETTABLEKS R10 R11 K262 ["LeftLowerLeg"]
  GETIMPORT R11 K187 [Enum.AssetType.LeftLeg]
  SETTABLE R11 R9 R10
  GETTABLEKS R11 R6 K274 ["UGC_BODY_PARTS"]
  GETTABLEKS R10 R11 K269 ["LeftFoot"]
  GETIMPORT R11 K187 [Enum.AssetType.LeftLeg]
  SETTABLE R11 R9 R10
  GETTABLEKS R11 R6 K274 ["UGC_BODY_PARTS"]
  GETTABLEKS R10 R11 K270 ["RightUpperLeg"]
  GETIMPORT R11 K189 [Enum.AssetType.RightLeg]
  SETTABLE R11 R9 R10
  GETTABLEKS R11 R6 K274 ["UGC_BODY_PARTS"]
  GETTABLEKS R10 R11 K271 ["RightLowerLeg"]
  GETIMPORT R11 K189 [Enum.AssetType.RightLeg]
  SETTABLE R11 R9 R10
  GETTABLEKS R11 R6 K274 ["UGC_BODY_PARTS"]
  GETTABLEKS R10 R11 K272 ["RightFoot"]
  GETIMPORT R11 K189 [Enum.AssetType.RightLeg]
  SETTABLE R11 R9 R10
  GETTABLEKS R11 R6 K274 ["UGC_BODY_PARTS"]
  GETTABLEKS R10 R11 K192 ["EyebrowAccessory"]
  GETIMPORT R11 K193 [Enum.AssetType.EyebrowAccessory]
  SETTABLE R11 R9 R10
  GETTABLEKS R11 R6 K274 ["UGC_BODY_PARTS"]
  GETTABLEKS R10 R11 K194 ["EyelashAccessory"]
  GETIMPORT R11 K195 [Enum.AssetType.EyelashAccessory]
  SETTABLE R11 R9 R10
  GETTABLEKS R11 R6 K274 ["UGC_BODY_PARTS"]
  GETTABLEKS R10 R11 K123 ["HairAccessory"]
  GETIMPORT R11 K124 [Enum.AssetType.HairAccessory]
  SETTABLE R11 R9 R10
  SETTABLEKS R9 R6 K275 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
  RETURN R6 1
