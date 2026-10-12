import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions09
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def e0480 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0462 e0472
def v0480 (X Y k : ℂ) : ℂ := (v0462 X Y k)*(v0472 X Y k)
theorem e0480_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0480) = v0480 X Y k := by
  simp only [e0480,v0480,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0462_eval,e0472_eval]
def e0481 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0470 e0466
def v0481 (X Y k : ℂ) : ℂ := (v0470 X Y k)*(v0466 X Y k)
theorem e0481_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0481) = v0481 X Y k := by
  simp only [e0481,v0481,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0470_eval,e0466_eval]
def e0482 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0480 e0481
def v0482 (X Y k : ℂ) : ℂ := (v0480 X Y k)+(v0481 X Y k)
theorem e0482_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0482) = v0482 X Y k := by
  simp only [e0482,v0482,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0480_eval,e0481_eval]
def e0483 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0473
def v0483 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0473 X Y k)
theorem e0483_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0483) = v0483 X Y k := by
  simp only [e0483,v0483,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0473_eval]
def e0484 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0482 e0483
def v0484 (X Y k : ℂ) : ℂ := (v0482 X Y k)+(v0483 X Y k)
theorem e0484_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0484) = v0484 X Y k := by
  simp only [e0484,v0484,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0482_eval,e0483_eval]
def e0485 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0484 e0190
def v0485 (X Y k : ℂ) : ℂ := (v0484 X Y k)*(v0190 X Y k)
theorem e0485_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0485) = v0485 X Y k := by
  simp only [e0485,v0485,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0484_eval,e0190_eval]
def e0486 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0485
def v0486 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0485 X Y k)
theorem e0486_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0486) = v0486 X Y k := by
  simp only [e0486,v0486,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0485_eval]
def e0487 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0486 e0078
def v0487 (X Y k : ℂ) : ℂ := (v0486 X Y k)*(v0078 X Y k)
theorem e0487_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0487) = v0487 X Y k := by
  simp only [e0487,v0487,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0486_eval,e0078_eval]
def e0488 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0479 e0487
def v0488 (X Y k : ℂ) : ℂ := (v0479 X Y k)+(v0487 X Y k)
theorem e0488_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0488) = v0488 X Y k := by
  simp only [e0488,v0488,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0479_eval,e0487_eval]
def e0489 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0221 e0082
def v0489 (X Y k : ℂ) : ℂ := (v0221 X Y k)*(v0082 X Y k)
theorem e0489_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0489) = v0489 X Y k := by
  simp only [e0489,v0489,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0221_eval,e0082_eval]
def e0490 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0489 e0376
def v0490 (X Y k : ℂ) : ℂ := (v0489 X Y k)*(v0376 X Y k)
theorem e0490_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0490) = v0490 X Y k := by
  simp only [e0490,v0490,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0489_eval,e0376_eval]
def e0491 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0490 e0113
def v0491 (X Y k : ℂ) : ℂ := (v0490 X Y k)*(v0113 X Y k)
theorem e0491_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0491) = v0491 X Y k := by
  simp only [e0491,v0491,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0490_eval,e0113_eval]
def e0492 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0491 e0115
def v0492 (X Y k : ℂ) : ℂ := (v0491 X Y k)*(v0115 X Y k)
theorem e0492_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0492) = v0492 X Y k := by
  simp only [e0492,v0492,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0491_eval,e0115_eval]
def e0493 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0492 e0228
def v0493 (X Y k : ℂ) : ℂ := (v0492 X Y k)*(v0228 X Y k)
theorem e0493_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0493) = v0493 X Y k := by
  simp only [e0493,v0493,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0492_eval,e0228_eval]
def e0494 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0493 e0230
def v0494 (X Y k : ℂ) : ℂ := (v0493 X Y k)*(v0230 X Y k)
theorem e0494_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0494) = v0494 X Y k := by
  simp only [e0494,v0494,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0493_eval,e0230_eval]
def e0495 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0494 e0117
def v0495 (X Y k : ℂ) : ℂ := (v0494 X Y k)*(v0117 X Y k)
theorem e0495_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0495) = v0495 X Y k := by
  simp only [e0495,v0495,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0494_eval,e0117_eval]
