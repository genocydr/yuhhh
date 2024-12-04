PROTO_0:
  GETUPVAL R0 0
  JUMPIFNOTEQKNIL R0 [+3]
  LOADNIL R0
  RETURN R0 1
  GETUPVAL R2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["SECONDS_IN_MS"]
  DIV R1 R2 R3
  FASTCALL1 MATH_FLOOR R1 [+2]
  GETIMPORT R0 K3 [math.floor]
  CALL R0 1 1
  RETURN R0 1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["fromRawValue"]
  GETUPVAL R1 1
  CALL R0 1 -1
  RETURN R0 -1

PROTO_2:
  LOADB R0 1
  GETUPVAL R1 0
  JUMPIFEQKNIL R1 [+6]
  GETUPVAL R1 0
  JUMPIFEQKS R1 K0 [""] [+2]
  LOADB R0 0 +1
  LOADB R0 1
  RETURN R0 1

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R0 2 -1
  RETURN R0 -1

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R0 2 -1
  RETURN R0 -1

PROTO_5:
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R0 2 -1
  RETURN R0 -1

PROTO_6:
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R0 2 -1
  RETURN R0 -1

PROTO_7:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+1]
  RETURN R0 0
  GETUPVAL R0 1
  GETUPVAL R2 2
  NAMECALL R0 R0 K0 ["OpenBrowserWindow"]
  CALL R0 2 0
  GETUPVAL R1 3
  GETTABLEKS R0 R1 K1 ["markNotificationRead"]
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K2 ["Index"]
  CALL R0 1 0
  GETUPVAL R2 5
  GETTABLEKS R1 R2 K3 ["eventHandlers"]
  GETTABLEKS R0 R1 K4 ["notificationClicked"]
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K5 ["Notification"]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K2 ["Index"]
  CALL R0 2 0
  GETUPVAL R0 6
  JUMPIF R0 [+9]
  GETUPVAL R0 0
  JUMPIF R0 [+7]
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K6 ["notificationClient"]
  GETTABLEKS R0 R1 K1 ["markNotificationRead"]
  GETUPVAL R1 7
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  NOT R0 R1
  JUMPIFNOT R0 [+4]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["menuVisible"]
  NOT R0 R1
  RETURN R0 1

