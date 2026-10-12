import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions05
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def e0288 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0287 e0159
def v0288 (X Y k : ℂ) : ℂ := (v0287 X Y k)*(v0159 X Y k)
theorem e0288_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0288) = v0288 X Y k := by
  simp only [e0288,v0288,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0287_eval,e0159_eval]
def e0289 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0288
def v0289 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0288 X Y k)
theorem e0289_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0289) = v0289 X Y k := by
  simp only [e0289,v0289,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0288_eval]
def e0290 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0289 e0078
def v0290 (X Y k : ℂ) : ℂ := (v0289 X Y k)*(v0078 X Y k)
theorem e0290_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0290) = v0290 X Y k := by
  simp only [e0290,v0290,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0289_eval,e0078_eval]
def e0291 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0280 e0290
def v0291 (X Y k : ℂ) : ℂ := (v0280 X Y k)+(v0290 X Y k)
theorem e0291_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0291) = v0291 X Y k := by
  simp only [e0291,v0291,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0280_eval,e0290_eval]
def e0292 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e0001 5
def v0292 (X Y k : ℂ) : ℂ := (v0001 X Y k)^5
theorem e0292_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0292) = v0292 X Y k := by
  simp only [e0292,v0292,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,e0001_eval]
def e0293 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0292 e0220
def v0293 (X Y k : ℂ) : ℂ := (v0292 X Y k)*(v0220 X Y k)
theorem e0293_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0293) = v0293 X Y k := by
  simp only [e0293,v0293,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0292_eval,e0220_eval]
def e0294 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e0006 5
def v0294 (X Y k : ℂ) : ℂ := (v0006 X Y k)^5
theorem e0294_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0294) = v0294 X Y k := by
  simp only [e0294,v0294,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,e0006_eval]
def e0295 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0293 e0294
def v0295 (X Y k : ℂ) : ℂ := (v0293 X Y k)*(v0294 X Y k)
theorem e0295_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0295) = v0295 X Y k := by
  simp only [e0295,v0295,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0293_eval,e0294_eval]
def e0296 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e0009 6
def v0296 (X Y k : ℂ) : ℂ := (v0009 X Y k)^6
theorem e0296_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0296) = v0296 X Y k := by
  simp only [e0296,v0296,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,e0009_eval]
def e0297 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0295 e0296
def v0297 (X Y k : ℂ) : ℂ := (v0295 X Y k)*(v0296 X Y k)
theorem e0297_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0297) = v0297 X Y k := by
  simp only [e0297,v0297,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0295_eval,e0296_eval]
def e0298 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0297 e0013
def v0298 (X Y k : ℂ) : ℂ := (v0297 X Y k)*(v0013 X Y k)
theorem e0298_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0298) = v0298 X Y k := by
  simp only [e0298,v0298,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0297_eval,e0013_eval]
def e0299 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0298 e0016
def v0299 (X Y k : ℂ) : ℂ := (v0298 X Y k)*(v0016 X Y k)
theorem e0299_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0299) = v0299 X Y k := by
  simp only [e0299,v0299,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0298_eval,e0016_eval]
def e0300 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0299 e0228
def v0300 (X Y k : ℂ) : ℂ := (v0299 X Y k)*(v0228 X Y k)
theorem e0300_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0300) = v0300 X Y k := by
  simp only [e0300,v0300,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0299_eval,e0228_eval]
def e0301 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0300 e0230
def v0301 (X Y k : ℂ) : ℂ := (v0300 X Y k)*(v0230 X Y k)
theorem e0301_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0301) = v0301 X Y k := by
  simp only [e0301,v0301,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0300_eval,e0230_eval]
def e0302 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0301 e0117
def v0302 (X Y k : ℂ) : ℂ := (v0301 X Y k)*(v0117 X Y k)
theorem e0302_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0302) = v0302 X Y k := by
  simp only [e0302,v0302,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0301_eval,e0117_eval]
def e0303 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0302 e0119
def v0303 (X Y k : ℂ) : ℂ := (v0302 X Y k)*(v0119 X Y k)
theorem e0303_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0303) = v0303 X Y k := by
  simp only [e0303,v0303,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0302_eval,e0119_eval]
