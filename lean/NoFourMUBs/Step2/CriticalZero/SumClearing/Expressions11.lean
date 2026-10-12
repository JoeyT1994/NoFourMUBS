import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions10
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def e0528 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0527
def v0528 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0527 X Y k)
theorem e0528_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0528) = v0528 X Y k := by
  simp only [e0528,v0528,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0527_eval]
def e0529 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0528 e0078
def v0529 (X Y k : ℂ) : ℂ := (v0528 X Y k)*(v0078 X Y k)
theorem e0529_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0529) = v0529 X Y k := by
  simp only [e0529,v0529,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0528_eval,e0078_eval]
def e0530 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0525 e0529
def v0530 (X Y k : ℂ) : ℂ := (v0525 X Y k)+(v0529 X Y k)
theorem e0530_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0530) = v0530 X Y k := by
  simp only [e0530,v0530,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0525_eval,e0529_eval]
def e0531 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0530 e0042
def v0531 (X Y k : ℂ) : ℂ := (v0530 X Y k)*(v0042 X Y k)
theorem e0531_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0531) = v0531 X Y k := by
  simp only [e0531,v0531,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0530_eval,e0042_eval]
def e0532 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0531 e0006
def v0532 (X Y k : ℂ) : ℂ := (v0531 X Y k)*(v0006 X Y k)
theorem e0532_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0532) = v0532 X Y k := by
  simp only [e0532,v0532,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0531_eval,e0006_eval]
def e0533 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0523 e0308
def v0533 (X Y k : ℂ) : ℂ := (v0523 X Y k)*(v0308 X Y k)
theorem e0533_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0533) = v0533 X Y k := by
  simp only [e0533,v0533,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0523_eval,e0308_eval]
def e0534 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0526 e0305
def v0534 (X Y k : ℂ) : ℂ := (v0526 X Y k)*(v0305 X Y k)
theorem e0534_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0534) = v0534 X Y k := by
  simp only [e0534,v0534,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0526_eval,e0305_eval]
def e0535 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0534 e0188
def v0535 (X Y k : ℂ) : ℂ := (v0534 X Y k)*(v0188 X Y k)
theorem e0535_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0535) = v0535 X Y k := by
  simp only [e0535,v0535,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0534_eval,e0188_eval]
def e0536 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0533 e0535
def v0536 (X Y k : ℂ) : ℂ := (v0533 X Y k)+(v0535 X Y k)
theorem e0536_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0536) = v0536 X Y k := by
  simp only [e0536,v0536,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0533_eval,e0535_eval]
def e0537 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0527
def v0537 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0527 X Y k)
theorem e0537_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0537) = v0537 X Y k := by
  simp only [e0537,v0537,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0527_eval]
def e0538 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0536 e0537
def v0538 (X Y k : ℂ) : ℂ := (v0536 X Y k)+(v0537 X Y k)
theorem e0538_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0538) = v0538 X Y k := by
  simp only [e0538,v0538,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0536_eval,e0537_eval]
def e0539 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0538 e0057
def v0539 (X Y k : ℂ) : ℂ := (v0538 X Y k)*(v0057 X Y k)
theorem e0539_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0539) = v0539 X Y k := by
  simp only [e0539,v0539,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0538_eval,e0057_eval]
def e0540 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0539
def v0540 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0539 X Y k)
theorem e0540_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0540) = v0540 X Y k := by
  simp only [e0540,v0540,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0539_eval]
def e0541 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2P2.s527
def v0541 (X Y k : ℂ) : ℂ := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2P2.v527 X Y k
theorem e0541_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0541) = v0541 X Y k := by
  exact NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2P2.s527_eval X Y k
def e0542 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0540 e0541
def v0542 (X Y k : ℂ) : ℂ := (v0540 X Y k)*(v0541 X Y k)
theorem e0542_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0542) = v0542 X Y k := by
  simp only [e0542,v0542,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0540_eval,e0541_eval]
def e0543 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0532 e0542
def v0543 (X Y k : ℂ) : ℂ := (v0532 X Y k)+(v0542 X Y k)
theorem e0543_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0543) = v0543 X Y k := by
  simp only [e0543,v0543,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0532_eval,e0542_eval]
