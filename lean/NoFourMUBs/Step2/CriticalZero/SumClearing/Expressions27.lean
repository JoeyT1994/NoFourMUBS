import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions26
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def e1296 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1295 e0113
def v1296 (X Y k : ℂ) : ℂ := (v1295 X Y k)*(v0113 X Y k)
theorem e1296_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1296) = v1296 X Y k := by
  simp only [e1296,v1296,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1295_eval,e0113_eval]
def e1297 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1296 e0115
def v1297 (X Y k : ℂ) : ℂ := (v1296 X Y k)*(v0115 X Y k)
theorem e1297_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1297) = v1297 X Y k := by
  simp only [e1297,v1297,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1296_eval,e0115_eval]
def e1298 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1297 e0228
def v1298 (X Y k : ℂ) : ℂ := (v1297 X Y k)*(v0228 X Y k)
theorem e1298_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1298) = v1298 X Y k := by
  simp only [e1298,v1298,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1297_eval,e0228_eval]
def e1299 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1298 e0230
def v1299 (X Y k : ℂ) : ℂ := (v1298 X Y k)*(v0230 X Y k)
theorem e1299_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1299) = v1299 X Y k := by
  simp only [e1299,v1299,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1298_eval,e0230_eval]
def e1300 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1299 e0117
def v1300 (X Y k : ℂ) : ℂ := (v1299 X Y k)*(v0117 X Y k)
theorem e1300_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1300) = v1300 X Y k := by
  simp only [e1300,v1300,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1299_eval,e0117_eval]
def e1301 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1300 e0119
def v1301 (X Y k : ℂ) : ℂ := (v1300 X Y k)*(v0119 X Y k)
theorem e1301_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1301) = v1301 X Y k := by
  simp only [e1301,v1301,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1300_eval,e0119_eval]
def e1302 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1293 e1301
def v1302 (X Y k : ℂ) : ℂ := (v1293 X Y k)*(v1301 X Y k)
theorem e1302_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1302) = v1302 X Y k := by
  simp only [e1302,v1302,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1293_eval,e1301_eval]
def e1303 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0943 e0195
def v1303 (X Y k : ℂ) : ℂ := (v0943 X Y k)*(v0195 X Y k)
theorem e1303_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1303) = v1303 X Y k := by
  simp only [e1303,v1303,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0943_eval,e0195_eval]
def e1304 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0948 e0200
def v1304 (X Y k : ℂ) : ℂ := (v0948 X Y k)*(v0200 X Y k)
theorem e1304_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1304) = v1304 X Y k := by
  simp only [e1304,v1304,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0948_eval,e0200_eval]
def e1305 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1304
def v1305 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1304 X Y k)
theorem e1305_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1305) = v1305 X Y k := by
  simp only [e1305,v1305,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1304_eval]
def e1306 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1305 e0009
def v1306 (X Y k : ℂ) : ℂ := (v1305 X Y k)*(v0009 X Y k)
theorem e1306_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1306) = v1306 X Y k := by
  simp only [e1306,v1306,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1305_eval,e0009_eval]
def e1307 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1303 e1306
def v1307 (X Y k : ℂ) : ℂ := (v1303 X Y k)+(v1306 X Y k)
theorem e1307_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1307) = v1307 X Y k := by
  simp only [e1307,v1307,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1303_eval,e1306_eval]
def e1308 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1307 e0042
def v1308 (X Y k : ℂ) : ℂ := (v1307 X Y k)*(v0042 X Y k)
theorem e1308_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1308) = v1308 X Y k := by
  simp only [e1308,v1308,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1307_eval,e0042_eval]
def e1309 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1308 e0006
def v1309 (X Y k : ℂ) : ℂ := (v1308 X Y k)*(v0006 X Y k)
theorem e1309_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1309) = v1309 X Y k := by
  simp only [e1309,v1309,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1308_eval,e0006_eval]
def e1310 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0943 e0200
def v1310 (X Y k : ℂ) : ℂ := (v0943 X Y k)*(v0200 X Y k)
theorem e1310_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1310) = v1310 X Y k := by
  simp only [e1310,v1310,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0943_eval,e0200_eval]
