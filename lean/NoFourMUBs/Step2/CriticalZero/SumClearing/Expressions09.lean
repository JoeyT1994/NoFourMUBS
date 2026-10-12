import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions08
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def e0432 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0431
def v0432 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0431 X Y k)
theorem e0432_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0432) = v0432 X Y k := by
  simp only [e0432,v0432,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0431_eval]
def e0433 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0432 e0078
def v0433 (X Y k : ℂ) : ℂ := (v0432 X Y k)*(v0078 X Y k)
theorem e0433_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0433) = v0433 X Y k := by
  simp only [e0433,v0433,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0432_eval,e0078_eval]
def e0434 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0423 e0433
def v0434 (X Y k : ℂ) : ℂ := (v0423 X Y k)+(v0433 X Y k)
theorem e0434_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0434) = v0434 X Y k := by
  simp only [e0434,v0434,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0423_eval,e0433_eval]
def e0435 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0225 e0177
def v0435 (X Y k : ℂ) : ℂ := (v0225 X Y k)*(v0177 X Y k)
theorem e0435_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0435) = v0435 X Y k := by
  simp only [e0435,v0435,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0225_eval,e0177_eval]
def e0436 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0435 e0179
def v0436 (X Y k : ℂ) : ℂ := (v0435 X Y k)*(v0179 X Y k)
theorem e0436_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0436) = v0436 X Y k := by
  simp only [e0436,v0436,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0435_eval,e0179_eval]
def e0437 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0436 e0228
def v0437 (X Y k : ℂ) : ℂ := (v0436 X Y k)*(v0228 X Y k)
theorem e0437_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0437) = v0437 X Y k := by
  simp only [e0437,v0437,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0436_eval,e0228_eval]
def e0438 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0437 e0230
def v0438 (X Y k : ℂ) : ℂ := (v0437 X Y k)*(v0230 X Y k)
theorem e0438_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0438) = v0438 X Y k := by
  simp only [e0438,v0438,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0437_eval,e0230_eval]
def e0439 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0438 e0117
def v0439 (X Y k : ℂ) : ℂ := (v0438 X Y k)*(v0117 X Y k)
theorem e0439_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0439) = v0439 X Y k := by
  simp only [e0439,v0439,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0438_eval,e0117_eval]
def e0440 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0439 e0119
def v0440 (X Y k : ℂ) : ℂ := (v0439 X Y k)*(v0119 X Y k)
theorem e0440_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0440) = v0440 X Y k := by
  simp only [e0440,v0440,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0439_eval,e0119_eval]
def e0441 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0434 e0440
def v0441 (X Y k : ℂ) : ℂ := (v0434 X Y k)*(v0440 X Y k)
theorem e0441_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0441) = v0441 X Y k := by
  simp only [e0441,v0441,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0434_eval,e0440_eval]
def e0442 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0326 e0352
def v0442 (X Y k : ℂ) : ℂ := (v0326 X Y k)*(v0352 X Y k)
theorem e0442_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0442) = v0442 X Y k := by
  simp only [e0442,v0442,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0326_eval,e0352_eval]
def e0443 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0442 e0346
def v0443 (X Y k : ℂ) : ℂ := (v0442 X Y k)*(v0346 X Y k)
theorem e0443_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0443) = v0443 X Y k := by
  simp only [e0443,v0443,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0442_eval,e0346_eval]
def e0444 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0326 e0356
def v0444 (X Y k : ℂ) : ℂ := (v0326 X Y k)*(v0356 X Y k)
theorem e0444_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0444) = v0444 X Y k := by
  simp only [e0444,v0444,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0326_eval,e0356_eval]
def e0445 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0444 e0348
def v0445 (X Y k : ℂ) : ℂ := (v0444 X Y k)*(v0348 X Y k)
theorem e0445_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0445) = v0445 X Y k := by
  simp only [e0445,v0445,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0444_eval,e0348_eval]
def e0446 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0445
def v0446 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0445 X Y k)
theorem e0446_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0446) = v0446 X Y k := by
  simp only [e0446,v0446,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0445_eval]
def e0447 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0446 e0062
def v0447 (X Y k : ℂ) : ℂ := (v0446 X Y k)*(v0062 X Y k)
theorem e0447_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0447) = v0447 X Y k := by
  simp only [e0447,v0447,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0446_eval,e0062_eval]
