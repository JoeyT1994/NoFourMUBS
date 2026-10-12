import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions25
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def e1248 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1247 e0230
def v1248 (X Y k : ℂ) : ℂ := (v1247 X Y k)*(v0230 X Y k)
theorem e1248_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1248) = v1248 X Y k := by
  simp only [e1248,v1248,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1247_eval,e0230_eval]
def e1249 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1248 e0117
def v1249 (X Y k : ℂ) : ℂ := (v1248 X Y k)*(v0117 X Y k)
theorem e1249_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1249) = v1249 X Y k := by
  simp only [e1249,v1249,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1248_eval,e0117_eval]
def e1250 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1249 e0119
def v1250 (X Y k : ℂ) : ℂ := (v1249 X Y k)*(v0119 X Y k)
theorem e1250_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1250) = v1250 X Y k := by
  simp only [e1250,v1250,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1249_eval,e0119_eval]
def e1251 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1243 e1250
def v1251 (X Y k : ℂ) : ℂ := (v1243 X Y k)*(v1250 X Y k)
theorem e1251_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1251) = v1251 X Y k := by
  simp only [e1251,v1251,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1243_eval,e1250_eval]
def e1252 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1219 e0576
def v1252 (X Y k : ℂ) : ℂ := (v1219 X Y k)*(v0576 X Y k)
theorem e1252_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1252) = v1252 X Y k := by
  simp only [e1252,v1252,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1219_eval,e0576_eval]
def e1253 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1226 e0582
def v1253 (X Y k : ℂ) : ℂ := (v1226 X Y k)*(v0582 X Y k)
theorem e1253_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1253) = v1253 X Y k := by
  simp only [e1253,v1253,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1226_eval,e0582_eval]
def e1254 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1253
def v1254 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1253 X Y k)
theorem e1254_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1254) = v1254 X Y k := by
  simp only [e1254,v1254,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1253_eval]
def e1255 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1254 e0475
def v1255 (X Y k : ℂ) : ℂ := (v1254 X Y k)*(v0475 X Y k)
theorem e1255_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1255) = v1255 X Y k := by
  simp only [e1255,v1255,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1254_eval,e0475_eval]
def e1256 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1252 e1255
def v1256 (X Y k : ℂ) : ℂ := (v1252 X Y k)+(v1255 X Y k)
theorem e1256_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1256) = v1256 X Y k := by
  simp only [e1256,v1256,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1252_eval,e1255_eval]
def e1257 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1256 e0094
def v1257 (X Y k : ℂ) : ℂ := (v1256 X Y k)*(v0094 X Y k)
theorem e1257_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1257) = v1257 X Y k := by
  simp only [e1257,v1257,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1256_eval,e0094_eval]
def e1258 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1257 e0001
def v1258 (X Y k : ℂ) : ℂ := (v1257 X Y k)*(v0001 X Y k)
theorem e1258_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1258) = v1258 X Y k := by
  simp only [e1258,v1258,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1257_eval,e0001_eval]
def e1259 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1219 e0582
def v1259 (X Y k : ℂ) : ℂ := (v1219 X Y k)*(v0582 X Y k)
theorem e1259_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1259) = v1259 X Y k := by
  simp only [e1259,v1259,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1219_eval,e0582_eval]
def e1260 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1226 e0576
def v1260 (X Y k : ℂ) : ℂ := (v1226 X Y k)*(v0576 X Y k)
theorem e1260_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1260) = v1260 X Y k := by
  simp only [e1260,v1260,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1226_eval,e0576_eval]
def e1261 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1259 e1260
def v1261 (X Y k : ℂ) : ℂ := (v1259 X Y k)+(v1260 X Y k)
theorem e1261_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1261) = v1261 X Y k := by
  simp only [e1261,v1261,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1259_eval,e1260_eval]
def e1262 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e1253
def v1262 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v1253 X Y k)
theorem e1262_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1262) = v1262 X Y k := by
  simp only [e1262,v1262,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e1253_eval]
def e1263 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1261 e1262
def v1263 (X Y k : ℂ) : ℂ := (v1261 X Y k)+(v1262 X Y k)
theorem e1263_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1263) = v1263 X Y k := by
  simp only [e1263,v1263,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1261_eval,e1262_eval]
