import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions22
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def e1104 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0003 e0006
def v1104 (X Y k : ℂ) : ℂ := (v0003 X Y k)*(v0006 X Y k)
theorem e1104_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1104) = v1104 X Y k := by
  simp only [e1104,v1104,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0003_eval,e0006_eval]
def e1105 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0272 e0283
def v1105 (X Y k : ℂ) : ℂ := (v0272 X Y k)*(v0283 X Y k)
theorem e1105_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1105) = v1105 X Y k := by
  simp only [e1105,v1105,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0272_eval,e0283_eval]
def e1106 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0274
def v1106 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0274 X Y k)
theorem e1106_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1106) = v1106 X Y k := by
  simp only [e1106,v1106,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0274_eval]
def e1107 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1105 e1106
def v1107 (X Y k : ℂ) : ℂ := (v1105 X Y k)+(v1106 X Y k)
theorem e1107_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1107) = v1107 X Y k := by
  simp only [e1107,v1107,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1105_eval,e1106_eval]
def e1108 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1104 e1107
def v1108 (X Y k : ℂ) : ℂ := (v1104 X Y k)*(v1107 X Y k)
theorem e1108_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1108) = v1108 X Y k := by
  simp only [e1108,v1108,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1104_eval,e1107_eval]
def e1109 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1103 e1108
def v1109 (X Y k : ℂ) : ℂ := (v1103 X Y k)*(v1108 X Y k)
theorem e1109_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1109) = v1109 X Y k := by
  simp only [e1109,v1109,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1103_eval,e1108_eval]
def e1110 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0001 e1086
def v1110 (X Y k : ℂ) : ℂ := (v0001 X Y k)*(v1086 X Y k)
theorem e1110_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1110) = v1110 X Y k := by
  simp only [e1110,v1110,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0001_eval,e1086_eval]
def e1111 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1104 e0274
def v1111 (X Y k : ℂ) : ℂ := (v1104 X Y k)*(v0274 X Y k)
theorem e1111_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1111) = v1111 X Y k := by
  simp only [e1111,v1111,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1104_eval,e0274_eval]
def e1112 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e1111
def v1112 (X Y k : ℂ) : ℂ := -(v1111 X Y k)
theorem e1112_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1112) = v1112 X Y k := by
  simp only [e1112,v1112,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSplitReduction20261003.Coefficients.eval_neg,e1111_eval]
def e1113 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1110 e1112
def v1113 (X Y k : ℂ) : ℂ := (v1110 X Y k)*(v1112 X Y k)
theorem e1113_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1113) = v1113 X Y k := by
  simp only [e1113,v1113,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1110_eval,e1112_eval]
def e1114 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1113
def v1114 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1113 X Y k)
theorem e1114_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1114) = v1114 X Y k := by
  simp only [e1114,v1114,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1113_eval]
def e1115 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1114 e0475
def v1115 (X Y k : ℂ) : ℂ := (v1114 X Y k)*(v0475 X Y k)
theorem e1115_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1115) = v1115 X Y k := by
  simp only [e1115,v1115,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1114_eval,e0475_eval]
def e1116 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1109 e1115
def v1116 (X Y k : ℂ) : ℂ := (v1109 X Y k)+(v1115 X Y k)
theorem e1116_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1116) = v1116 X Y k := by
  simp only [e1116,v1116,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1109_eval,e1115_eval]
def e1117 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1116 e0187
def v1117 (X Y k : ℂ) : ℂ := (v1116 X Y k)*(v0187 X Y k)
theorem e1117_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1117) = v1117 X Y k := by
  simp only [e1117,v1117,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1116_eval,e0187_eval]
def e1118 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1117 e0001
def v1118 (X Y k : ℂ) : ℂ := (v1117 X Y k)*(v0001 X Y k)
theorem e1118_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1118) = v1118 X Y k := by
  simp only [e1118,v1118,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1117_eval,e0001_eval]
def e1119 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1103 e1112
def v1119 (X Y k : ℂ) : ℂ := (v1103 X Y k)*(v1112 X Y k)
theorem e1119_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1119) = v1119 X Y k := by
  simp only [e1119,v1119,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1103_eval,e1112_eval]
