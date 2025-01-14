MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K11 [{"EVENTS", "FOLDERS", "LAYER_TABS", "LAYERVIEW_ACTIONS", "SETTINGS", "DEFAULT_TIMECONTROLS_INTERVAL", "FRAMERATE", "SKIP_UI_FRAMES", "TIMECONTROLS_INVERVALS", "BLEND_TRAIL_LENGTH", "GIZMOS"}]
  DUPTABLE R1 K15 [{"DebugData", "PropertyOverrides", "DebugPose"}]
  LOADK R2 K12 ["DebugData"]
  SETTABLEKS R2 R1 K12 ["DebugData"]
  LOADK R2 K13 ["PropertyOverrides"]
  SETTABLEKS R2 R1 K13 ["PropertyOverrides"]
  LOADK R2 K14 ["DebugPose"]
  SETTABLEKS R2 R1 K14 ["DebugPose"]
  SETTABLEKS R1 R0 K0 ["EVENTS"]
  DUPTABLE R1 K20 [{"CompositorDebugger", "Server", "Client", "Gizmos"}]
  LOADK R2 K21 ["__RobloxCompositorDebugger"]
  SETTABLEKS R2 R1 K16 ["CompositorDebugger"]
  LOADK R2 K17 ["Server"]
  SETTABLEKS R2 R1 K17 ["Server"]
  LOADK R2 K18 ["Client"]
  SETTABLEKS R2 R1 K18 ["Client"]
  LOADK R2 K19 ["Gizmos"]
  SETTABLEKS R2 R1 K19 ["Gizmos"]
  SETTABLEKS R1 R0 K1 ["FOLDERS"]
  DUPTABLE R1 K26 [{"LayerData", "Visualization", "History", "RawData"}]
  LOADK R2 K22 ["LayerData"]
  SETTABLEKS R2 R1 K22 ["LayerData"]
  LOADK R2 K23 ["Visualization"]
  SETTABLEKS R2 R1 K23 ["Visualization"]
  LOADK R2 K24 ["History"]
  SETTABLEKS R2 R1 K24 ["History"]
  LOADK R2 K25 ["RawData"]
  SETTABLEKS R2 R1 K25 ["RawData"]
  SETTABLEKS R1 R0 K2 ["LAYER_TABS"]
  DUPTABLE R1 K29 [{"Clear", "History", "NoOp"}]
  LOADK R2 K27 ["Clear"]
  SETTABLEKS R2 R1 K27 ["Clear"]
  LOADK R2 K24 ["History"]
  SETTABLEKS R2 R1 K24 ["History"]
  LOADK R2 K28 ["NoOp"]
  SETTABLEKS R2 R1 K28 ["NoOp"]
  SETTABLEKS R1 R0 K3 ["LAYERVIEW_ACTIONS"]
  DUPTABLE R1 K34 [{"LayerFilters", "ActiveLayersFilter", "FrameBufferDuration", "SkipUIFrames"}]
  LOADK R2 K35 ["CD_LayerFilters"]
  SETTABLEKS R2 R1 K30 ["LayerFilters"]
  LOADK R2 K36 ["CD_ActiveLayersFilter"]
  SETTABLEKS R2 R1 K31 ["ActiveLayersFilter"]
  LOADK R2 K37 ["CD_FrameBufferDuration"]
  SETTABLEKS R2 R1 K32 ["FrameBufferDuration"]
  LOADK R2 K38 ["CD_SkipUIFrames"]
  SETTABLEKS R2 R1 K33 ["SkipUIFrames"]
  SETTABLEKS R1 R0 K4 ["SETTINGS"]
  LOADN R1 10
  SETTABLEKS R1 R0 K5 ["DEFAULT_TIMECONTROLS_INTERVAL"]
  LOADN R1 60
  SETTABLEKS R1 R0 K6 ["FRAMERATE"]
  NEWTABLE R1 0 5
  LOADN R2 0
  LOADN R3 1
  LOADN R4 2
  LOADN R5 5
  LOADN R6 10
  SETLIST R1 R2 5 [1]
  SETTABLEKS R1 R0 K7 ["SKIP_UI_FRAMES"]
  NEWTABLE R1 4 0
  DUPTABLE R2 K41 [{"Minor", "Major"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K39 ["Minor"]
  LOADN R3 5
  SETTABLEKS R3 R2 K40 ["Major"]
  SETTABLEN R2 R1 10
  DUPTABLE R2 K43 [{"Minor", "Medium", "Major"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K39 ["Minor"]
  LOADN R3 5
  SETTABLEKS R3 R2 K42 ["Medium"]
  LOADN R3 10
  SETTABLEKS R3 R2 K40 ["Major"]
  SETTABLEN R2 R1 30
  DUPTABLE R2 K41 [{"Minor", "Major"}]
  LOADN R3 5
  SETTABLEKS R3 R2 K39 ["Minor"]
  LOADN R3 10
  SETTABLEKS R3 R2 K40 ["Major"]
  SETTABLEN R2 R1 60
  SETTABLEKS R1 R0 K8 ["TIMECONTROLS_INVERVALS"]
  LOADN R1 30
  SETTABLEKS R1 R0 K9 ["BLEND_TRAIL_LENGTH"]
  DUPTABLE R1 K45 [{"SphereRadius"}]
  LOADK R2 K46 [0.05]
  SETTABLEKS R2 R1 K44 ["SphereRadius"]
  SETTABLEKS R1 R0 K10 ["GIZMOS"]
  RETURN R0 1