def e0496 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0495 e0119
def v0496 (X Y k : ℂ) : ℂ := (v0495 X Y k)*(v0119 X Y k)
theorem e0496_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0496) = v0496 X Y k := by
  simp only [e0496,v0496,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0495_eval,e0119_eval]
def e0497 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0488 e0496
def v0497 (X Y k : ℂ) : ℂ := (v0488 X Y k)*(v0496 X Y k)
theorem e0497_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0497) = v0497 X Y k := by
  simp only [e0497,v0497,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0488_eval,e0496_eval]
def e0498 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0462 e0272
def v0498 (X Y k : ℂ) : ℂ := (v0462 X Y k)*(v0272 X Y k)
theorem e0498_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0498) = v0498 X Y k := by
  simp only [e0498,v0498,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0462_eval,e0272_eval]
def e0499 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0470 e0274
def v0499 (X Y k : ℂ) : ℂ := (v0470 X Y k)*(v0274 X Y k)
theorem e0499_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0499) = v0499 X Y k := by
  simp only [e0499,v0499,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0470_eval,e0274_eval]
def e0500 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0499
def v0500 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0499 X Y k)
theorem e0500_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0500) = v0500 X Y k := by
  simp only [e0500,v0500,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0499_eval]
def e0501 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0500 e0078
def v0501 (X Y k : ℂ) : ℂ := (v0500 X Y k)*(v0078 X Y k)
theorem e0501_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0501) = v0501 X Y k := by
  simp only [e0501,v0501,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0500_eval,e0078_eval]
def e0502 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0498 e0501
def v0502 (X Y k : ℂ) : ℂ := (v0498 X Y k)+(v0501 X Y k)
theorem e0502_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0502) = v0502 X Y k := by
  simp only [e0502,v0502,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0498_eval,e0501_eval]
def e0503 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0502 e0086
def v0503 (X Y k : ℂ) : ℂ := (v0502 X Y k)*(v0086 X Y k)
theorem e0503_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0503) = v0503 X Y k := by
  simp only [e0503,v0503,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0502_eval,e0086_eval]
def e0504 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0503 e0135
def v0504 (X Y k : ℂ) : ℂ := (v0503 X Y k)*(v0135 X Y k)
theorem e0504_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0504) = v0504 X Y k := by
  simp only [e0504,v0504,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0503_eval,e0135_eval]
def e0505 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0462 e0274
def v0505 (X Y k : ℂ) : ℂ := (v0462 X Y k)*(v0274 X Y k)
theorem e0505_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0505) = v0505 X Y k := by
  simp only [e0505,v0505,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0462_eval,e0274_eval]
def e0506 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0470 e0272
def v0506 (X Y k : ℂ) : ℂ := (v0470 X Y k)*(v0272 X Y k)
theorem e0506_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0506) = v0506 X Y k := by
  simp only [e0506,v0506,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0470_eval,e0272_eval]
def e0507 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0506 e0283
def v0507 (X Y k : ℂ) : ℂ := (v0506 X Y k)*(v0283 X Y k)
theorem e0507_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0507) = v0507 X Y k := by
  simp only [e0507,v0507,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0506_eval,e0283_eval]
def e0508 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0505 e0507
def v0508 (X Y k : ℂ) : ℂ := (v0505 X Y k)+(v0507 X Y k)
theorem e0508_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0508) = v0508 X Y k := by
  simp only [e0508,v0508,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0505_eval,e0507_eval]
def e0509 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0499
def v0509 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0499 X Y k)
theorem e0509_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0509) = v0509 X Y k := by
  simp only [e0509,v0509,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0499_eval]
def e0510 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0508 e0509
def v0510 (X Y k : ℂ) : ℂ := (v0508 X Y k)+(v0509 X Y k)
theorem e0510_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0510) = v0510 X Y k := by
  simp only [e0510,v0510,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0508_eval,e0509_eval]
def e0511 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0510 e0089
def v0511 (X Y k : ℂ) : ℂ := (v0510 X Y k)*(v0089 X Y k)
theorem e0511_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0511) = v0511 X Y k := by
  simp only [e0511,v0511,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0510_eval,e0089_eval]
