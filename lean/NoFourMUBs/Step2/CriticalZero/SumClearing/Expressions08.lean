import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions07
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def e0384 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0374 e0383
def v0384 (X Y k : ℂ) : ℂ := (v0374 X Y k)*(v0383 X Y k)
theorem e0384_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0384) = v0384 X Y k := by
  simp only [e0384,v0384,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0374_eval,e0383_eval]
def e0385 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0001 e0352
def v0385 (X Y k : ℂ) : ℂ := (v0001 X Y k)*(v0352 X Y k)
theorem e0385_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0385) = v0385 X Y k := by
  simp only [e0385,v0385,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0001_eval,e0352_eval]
def e0386 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p1_m3_a
def v0386 (X Y k : ℂ) : ℂ := integerNumerator_p1_m3_a X Y k
theorem e0386_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0386) = v0386 X Y k := by
  exact primitive_p1_m3_a_eval X Y k
def e0387 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0385 e0386
def v0387 (X Y k : ℂ) : ℂ := (v0385 X Y k)*(v0386 X Y k)
theorem e0387_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0387) = v0387 X Y k := by
  simp only [e0387,v0387,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0385_eval,e0386_eval]
def e0388 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0001 e0356
def v0388 (X Y k : ℂ) : ℂ := (v0001 X Y k)*(v0356 X Y k)
theorem e0388_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0388) = v0388 X Y k := by
  simp only [e0388,v0388,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0001_eval,e0356_eval]
def e0389 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p1_m3_b
def v0389 (X Y k : ℂ) : ℂ := integerNumerator_p1_m3_b X Y k
theorem e0389_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0389) = v0389 X Y k := by
  exact primitive_p1_m3_b_eval X Y k
def e0390 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0388 e0389
def v0390 (X Y k : ℂ) : ℂ := (v0388 X Y k)*(v0389 X Y k)
theorem e0390_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0390) = v0390 X Y k := by
  simp only [e0390,v0390,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0388_eval,e0389_eval]
def e0391 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0390
def v0391 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0390 X Y k)
theorem e0391_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0391) = v0391 X Y k := by
  simp only [e0391,v0391,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0390_eval]
def e0392 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0391 e0062
def v0392 (X Y k : ℂ) : ℂ := (v0391 X Y k)*(v0062 X Y k)
theorem e0392_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0392) = v0392 X Y k := by
  simp only [e0392,v0392,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0391_eval,e0062_eval]
def e0393 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0387 e0392
def v0393 (X Y k : ℂ) : ℂ := (v0387 X Y k)+(v0392 X Y k)
theorem e0393_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0393) = v0393 X Y k := by
  simp only [e0393,v0393,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0387_eval,e0392_eval]
def e0394 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0393 e0065
def v0394 (X Y k : ℂ) : ℂ := (v0393 X Y k)*(v0065 X Y k)
theorem e0394_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0394) = v0394 X Y k := by
  simp only [e0394,v0394,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0393_eval,e0065_eval]
def e0395 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0394 e0006
def v0395 (X Y k : ℂ) : ℂ := (v0394 X Y k)*(v0006 X Y k)
theorem e0395_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0395) = v0395 X Y k := by
  simp only [e0395,v0395,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0394_eval,e0006_eval]
def e0396 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0385 e0389
def v0396 (X Y k : ℂ) : ℂ := (v0385 X Y k)*(v0389 X Y k)
theorem e0396_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0396) = v0396 X Y k := by
  simp only [e0396,v0396,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0385_eval,e0389_eval]
def e0397 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0388 e0386
def v0397 (X Y k : ℂ) : ℂ := (v0388 X Y k)*(v0386 X Y k)
theorem e0397_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0397) = v0397 X Y k := by
  simp only [e0397,v0397,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0388_eval,e0386_eval]
def e0398 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0397 e0006
def v0398 (X Y k : ℂ) : ℂ := (v0397 X Y k)*(v0006 X Y k)
theorem e0398_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0398) = v0398 X Y k := by
  simp only [e0398,v0398,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0397_eval,e0006_eval]
def e0399 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0396 e0398
def v0399 (X Y k : ℂ) : ℂ := (v0396 X Y k)+(v0398 X Y k)
theorem e0399_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0399) = v0399 X Y k := by
  simp only [e0399,v0399,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0396_eval,e0398_eval]
