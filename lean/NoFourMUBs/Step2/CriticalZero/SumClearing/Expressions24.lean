import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions23
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def e1152 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1151 e0688
def v1152 (X Y k : ℂ) : ℂ := (v1151 X Y k)*(v0688 X Y k)
theorem e1152_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1152) = v1152 X Y k := by
  simp only [e1152,v1152,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1151_eval,e0688_eval]
def e1153 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1083 e0386
def v1153 (X Y k : ℂ) : ℂ := (v1083 X Y k)*(v0386 X Y k)
theorem e1153_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1153) = v1153 X Y k := by
  simp only [e1153,v1153,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1083_eval,e0386_eval]
def e1154 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1087 e0389
def v1154 (X Y k : ℂ) : ℂ := (v1087 X Y k)*(v0389 X Y k)
theorem e1154_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1154) = v1154 X Y k := by
  simp only [e1154,v1154,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1087_eval,e0389_eval]
def e1155 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1154
def v1155 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1154 X Y k)
theorem e1155_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1155) = v1155 X Y k := by
  simp only [e1155,v1155,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1154_eval]
def e1156 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1155 e0127
def v1156 (X Y k : ℂ) : ℂ := (v1155 X Y k)*(v0127 X Y k)
theorem e1156_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1156) = v1156 X Y k := by
  simp only [e1156,v1156,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1155_eval,e0127_eval]
def e1157 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1153 e1156
def v1157 (X Y k : ℂ) : ℂ := (v1153 X Y k)+(v1156 X Y k)
theorem e1157_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1157) = v1157 X Y k := by
  simp only [e1157,v1157,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1153_eval,e1156_eval]
def e1158 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1157 e0305
def v1158 (X Y k : ℂ) : ℂ := (v1157 X Y k)*(v0305 X Y k)
theorem e1158_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1158) = v1158 X Y k := by
  simp only [e1158,v1158,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1157_eval,e0305_eval]
def e1159 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1158 e0135
def v1159 (X Y k : ℂ) : ℂ := (v1158 X Y k)*(v0135 X Y k)
theorem e1159_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1159) = v1159 X Y k := by
  simp only [e1159,v1159,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1158_eval,e0135_eval]
def e1160 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1083 e0389
def v1160 (X Y k : ℂ) : ℂ := (v1083 X Y k)*(v0389 X Y k)
theorem e1160_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1160) = v1160 X Y k := by
  simp only [e1160,v1160,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1083_eval,e0389_eval]
def e1161 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1160 e0001
def v1161 (X Y k : ℂ) : ℂ := (v1160 X Y k)*(v0001 X Y k)
theorem e1161_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1161) = v1161 X Y k := by
  simp only [e1161,v1161,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1160_eval,e0001_eval]
def e1162 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1087 e0386
def v1162 (X Y k : ℂ) : ℂ := (v1087 X Y k)*(v0386 X Y k)
theorem e1162_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1162) = v1162 X Y k := by
  simp only [e1162,v1162,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1087_eval,e0386_eval]
def e1163 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1162 e0006
def v1163 (X Y k : ℂ) : ℂ := (v1162 X Y k)*(v0006 X Y k)
theorem e1163_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1163) = v1163 X Y k := by
  simp only [e1163,v1163,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1162_eval,e0006_eval]
def e1164 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1161 e1163
def v1164 (X Y k : ℂ) : ℂ := (v1161 X Y k)+(v1163 X Y k)
theorem e1164_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1164) = v1164 X Y k := by
  simp only [e1164,v1164,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1161_eval,e1163_eval]
def e1165 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e1154
def v1165 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v1154 X Y k)
theorem e1165_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1165) = v1165 X Y k := by
  simp only [e1165,v1165,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e1154_eval]
def e1166 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1165 e0001
def v1166 (X Y k : ℂ) : ℂ := (v1165 X Y k)*(v0001 X Y k)
theorem e1166_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1166) = v1166 X Y k := by
  simp only [e1166,v1166,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1165_eval,e0001_eval]
def e1167 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1164 e1166
def v1167 (X Y k : ℂ) : ℂ := (v1164 X Y k)+(v1166 X Y k)
theorem e1167_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1167) = v1167 X Y k := by
  simp only [e1167,v1167,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1164_eval,e1166_eval]