PROTO_9:
  GETUPVAL R1 0
  MOVE R2 R0
  LOADK R3 K0 ["Notification"]
  LOADK R4 K1 ["notificationId"]
  CALL R1 3 1
  GETUPVAL R2 0
  MOVE R3 R0
  LOADK R4 K0 ["Notification"]
  LOADK R5 K2 ["creatorStreamNotificationContent"]
  LOADK R6 K3 ["title"]
  CALL R2 4 1
  GETUPVAL R3 0
  MOVE R4 R0
  LOADK R5 K0 ["Notification"]
  LOADK R6 K4 ["parameters"]
  CALL R3 3 1
  GETUPVAL R4 0
  MOVE R5 R0
  LOADK R6 K0 ["Notification"]
  LOADK R7 K2 ["creatorStreamNotificationContent"]
  LOADK R8 K5 ["body"]
  CALL R4 4 1
  GETUPVAL R5 0
  MOVE R6 R0
  LOADK R7 K0 ["Notification"]
  LOADK R8 K2 ["creatorStreamNotificationContent"]
  LOADK R9 K6 ["targetId"]
  CALL R5 4 1
  GETUPVAL R6 0
  MOVE R7 R0
  LOADK R8 K0 ["Notification"]
  LOADK R9 K2 ["creatorStreamNotificationContent"]
  LOADK R10 K7 ["targetType"]
  CALL R6 4 1
  GETUPVAL R7 0
  MOVE R8 R0
  LOADK R9 K0 ["Notification"]
  LOADK R10 K8 ["read"]
  CALL R7 3 1
  GETUPVAL R8 0
  MOVE R9 R0
  LOADK R10 K0 ["Notification"]
  LOADK R11 K2 ["creatorStreamNotificationContent"]
  LOADK R12 K9 ["clickAction"]
  CALL R8 4 1
  GETUPVAL R9 0
  MOVE R10 R0
  LOADK R11 K0 ["Notification"]
  LOADK R12 K10 ["createdUtcTimeInMs"]
  CALL R9 3 1
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K11 ["useMemo"]
  NEWCLOSURE R11 P0
  CAPTURE VAL R9
  CAPTURE UPVAL U2
  NEWTABLE R12 0 1
  MOVE R13 R9
  SETLIST R12 R13 1 [1]
  CALL R10 2 1
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K11 ["useMemo"]
  NEWCLOSURE R12 P1
  CAPTURE UPVAL U3
  CAPTURE VAL R6
  NEWTABLE R13 0 1
  MOVE R14 R6
  SETLIST R13 R14 1 [1]
  CALL R11 2 1
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K12 ["useContext"]
  GETUPVAL R13 4
  CALL R12 1 1
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K12 ["useContext"]
  GETUPVAL R14 5
  CALL R13 1 1
  GETUPVAL R14 6
  NAMECALL R14 R14 K13 ["use"]
  CALL R14 1 1
  GETUPVAL R15 7
  MOVE R16 R10
  CALL R15 1 1
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K11 ["useMemo"]
  NEWCLOSURE R17 P2
  CAPTURE VAL R8
  NEWTABLE R18 0 1
  MOVE R19 R8
  SETLIST R18 R19 1 [1]
  CALL R16 2 1
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K11 ["useMemo"]
  NEWCLOSURE R18 P3
  CAPTURE UPVAL U8
  CAPTURE VAL R5
  CAPTURE VAL R11
  NEWTABLE R19 0 2
  MOVE R20 R5
  MOVE R21 R11
  SETLIST R19 R20 2 [1]
  CALL R17 2 1
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K11 ["useMemo"]
  NEWCLOSURE R19 P4
  CAPTURE UPVAL U9
  CAPTURE VAL R5
  CAPTURE VAL R11
  NEWTABLE R20 0 2
  MOVE R21 R5
  MOVE R22 R11
  SETLIST R20 R21 2 [1]
  CALL R18 2 1
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K11 ["useMemo"]
  NEWCLOSURE R20 P5
  CAPTURE UPVAL U10
  CAPTURE VAL R2
  CAPTURE VAL R3
  NEWTABLE R21 0 2
  MOVE R22 R2
  MOVE R23 R3
  SETLIST R21 R22 2 [1]
  CALL R19 2 1
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K11 ["useMemo"]
  NEWCLOSURE R21 P6
  CAPTURE UPVAL U11
  CAPTURE VAL R7
  CAPTURE VAL R16
  NEWTABLE R22 0 2
  MOVE R23 R7
  MOVE R24 R16
  SETLIST R22 R23 2 [1]
  CALL R20 2 1
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K14 ["useCallback"]
  NEWCLOSURE R22 P7
  CAPTURE VAL R16
  CAPTURE UPVAL U12
  CAPTURE VAL R8
  CAPTURE VAL R12
  CAPTURE VAL R0
  CAPTURE VAL R14
  CAPTURE VAL R7
  CAPTURE VAL R1
  NEWTABLE R23 0 8
  MOVE R24 R8
  MOVE R25 R16
  MOVE R26 R1
  MOVE R27 R7
  GETTABLEKS R28 R0 K15 ["Index"]
  GETTABLEKS R29 R0 K0 ["Notification"]
  MOVE R30 R12
  MOVE R31 R14
  SETLIST R23 R24 8 [1]
  CALL R21 2 1
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K11 ["useMemo"]
  NEWCLOSURE R23 P8
  CAPTURE VAL R16
  CAPTURE VAL R13
  NEWTABLE R24 0 2
  MOVE R25 R16
  GETTABLEKS R26 R13 K16 ["menuVisible"]
  SETLIST R24 R25 2 [1]
  CALL R22 2 1
  GETUPVAL R24 1
  GETTABLEKS R23 R24 K17 ["createElement"]
  LOADK R24 K18 ["Frame"]
  NEWTABLE R25 2 0
  GETTABLEKS R26 R0 K19 ["LayoutOrder"]
  SETTABLEKS R26 R25 K19 ["LayoutOrder"]
  GETUPVAL R27 1
  GETTABLEKS R26 R27 K20 ["Tag"]
  LOADK R27 K21 ["Component-InnerNotificationCard"]
  SETTABLE R27 R25 R26
  DUPTABLE R26 K23 [{"InnerCard"}]
  GETUPVAL R28 1
  GETTABLEKS R27 R28 K17 ["createElement"]
  LOADK R28 K24 ["TextButton"]
  NEWTABLE R29 8 0
  GETTABLEKS R30 R0 K19 ["LayoutOrder"]
  SETTABLEKS R30 R29 K19 ["LayoutOrder"]
  SETTABLEKS R22 R29 K25 ["Selectable"]
  LOADB R30 0
  SETTABLEKS R30 R29 K26 ["AutoButtonColor"]
  GETUPVAL R32 1
  GETTABLEKS R31 R32 K27 ["Event"]
  GETTABLEKS R30 R31 K28 ["MouseButton1Click"]
  SETTABLE R21 R29 R30
  GETUPVAL R31 1
  GETTABLEKS R30 R31 K20 ["Tag"]
  GETUPVAL R32 13
  GETTABLEKS R31 R32 K29 ["joinTags"]
  LOADK R32 K30 ["X-Left"]
  JUMPIFNOT R22 [+2]
  LOADK R33 K31 ["Plugin-NotificationCard-Hover"]
  JUMP [+1]
  LOADK R33 K32 ["Plugin-NotificationCard-HoverDisabled"]
  CALL R31 2 1
  SETTABLE R31 R29 R30
  DUPTABLE R30 K36 [{"Icon", "Content", "StatusIndicator"}]
  GETUPVAL R32 1
  GETTABLEKS R31 R32 K17 ["createElement"]
  LOADK R32 K37 ["ImageLabel"]
  NEWTABLE R33 4 0
  SETTABLEKS R17 R33 K38 ["Image"]
  LOADN R34 1
  SETTABLEKS R34 R33 K19 ["LayoutOrder"]
  GETUPVAL R35 1
  GETTABLEKS R34 R35 K20 ["Tag"]
  GETUPVAL R36 13
  GETTABLEKS R35 R36 K29 ["joinTags"]
  LOADK R37 K39 ["%*"]
  MOVE R39 R18
  NAMECALL R37 R37 K40 ["format"]
  CALL R37 2 1
  MOVE R36 R37
  GETUPVAL R39 3
  GETTABLEKS R38 R39 K41 ["User"]
  JUMPIFNOTEQ R11 R38 [+3]
  LOADK R37 K42 ["Component-NotificationCard-User"]
  JUMP [+1]
  LOADNIL R37
  CALL R35 2 1
  SETTABLE R35 R33 R34
  CALL R31 2 1
  SETTABLEKS R31 R30 K33 ["Icon"]
  GETUPVAL R32 1
  GETTABLEKS R31 R32 K17 ["createElement"]
  GETUPVAL R32 14
  DUPTABLE R33 K46 [{"Subject", "Subline", "ElapsedTime", "LayoutOrder"}]
  SETTABLEKS R19 R33 K43 ["Subject"]
  SETTABLEKS R4 R33 K44 ["Subline"]
  SETTABLEKS R15 R33 K45 ["ElapsedTime"]
  LOADN R34 2
  SETTABLEKS R34 R33 K19 ["LayoutOrder"]
  CALL R31 2 1
  SETTABLEKS R31 R30 K34 ["Content"]
  GETUPVAL R32 1
  GETTABLEKS R31 R32 K17 ["createElement"]
  LOADK R32 K18 ["Frame"]
  NEWTABLE R33 2 0
  GETUPVAL R35 1
  GETTABLEKS R34 R35 K20 ["Tag"]
  LOADK R35 K47 ["X-Middle"]
  SETTABLE R35 R33 R34
  LOADN R34 3
  SETTABLEKS R34 R33 K19 ["LayoutOrder"]
  DUPTABLE R34 K49 [{"Indicator"}]
  GETUPVAL R36 1
  GETTABLEKS R35 R36 K17 ["createElement"]
  LOADK R36 K37 ["ImageLabel"]
  NEWTABLE R37 2 0
  GETIMPORT R38 K52 [UDim2.new]
  LOADN R39 0
  LOADN R40 0
  LOADK R41 K53 [0.5]
  LOADN R42 0
  CALL R38 4 1
  SETTABLEKS R38 R37 K54 ["Position"]
  GETUPVAL R39 1
  GETTABLEKS R38 R39 K20 ["Tag"]
  LOADK R40 K39 ["%*"]
  MOVE R42 R20
  NAMECALL R40 R40 K40 ["format"]
  CALL R40 2 1
  MOVE R39 R40
  SETTABLE R39 R37 R38
  CALL R35 2 1
  SETTABLEKS R35 R34 K48 ["Indicator"]
  CALL R31 3 1
  SETTABLEKS R31 R30 K35 ["StatusIndicator"]
  CALL R27 3 1
  SETTABLEKS R27 R26 K22 ["InnerCard"]
  CALL R23 3 -1
  RETURN R23 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["Styling"]
  GETIMPORT R4 K10 [game]
  LOADK R6 K11 ["GuiService"]
  NAMECALL R4 R4 K12 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K4 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K2 ["Parent"]
  GETTABLEKS R6 R7 K13 ["NotificationText"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K14 ["Src"]
  GETTABLEKS R8 R9 K15 ["Clients"]
  GETTABLEKS R7 R8 K16 ["NotificationClient"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K14 ["Src"]
  GETTABLEKS R9 R10 K17 ["Contexts"]
  GETTABLEKS R8 R9 K18 ["NotificationsContext"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K14 ["Src"]
  GETTABLEKS R10 R11 K17 ["Contexts"]
  GETTABLEKS R9 R10 K19 ["AnalyticsContext"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K14 ["Src"]
  GETTABLEKS R11 R12 K17 ["Contexts"]
  GETTABLEKS R10 R11 K20 ["MenuVisibleContext"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R13 R0 K14 ["Src"]
  GETTABLEKS R12 R13 K21 ["Enums"]
  GETTABLEKS R11 R12 K22 ["NotificationTargetType"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R14 R0 K14 ["Src"]
  GETTABLEKS R13 R14 K23 ["Util"]
  GETTABLEKS R12 R13 K24 ["IconGetters"]
  CALL R11 1 1
  GETTABLEKS R12 R11 K25 ["getDynamicIconPath"]
  GETTABLEKS R13 R11 K26 ["getReadStatusIconTag"]
  GETTABLEKS R14 R11 K27 ["getStaticIconTag"]
  GETIMPORT R15 K4 [require]
  GETTABLEKS R18 R0 K14 ["Src"]
  GETTABLEKS R17 R18 K23 ["Util"]
  GETTABLEKS R16 R17 K28 ["interpolateNotificationSubject"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R19 R0 K14 ["Src"]
  GETTABLEKS R18 R19 K23 ["Util"]
  GETTABLEKS R17 R18 K29 ["useRelativeTime"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R20 R0 K14 ["Src"]
  GETTABLEKS R19 R20 K23 ["Util"]
  GETTABLEKS R18 R19 K30 ["optional"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R21 R0 K14 ["Src"]
  GETTABLEKS R20 R21 K23 ["Util"]
  GETTABLEKS R19 R20 K31 ["TimeConstants"]
  CALL R18 1 1
  DUPCLOSURE R19 K32 [PROTO_9]
  CAPTURE VAL R17
  CAPTURE VAL R1
  CAPTURE VAL R18
  CAPTURE VAL R10
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R16
  CAPTURE VAL R12
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R13
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R5
  RETURN R19 1