def e0304 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0291 e0303
def v0304 (X Y k : ℂ) : ℂ := (v0291 X Y k)*(v0303 X Y k)
theorem e0304_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0304) = v0304 X Y k := by
  simp only [e0304,v0304,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0291_eval,e0303_eval]
def e0305 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p1_p2_a
def v0305 (X Y k : ℂ) : ℂ := integerNumerator_p1_p2_a X Y k
theorem e0305_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0305) = v0305 X Y k := by
  exact primitive_p1_p2_a_eval X Y k
def e0306 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0194 e0305
def v0306 (X Y k : ℂ) : ℂ := (v0194 X Y k)*(v0305 X Y k)
theorem e0306_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0306) = v0306 X Y k := by
  simp only [e0306,v0306,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0194_eval,e0305_eval]
def e0307 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0306 e0001
def v0307 (X Y k : ℂ) : ℂ := (v0306 X Y k)*(v0001 X Y k)
theorem e0307_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0307) = v0307 X Y k := by
  simp only [e0307,v0307,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0306_eval,e0001_eval]
def e0308 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p1_p2_b
def v0308 (X Y k : ℂ) : ℂ := integerNumerator_p1_p2_b X Y k
theorem e0308_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0308) = v0308 X Y k := by
  exact primitive_p1_p2_b_eval X Y k
def e0309 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0199 e0308
def v0309 (X Y k : ℂ) : ℂ := (v0199 X Y k)*(v0308 X Y k)
theorem e0309_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0309) = v0309 X Y k := by
  simp only [e0309,v0309,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0199_eval,e0308_eval]
def e0310 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0309
def v0310 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0309 X Y k)
theorem e0310_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0310) = v0310 X Y k := by
  simp only [e0310,v0310,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0309_eval]
def e0311 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0310 e0078
def v0311 (X Y k : ℂ) : ℂ := (v0310 X Y k)*(v0078 X Y k)
theorem e0311_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0311) = v0311 X Y k := by
  simp only [e0311,v0311,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0310_eval,e0078_eval]
def e0312 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0307 e0311
def v0312 (X Y k : ℂ) : ℂ := (v0307 X Y k)+(v0311 X Y k)
theorem e0312_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0312) = v0312 X Y k := by
  simp only [e0312,v0312,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0307_eval,e0311_eval]
def e0313 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0312 e0122
def v0313 (X Y k : ℂ) : ℂ := (v0312 X Y k)*(v0122 X Y k)
theorem e0313_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0313) = v0313 X Y k := by
  simp only [e0313,v0313,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0312_eval,e0122_eval]
def e0314 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0313 e0006
def v0314 (X Y k : ℂ) : ℂ := (v0313 X Y k)*(v0006 X Y k)
theorem e0314_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0314) = v0314 X Y k := by
  simp only [e0314,v0314,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0313_eval,e0006_eval]
def e0315 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0194 e0308
def v0315 (X Y k : ℂ) : ℂ := (v0194 X Y k)*(v0308 X Y k)
theorem e0315_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0315) = v0315 X Y k := by
  simp only [e0315,v0315,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0194_eval,e0308_eval]
def e0316 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0199 e0305
def v0316 (X Y k : ℂ) : ℂ := (v0199 X Y k)*(v0305 X Y k)
theorem e0316_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0316) = v0316 X Y k := by
  simp only [e0316,v0316,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0199_eval,e0305_eval]
def e0317 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0316 e0188
def v0317 (X Y k : ℂ) : ℂ := (v0316 X Y k)*(v0188 X Y k)
theorem e0317_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0317) = v0317 X Y k := by
  simp only [e0317,v0317,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0316_eval,e0188_eval]
def e0318 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0315 e0317
def v0318 (X Y k : ℂ) : ℂ := (v0315 X Y k)+(v0317 X Y k)
theorem e0318_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0318) = v0318 X Y k := by
  simp only [e0318,v0318,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0315_eval,e0317_eval]
def e0319 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0309
def v0319 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0309 X Y k)
theorem e0319_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0319) = v0319 X Y k := by
  simp only [e0319,v0319,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0309_eval]