def e0544 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0407 e0082
def v0544 (X Y k : ℂ) : ℂ := (v0407 X Y k)*(v0082 X Y k)
theorem e0544_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0544) = v0544 X Y k := by
  simp only [e0544,v0544,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0407_eval,e0082_eval]
def e0545 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0544 e0009
def v0545 (X Y k : ℂ) : ℂ := (v0544 X Y k)*(v0009 X Y k)
theorem e0545_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0545) = v0545 X Y k := by
  simp only [e0545,v0545,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0544_eval,e0009_eval]
def e0546 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0545 e0228
def v0546 (X Y k : ℂ) : ℂ := (v0545 X Y k)*(v0228 X Y k)
theorem e0546_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0546) = v0546 X Y k := by
  simp only [e0546,v0546,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0545_eval,e0228_eval]
def e0547 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0546 e0230
def v0547 (X Y k : ℂ) : ℂ := (v0546 X Y k)*(v0230 X Y k)
theorem e0547_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0547) = v0547 X Y k := by
  simp only [e0547,v0547,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0546_eval,e0230_eval]
def e0548 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0547 e0117
def v0548 (X Y k : ℂ) : ℂ := (v0547 X Y k)*(v0117 X Y k)
theorem e0548_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0548) = v0548 X Y k := by
  simp only [e0548,v0548,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0547_eval,e0117_eval]
def e0549 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0548 e0119
def v0549 (X Y k : ℂ) : ℂ := (v0548 X Y k)*(v0119 X Y k)
theorem e0549_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0549) = v0549 X Y k := by
  simp only [e0549,v0549,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0548_eval,e0119_eval]
def e0550 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0543 e0549
def v0550 (X Y k : ℂ) : ℂ := (v0543 X Y k)*(v0549 X Y k)
theorem e0550_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0550) = v0550 X Y k := by
  simp only [e0550,v0550,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0543_eval,e0549_eval]
def e0551 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0326 e0461
def v0551 (X Y k : ℂ) : ℂ := (v0326 X Y k)*(v0461 X Y k)
theorem e0551_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0551) = v0551 X Y k := by
  simp only [e0551,v0551,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0326_eval,e0461_eval]
def e0552 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0551 e0205
def v0552 (X Y k : ℂ) : ℂ := (v0551 X Y k)*(v0205 X Y k)
theorem e0552_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0552) = v0552 X Y k := by
  simp only [e0552,v0552,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0551_eval,e0205_eval]
def e0553 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0552 e0001
def v0553 (X Y k : ℂ) : ℂ := (v0552 X Y k)*(v0001 X Y k)
theorem e0553_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0553) = v0553 X Y k := by
  simp only [e0553,v0553,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0552_eval,e0001_eval]
def e0554 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0326 e0469
def v0554 (X Y k : ℂ) : ℂ := (v0326 X Y k)*(v0469 X Y k)
theorem e0554_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0554) = v0554 X Y k := by
  simp only [e0554,v0554,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0326_eval,e0469_eval]
def e0555 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0554 e0215
def v0555 (X Y k : ℂ) : ℂ := (v0554 X Y k)*(v0215 X Y k)
theorem e0555_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0555) = v0555 X Y k := by
  simp only [e0555,v0555,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0554_eval,e0215_eval]
def e0556 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0555
def v0556 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0555 X Y k)
theorem e0556_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0556) = v0556 X Y k := by
  simp only [e0556,v0556,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0555_eval]
def e0557 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0556 e0061
def v0557 (X Y k : ℂ) : ℂ := (v0556 X Y k)*(v0061 X Y k)
theorem e0557_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0557) = v0557 X Y k := by
  simp only [e0557,v0557,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0556_eval,e0061_eval]
def e0558 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0553 e0557
def v0558 (X Y k : ℂ) : ℂ := (v0553 X Y k)+(v0557 X Y k)
theorem e0558_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0558) = v0558 X Y k := by
  simp only [e0558,v0558,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0553_eval,e0557_eval]
def e0559 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0223 e0078
def v0559 (X Y k : ℂ) : ℂ := (v0223 X Y k)*(v0078 X Y k)
theorem e0559_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0559) = v0559 X Y k := by
  simp only [e0559,v0559,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0223_eval,e0078_eval]
