import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions06
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def e0336 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0221 e0335
def v0336 (X Y k : ℂ) : ℂ := (v0221 X Y k)*(v0335 X Y k)
theorem e0336_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0336) = v0336 X Y k := by
  simp only [e0336,v0336,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0221_eval,e0335_eval]
def e0337 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e0009 9
def v0337 (X Y k : ℂ) : ℂ := (v0009 X Y k)^9
theorem e0337_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0337) = v0337 X Y k := by
  simp only [e0337,v0337,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,e0009_eval]
def e0338 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0336 e0337
def v0338 (X Y k : ℂ) : ℂ := (v0336 X Y k)*(v0337 X Y k)
theorem e0338_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0338) = v0338 X Y k := by
  simp only [e0338,v0338,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0336_eval,e0337_eval]
def e0339 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0338 e0013
def v0339 (X Y k : ℂ) : ℂ := (v0338 X Y k)*(v0013 X Y k)
theorem e0339_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0339) = v0339 X Y k := by
  simp only [e0339,v0339,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0338_eval,e0013_eval]
def e0340 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0339 e0016
def v0340 (X Y k : ℂ) : ℂ := (v0339 X Y k)*(v0016 X Y k)
theorem e0340_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0340) = v0340 X Y k := by
  simp only [e0340,v0340,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0339_eval,e0016_eval]
def e0341 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0340 e0228
def v0341 (X Y k : ℂ) : ℂ := (v0340 X Y k)*(v0228 X Y k)
theorem e0341_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0341) = v0341 X Y k := by
  simp only [e0341,v0341,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0340_eval,e0228_eval]
def e0342 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0341 e0230
def v0342 (X Y k : ℂ) : ℂ := (v0341 X Y k)*(v0230 X Y k)
theorem e0342_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0342) = v0342 X Y k := by
  simp only [e0342,v0342,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0341_eval,e0230_eval]
def e0343 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0342 e0117
def v0343 (X Y k : ℂ) : ℂ := (v0342 X Y k)*(v0117 X Y k)
theorem e0343_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0343) = v0343 X Y k := by
  simp only [e0343,v0343,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0342_eval,e0117_eval]
def e0344 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0343 e0119
def v0344 (X Y k : ℂ) : ℂ := (v0343 X Y k)*(v0119 X Y k)
theorem e0344_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0344) = v0344 X Y k := by
  simp only [e0344,v0344,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0343_eval,e0119_eval]
def e0345 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0334 e0344
def v0345 (X Y k : ℂ) : ℂ := (v0334 X Y k)*(v0344 X Y k)
theorem e0345_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0345) = v0345 X Y k := by
  simp only [e0345,v0345,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0334_eval,e0344_eval]
def e0346 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p3_m1_a
def v0346 (X Y k : ℂ) : ℂ := integerNumerator_p3_m1_a X Y k
theorem e0346_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0346) = v0346 X Y k := by
  exact primitive_p3_m1_a_eval X Y k
def e0347 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0346 e0006
def v0347 (X Y k : ℂ) : ℂ := (v0346 X Y k)*(v0006 X Y k)
theorem e0347_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0347) = v0347 X Y k := by
  simp only [e0347,v0347,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0346_eval,e0006_eval]
def e0348 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p3_m1_b
def v0348 (X Y k : ℂ) : ℂ := integerNumerator_p3_m1_b X Y k
theorem e0348_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0348) = v0348 X Y k := by
  exact primitive_p3_m1_b_eval X Y k
def e0349 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0348
def v0349 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0348 X Y k)
theorem e0349_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0349) = v0349 X Y k := by
  simp only [e0349,v0349,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0348_eval]
def e0350 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0349 e0001
def v0350 (X Y k : ℂ) : ℂ := (v0349 X Y k)*(v0001 X Y k)
theorem e0350_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0350) = v0350 X Y k := by
  simp only [e0350,v0350,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0349_eval,e0001_eval]
def e0351 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0347 e0350
def v0351 (X Y k : ℂ) : ℂ := (v0347 X Y k)+(v0350 X Y k)
theorem e0351_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0351) = v0351 X Y k := by
  simp only [e0351,v0351,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0347_eval,e0350_eval]