def e0448 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0443 e0447
def v0448 (X Y k : ℂ) : ℂ := (v0443 X Y k)+(v0447 X Y k)
theorem e0448_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0448) = v0448 X Y k := by
  simp only [e0448,v0448,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0443_eval,e0447_eval]
def e0449 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0221 e0294
def v0449 (X Y k : ℂ) : ℂ := (v0221 X Y k)*(v0294 X Y k)
theorem e0449_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0449) = v0449 X Y k := by
  simp only [e0449,v0449,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0221_eval,e0294_eval]
def e0450 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0449 e0296
def v0450 (X Y k : ℂ) : ℂ := (v0449 X Y k)*(v0296 X Y k)
theorem e0450_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0450) = v0450 X Y k := by
  simp only [e0450,v0450,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0449_eval,e0296_eval]
def e0451 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0450 e0013
def v0451 (X Y k : ℂ) : ℂ := (v0450 X Y k)*(v0013 X Y k)
theorem e0451_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0451) = v0451 X Y k := by
  simp only [e0451,v0451,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0450_eval,e0013_eval]
def e0452 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0451 e0016
def v0452 (X Y k : ℂ) : ℂ := (v0451 X Y k)*(v0016 X Y k)
theorem e0452_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0452) = v0452 X Y k := by
  simp only [e0452,v0452,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0451_eval,e0016_eval]
def e0453 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0452 e0228
def v0453 (X Y k : ℂ) : ℂ := (v0452 X Y k)*(v0228 X Y k)
theorem e0453_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0453) = v0453 X Y k := by
  simp only [e0453,v0453,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0452_eval,e0228_eval]
def e0454 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0453 e0230
def v0454 (X Y k : ℂ) : ℂ := (v0453 X Y k)*(v0230 X Y k)
theorem e0454_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0454) = v0454 X Y k := by
  simp only [e0454,v0454,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0453_eval,e0230_eval]
def e0455 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0454 e0117
def v0455 (X Y k : ℂ) : ℂ := (v0454 X Y k)*(v0117 X Y k)
theorem e0455_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0455) = v0455 X Y k := by
  simp only [e0455,v0455,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0454_eval,e0117_eval]
def e0456 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0455 e0119
def v0456 (X Y k : ℂ) : ℂ := (v0455 X Y k)*(v0119 X Y k)
theorem e0456_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0456) = v0456 X Y k := by
  simp only [e0456,v0456,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0455_eval,e0119_eval]
def e0457 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0448 e0456
def v0457 (X Y k : ℂ) : ℂ := (v0448 X Y k)*(v0456 X Y k)
theorem e0457_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0457) = v0457 X Y k := by
  simp only [e0457,v0457,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0448_eval,e0456_eval]
def e0458 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0205 e0135
def v0458 (X Y k : ℂ) : ℂ := (v0205 X Y k)*(v0135 X Y k)
theorem e0458_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0458) = v0458 X Y k := by
  simp only [e0458,v0458,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0205_eval,e0135_eval]
def e0459 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0215
def v0459 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0215 X Y k)
theorem e0459_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0459) = v0459 X Y k := by
  simp only [e0459,v0459,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0215_eval]
def e0460 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0458 e0459
def v0460 (X Y k : ℂ) : ℂ := (v0458 X Y k)+(v0459 X Y k)
theorem e0460_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0460) = v0460 X Y k := by
  simp only [e0460,v0460,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0458_eval,e0459_eval]
def e0461 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0186 e0460
def v0461 (X Y k : ℂ) : ℂ := (v0186 X Y k)*(v0460 X Y k)
theorem e0461_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0461) = v0461 X Y k := by
  simp only [e0461,v0461,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0186_eval,e0460_eval]
def e0462 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0154 e0461
def v0462 (X Y k : ℂ) : ℂ := (v0154 X Y k)*(v0461 X Y k)
theorem e0462_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0462) = v0462 X Y k := by
  simp only [e0462,v0462,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0154_eval,e0461_eval]
def e0463 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0195 e0210
def v0463 (X Y k : ℂ) : ℂ := (v0195 X Y k)*(v0210 X Y k)
theorem e0463_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0463) = v0463 X Y k := by
  simp only [e0463,v0463,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0195_eval,e0210_eval]