def e0560 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0559 e0113
def v0560 (X Y k : ℂ) : ℂ := (v0559 X Y k)*(v0113 X Y k)
theorem e0560_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0560) = v0560 X Y k := by
  simp only [e0560,v0560,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0559_eval,e0113_eval]
def e0561 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0560 e0115
def v0561 (X Y k : ℂ) : ℂ := (v0560 X Y k)*(v0115 X Y k)
theorem e0561_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0561) = v0561 X Y k := by
  simp only [e0561,v0561,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0560_eval,e0115_eval]
def e0562 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0561 e0228
def v0562 (X Y k : ℂ) : ℂ := (v0561 X Y k)*(v0228 X Y k)
theorem e0562_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0562) = v0562 X Y k := by
  simp only [e0562,v0562,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0561_eval,e0228_eval]
def e0563 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0562 e0230
def v0563 (X Y k : ℂ) : ℂ := (v0562 X Y k)*(v0230 X Y k)
theorem e0563_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0563) = v0563 X Y k := by
  simp only [e0563,v0563,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0562_eval,e0230_eval]
def e0564 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0563 e0025
def v0564 (X Y k : ℂ) : ℂ := (v0563 X Y k)*(v0025 X Y k)
theorem e0564_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0564) = v0564 X Y k := by
  simp only [e0564,v0564,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0563_eval,e0025_eval]
def e0565 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0564 e0028
def v0565 (X Y k : ℂ) : ℂ := (v0564 X Y k)*(v0028 X Y k)
theorem e0565_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0565) = v0565 X Y k := by
  simp only [e0565,v0565,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0564_eval,e0028_eval]
def e0566 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0558 e0565
def v0566 (X Y k : ℂ) : ℂ := (v0558 X Y k)*(v0565 X Y k)
theorem e0566_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0566) = v0566 X Y k := by
  simp only [e0566,v0566,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0558_eval,e0565_eval]
def e0567 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0245 e0006
def v0567 (X Y k : ℂ) : ℂ := (v0245 X Y k)*(v0006 X Y k)
theorem e0567_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0567) = v0567 X Y k := by
  simp only [e0567,v0567,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0245_eval,e0006_eval]
def e0568 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0255
def v0568 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0255 X Y k)
theorem e0568_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0568) = v0568 X Y k := by
  simp only [e0568,v0568,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0255_eval]
def e0569 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0568 e0001
def v0569 (X Y k : ℂ) : ℂ := (v0568 X Y k)*(v0001 X Y k)
theorem e0569_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0569) = v0569 X Y k := by
  simp only [e0569,v0569,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0568_eval,e0001_eval]
def e0570 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0567 e0569
def v0570 (X Y k : ℂ) : ℂ := (v0567 X Y k)+(v0569 X Y k)
theorem e0570_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0570) = v0570 X Y k := by
  simp only [e0570,v0570,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0567_eval,e0569_eval]
def e0571 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0186 e0570
def v0571 (X Y k : ℂ) : ℂ := (v0186 X Y k)*(v0570 X Y k)
theorem e0571_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0571) = v0571 X Y k := by
  simp only [e0571,v0571,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0186_eval,e0570_eval]
def e0572 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0001 e0571
def v0572 (X Y k : ℂ) : ℂ := (v0001 X Y k)*(v0571 X Y k)
theorem e0572_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0572) = v0572 X Y k := by
  simp only [e0572,v0572,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0001_eval,e0571_eval]
def e0573 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0236 e0250
def v0573 (X Y k : ℂ) : ℂ := (v0236 X Y k)*(v0250 X Y k)
theorem e0573_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0573) = v0573 X Y k := by
  simp only [e0573,v0573,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0236_eval,e0250_eval]
def e0574 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0240
def v0574 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0240 X Y k)
theorem e0574_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0574) = v0574 X Y k := by
  simp only [e0574,v0574,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0240_eval]
def e0575 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0573 e0574
def v0575 (X Y k : ℂ) : ℂ := (v0573 X Y k)+(v0574 X Y k)
theorem e0575_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0575) = v0575 X Y k := by
  simp only [e0575,v0575,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0573_eval,e0574_eval]

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