def e1120 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1110 e1108
def v1120 (X Y k : ℂ) : ℂ := (v1110 X Y k)*(v1108 X Y k)
theorem e1120_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1120) = v1120 X Y k := by
  simp only [e1120,v1120,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1110_eval,e1108_eval]
def e1121 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1119 e1120
def v1121 (X Y k : ℂ) : ℂ := (v1119 X Y k)+(v1120 X Y k)
theorem e1121_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1121) = v1121 X Y k := by
  simp only [e1121,v1121,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1119_eval,e1120_eval]
def e1122 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e1113
def v1122 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v1113 X Y k)
theorem e1122_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1122) = v1122 X Y k := by
  simp only [e1122,v1122,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e1113_eval]
def e1123 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1121 e1122
def v1123 (X Y k : ℂ) : ℂ := (v1121 X Y k)+(v1122 X Y k)
theorem e1123_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1123) = v1123 X Y k := by
  simp only [e1123,v1123,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1121_eval,e1122_eval]
def e1124 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1123 e0190
def v1124 (X Y k : ℂ) : ℂ := (v1123 X Y k)*(v0190 X Y k)
theorem e1124_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1124) = v1124 X Y k := by
  simp only [e1124,v1124,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1123_eval,e0190_eval]
def e1125 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1124
def v1125 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1124 X Y k)
theorem e1125_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1125) = v1125 X Y k := by
  simp only [e1125,v1125,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1124_eval]
def e1126 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1125 e0078
def v1126 (X Y k : ℂ) : ℂ := (v1125 X Y k)*(v0078 X Y k)
theorem e1126_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1126) = v1126 X Y k := by
  simp only [e1126,v1126,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1125_eval,e0078_eval]
def e1127 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1118 e1126
def v1127 (X Y k : ℂ) : ℂ := (v1118 X Y k)+(v1126 X Y k)
theorem e1127_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1127) = v1127 X Y k := by
  simp only [e1127,v1127,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1118_eval,e1126_eval]
def e1128 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0293 e0222
def v1128 (X Y k : ℂ) : ℂ := (v0293 X Y k)*(v0222 X Y k)
theorem e1128_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1128) = v1128 X Y k := by
  simp only [e1128,v1128,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0293_eval,e0222_eval]
def e1129 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1128 e0296
def v1129 (X Y k : ℂ) : ℂ := (v1128 X Y k)*(v0296 X Y k)
theorem e1129_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1129) = v1129 X Y k := by
  simp only [e1129,v1129,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1128_eval,e0296_eval]
def e1130 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1129 e0013
def v1130 (X Y k : ℂ) : ℂ := (v1129 X Y k)*(v0013 X Y k)
theorem e1130_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1130) = v1130 X Y k := by
  simp only [e1130,v1130,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1129_eval,e0013_eval]
def e1131 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1130 e0016
def v1131 (X Y k : ℂ) : ℂ := (v1130 X Y k)*(v0016 X Y k)
theorem e1131_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1131) = v1131 X Y k := by
  simp only [e1131,v1131,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1130_eval,e0016_eval]
def e1132 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1131 e0228
def v1132 (X Y k : ℂ) : ℂ := (v1131 X Y k)*(v0228 X Y k)
theorem e1132_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1132) = v1132 X Y k := by
  simp only [e1132,v1132,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1131_eval,e0228_eval]
def e1133 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1132 e0230
def v1133 (X Y k : ℂ) : ℂ := (v1132 X Y k)*(v0230 X Y k)
theorem e1133_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1133) = v1133 X Y k := by
  simp only [e1133,v1133,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1132_eval,e0230_eval]
def e1134 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1133 e0117
def v1134 (X Y k : ℂ) : ℂ := (v1133 X Y k)*(v0117 X Y k)
theorem e1134_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1134) = v1134 X Y k := by
  simp only [e1134,v1134,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1133_eval,e0117_eval]
def e1135 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1134 e0119
def v1135 (X Y k : ℂ) : ℂ := (v1134 X Y k)*(v0119 X Y k)
theorem e1135_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1135) = v1135 X Y k := by
  simp only [e1135,v1135,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1134_eval,e0119_eval]