def e1264 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1263 e0105
def v1264 (X Y k : ℂ) : ℂ := (v1263 X Y k)*(v0105 X Y k)
theorem e1264_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1264) = v1264 X Y k := by
  simp only [e1264,v1264,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1263_eval,e0105_eval]
def e1265 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1264
def v1265 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1264 X Y k)
theorem e1265_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1265) = v1265 X Y k := by
  simp only [e1265,v1265,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1264_eval]
def e1266 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1265 e0078
def v1266 (X Y k : ℂ) : ℂ := (v1265 X Y k)*(v0078 X Y k)
theorem e1266_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1266) = v1266 X Y k := by
  simp only [e1266,v1266,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1265_eval,e0078_eval]
def e1267 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1258 e1266
def v1267 (X Y k : ℂ) : ℂ := (v1258 X Y k)+(v1266 X Y k)
theorem e1267_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1267) = v1267 X Y k := by
  simp only [e1267,v1267,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1258_eval,e1266_eval]
def e1268 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0789 e0006
def v1268 (X Y k : ℂ) : ℂ := (v0789 X Y k)*(v0006 X Y k)
theorem e1268_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1268) = v1268 X Y k := by
  simp only [e1268,v1268,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0789_eval,e0006_eval]
def e1269 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1268 e0224
def v1269 (X Y k : ℂ) : ℂ := (v1268 X Y k)*(v0224 X Y k)
theorem e1269_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1269) = v1269 X Y k := by
  simp only [e1269,v1269,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1268_eval,e0224_eval]
def e1270 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1269 e0113
def v1270 (X Y k : ℂ) : ℂ := (v1269 X Y k)*(v0113 X Y k)
theorem e1270_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1270) = v1270 X Y k := by
  simp only [e1270,v1270,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1269_eval,e0113_eval]
def e1271 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1270 e0115
def v1271 (X Y k : ℂ) : ℂ := (v1270 X Y k)*(v0115 X Y k)
theorem e1271_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1271) = v1271 X Y k := by
  simp only [e1271,v1271,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1270_eval,e0115_eval]
def e1272 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1271 e0228
def v1272 (X Y k : ℂ) : ℂ := (v1271 X Y k)*(v0228 X Y k)
theorem e1272_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1272) = v1272 X Y k := by
  simp only [e1272,v1272,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1271_eval,e0228_eval]
def e1273 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1272 e0230
def v1273 (X Y k : ℂ) : ℂ := (v1272 X Y k)*(v0230 X Y k)
theorem e1273_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1273) = v1273 X Y k := by
  simp only [e1273,v1273,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1272_eval,e0230_eval]
def e1274 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1273 e0117
def v1274 (X Y k : ℂ) : ℂ := (v1273 X Y k)*(v0117 X Y k)
theorem e1274_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1274) = v1274 X Y k := by
  simp only [e1274,v1274,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1273_eval,e0117_eval]
def e1275 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1274 e0119
def v1275 (X Y k : ℂ) : ℂ := (v1274 X Y k)*(v0119 X Y k)
theorem e1275_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1275) = v1275 X Y k := by
  simp only [e1275,v1275,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1274_eval,e0119_eval]
def e1276 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1267 e1275
def v1276 (X Y k : ℂ) : ℂ := (v1267 X Y k)*(v1275 X Y k)
theorem e1276_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1276) = v1276 X Y k := by
  simp only [e1276,v1276,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1267_eval,e1275_eval]
def e1277 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1006 e0943
def v1277 (X Y k : ℂ) : ℂ := (v1006 X Y k)*(v0943 X Y k)
theorem e1277_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1277) = v1277 X Y k := by
  simp only [e1277,v1277,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1006_eval,e0943_eval]
def e1278 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1277 e0466
def v1278 (X Y k : ℂ) : ℂ := (v1277 X Y k)*(v0466 X Y k)
theorem e1278_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1278) = v1278 X Y k := by
  simp only [e1278,v1278,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1277_eval,e0466_eval]
def e1279 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1006 e0948
def v1279 (X Y k : ℂ) : ℂ := (v1006 X Y k)*(v0948 X Y k)
theorem e1279_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1279) = v1279 X Y k := by
  simp only [e1279,v1279,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1006_eval,e0948_eval]