def e1311 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0948 e0195
def v1311 (X Y k : ℂ) : ℂ := (v0948 X Y k)*(v0195 X Y k)
theorem e1311_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1311) = v1311 X Y k := by
  simp only [e1311,v1311,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0948_eval,e0195_eval]
def e1312 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1311 e0210
def v1312 (X Y k : ℂ) : ℂ := (v1311 X Y k)*(v0210 X Y k)
theorem e1312_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1312) = v1312 X Y k := by
  simp only [e1312,v1312,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1311_eval,e0210_eval]
def e1313 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1310 e1312
def v1313 (X Y k : ℂ) : ℂ := (v1310 X Y k)+(v1312 X Y k)
theorem e1313_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1313) = v1313 X Y k := by
  simp only [e1313,v1313,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1310_eval,e1312_eval]
def e1314 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e1304
def v1314 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v1304 X Y k)
theorem e1314_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1314) = v1314 X Y k := by
  simp only [e1314,v1314,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e1304_eval]
def e1315 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1313 e1314
def v1315 (X Y k : ℂ) : ℂ := (v1313 X Y k)+(v1314 X Y k)
theorem e1315_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1315) = v1315 X Y k := by
  simp only [e1315,v1315,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1313_eval,e1314_eval]
def e1316 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1315 e0057
def v1316 (X Y k : ℂ) : ℂ := (v1315 X Y k)*(v0057 X Y k)
theorem e1316_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1316) = v1316 X Y k := by
  simp only [e1316,v1316,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1315_eval,e0057_eval]
def e1317 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1316
def v1317 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1316 X Y k)
theorem e1317_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1317) = v1317 X Y k := by
  simp only [e1317,v1317,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1316_eval]
def e1318 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1317 e0258
def v1318 (X Y k : ℂ) : ℂ := (v1317 X Y k)*(v0258 X Y k)
theorem e1318_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1318) = v1318 X Y k := by
  simp only [e1318,v1318,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1317_eval,e0258_eval]
def e1319 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1309 e1318
def v1319 (X Y k : ℂ) : ℂ := (v1309 X Y k)+(v1318 X Y k)
theorem e1319_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1319) = v1319 X Y k := by
  simp only [e1319,v1319,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1309_eval,e1318_eval]
def e1320 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0789 e0082
def v1320 (X Y k : ℂ) : ℂ := (v0789 X Y k)*(v0082 X Y k)
theorem e1320_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1320) = v1320 X Y k := by
  simp only [e1320,v1320,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0789_eval,e0082_eval]
def e1321 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1320 e0061
def v1321 (X Y k : ℂ) : ℂ := (v1320 X Y k)*(v0061 X Y k)
theorem e1321_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1321) = v1321 X Y k := by
  simp only [e1321,v1321,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1320_eval,e0061_eval]
def e1322 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1321 e0228
def v1322 (X Y k : ℂ) : ℂ := (v1321 X Y k)*(v0228 X Y k)
theorem e1322_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1322) = v1322 X Y k := by
  simp only [e1322,v1322,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1321_eval,e0228_eval]
def e1323 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1322 e0230
def v1323 (X Y k : ℂ) : ℂ := (v1322 X Y k)*(v0230 X Y k)
theorem e1323_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1323) = v1323 X Y k := by
  simp only [e1323,v1323,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1322_eval,e0230_eval]
def e1324 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1323 e0117
def v1324 (X Y k : ℂ) : ℂ := (v1323 X Y k)*(v0117 X Y k)
theorem e1324_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1324) = v1324 X Y k := by
  simp only [e1324,v1324,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1323_eval,e0117_eval]
def e1325 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1324 e0119
def v1325 (X Y k : ℂ) : ℂ := (v1324 X Y k)*(v0119 X Y k)
theorem e1325_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1325) = v1325 X Y k := by
  simp only [e1325,v1325,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1324_eval,e0119_eval]
def e1326 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1319 e1325
def v1326 (X Y k : ℂ) : ℂ := (v1319 X Y k)*(v1325 X Y k)
theorem e1326_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1326) = v1326 X Y k := by
  simp only [e1326,v1326,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1319_eval,e1325_eval]
def e1327 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1062 e0943
def v1327 (X Y k : ℂ) : ℂ := (v1062 X Y k)*(v0943 X Y k)
theorem e1327_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1327) = v1327 X Y k := by
  simp only [e1327,v1327,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1062_eval,e0943_eval]