def e0512 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0511
def v0512 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0511 X Y k)
theorem e0512_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0512) = v0512 X Y k := by
  simp only [e0512,v0512,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0511_eval]
def e0513 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0512 e0078
def v0513 (X Y k : ℂ) : ℂ := (v0512 X Y k)*(v0078 X Y k)
theorem e0513_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0513) = v0513 X Y k := by
  simp only [e0513,v0513,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0512_eval,e0078_eval]
def e0514 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0504 e0513
def v0514 (X Y k : ℂ) : ℂ := (v0504 X Y k)+(v0513 X Y k)
theorem e0514_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0514) = v0514 X Y k := by
  simp only [e0514,v0514,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0504_eval,e0513_eval]
def e0515 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0375 e0009
def v0515 (X Y k : ℂ) : ℂ := (v0375 X Y k)*(v0009 X Y k)
theorem e0515_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0515) = v0515 X Y k := by
  simp only [e0515,v0515,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0375_eval,e0009_eval]
def e0516 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0515 e0113
def v0516 (X Y k : ℂ) : ℂ := (v0515 X Y k)*(v0113 X Y k)
theorem e0516_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0516) = v0516 X Y k := by
  simp only [e0516,v0516,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0515_eval,e0113_eval]
def e0517 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0516 e0115
def v0517 (X Y k : ℂ) : ℂ := (v0516 X Y k)*(v0115 X Y k)
theorem e0517_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0517) = v0517 X Y k := by
  simp only [e0517,v0517,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0516_eval,e0115_eval]
def e0518 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0517 e0228
def v0518 (X Y k : ℂ) : ℂ := (v0517 X Y k)*(v0228 X Y k)
theorem e0518_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0518) = v0518 X Y k := by
  simp only [e0518,v0518,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0517_eval,e0228_eval]
def e0519 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0518 e0230
def v0519 (X Y k : ℂ) : ℂ := (v0518 X Y k)*(v0230 X Y k)
theorem e0519_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0519) = v0519 X Y k := by
  simp only [e0519,v0519,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0518_eval,e0230_eval]
def e0520 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0519 e0181
def v0520 (X Y k : ℂ) : ℂ := (v0519 X Y k)*(v0181 X Y k)
theorem e0520_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0520) = v0520 X Y k := by
  simp only [e0520,v0520,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0519_eval,e0181_eval]
def e0521 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0520 e0183
def v0521 (X Y k : ℂ) : ℂ := (v0520 X Y k)*(v0183 X Y k)
theorem e0521_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0521) = v0521 X Y k := by
  simp only [e0521,v0521,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0520_eval,e0183_eval]
def e0522 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0514 e0521
def v0522 (X Y k : ℂ) : ℂ := (v0514 X Y k)*(v0521 X Y k)
theorem e0522_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0522) = v0522 X Y k := by
  simp only [e0522,v0522,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0514_eval,e0521_eval]
def e0523 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0001 e0461
def v0523 (X Y k : ℂ) : ℂ := (v0001 X Y k)*(v0461 X Y k)
theorem e0523_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0523) = v0523 X Y k := by
  simp only [e0523,v0523,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0001_eval,e0461_eval]
def e0524 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0523 e0305
def v0524 (X Y k : ℂ) : ℂ := (v0523 X Y k)*(v0305 X Y k)
theorem e0524_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0524) = v0524 X Y k := by
  simp only [e0524,v0524,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0523_eval,e0305_eval]
def e0525 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0524 e0001
def v0525 (X Y k : ℂ) : ℂ := (v0524 X Y k)*(v0001 X Y k)
theorem e0525_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0525) = v0525 X Y k := by
  simp only [e0525,v0525,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0524_eval,e0001_eval]
def e0526 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0001 e0469
def v0526 (X Y k : ℂ) : ℂ := (v0001 X Y k)*(v0469 X Y k)
theorem e0526_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0526) = v0526 X Y k := by
  simp only [e0526,v0526,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0001_eval,e0469_eval]
def e0527 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0526 e0308
def v0527 (X Y k : ℂ) : ℂ := (v0526 X Y k)*(v0308 X Y k)
theorem e0527_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0527) = v0527 X Y k := by
  simp only [e0527,v0527,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0526_eval,e0308_eval]

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