def e1168 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1167 e0308
def v1168 (X Y k : ℂ) : ℂ := (v1167 X Y k)*(v0308 X Y k)
theorem e1168_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1168) = v1168 X Y k := by
  simp only [e1168,v1168,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1167_eval,e0308_eval]
def e1169 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1168
def v1169 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1168 X Y k)
theorem e1169_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1169) = v1169 X Y k := by
  simp only [e1169,v1169,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1168_eval]
def e1170 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1169 e0078
def v1170 (X Y k : ℂ) : ℂ := (v1169 X Y k)*(v0078 X Y k)
theorem e1170_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1170) = v1170 X Y k := by
  simp only [e1170,v1170,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1169_eval,e0078_eval]
def e1171 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1159 e1170
def v1171 (X Y k : ℂ) : ℂ := (v1159 X Y k)+(v1170 X Y k)
theorem e1171_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1171) = v1171 X Y k := by
  simp only [e1171,v1171,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1159_eval,e1170_eval]
def e1172 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1056 e0822
def v1172 (X Y k : ℂ) : ℂ := (v1056 X Y k)*(v0822 X Y k)
theorem e1172_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1172) = v1172 X Y k := by
  simp only [e1172,v1172,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1056_eval,e0822_eval]
def e1173 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1172 e0824
def v1173 (X Y k : ℂ) : ℂ := (v1172 X Y k)*(v0824 X Y k)
theorem e1173_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1173) = v1173 X Y k := by
  simp only [e1173,v1173,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1172_eval,e0824_eval]
def e1174 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1173 e0117
def v1174 (X Y k : ℂ) : ℂ := (v1173 X Y k)*(v0117 X Y k)
theorem e1174_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1174) = v1174 X Y k := by
  simp only [e1174,v1174,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1173_eval,e0117_eval]
def e1175 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1174 e0119
def v1175 (X Y k : ℂ) : ℂ := (v1174 X Y k)*(v0119 X Y k)
theorem e1175_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1175) = v1175 X Y k := by
  simp only [e1175,v1175,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1174_eval,e0119_eval]
def e1176 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1171 e1175
def v1176 (X Y k : ℂ) : ℂ := (v1171 X Y k)*(v1175 X Y k)
theorem e1176_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1176) = v1176 X Y k := by
  simp only [e1176,v1176,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1171_eval,e1175_eval]
def e1177 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1083 e0415
def v1177 (X Y k : ℂ) : ℂ := (v1083 X Y k)*(v0415 X Y k)
theorem e1177_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1177) = v1177 X Y k := by
  simp only [e1177,v1177,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1083_eval,e0415_eval]
def e1178 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1087 e0417
def v1178 (X Y k : ℂ) : ℂ := (v1087 X Y k)*(v0417 X Y k)
theorem e1178_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1178) = v1178 X Y k := by
  simp only [e1178,v1178,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1087_eval,e0417_eval]
def e1179 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1178
def v1179 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1178 X Y k)
theorem e1179_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1179) = v1179 X Y k := by
  simp only [e1179,v1179,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1178_eval]
def e1180 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1179 e0061
def v1180 (X Y k : ℂ) : ℂ := (v1179 X Y k)*(v0061 X Y k)
theorem e1180_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1180) = v1180 X Y k := by
  simp only [e1180,v1180,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1179_eval,e0061_eval]
def e1181 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1177 e1180
def v1181 (X Y k : ℂ) : ℂ := (v1177 X Y k)+(v1180 X Y k)
theorem e1181_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1181) = v1181 X Y k := by
  simp only [e1181,v1181,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1177_eval,e1180_eval]
def e1182 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1181 e0272
def v1182 (X Y k : ℂ) : ℂ := (v1181 X Y k)*(v0272 X Y k)
theorem e1182_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1182) = v1182 X Y k := by
  simp only [e1182,v1182,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1181_eval,e0272_eval]
def e1183 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1182 e0006
def v1183 (X Y k : ℂ) : ℂ := (v1182 X Y k)*(v0006 X Y k)
theorem e1183_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1183) = v1183 X Y k := by
  simp only [e1183,v1183,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1182_eval,e0006_eval]
