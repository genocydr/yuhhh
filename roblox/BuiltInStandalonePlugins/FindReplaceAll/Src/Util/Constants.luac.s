MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K1 [{"DEFAULT_FIND_REPLACE_STATE"}]
  DUPTABLE R1 K14 [{"FindText", "ReplaceText", "MatchCase", "MatchWholeWord", "MatchRegExPattern", "FindResults", "ReplaceResults", "CurrentSelectedResult", "IsSearching", "IsReplacing", "IsReplaced", "IsReplaceAll"}]
  LOADK R2 K15 [""]
  SETTABLEKS R2 R1 K2 ["FindText"]
  LOADK R2 K15 [""]
  SETTABLEKS R2 R1 K3 ["ReplaceText"]
  LOADB R2 0
  SETTABLEKS R2 R1 K4 ["MatchCase"]
  LOADB R2 0
  SETTABLEKS R2 R1 K5 ["MatchWholeWord"]
  LOADB R2 0
  SETTABLEKS R2 R1 K6 ["MatchRegExPattern"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K7 ["FindResults"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K8 ["ReplaceResults"]
  LOADNIL R2
  SETTABLEKS R2 R1 K9 ["CurrentSelectedResult"]
  LOADB R2 0
  SETTABLEKS R2 R1 K10 ["IsSearching"]
  LOADB R2 0
  SETTABLEKS R2 R1 K11 ["IsReplacing"]
  LOADB R2 0
  SETTABLEKS R2 R1 K12 ["IsReplaced"]
  LOADB R2 0
  SETTABLEKS R2 R1 K13 ["IsReplaceAll"]
  SETTABLEKS R1 R0 K0 ["DEFAULT_FIND_REPLACE_STATE"]
  RETURN R0 1