def e1328 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1327 e0122
def v1328 (X Y k : ℂ) : ℂ := (v1327 X Y k)*(v0122 X Y k)
theorem e1328_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1328) = v1328 X Y k := by
  simp only [e1328,v1328,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1327_eval,e0122_eval]
def e1329 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1062 e0948
def v1329 (X Y k : ℂ) : ℂ := (v1062 X Y k)*(v0948 X Y k)
theorem e1329_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1329) = v1329 X Y k := by
  simp only [e1329,v1329,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1062_eval,e0948_eval]
def e1330 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1329 e0124
def v1330 (X Y k : ℂ) : ℂ := (v1329 X Y k)*(v0124 X Y k)
theorem e1330_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1330) = v1330 X Y k := by
  simp only [e1330,v1330,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1329_eval,e0124_eval]
def e1331 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1330
def v1331 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1330 X Y k)
theorem e1331_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1331) = v1331 X Y k := by
  simp only [e1331,v1331,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1330_eval]
def e1332 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1331 e0061
def v1332 (X Y k : ℂ) : ℂ := (v1331 X Y k)*(v0061 X Y k)
theorem e1332_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1332) = v1332 X Y k := by
  simp only [e1332,v1332,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1331_eval,e0061_eval]
def e1333 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1328 e1332
def v1333 (X Y k : ℂ) : ℂ := (v1328 X Y k)+(v1332 X Y k)
theorem e1333_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1333) = v1333 X Y k := by
  simp only [e1333,v1333,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1328_eval,e1332_eval]
def e1334 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1027 e0376
def v1334 (X Y k : ℂ) : ℂ := (v1027 X Y k)*(v0376 X Y k)
theorem e1334_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1334) = v1334 X Y k := by
  simp only [e1334,v1334,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1027_eval,e0376_eval]
def e1335 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1334 e0113
def v1335 (X Y k : ℂ) : ℂ := (v1334 X Y k)*(v0113 X Y k)
theorem e1335_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1335) = v1335 X Y k := by
  simp only [e1335,v1335,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1334_eval,e0113_eval]
def e1336 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1335 e0115
def v1336 (X Y k : ℂ) : ℂ := (v1335 X Y k)*(v0115 X Y k)
theorem e1336_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1336) = v1336 X Y k := by
  simp only [e1336,v1336,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1335_eval,e0115_eval]
def e1337 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1336 e0228
def v1337 (X Y k : ℂ) : ℂ := (v1336 X Y k)*(v0228 X Y k)
theorem e1337_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1337) = v1337 X Y k := by
  simp only [e1337,v1337,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1336_eval,e0228_eval]
def e1338 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1337 e0230
def v1338 (X Y k : ℂ) : ℂ := (v1337 X Y k)*(v0230 X Y k)
theorem e1338_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1338) = v1338 X Y k := by
  simp only [e1338,v1338,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1337_eval,e0230_eval]
def e1339 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1338 e0025
def v1339 (X Y k : ℂ) : ℂ := (v1338 X Y k)*(v0025 X Y k)
theorem e1339_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1339) = v1339 X Y k := by
  simp only [e1339,v1339,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1338_eval,e0025_eval]
def e1340 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1339 e0028
def v1340 (X Y k : ℂ) : ℂ := (v1339 X Y k)*(v0028 X Y k)
theorem e1340_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1340) = v1340 X Y k := by
  simp only [e1340,v1340,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1339_eval,e0028_eval]
def e1341 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1333 e1340
def v1341 (X Y k : ℂ) : ℂ := (v1333 X Y k)*(v1340 X Y k)
theorem e1341_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1341) = v1341 X Y k := by
  simp only [e1341,v1341,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1333_eval,e1340_eval]
def e1342 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0154 e0836
def v1342 (X Y k : ℂ) : ℂ := (v0154 X Y k)*(v0836 X Y k)
theorem e1342_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1342) = v1342 X Y k := by
  simp only [e1342,v1342,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0154_eval,e0836_eval]
def e1343 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1342 e1108
def v1343 (X Y k : ℂ) : ℂ := (v1342 X Y k)*(v1108 X Y k)
theorem e1343_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1343) = v1343 X Y k := by
  simp only [e1343,v1343,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1342_eval,e1108_eval]

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