def e0400 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0390
def v0400 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0390 X Y k)
theorem e0400_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0400) = v0400 X Y k := by
  simp only [e0400,v0400,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0390_eval]
def e0401 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0400 e0001
def v0401 (X Y k : ℂ) : ℂ := (v0400 X Y k)*(v0001 X Y k)
theorem e0401_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0401) = v0401 X Y k := by
  simp only [e0401,v0401,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0400_eval,e0001_eval]
def e0402 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0399 e0401
def v0402 (X Y k : ℂ) : ℂ := (v0399 X Y k)+(v0401 X Y k)
theorem e0402_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0402) = v0402 X Y k := by
  simp only [e0402,v0402,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0399_eval,e0401_eval]
def e0403 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0402 e0075
def v0403 (X Y k : ℂ) : ℂ := (v0402 X Y k)*(v0075 X Y k)
theorem e0403_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0403) = v0403 X Y k := by
  simp only [e0403,v0403,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0402_eval,e0075_eval]
def e0404 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0403
def v0404 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0403 X Y k)
theorem e0404_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0404) = v0404 X Y k := by
  simp only [e0404,v0404,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0403_eval]
def e0405 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0404 e0079
def v0405 (X Y k : ℂ) : ℂ := (v0404 X Y k)*(v0079 X Y k)
theorem e0405_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0405) = v0405 X Y k := by
  simp only [e0405,v0405,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0404_eval,e0079_eval]
def e0406 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0395 e0405
def v0406 (X Y k : ℂ) : ℂ := (v0395 X Y k)+(v0405 X Y k)
theorem e0406_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0406) = v0406 X Y k := by
  simp only [e0406,v0406,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0395_eval,e0405_eval]
def e0407 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0060 e0220
def v0407 (X Y k : ℂ) : ℂ := (v0060 X Y k)*(v0220 X Y k)
theorem e0407_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0407) = v0407 X Y k := by
  simp only [e0407,v0407,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0060_eval,e0220_eval]
def e0408 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0407 e0110
def v0408 (X Y k : ℂ) : ℂ := (v0407 X Y k)*(v0110 X Y k)
theorem e0408_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0408) = v0408 X Y k := by
  simp only [e0408,v0408,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0407_eval,e0110_eval]
def e0409 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0408 e0224
def v0409 (X Y k : ℂ) : ℂ := (v0408 X Y k)*(v0224 X Y k)
theorem e0409_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0409) = v0409 X Y k := by
  simp only [e0409,v0409,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0408_eval,e0224_eval]
def e0410 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0409 e0113
def v0410 (X Y k : ℂ) : ℂ := (v0409 X Y k)*(v0113 X Y k)
theorem e0410_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0410) = v0410 X Y k := by
  simp only [e0410,v0410,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0409_eval,e0113_eval]
def e0411 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0410 e0115
def v0411 (X Y k : ℂ) : ℂ := (v0410 X Y k)*(v0115 X Y k)
theorem e0411_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0411) = v0411 X Y k := by
  simp only [e0411,v0411,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0410_eval,e0115_eval]
def e0412 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0411 e0228
def v0412 (X Y k : ℂ) : ℂ := (v0411 X Y k)*(v0228 X Y k)
theorem e0412_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0412) = v0412 X Y k := by
  simp only [e0412,v0412,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0411_eval,e0228_eval]
def e0413 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0412 e0230
def v0413 (X Y k : ℂ) : ℂ := (v0412 X Y k)*(v0230 X Y k)
theorem e0413_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0413) = v0413 X Y k := by
  simp only [e0413,v0413,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0412_eval,e0230_eval]
def e0414 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0406 e0413
def v0414 (X Y k : ℂ) : ℂ := (v0406 X Y k)*(v0413 X Y k)
theorem e0414_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0414) = v0414 X Y k := by
  simp only [e0414,v0414,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0406_eval,e0413_eval]
def e0415 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p1_m2_a
def v0415 (X Y k : ℂ) : ℂ := integerNumerator_p1_m2_a X Y k
theorem e0415_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0415) = v0415 X Y k := by
  exact primitive_p1_m2_a_eval X Y k
