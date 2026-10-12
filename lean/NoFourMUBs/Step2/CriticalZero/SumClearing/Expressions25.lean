import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions24
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def e1200 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1199 e0183
def v1200 (X Y k : ℂ) : ℂ := (v1199 X Y k)*(v0183 X Y k)
theorem e1200_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1200) = v1200 X Y k := by
  simp only [e1200,v1200,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1199_eval,e0183_eval]
def e1201 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1193 e1200
def v1201 (X Y k : ℂ) : ℂ := (v1193 X Y k)*(v1200 X Y k)
theorem e1201_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1201) = v1201 X Y k := by
  simp only [e1201,v1201,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1193_eval,e1200_eval]
def e1202 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[-24]]]
def v1202 (X Y k : ℂ) : ℂ := (-24 : ℂ)
theorem e1202_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1202) = v1202 X Y k := by
  norm_num [e1202,v1202,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,CriticalZeroSplitReduction20261003.Coefficients.eval,CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI]
def e1203 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1202 e1082
def v1203 (X Y k : ℂ) : ℂ := (v1202 X Y k)*(v1082 X Y k)
theorem e1203_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1203) = v1203 X Y k := by
  simp only [e1203,v1203,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1202_eval,e1082_eval]
def e1204 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1203 e0156
def v1204 (X Y k : ℂ) : ℂ := (v1203 X Y k)*(v0156 X Y k)
theorem e1204_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1204) = v1204 X Y k := by
  simp only [e1204,v1204,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1203_eval,e0156_eval]
def e1205 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1202 e1086
def v1205 (X Y k : ℂ) : ℂ := (v1202 X Y k)*(v1086 X Y k)
theorem e1205_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1205) = v1205 X Y k := by
  simp only [e1205,v1205,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1202_eval,e1086_eval]
def e1206 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1205 e0159
def v1206 (X Y k : ℂ) : ℂ := (v1205 X Y k)*(v0159 X Y k)
theorem e1206_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1206) = v1206 X Y k := by
  simp only [e1206,v1206,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1205_eval,e0159_eval]
def e1207 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1206
def v1207 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1206 X Y k)
theorem e1207_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1207) = v1207 X Y k := by
  simp only [e1207,v1207,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1206_eval]
def e1208 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1207 e0061
def v1208 (X Y k : ℂ) : ℂ := (v1207 X Y k)*(v0061 X Y k)
theorem e1208_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1208) = v1208 X Y k := by
  simp only [e1208,v1208,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1207_eval,e0061_eval]
def e1209 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1204 e1208
def v1209 (X Y k : ℂ) : ℂ := (v1204 X Y k)+(v1208 X Y k)
theorem e1209_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1209) = v1209 X Y k := by
  simp only [e1209,v1209,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1204_eval,e1208_eval]
def e1210 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1026 e0294
def v1210 (X Y k : ℂ) : ℂ := (v1026 X Y k)*(v0294 X Y k)
theorem e1210_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1210) = v1210 X Y k := by
  simp only [e1210,v1210,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1026_eval,e0294_eval]
def e1211 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1210 e0296
def v1211 (X Y k : ℂ) : ℂ := (v1210 X Y k)*(v0296 X Y k)
theorem e1211_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1211) = v1211 X Y k := by
  simp only [e1211,v1211,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1210_eval,e0296_eval]
def e1212 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1211 e0013
def v1212 (X Y k : ℂ) : ℂ := (v1211 X Y k)*(v0013 X Y k)
theorem e1212_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1212) = v1212 X Y k := by
  simp only [e1212,v1212,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1211_eval,e0013_eval]
def e1213 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1212 e0016
def v1213 (X Y k : ℂ) : ℂ := (v1212 X Y k)*(v0016 X Y k)
theorem e1213_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1213) = v1213 X Y k := by
  simp only [e1213,v1213,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1212_eval,e0016_eval]
def e1214 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1213 e0228
def v1214 (X Y k : ℂ) : ℂ := (v1213 X Y k)*(v0228 X Y k)
theorem e1214_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1214) = v1214 X Y k := by
  simp only [e1214,v1214,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1213_eval,e0228_eval]
