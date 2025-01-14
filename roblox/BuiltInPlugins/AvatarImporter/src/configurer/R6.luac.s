PROTO_0:
  GETIMPORT R4 K2 [Instance.new]
  LOADK R5 K3 ["Motor6D"]
  CALL R4 1 1
  SETTABLEKS R0 R4 K4 ["Part0"]
  SETTABLEKS R1 R4 K5 ["Part1"]
  SETTABLEKS R2 R4 K6 ["C0"]
  SETTABLEKS R3 R4 K7 ["C1"]
  SETTABLEKS R0 R4 K8 ["Parent"]
  RETURN R4 1

PROTO_1:
  GETIMPORT R0 K2 [Instance.new]
  LOADK R1 K3 ["Model"]
  CALL R0 1 1
  LOADK R1 K4 ["R6"]
  SETTABLEKS R1 R0 K5 ["Name"]
  GETIMPORT R1 K2 [Instance.new]
  LOADK R2 K6 ["Part"]
  CALL R1 1 1
  LOADK R2 K7 ["HumanoidRootPart"]
  SETTABLEKS R2 R1 K5 ["Name"]
  LOADB R2 1
  SETTABLEKS R2 R1 K8 ["CanCollide"]
  LOADN R2 1
  SETTABLEKS R2 R1 K9 ["Transparency"]
  LOADK R2 K10 [{2, 2, 1}]
  SETTABLEKS R2 R1 K11 ["Size"]
  GETIMPORT R2 K13 [CFrame.new]
  LOADN R3 0
  LOADK R4 K14 [5.2]
  LOADK R5 K15 [4.5]
  CALL R2 3 1
  SETTABLEKS R2 R1 K12 ["CFrame"]
  LOADK R2 K16 ["Smooth"]
  SETTABLEKS R2 R1 K17 ["BottomSurface"]
  LOADK R2 K16 ["Smooth"]
  SETTABLEKS R2 R1 K18 ["TopSurface"]
  SETTABLEKS R0 R1 K19 ["Parent"]
  SETTABLEKS R1 R0 K20 ["PrimaryPart"]
  GETIMPORT R2 K2 [Instance.new]
  LOADK R3 K6 ["Part"]
  CALL R2 1 1
  LOADK R3 K21 ["Torso"]
  SETTABLEKS R3 R2 K5 ["Name"]
  LOADB R3 0
  SETTABLEKS R3 R2 K22 ["Anchored"]
  LOADB R3 0
  SETTABLEKS R3 R2 K8 ["CanCollide"]
  LOADK R3 K10 [{2, 2, 1}]
  SETTABLEKS R3 R2 K11 ["Size"]
  GETIMPORT R3 K13 [CFrame.new]
  LOADN R4 0
  LOADK R5 K14 [5.2]
  LOADK R6 K15 [4.5]
  CALL R3 3 1
  SETTABLEKS R3 R2 K12 ["CFrame"]
  LOADK R3 K16 ["Smooth"]
  SETTABLEKS R3 R2 K17 ["BottomSurface"]
  LOADK R3 K16 ["Smooth"]
  SETTABLEKS R3 R2 K18 ["TopSurface"]
  SETTABLEKS R0 R2 K19 ["Parent"]
  GETIMPORT R3 K13 [CFrame.new]
  LOADN R4 0
  LOADN R5 0
  LOADN R6 0
  LOADN R7 255
  LOADN R8 0
  LOADN R9 0
  LOADN R10 0
  LOADN R11 0
  LOADN R12 1
  LOADN R13 0
  LOADN R14 1
  LOADN R15 0
  CALL R3 12 1
  GETIMPORT R5 K2 [Instance.new]
  LOADK R6 K23 ["Motor6D"]
  CALL R5 1 1
  SETTABLEKS R1 R5 K24 ["Part0"]
  SETTABLEKS R2 R5 K25 ["Part1"]
  SETTABLEKS R3 R5 K26 ["C0"]
  SETTABLEKS R3 R5 K27 ["C1"]
  SETTABLEKS R1 R5 K19 ["Parent"]
  MOVE R4 R5
  LOADK R5 K28 ["Root Hip"]
  SETTABLEKS R5 R4 K5 ["Name"]
  LOADK R5 K29 [0.1]
  SETTABLEKS R5 R4 K30 ["MaxVelocity"]
  GETIMPORT R5 K2 [Instance.new]
  LOADK R6 K6 ["Part"]
  CALL R5 1 1
  LOADK R6 K31 ["Left Leg"]
  SETTABLEKS R6 R5 K5 ["Name"]
  LOADB R6 0
  SETTABLEKS R6 R5 K22 ["Anchored"]
  LOADB R6 0
  SETTABLEKS R6 R5 K8 ["CanCollide"]
  LOADK R6 K32 [{1, 2, 1}]
  SETTABLEKS R6 R5 K11 ["Size"]
  GETIMPORT R6 K13 [CFrame.new]
  LOADK R7 K33 [0.5]
  LOADK R8 K34 [3.2]
  LOADK R9 K15 [4.5]
  CALL R6 3 1
  SETTABLEKS R6 R5 K12 ["CFrame"]
  LOADK R6 K16 ["Smooth"]
  SETTABLEKS R6 R5 K17 ["BottomSurface"]
  LOADK R6 K16 ["Smooth"]
  SETTABLEKS R6 R5 K18 ["TopSurface"]
  SETTABLEKS R0 R5 K19 ["Parent"]
  GETIMPORT R7 K13 [CFrame.new]
  LOADN R8 255
  LOADN R9 255
  LOADN R10 0
  CALL R7 3 1
  GETIMPORT R8 K36 [CFrame.fromAxisAngle]
  LOADK R9 K37 [{0, 1, 0}]
  LOADK R10 K38 [-1.5707963267949]
  CALL R8 2 1
  MUL R6 R7 R8
  GETIMPORT R8 K13 [CFrame.new]
  LOADK R9 K39 [-0.5]
  LOADN R10 1
  LOADN R11 0
  CALL R8 3 1
  GETIMPORT R9 K36 [CFrame.fromAxisAngle]
  LOADK R10 K37 [{0, 1, 0}]
  LOADK R11 K38 [-1.5707963267949]
  CALL R9 2 1
  MUL R7 R8 R9
  GETIMPORT R9 K2 [Instance.new]
  LOADK R10 K23 ["Motor6D"]
  CALL R9 1 1
  SETTABLEKS R2 R9 K24 ["Part0"]
  SETTABLEKS R5 R9 K25 ["Part1"]
  SETTABLEKS R6 R9 K26 ["C0"]
  SETTABLEKS R7 R9 K27 ["C1"]
  SETTABLEKS R2 R9 K19 ["Parent"]
  MOVE R8 R9
  LOADK R9 K40 ["Left Hip"]
  SETTABLEKS R9 R8 K5 ["Name"]
  LOADK R9 K29 [0.1]
  SETTABLEKS R9 R8 K30 ["MaxVelocity"]
  GETIMPORT R9 K2 [Instance.new]
  LOADK R10 K6 ["Part"]
  CALL R9 1 1
  LOADK R10 K41 ["Right Leg"]
  SETTABLEKS R10 R9 K5 ["Name"]
  LOADB R10 0
  SETTABLEKS R10 R9 K22 ["Anchored"]
  LOADB R10 0
  SETTABLEKS R10 R9 K8 ["CanCollide"]
  LOADK R10 K32 [{1, 2, 1}]
  SETTABLEKS R10 R9 K11 ["Size"]
  GETIMPORT R10 K13 [CFrame.new]
  LOADK R11 K39 [-0.5]
  LOADK R12 K34 [3.2]
  LOADK R13 K15 [4.5]
  CALL R10 3 1
  SETTABLEKS R10 R9 K12 ["CFrame"]
  LOADK R10 K16 ["Smooth"]
  SETTABLEKS R10 R9 K17 ["BottomSurface"]
  LOADK R10 K16 ["Smooth"]
  SETTABLEKS R10 R9 K18 ["TopSurface"]
  SETTABLEKS R0 R9 K19 ["Parent"]
  GETIMPORT R11 K13 [CFrame.new]
  LOADN R12 1
  LOADN R13 255
  LOADN R14 0
  CALL R11 3 1
  GETIMPORT R12 K36 [CFrame.fromAxisAngle]
  LOADK R13 K42 [{0, -1, 0}]
  LOADK R14 K38 [-1.5707963267949]
  CALL R12 2 1
  MUL R10 R11 R12
  GETIMPORT R12 K13 [CFrame.new]
  LOADK R13 K33 [0.5]
  LOADN R14 1
  LOADN R15 0
  CALL R12 3 1
  GETIMPORT R13 K36 [CFrame.fromAxisAngle]
  LOADK R14 K37 [{0, 1, 0}]
  LOADK R15 K43 [1.5707963267949]
  CALL R13 2 1
  MUL R11 R12 R13
  GETIMPORT R13 K2 [Instance.new]
  LOADK R14 K23 ["Motor6D"]
  CALL R13 1 1
  SETTABLEKS R2 R13 K24 ["Part0"]
  SETTABLEKS R9 R13 K25 ["Part1"]
  SETTABLEKS R10 R13 K26 ["C0"]
  SETTABLEKS R11 R13 K27 ["C1"]
  SETTABLEKS R2 R13 K19 ["Parent"]
  MOVE R12 R13
  LOADK R13 K44 ["Right Hip"]
  SETTABLEKS R13 R12 K5 ["Name"]
  LOADK R13 K29 [0.1]
  SETTABLEKS R13 R12 K30 ["MaxVelocity"]
  GETIMPORT R13 K2 [Instance.new]
  LOADK R14 K6 ["Part"]
  CALL R13 1 1
  LOADK R14 K45 ["Left Arm"]
  SETTABLEKS R14 R13 K5 ["Name"]
  LOADB R14 0
  SETTABLEKS R14 R13 K22 ["Anchored"]
  LOADB R14 0
  SETTABLEKS R14 R13 K8 ["CanCollide"]
  LOADK R14 K32 [{1, 2, 1}]
  SETTABLEKS R14 R13 K11 ["Size"]
  GETIMPORT R14 K13 [CFrame.new]
  LOADK R15 K46 [1.5]
  LOADK R16 K14 [5.2]
  LOADK R17 K15 [4.5]
  CALL R14 3 1
  SETTABLEKS R14 R13 K12 ["CFrame"]
  LOADK R14 K16 ["Smooth"]
  SETTABLEKS R14 R13 K17 ["BottomSurface"]
  LOADK R14 K16 ["Smooth"]
  SETTABLEKS R14 R13 K18 ["TopSurface"]
  SETTABLEKS R0 R13 K19 ["Parent"]
  GETIMPORT R15 K13 [CFrame.new]
  LOADN R16 255
  LOADK R17 K33 [0.5]
  LOADN R18 0
  CALL R15 3 1
  GETIMPORT R16 K36 [CFrame.fromAxisAngle]
  LOADK R17 K37 [{0, 1, 0}]
  LOADK R18 K38 [-1.5707963267949]
  CALL R16 2 1
  MUL R14 R15 R16
  GETIMPORT R16 K13 [CFrame.new]
  LOADK R17 K33 [0.5]
  LOADK R18 K33 [0.5]
  LOADN R19 0
  CALL R16 3 1
  GETIMPORT R17 K36 [CFrame.fromAxisAngle]
  LOADK R18 K37 [{0, 1, 0}]
  LOADK R19 K38 [-1.5707963267949]
  CALL R17 2 1
  MUL R15 R16 R17
  GETIMPORT R17 K2 [Instance.new]
  LOADK R18 K23 ["Motor6D"]
  CALL R17 1 1
  SETTABLEKS R2 R17 K24 ["Part0"]
  SETTABLEKS R13 R17 K25 ["Part1"]
  SETTABLEKS R14 R17 K26 ["C0"]
  SETTABLEKS R15 R17 K27 ["C1"]
  SETTABLEKS R2 R17 K19 ["Parent"]
  MOVE R16 R17
  LOADK R17 K47 ["Left Shoulder"]
  SETTABLEKS R17 R16 K5 ["Name"]
  LOADK R17 K29 [0.1]
  SETTABLEKS R17 R16 K30 ["MaxVelocity"]
  GETIMPORT R17 K2 [Instance.new]
  LOADK R18 K6 ["Part"]
  CALL R17 1 1
  LOADK R18 K48 ["Right Arm"]
  SETTABLEKS R18 R17 K5 ["Name"]
  LOADB R18 0
  SETTABLEKS R18 R17 K22 ["Anchored"]
  LOADB R18 0
  SETTABLEKS R18 R17 K8 ["CanCollide"]
  LOADK R18 K32 [{1, 2, 1}]
  SETTABLEKS R18 R17 K11 ["Size"]
  GETIMPORT R18 K13 [CFrame.new]
  LOADK R19 K49 [-1.5]
  LOADK R20 K14 [5.2]
  LOADK R21 K15 [4.5]
  CALL R18 3 1
  SETTABLEKS R18 R17 K12 ["CFrame"]
  LOADK R18 K16 ["Smooth"]
  SETTABLEKS R18 R17 K17 ["BottomSurface"]
  LOADK R18 K16 ["Smooth"]
  SETTABLEKS R18 R17 K18 ["TopSurface"]
  SETTABLEKS R0 R17 K19 ["Parent"]
  GETIMPORT R19 K13 [CFrame.new]
  LOADN R20 1
  LOADK R21 K33 [0.5]
  LOADN R22 0
  CALL R19 3 1
  GETIMPORT R20 K36 [CFrame.fromAxisAngle]
  LOADK R21 K42 [{0, -1, 0}]
  LOADK R22 K38 [-1.5707963267949]
  CALL R20 2 1
  MUL R18 R19 R20
  GETIMPORT R20 K13 [CFrame.new]
  LOADK R21 K39 [-0.5]
  LOADK R22 K33 [0.5]
  LOADN R23 0
  CALL R20 3 1
  GETIMPORT R21 K36 [CFrame.fromAxisAngle]
  LOADK R22 K37 [{0, 1, 0}]
  LOADK R23 K43 [1.5707963267949]
  CALL R21 2 1
  MUL R19 R20 R21
  GETIMPORT R21 K2 [Instance.new]
  LOADK R22 K23 ["Motor6D"]
  CALL R21 1 1
  SETTABLEKS R2 R21 K24 ["Part0"]
  SETTABLEKS R17 R21 K25 ["Part1"]
  SETTABLEKS R18 R21 K26 ["C0"]
  SETTABLEKS R19 R21 K27 ["C1"]
  SETTABLEKS R2 R21 K19 ["Parent"]
  MOVE R20 R21
  LOADK R21 K50 ["Right Shoulder"]
  SETTABLEKS R21 R20 K5 ["Name"]
  LOADK R21 K29 [0.1]
  SETTABLEKS R21 R20 K30 ["MaxVelocity"]
  GETIMPORT R21 K2 [Instance.new]
  LOADK R22 K6 ["Part"]
  CALL R21 1 1
  LOADK R22 K51 ["Head"]
  SETTABLEKS R22 R21 K5 ["Name"]
  LOADB R22 0
  SETTABLEKS R22 R21 K22 ["Anchored"]
  LOADB R22 1
  SETTABLEKS R22 R21 K8 ["CanCollide"]
  LOADK R22 K52 [{2, 1, 1}]
  SETTABLEKS R22 R21 K11 ["Size"]
  GETIMPORT R22 K13 [CFrame.new]
  LOADN R23 0
  LOADK R24 K53 [6.7]
  LOADK R25 K15 [4.5]
  CALL R22 3 1
  SETTABLEKS R22 R21 K12 ["CFrame"]
  LOADK R22 K16 ["Smooth"]
  SETTABLEKS R22 R21 K17 ["BottomSurface"]
  LOADK R22 K16 ["Smooth"]
  SETTABLEKS R22 R21 K18 ["TopSurface"]
  SETTABLEKS R0 R21 K19 ["Parent"]
  GETIMPORT R22 K2 [Instance.new]
  LOADK R23 K54 ["SpecialMesh"]
  MOVE R24 R21
  CALL R22 2 1
  GETIMPORT R23 K57 [Enum.MeshType.Head]
  SETTABLEKS R23 R22 K56 ["MeshType"]
  LOADK R23 K58 [{1.25, 1.25, 1.25}]
  SETTABLEKS R23 R22 K59 ["Scale"]
  GETIMPORT R23 K13 [CFrame.new]
  LOADN R24 0
  LOADN R25 1
  LOADN R26 0
  LOADN R27 255
  LOADN R28 0
  LOADN R29 0
  LOADN R30 0
  LOADN R31 0
  LOADN R32 1
  LOADN R33 0
  LOADN R34 1
  LOADN R35 0
  CALL R23 12 1
  GETIMPORT R24 K13 [CFrame.new]
  LOADN R25 0
  LOADK R26 K39 [-0.5]
  LOADN R27 0
  LOADN R28 255
  LOADN R29 0
  LOADN R30 0
  LOADN R31 0
  LOADN R32 0
  LOADN R33 1
  LOADN R34 0
  LOADN R35 1
  LOADN R36 0
  CALL R24 12 1
  GETIMPORT R26 K2 [Instance.new]
  LOADK R27 K23 ["Motor6D"]
  CALL R26 1 1
  SETTABLEKS R2 R26 K24 ["Part0"]
  SETTABLEKS R21 R26 K25 ["Part1"]
  SETTABLEKS R23 R26 K26 ["C0"]
  SETTABLEKS R24 R26 K27 ["C1"]
  SETTABLEKS R2 R26 K19 ["Parent"]
  MOVE R25 R26
  LOADK R26 K60 ["Neck"]
  SETTABLEKS R26 R25 K5 ["Name"]
  LOADK R26 K29 [0.1]
  SETTABLEKS R26 R25 K30 ["MaxVelocity"]
  GETIMPORT R26 K2 [Instance.new]
  LOADK R27 K61 ["Decal"]
  CALL R26 1 1
  LOADK R27 K62 ["face"]
  SETTABLEKS R27 R26 K5 ["Name"]
  LOADK R27 K63 ["rbxasset://textures/face.png"]
  SETTABLEKS R27 R26 K64 ["Texture"]
  SETTABLEKS R21 R26 K19 ["Parent"]
  GETIMPORT R27 K2 [Instance.new]
  LOADK R28 K65 ["Humanoid"]
  CALL R27 1 1
  SETTABLEKS R0 R27 K19 ["Parent"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 1 0
  DUPCLOSURE R1 K0 [PROTO_0]
  DUPCLOSURE R2 K1 [PROTO_1]
  SETTABLEKS R2 R0 K2 ["Create"]
  RETURN R0 1