def e1280 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1279 e0472
def v1280 (X Y k : ℂ) : ℂ := (v1279 X Y k)*(v0472 X Y k)
theorem e1280_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1280) = v1280 X Y k := by
  simp only [e1280,v1280,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1279_eval,e0472_eval]
def e1281 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1280
def v1281 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1280 X Y k)
theorem e1281_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1281) = v1281 X Y k := by
  simp only [e1281,v1281,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1280_eval]
def e1282 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1281 e0475
def v1282 (X Y k : ℂ) : ℂ := (v1281 X Y k)*(v0475 X Y k)
theorem e1282_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1282) = v1282 X Y k := by
  simp only [e1282,v1282,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1281_eval,e0475_eval]
def e1283 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1278 e1282
def v1283 (X Y k : ℂ) : ℂ := (v1278 X Y k)+(v1282 X Y k)
theorem e1283_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1283) = v1283 X Y k := by
  simp only [e1283,v1283,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1278_eval,e1282_eval]
def e1284 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1283 e0130
def v1284 (X Y k : ℂ) : ℂ := (v1283 X Y k)*(v0130 X Y k)
theorem e1284_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1284) = v1284 X Y k := by
  simp only [e1284,v1284,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1283_eval,e0130_eval]
def e1285 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1277 e0472
def v1285 (X Y k : ℂ) : ℂ := (v1277 X Y k)*(v0472 X Y k)
theorem e1285_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1285) = v1285 X Y k := by
  simp only [e1285,v1285,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1277_eval,e0472_eval]
def e1286 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1279 e0466
def v1286 (X Y k : ℂ) : ℂ := (v1279 X Y k)*(v0466 X Y k)
theorem e1286_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1286) = v1286 X Y k := by
  simp only [e1286,v1286,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1279_eval,e0466_eval]
def e1287 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1285 e1286
def v1287 (X Y k : ℂ) : ℂ := (v1285 X Y k)+(v1286 X Y k)
theorem e1287_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1287) = v1287 X Y k := by
  simp only [e1287,v1287,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1285_eval,e1286_eval]
def e1288 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e1280
def v1288 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v1280 X Y k)
theorem e1288_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1288) = v1288 X Y k := by
  simp only [e1288,v1288,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e1280_eval]
def e1289 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1287 e1288
def v1289 (X Y k : ℂ) : ℂ := (v1287 X Y k)+(v1288 X Y k)
theorem e1289_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1289) = v1289 X Y k := by
  simp only [e1289,v1289,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1287_eval,e1288_eval]
def e1290 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1289 e0141
def v1290 (X Y k : ℂ) : ℂ := (v1289 X Y k)*(v0141 X Y k)
theorem e1290_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1290) = v1290 X Y k := by
  simp only [e1290,v1290,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1289_eval,e0141_eval]
def e1291 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1290
def v1291 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1290 X Y k)
theorem e1291_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1291) = v1291 X Y k := by
  simp only [e1291,v1291,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1290_eval]
def e1292 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1291 e0061
def v1292 (X Y k : ℂ) : ℂ := (v1291 X Y k)*(v0061 X Y k)
theorem e1292_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1292) = v1292 X Y k := by
  simp only [e1292,v1292,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1291_eval,e0061_eval]
def e1293 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1284 e1292
def v1293 (X Y k : ℂ) : ℂ := (v1284 X Y k)+(v1292 X Y k)
theorem e1293_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1293) = v1293 X Y k := by
  simp only [e1293,v1293,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1284_eval,e1292_eval]
def e1294 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1026 e0082
def v1294 (X Y k : ℂ) : ℂ := (v1026 X Y k)*(v0082 X Y k)
theorem e1294_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1294) = v1294 X Y k := by
  simp only [e1294,v1294,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1026_eval,e0082_eval]
def e1295 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1294 e0376
def v1295 (X Y k : ℂ) : ℂ := (v1294 X Y k)*(v0376 X Y k)
theorem e1295_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1295) = v1295 X Y k := by
  simp only [e1295,v1295,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1294_eval,e0376_eval]

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