def e0352 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0186 e0351
def v0352 (X Y k : ℂ) : ℂ := (v0186 X Y k)*(v0351 X Y k)
theorem e0352_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0352) = v0352 X Y k := by
  simp only [e0352,v0352,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0186_eval,e0351_eval]
def e0353 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0154 e0352
def v0353 (X Y k : ℂ) : ℂ := (v0154 X Y k)*(v0352 X Y k)
theorem e0353_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0353) = v0353 X Y k := by
  simp only [e0353,v0353,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0154_eval,e0352_eval]
def e0354 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0353 e0195
def v0354 (X Y k : ℂ) : ℂ := (v0353 X Y k)*(v0195 X Y k)
theorem e0354_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0354) = v0354 X Y k := by
  simp only [e0354,v0354,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0353_eval,e0195_eval]
def e0355 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0186 e0348
def v0355 (X Y k : ℂ) : ℂ := (v0186 X Y k)*(v0348 X Y k)
theorem e0355_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0355) = v0355 X Y k := by
  simp only [e0355,v0355,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0186_eval,e0348_eval]
def e0356 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e0355
def v0356 (X Y k : ℂ) : ℂ := -(v0355 X Y k)
theorem e0356_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0356) = v0356 X Y k := by
  simp only [e0356,v0356,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSplitReduction20261003.Coefficients.eval_neg,e0355_eval]
def e0357 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0154 e0356
def v0357 (X Y k : ℂ) : ℂ := (v0154 X Y k)*(v0356 X Y k)
theorem e0357_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0357) = v0357 X Y k := by
  simp only [e0357,v0357,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0154_eval,e0356_eval]
def e0358 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0357 e0200
def v0358 (X Y k : ℂ) : ℂ := (v0357 X Y k)*(v0200 X Y k)
theorem e0358_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0358) = v0358 X Y k := by
  simp only [e0358,v0358,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0357_eval,e0200_eval]
def e0359 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0358
def v0359 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0358 X Y k)
theorem e0359_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0359) = v0359 X Y k := by
  simp only [e0359,v0359,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0358_eval]
def e0360 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0359 e0258
def v0360 (X Y k : ℂ) : ℂ := (v0359 X Y k)*(v0258 X Y k)
theorem e0360_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0360) = v0360 X Y k := by
  simp only [e0360,v0360,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0359_eval,e0258_eval]
def e0361 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0354 e0360
def v0361 (X Y k : ℂ) : ℂ := (v0354 X Y k)+(v0360 X Y k)
theorem e0361_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0361) = v0361 X Y k := by
  simp only [e0361,v0361,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0354_eval,e0360_eval]
def e0362 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0361 e0245
def v0362 (X Y k : ℂ) : ℂ := (v0361 X Y k)*(v0245 X Y k)
theorem e0362_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0362) = v0362 X Y k := by
  simp only [e0362,v0362,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0361_eval,e0245_eval]
def e0363 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0362 e0006
def v0363 (X Y k : ℂ) : ℂ := (v0362 X Y k)*(v0006 X Y k)
theorem e0363_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0363) = v0363 X Y k := by
  simp only [e0363,v0363,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0362_eval,e0006_eval]
def e0364 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0353 e0200
def v0364 (X Y k : ℂ) : ℂ := (v0353 X Y k)*(v0200 X Y k)
theorem e0364_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0364) = v0364 X Y k := by
  simp only [e0364,v0364,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0353_eval,e0200_eval]
def e0365 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0357 e0195
def v0365 (X Y k : ℂ) : ℂ := (v0357 X Y k)*(v0195 X Y k)
theorem e0365_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0365) = v0365 X Y k := by
  simp only [e0365,v0365,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0357_eval,e0195_eval]
def e0366 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0365 e0250
def v0366 (X Y k : ℂ) : ℂ := (v0365 X Y k)*(v0250 X Y k)
theorem e0366_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0366) = v0366 X Y k := by
  simp only [e0366,v0366,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0365_eval,e0250_eval]
def e0367 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0364 e0366
def v0367 (X Y k : ℂ) : ℂ := (v0364 X Y k)+(v0366 X Y k)
theorem e0367_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0367) = v0367 X Y k := by
  simp only [e0367,v0367,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0364_eval,e0366_eval]