def e0320 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0318 e0319
def v0320 (X Y k : ℂ) : ℂ := (v0318 X Y k)+(v0319 X Y k)
theorem e0320_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0320) = v0320 X Y k := by
  simp only [e0320,v0320,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0318_eval,e0319_eval]
def e0321 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0320 e0124
def v0321 (X Y k : ℂ) : ℂ := (v0320 X Y k)*(v0124 X Y k)
theorem e0321_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0321) = v0321 X Y k := by
  simp only [e0321,v0321,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0320_eval,e0124_eval]
def e0322 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0321
def v0322 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0321 X Y k)
theorem e0322_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0322) = v0322 X Y k := by
  simp only [e0322,v0322,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0321_eval]
def e0323 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0322 e0078
def v0323 (X Y k : ℂ) : ℂ := (v0322 X Y k)*(v0078 X Y k)
theorem e0323_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0323) = v0323 X Y k := by
  simp only [e0323,v0323,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0322_eval,e0078_eval]
def e0324 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0314 e0323
def v0324 (X Y k : ℂ) : ℂ := (v0314 X Y k)+(v0323 X Y k)
theorem e0324_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0324) = v0324 X Y k := by
  simp only [e0324,v0324,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0314_eval,e0323_eval]
def e0325 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0324 e0233
def v0325 (X Y k : ℂ) : ℂ := (v0324 X Y k)*(v0233 X Y k)
theorem e0325_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0325) = v0325 X Y k := by
  simp only [e0325,v0325,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0324_eval,e0233_eval]
def e0326 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[12]]]
def v0326 (X Y k : ℂ) : ℂ := (12 : ℂ)
theorem e0326_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0326) = v0326 X Y k := by
  norm_num [e0326,v0326,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,CriticalZeroSplitReduction20261003.Coefficients.eval,CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI]
def e0327 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0326 e0193
def v0327 (X Y k : ℂ) : ℂ := (v0326 X Y k)*(v0193 X Y k)
theorem e0327_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0327) = v0327 X Y k := by
  simp only [e0327,v0327,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0326_eval,e0193_eval]
def e0328 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0327 e0187
def v0328 (X Y k : ℂ) : ℂ := (v0327 X Y k)*(v0187 X Y k)
theorem e0328_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0328) = v0328 X Y k := by
  simp only [e0328,v0328,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0327_eval,e0187_eval]
def e0329 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0328 e0001
def v0329 (X Y k : ℂ) : ℂ := (v0328 X Y k)*(v0001 X Y k)
theorem e0329_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0329) = v0329 X Y k := by
  simp only [e0329,v0329,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0328_eval,e0001_eval]
def e0330 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0326 e0198
def v0330 (X Y k : ℂ) : ℂ := (v0326 X Y k)*(v0198 X Y k)
theorem e0330_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0330) = v0330 X Y k := by
  simp only [e0330,v0330,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0326_eval,e0198_eval]
def e0331 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0330 e0190
def v0331 (X Y k : ℂ) : ℂ := (v0330 X Y k)*(v0190 X Y k)
theorem e0331_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0331) = v0331 X Y k := by
  simp only [e0331,v0331,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0330_eval,e0190_eval]
def e0332 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0331
def v0332 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0331 X Y k)
theorem e0332_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0332) = v0332 X Y k := by
  simp only [e0332,v0332,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0331_eval]
def e0333 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0332 e0078
def v0333 (X Y k : ℂ) : ℂ := (v0332 X Y k)*(v0078 X Y k)
theorem e0333_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0333) = v0333 X Y k := by
  simp only [e0333,v0333,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0332_eval,e0078_eval]
def e0334 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0329 e0333
def v0334 (X Y k : ℂ) : ℂ := (v0329 X Y k)+(v0333 X Y k)
theorem e0334_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0334) = v0334 X Y k := by
  simp only [e0334,v0334,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0329_eval,e0333_eval]
def e0335 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e0006 6
def v0335 (X Y k : ℂ) : ℂ := (v0006 X Y k)^6
theorem e0335_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0335) = v0335 X Y k := by
  simp only [e0335,v0335,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,e0006_eval]

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
