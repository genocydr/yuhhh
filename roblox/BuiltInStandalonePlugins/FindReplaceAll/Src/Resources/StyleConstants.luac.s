MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K7 [{"widgetHeaderHeight", "widgetHeaderLineHeight", "normalFontSize", "inputTextSize", "labelTextSize", "defaultFont", "defaultFontBold"}]
  LOADN R1 135
  SETTABLEKS R1 R0 K0 ["widgetHeaderHeight"]
  LOADN R1 32
  SETTABLEKS R1 R0 K1 ["widgetHeaderLineHeight"]
  LOADN R1 18
  SETTABLEKS R1 R0 K2 ["normalFontSize"]
  LOADN R1 18
  SETTABLEKS R1 R0 K3 ["inputTextSize"]
  LOADN R1 16
  SETTABLEKS R1 R0 K4 ["labelTextSize"]
  GETIMPORT R1 K11 [Enum.Font.SourceSans]
  SETTABLEKS R1 R0 K5 ["defaultFont"]
  GETIMPORT R1 K13 [Enum.Font.SourceSansBold]
  SETTABLEKS R1 R0 K6 ["defaultFontBold"]
  RETURN R0 1