def e0368 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0358
def v0368 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0358 X Y k)
theorem e0368_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0368) = v0368 X Y k := by
  simp only [e0368,v0368,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0358_eval]
def e0369 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0368 e0001
def v0369 (X Y k : ℂ) : ℂ := (v0368 X Y k)*(v0001 X Y k)
theorem e0369_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0369) = v0369 X Y k := by
  simp only [e0369,v0369,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0368_eval,e0001_eval]
def e0370 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0367 e0369
def v0370 (X Y k : ℂ) : ℂ := (v0367 X Y k)+(v0369 X Y k)
theorem e0370_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0370) = v0370 X Y k := by
  simp only [e0370,v0370,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0367_eval,e0369_eval]
def e0371 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0370 e0255
def v0371 (X Y k : ℂ) : ℂ := (v0370 X Y k)*(v0255 X Y k)
theorem e0371_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0371) = v0371 X Y k := by
  simp only [e0371,v0371,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0370_eval,e0255_eval]
def e0372 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0371
def v0372 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0371 X Y k)
theorem e0372_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0372) = v0372 X Y k := by
  simp only [e0372,v0372,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0371_eval]
def e0373 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0372 e0258
def v0373 (X Y k : ℂ) : ℂ := (v0372 X Y k)*(v0258 X Y k)
theorem e0373_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0373) = v0373 X Y k := by
  simp only [e0373,v0373,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0372_eval,e0258_eval]
def e0374 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0363 e0373
def v0374 (X Y k : ℂ) : ℂ := (v0363 X Y k)+(v0373 X Y k)
theorem e0374_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0374) = v0374 X Y k := by
  simp only [e0374,v0374,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0363_eval,e0373_eval]
def e0375 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0221 e0110
def v0375 (X Y k : ℂ) : ℂ := (v0221 X Y k)*(v0110 X Y k)
theorem e0375_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0375) = v0375 X Y k := by
  simp only [e0375,v0375,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0221_eval,e0110_eval]
def e0376 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s017
def v0376 (X Y k : ℂ) : ℂ := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.v017 X Y k
theorem e0376_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0376) = v0376 X Y k := by
  exact NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s017_eval X Y k
def e0377 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0375 e0376
def v0377 (X Y k : ℂ) : ℂ := (v0375 X Y k)*(v0376 X Y k)
theorem e0377_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0377) = v0377 X Y k := by
  simp only [e0377,v0377,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0375_eval,e0376_eval]
def e0378 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0377 e0113
def v0378 (X Y k : ℂ) : ℂ := (v0377 X Y k)*(v0113 X Y k)
theorem e0378_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0378) = v0378 X Y k := by
  simp only [e0378,v0378,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0377_eval,e0113_eval]
def e0379 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0378 e0115
def v0379 (X Y k : ℂ) : ℂ := (v0378 X Y k)*(v0115 X Y k)
theorem e0379_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0379) = v0379 X Y k := by
  simp only [e0379,v0379,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0378_eval,e0115_eval]
def e0380 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0379 e0228
def v0380 (X Y k : ℂ) : ℂ := (v0379 X Y k)*(v0228 X Y k)
theorem e0380_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0380) = v0380 X Y k := by
  simp only [e0380,v0380,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0379_eval,e0228_eval]
def e0381 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0380 e0230
def v0381 (X Y k : ℂ) : ℂ := (v0380 X Y k)*(v0230 X Y k)
theorem e0381_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0381) = v0381 X Y k := by
  simp only [e0381,v0381,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0380_eval,e0230_eval]
def e0382 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0381 e0117
def v0382 (X Y k : ℂ) : ℂ := (v0381 X Y k)*(v0117 X Y k)
theorem e0382_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0382) = v0382 X Y k := by
  simp only [e0382,v0382,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0381_eval,e0117_eval]
def e0383 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0382 e0119
def v0383 (X Y k : ℂ) : ℂ := (v0382 X Y k)*(v0119 X Y k)
theorem e0383_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0383) = v0383 X Y k := by
  simp only [e0383,v0383,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0382_eval,e0119_eval]

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