def e1215 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1214 e0230
def v1215 (X Y k : ℂ) : ℂ := (v1214 X Y k)*(v0230 X Y k)
theorem e1215_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1215) = v1215 X Y k := by
  simp only [e1215,v1215,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1214_eval,e0230_eval]
def e1216 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1215 e0025
def v1216 (X Y k : ℂ) : ℂ := (v1215 X Y k)*(v0025 X Y k)
theorem e1216_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1216) = v1216 X Y k := by
  simp only [e1216,v1216,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1215_eval,e0025_eval]
def e1217 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1216 e0028
def v1217 (X Y k : ℂ) : ℂ := (v1216 X Y k)*(v0028 X Y k)
theorem e1217_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1217) = v1217 X Y k := by
  simp only [e1217,v1217,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1216_eval,e0028_eval]
def e1218 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1209 e1217
def v1218 (X Y k : ℂ) : ℂ := (v1209 X Y k)*(v1217 X Y k)
theorem e1218_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1218) = v1218 X Y k := by
  simp only [e1218,v1218,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1209_eval,e1217_eval]
def e1219 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0154 e0943
def v1219 (X Y k : ℂ) : ℂ := (v0154 X Y k)*(v0943 X Y k)
theorem e1219_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1219) = v1219 X Y k := by
  simp only [e1219,v1219,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0154_eval,e0943_eval]
def e1220 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0003 e0082
def v1220 (X Y k : ℂ) : ℂ := (v0003 X Y k)*(v0082 X Y k)
theorem e1220_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1220) = v1220 X Y k := by
  simp only [e1220,v1220,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0003_eval,e0082_eval]
def e1221 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0305 e0188
def v1221 (X Y k : ℂ) : ℂ := (v0305 X Y k)*(v0188 X Y k)
theorem e1221_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1221) = v1221 X Y k := by
  simp only [e1221,v1221,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0305_eval,e0188_eval]
def e1222 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0308
def v1222 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0308 X Y k)
theorem e1222_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1222) = v1222 X Y k := by
  simp only [e1222,v1222,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0308_eval]
def e1223 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1221 e1222
def v1223 (X Y k : ℂ) : ℂ := (v1221 X Y k)+(v1222 X Y k)
theorem e1223_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1223) = v1223 X Y k := by
  simp only [e1223,v1223,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1221_eval,e1222_eval]
def e1224 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1220 e1223
def v1224 (X Y k : ℂ) : ℂ := (v1220 X Y k)*(v1223 X Y k)
theorem e1224_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1224) = v1224 X Y k := by
  simp only [e1224,v1224,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1220_eval,e1223_eval]
def e1225 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1219 e1224
def v1225 (X Y k : ℂ) : ℂ := (v1219 X Y k)*(v1224 X Y k)
theorem e1225_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1225) = v1225 X Y k := by
  simp only [e1225,v1225,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1219_eval,e1224_eval]
def e1226 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0154 e0948
def v1226 (X Y k : ℂ) : ℂ := (v0154 X Y k)*(v0948 X Y k)
theorem e1226_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1226) = v1226 X Y k := by
  simp only [e1226,v1226,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0154_eval,e0948_eval]
def e1227 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1220 e0308
def v1227 (X Y k : ℂ) : ℂ := (v1220 X Y k)*(v0308 X Y k)
theorem e1227_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1227) = v1227 X Y k := by
  simp only [e1227,v1227,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1220_eval,e0308_eval]
def e1228 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e1227
def v1228 (X Y k : ℂ) : ℂ := -(v1227 X Y k)
theorem e1228_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1228) = v1228 X Y k := by
  simp only [e1228,v1228,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSplitReduction20261003.Coefficients.eval_neg,e1227_eval]
def e1229 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1226 e1228
def v1229 (X Y k : ℂ) : ℂ := (v1226 X Y k)*(v1228 X Y k)
theorem e1229_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1229) = v1229 X Y k := by
  simp only [e1229,v1229,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1226_eval,e1228_eval]
def e1230 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1229
def v1230 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1229 X Y k)
theorem e1230_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1230) = v1230 X Y k := by
  simp only [e1230,v1230,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1229_eval]
def e1231 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1230 e0475
def v1231 (X Y k : ℂ) : ℂ := (v1230 X Y k)*(v0475 X Y k)
theorem e1231_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1231) = v1231 X Y k := by
  simp only [e1231,v1231,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1230_eval,e0475_eval]