def e0416 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0353 e0415
def v0416 (X Y k : ℂ) : ℂ := (v0353 X Y k)*(v0415 X Y k)
theorem e0416_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0416) = v0416 X Y k := by
  simp only [e0416,v0416,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0353_eval,e0415_eval]
def e0417 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p1_m2_b
def v0417 (X Y k : ℂ) : ℂ := integerNumerator_p1_m2_b X Y k
theorem e0417_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0417) = v0417 X Y k := by
  exact primitive_p1_m2_b_eval X Y k
def e0418 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0357 e0417
def v0418 (X Y k : ℂ) : ℂ := (v0357 X Y k)*(v0417 X Y k)
theorem e0418_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0418) = v0418 X Y k := by
  simp only [e0418,v0418,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0357_eval,e0417_eval]
def e0419 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0418
def v0419 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0418 X Y k)
theorem e0419_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0419) = v0419 X Y k := by
  simp only [e0419,v0419,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0418_eval]
def e0420 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0419 e0127
def v0420 (X Y k : ℂ) : ℂ := (v0419 X Y k)*(v0127 X Y k)
theorem e0420_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0420) = v0420 X Y k := by
  simp only [e0420,v0420,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0419_eval,e0127_eval]
def e0421 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0416 e0420
def v0421 (X Y k : ℂ) : ℂ := (v0416 X Y k)+(v0420 X Y k)
theorem e0421_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0421) = v0421 X Y k := by
  simp only [e0421,v0421,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0416_eval,e0420_eval]
def e0422 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0421 e0094
def v0422 (X Y k : ℂ) : ℂ := (v0421 X Y k)*(v0094 X Y k)
theorem e0422_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0422) = v0422 X Y k := by
  simp only [e0422,v0422,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0421_eval,e0094_eval]
def e0423 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0422 e0135
def v0423 (X Y k : ℂ) : ℂ := (v0422 X Y k)*(v0135 X Y k)
theorem e0423_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0423) = v0423 X Y k := by
  simp only [e0423,v0423,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0422_eval,e0135_eval]
def e0424 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0353 e0417
def v0424 (X Y k : ℂ) : ℂ := (v0353 X Y k)*(v0417 X Y k)
theorem e0424_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0424) = v0424 X Y k := by
  simp only [e0424,v0424,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0353_eval,e0417_eval]
def e0425 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0357 e0415
def v0425 (X Y k : ℂ) : ℂ := (v0357 X Y k)*(v0415 X Y k)
theorem e0425_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0425) = v0425 X Y k := by
  simp only [e0425,v0425,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0357_eval,e0415_eval]
def e0426 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0425 e0135
def v0426 (X Y k : ℂ) : ℂ := (v0425 X Y k)*(v0135 X Y k)
theorem e0426_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0426) = v0426 X Y k := by
  simp only [e0426,v0426,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0425_eval,e0135_eval]
def e0427 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0424 e0426
def v0427 (X Y k : ℂ) : ℂ := (v0424 X Y k)+(v0426 X Y k)
theorem e0427_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0427) = v0427 X Y k := by
  simp only [e0427,v0427,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0424_eval,e0426_eval]
def e0428 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0418
def v0428 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0418 X Y k)
theorem e0428_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0428) = v0428 X Y k := by
  simp only [e0428,v0428,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0418_eval]
def e0429 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0428 e0001
def v0429 (X Y k : ℂ) : ℂ := (v0428 X Y k)*(v0001 X Y k)
theorem e0429_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0429) = v0429 X Y k := by
  simp only [e0429,v0429,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0428_eval,e0001_eval]
def e0430 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0427 e0429
def v0430 (X Y k : ℂ) : ℂ := (v0427 X Y k)+(v0429 X Y k)
theorem e0430_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0430) = v0430 X Y k := by
  simp only [e0430,v0430,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0427_eval,e0429_eval]
def e0431 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0430 e0105
def v0431 (X Y k : ℂ) : ℂ := (v0430 X Y k)*(v0105 X Y k)
theorem e0431_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0431) = v0431 X Y k := by
  simp only [e0431,v0431,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0430_eval,e0105_eval]

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