def e1136 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1127 e1135
def v1136 (X Y k : ℂ) : ℂ := (v1127 X Y k)*(v1135 X Y k)
theorem e1136_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1136) = v1136 X Y k := by
  simp only [e1136,v1136,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1127_eval,e1135_eval]
def e1137 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1103 e0867
def v1137 (X Y k : ℂ) : ℂ := (v1103 X Y k)*(v0867 X Y k)
theorem e1137_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1137) = v1137 X Y k := by
  simp only [e1137,v1137,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1103_eval,e0867_eval]
def e1138 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1110 e0871
def v1138 (X Y k : ℂ) : ℂ := (v1110 X Y k)*(v0871 X Y k)
theorem e1138_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1138) = v1138 X Y k := by
  simp only [e1138,v1138,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1110_eval,e0871_eval]
def e1139 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1138
def v1139 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1138 X Y k)
theorem e1139_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1139) = v1139 X Y k := by
  simp only [e1139,v1139,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1138_eval]
def e1140 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1139 e0475
def v1140 (X Y k : ℂ) : ℂ := (v1139 X Y k)*(v0475 X Y k)
theorem e1140_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1140) = v1140 X Y k := by
  simp only [e1140,v1140,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1139_eval,e0475_eval]
def e1141 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1137 e1140
def v1141 (X Y k : ℂ) : ℂ := (v1137 X Y k)+(v1140 X Y k)
theorem e1141_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1141) = v1141 X Y k := by
  simp only [e1141,v1141,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1137_eval,e1140_eval]
def e1142 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1141 e0245
def v1142 (X Y k : ℂ) : ℂ := (v1141 X Y k)*(v0245 X Y k)
theorem e1142_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1142) = v1142 X Y k := by
  simp only [e1142,v1142,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1141_eval,e0245_eval]
def e1143 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1103 e0871
def v1143 (X Y k : ℂ) : ℂ := (v1103 X Y k)*(v0871 X Y k)
theorem e1143_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1143) = v1143 X Y k := by
  simp only [e1143,v1143,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1103_eval,e0871_eval]
def e1144 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1110 e0867
def v1144 (X Y k : ℂ) : ℂ := (v1110 X Y k)*(v0867 X Y k)
theorem e1144_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1144) = v1144 X Y k := by
  simp only [e1144,v1144,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1110_eval,e0867_eval]
def e1145 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1143 e1144
def v1145 (X Y k : ℂ) : ℂ := (v1143 X Y k)+(v1144 X Y k)
theorem e1145_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1145) = v1145 X Y k := by
  simp only [e1145,v1145,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1143_eval,e1144_eval]
def e1146 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e1138
def v1146 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v1138 X Y k)
theorem e1146_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1146) = v1146 X Y k := by
  simp only [e1146,v1146,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e1138_eval]
def e1147 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1145 e1146
def v1147 (X Y k : ℂ) : ℂ := (v1145 X Y k)+(v1146 X Y k)
theorem e1147_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1147) = v1147 X Y k := by
  simp only [e1147,v1147,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1145_eval,e1146_eval]
def e1148 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1147 e0255
def v1148 (X Y k : ℂ) : ℂ := (v1147 X Y k)*(v0255 X Y k)
theorem e1148_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1148) = v1148 X Y k := by
  simp only [e1148,v1148,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1147_eval,e0255_eval]
def e1149 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1148
def v1149 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1148 X Y k)
theorem e1149_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1149) = v1149 X Y k := by
  simp only [e1149,v1149,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1148_eval]
def e1150 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1149 e0127
def v1150 (X Y k : ℂ) : ℂ := (v1149 X Y k)*(v0127 X Y k)
theorem e1150_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1150) = v1150 X Y k := by
  simp only [e1150,v1150,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1149_eval,e0127_eval]
def e1151 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1142 e1150
def v1151 (X Y k : ℂ) : ℂ := (v1142 X Y k)+(v1150 X Y k)
theorem e1151_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1151) = v1151 X Y k := by
  simp only [e1151,v1151,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1142_eval,e1150_eval]

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