def e1232 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1225 e1231
def v1232 (X Y k : ℂ) : ℂ := (v1225 X Y k)+(v1231 X Y k)
theorem e1232_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1232) = v1232 X Y k := by
  simp only [e1232,v1232,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1225_eval,e1231_eval]
def e1233 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1232 e0187
def v1233 (X Y k : ℂ) : ℂ := (v1232 X Y k)*(v0187 X Y k)
theorem e1233_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1233) = v1233 X Y k := by
  simp only [e1233,v1233,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1232_eval,e0187_eval]
def e1234 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1233 e0001
def v1234 (X Y k : ℂ) : ℂ := (v1233 X Y k)*(v0001 X Y k)
theorem e1234_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1234) = v1234 X Y k := by
  simp only [e1234,v1234,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1233_eval,e0001_eval]
def e1235 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1219 e1228
def v1235 (X Y k : ℂ) : ℂ := (v1219 X Y k)*(v1228 X Y k)
theorem e1235_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1235) = v1235 X Y k := by
  simp only [e1235,v1235,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1219_eval,e1228_eval]
def e1236 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1226 e1224
def v1236 (X Y k : ℂ) : ℂ := (v1226 X Y k)*(v1224 X Y k)
theorem e1236_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1236) = v1236 X Y k := by
  simp only [e1236,v1236,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1226_eval,e1224_eval]
def e1237 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1235 e1236
def v1237 (X Y k : ℂ) : ℂ := (v1235 X Y k)+(v1236 X Y k)
theorem e1237_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1237) = v1237 X Y k := by
  simp only [e1237,v1237,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1235_eval,e1236_eval]
def e1238 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e1229
def v1238 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v1229 X Y k)
theorem e1238_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1238) = v1238 X Y k := by
  simp only [e1238,v1238,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e1229_eval]
def e1239 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1237 e1238
def v1239 (X Y k : ℂ) : ℂ := (v1237 X Y k)+(v1238 X Y k)
theorem e1239_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1239) = v1239 X Y k := by
  simp only [e1239,v1239,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1237_eval,e1238_eval]
def e1240 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1239 e0190
def v1240 (X Y k : ℂ) : ℂ := (v1239 X Y k)*(v0190 X Y k)
theorem e1240_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1240) = v1240 X Y k := by
  simp only [e1240,v1240,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1239_eval,e0190_eval]
def e1241 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1240
def v1241 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1240 X Y k)
theorem e1241_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1241) = v1241 X Y k := by
  simp only [e1241,v1241,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1240_eval]
def e1242 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1241 e0078
def v1242 (X Y k : ℂ) : ℂ := (v1241 X Y k)*(v0078 X Y k)
theorem e1242_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1242) = v1242 X Y k := by
  simp only [e1242,v1242,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1241_eval,e0078_eval]
def e1243 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1234 e1242
def v1243 (X Y k : ℂ) : ℂ := (v1234 X Y k)+(v1242 X Y k)
theorem e1243_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1243) = v1243 X Y k := by
  simp only [e1243,v1243,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1234_eval,e1242_eval]
def e1244 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0489 e0224
def v1244 (X Y k : ℂ) : ℂ := (v0489 X Y k)*(v0224 X Y k)
theorem e1244_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1244) = v1244 X Y k := by
  simp only [e1244,v1244,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0489_eval,e0224_eval]
def e1245 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1244 e0113
def v1245 (X Y k : ℂ) : ℂ := (v1244 X Y k)*(v0113 X Y k)
theorem e1245_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1245) = v1245 X Y k := by
  simp only [e1245,v1245,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1244_eval,e0113_eval]
def e1246 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1245 e0115
def v1246 (X Y k : ℂ) : ℂ := (v1245 X Y k)*(v0115 X Y k)
theorem e1246_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1246) = v1246 X Y k := by
  simp only [e1246,v1246,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1245_eval,e0115_eval]
def e1247 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1246 e0228
def v1247 (X Y k : ℂ) : ℂ := (v1246 X Y k)*(v0228 X Y k)
theorem e1247_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1247) = v1247 X Y k := by
  simp only [e1247,v1247,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1246_eval,e0228_eval]

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