def e1184 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1083 e0417
def v1184 (X Y k : ℂ) : ℂ := (v1083 X Y k)*(v0417 X Y k)
theorem e1184_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1184) = v1184 X Y k := by
  simp only [e1184,v1184,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1083_eval,e0417_eval]
def e1185 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1087 e0415
def v1185 (X Y k : ℂ) : ℂ := (v1087 X Y k)*(v0415 X Y k)
theorem e1185_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1185) = v1185 X Y k := by
  simp only [e1185,v1185,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1087_eval,e0415_eval]
def e1186 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1185 e0006
def v1186 (X Y k : ℂ) : ℂ := (v1185 X Y k)*(v0006 X Y k)
theorem e1186_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1186) = v1186 X Y k := by
  simp only [e1186,v1186,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1185_eval,e0006_eval]
def e1187 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1184 e1186
def v1187 (X Y k : ℂ) : ℂ := (v1184 X Y k)+(v1186 X Y k)
theorem e1187_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1187) = v1187 X Y k := by
  simp only [e1187,v1187,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1184_eval,e1186_eval]
def e1188 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e1178
def v1188 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v1178 X Y k)
theorem e1188_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1188) = v1188 X Y k := by
  simp only [e1188,v1188,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e1178_eval]
def e1189 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1187 e1188
def v1189 (X Y k : ℂ) : ℂ := (v1187 X Y k)+(v1188 X Y k)
theorem e1189_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1189) = v1189 X Y k := by
  simp only [e1189,v1189,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1187_eval,e1188_eval]
def e1190 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1189 e0274
def v1190 (X Y k : ℂ) : ℂ := (v1189 X Y k)*(v0274 X Y k)
theorem e1190_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1190) = v1190 X Y k := by
  simp only [e1190,v1190,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1189_eval,e0274_eval]
def e1191 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1190
def v1191 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1190 X Y k)
theorem e1191_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1191) = v1191 X Y k := by
  simp only [e1191,v1191,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1190_eval]
def e1192 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1191 e0078
def v1192 (X Y k : ℂ) : ℂ := (v1191 X Y k)*(v0078 X Y k)
theorem e1192_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1192) = v1192 X Y k := by
  simp only [e1192,v1192,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1191_eval,e0078_eval]
def e1193 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1183 e1192
def v1193 (X Y k : ℂ) : ℂ := (v1183 X Y k)+(v1192 X Y k)
theorem e1193_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1193) = v1193 X Y k := by
  simp only [e1193,v1193,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1183_eval,e1192_eval]
def e1194 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1027 e0224
def v1194 (X Y k : ℂ) : ℂ := (v1027 X Y k)*(v0224 X Y k)
theorem e1194_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1194) = v1194 X Y k := by
  simp only [e1194,v1194,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1027_eval,e0224_eval]
def e1195 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1194 e0177
def v1195 (X Y k : ℂ) : ℂ := (v1194 X Y k)*(v0177 X Y k)
theorem e1195_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1195) = v1195 X Y k := by
  simp only [e1195,v1195,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1194_eval,e0177_eval]
def e1196 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1195 e0179
def v1196 (X Y k : ℂ) : ℂ := (v1195 X Y k)*(v0179 X Y k)
theorem e1196_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1196) = v1196 X Y k := by
  simp only [e1196,v1196,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1195_eval,e0179_eval]
def e1197 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1196 e0822
def v1197 (X Y k : ℂ) : ℂ := (v1196 X Y k)*(v0822 X Y k)
theorem e1197_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1197) = v1197 X Y k := by
  simp only [e1197,v1197,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1196_eval,e0822_eval]
def e1198 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1197 e0824
def v1198 (X Y k : ℂ) : ℂ := (v1197 X Y k)*(v0824 X Y k)
theorem e1198_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1198) = v1198 X Y k := by
  simp only [e1198,v1198,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1197_eval,e0824_eval]
def e1199 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1198 e0181
def v1199 (X Y k : ℂ) : ℂ := (v1198 X Y k)*(v0181 X Y k)
theorem e1199_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1199) = v1199 X Y k := by
  simp only [e1199,v1199,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1198_eval,e0181_eval]

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