def e0464 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0200
def v0464 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0200 X Y k)
theorem e0464_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0464) = v0464 X Y k := by
  simp only [e0464,v0464,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0200_eval]
def e0465 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0463 e0464
def v0465 (X Y k : ℂ) : ℂ := (v0463 X Y k)+(v0464 X Y k)
theorem e0465_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0465) = v0465 X Y k := by
  simp only [e0465,v0465,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0463_eval,e0464_eval]
def e0466 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0082 e0465
def v0466 (X Y k : ℂ) : ℂ := (v0082 X Y k)*(v0465 X Y k)
theorem e0466_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0466) = v0466 X Y k := by
  simp only [e0466,v0466,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0082_eval,e0465_eval]
def e0467 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0462 e0466
def v0467 (X Y k : ℂ) : ℂ := (v0462 X Y k)*(v0466 X Y k)
theorem e0467_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0467) = v0467 X Y k := by
  simp only [e0467,v0467,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0462_eval,e0466_eval]
def e0468 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0186 e0215
def v0468 (X Y k : ℂ) : ℂ := (v0186 X Y k)*(v0215 X Y k)
theorem e0468_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0468) = v0468 X Y k := by
  simp only [e0468,v0468,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0186_eval,e0215_eval]
def e0469 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e0468
def v0469 (X Y k : ℂ) : ℂ := -(v0468 X Y k)
theorem e0469_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0469) = v0469 X Y k := by
  simp only [e0469,v0469,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSplitReduction20261003.Coefficients.eval_neg,e0468_eval]
def e0470 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0154 e0469
def v0470 (X Y k : ℂ) : ℂ := (v0154 X Y k)*(v0469 X Y k)
theorem e0470_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0470) = v0470 X Y k := by
  simp only [e0470,v0470,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0154_eval,e0469_eval]
def e0471 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0082 e0200
def v0471 (X Y k : ℂ) : ℂ := (v0082 X Y k)*(v0200 X Y k)
theorem e0471_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0471) = v0471 X Y k := by
  simp only [e0471,v0471,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0082_eval,e0200_eval]
def e0472 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e0471
def v0472 (X Y k : ℂ) : ℂ := -(v0471 X Y k)
theorem e0472_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0472) = v0472 X Y k := by
  simp only [e0472,v0472,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSplitReduction20261003.Coefficients.eval_neg,e0471_eval]
def e0473 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0470 e0472
def v0473 (X Y k : ℂ) : ℂ := (v0470 X Y k)*(v0472 X Y k)
theorem e0473_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0473) = v0473 X Y k := by
  simp only [e0473,v0473,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0470_eval,e0472_eval]
def e0474 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0473
def v0474 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0473 X Y k)
theorem e0474_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0474) = v0474 X Y k := by
  simp only [e0474,v0474,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0473_eval]
def e0475 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s072
def v0475 (X Y k : ℂ) : ℂ := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.v072 X Y k
theorem e0475_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0475) = v0475 X Y k := by
  exact NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s072_eval X Y k
def e0476 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0474 e0475
def v0476 (X Y k : ℂ) : ℂ := (v0474 X Y k)*(v0475 X Y k)
theorem e0476_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0476) = v0476 X Y k := by
  simp only [e0476,v0476,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0474_eval,e0475_eval]
def e0477 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0467 e0476
def v0477 (X Y k : ℂ) : ℂ := (v0467 X Y k)+(v0476 X Y k)
theorem e0477_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0477) = v0477 X Y k := by
  simp only [e0477,v0477,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0467_eval,e0476_eval]
def e0478 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0477 e0187
def v0478 (X Y k : ℂ) : ℂ := (v0477 X Y k)*(v0187 X Y k)
theorem e0478_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0478) = v0478 X Y k := by
  simp only [e0478,v0478,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0477_eval,e0187_eval]
def e0479 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0478 e0001
def v0479 (X Y k : ℂ) : ℂ := (v0478 X Y k)*(v0001 X Y k)
theorem e0479_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0479) = v0479 X Y k := by
  simp only [e0479,v0479,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0478_eval,e0001_eval]

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
