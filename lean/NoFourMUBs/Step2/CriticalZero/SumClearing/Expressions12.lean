import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions11
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def e0576 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0110 e0575
def v0576 (X Y k : ℂ) : ℂ := (v0110 X Y k)*(v0575 X Y k)
theorem e0576_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0576) = v0576 X Y k := by
  simp only [e0576,v0576,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0110_eval,e0575_eval]
def e0577 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0572 e0576
def v0577 (X Y k : ℂ) : ℂ := (v0572 X Y k)*(v0576 X Y k)
theorem e0577_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0577) = v0577 X Y k := by
  simp only [e0577,v0577,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0572_eval,e0576_eval]
def e0578 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0186 e0255
def v0578 (X Y k : ℂ) : ℂ := (v0186 X Y k)*(v0255 X Y k)
theorem e0578_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0578) = v0578 X Y k := by
  simp only [e0578,v0578,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0186_eval,e0255_eval]
def e0579 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e0578
def v0579 (X Y k : ℂ) : ℂ := -(v0578 X Y k)
theorem e0579_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0579) = v0579 X Y k := by
  simp only [e0579,v0579,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSplitReduction20261003.Coefficients.eval_neg,e0578_eval]
def e0580 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0001 e0579
def v0580 (X Y k : ℂ) : ℂ := (v0001 X Y k)*(v0579 X Y k)
theorem e0580_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0580) = v0580 X Y k := by
  simp only [e0580,v0580,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0001_eval,e0579_eval]
def e0581 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0110 e0240
def v0581 (X Y k : ℂ) : ℂ := (v0110 X Y k)*(v0240 X Y k)
theorem e0581_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0581) = v0581 X Y k := by
  simp only [e0581,v0581,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0110_eval,e0240_eval]
def e0582 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e0581
def v0582 (X Y k : ℂ) : ℂ := -(v0581 X Y k)
theorem e0582_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0582) = v0582 X Y k := by
  simp only [e0582,v0582,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSplitReduction20261003.Coefficients.eval_neg,e0581_eval]
def e0583 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0580 e0582
def v0583 (X Y k : ℂ) : ℂ := (v0580 X Y k)*(v0582 X Y k)
theorem e0583_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0583) = v0583 X Y k := by
  simp only [e0583,v0583,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0580_eval,e0582_eval]
def e0584 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0583
def v0584 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0583 X Y k)
theorem e0584_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0584) = v0584 X Y k := by
  simp only [e0584,v0584,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0583_eval]
def e0585 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0135 e0061
def v0585 (X Y k : ℂ) : ℂ := (v0135 X Y k)*(v0061 X Y k)
theorem e0585_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0585) = v0585 X Y k := by
  simp only [e0585,v0585,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0135_eval,e0061_eval]
def e0586 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0584 e0585
def v0586 (X Y k : ℂ) : ℂ := (v0584 X Y k)*(v0585 X Y k)
theorem e0586_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0586) = v0586 X Y k := by
  simp only [e0586,v0586,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0584_eval,e0585_eval]
def e0587 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0577 e0586
def v0587 (X Y k : ℂ) : ℂ := (v0577 X Y k)+(v0586 X Y k)
theorem e0587_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0587) = v0587 X Y k := by
  simp only [e0587,v0587,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0577_eval,e0586_eval]
def e0588 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0587 e0187
def v0588 (X Y k : ℂ) : ℂ := (v0587 X Y k)*(v0187 X Y k)
theorem e0588_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0588) = v0588 X Y k := by
  simp only [e0588,v0588,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0587_eval,e0187_eval]
def e0589 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0588 e0001
def v0589 (X Y k : ℂ) : ℂ := (v0588 X Y k)*(v0001 X Y k)
theorem e0589_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0589) = v0589 X Y k := by
  simp only [e0589,v0589,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0588_eval,e0001_eval]
def e0590 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0572 e0582
def v0590 (X Y k : ℂ) : ℂ := (v0572 X Y k)*(v0582 X Y k)
theorem e0590_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0590) = v0590 X Y k := by
  simp only [e0590,v0590,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0572_eval,e0582_eval]
def e0591 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0580 e0576
def v0591 (X Y k : ℂ) : ℂ := (v0580 X Y k)*(v0576 X Y k)
theorem e0591_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0591) = v0591 X Y k := by
  simp only [e0591,v0591,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0580_eval,e0576_eval]
def e0592 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0591 e0001
def v0592 (X Y k : ℂ) : ℂ := (v0591 X Y k)*(v0001 X Y k)
theorem e0592_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0592) = v0592 X Y k := by
  simp only [e0592,v0592,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0591_eval,e0001_eval]
def e0593 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0590 e0592
def v0593 (X Y k : ℂ) : ℂ := (v0590 X Y k)+(v0592 X Y k)
theorem e0593_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0593) = v0593 X Y k := by
  simp only [e0593,v0593,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0590_eval,e0592_eval]
def e0594 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0583
def v0594 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0583 X Y k)
theorem e0594_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0594) = v0594 X Y k := by
  simp only [e0594,v0594,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0583_eval]
def e0595 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0594 e0001
def v0595 (X Y k : ℂ) : ℂ := (v0594 X Y k)*(v0001 X Y k)
theorem e0595_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0595) = v0595 X Y k := by
  simp only [e0595,v0595,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0594_eval,e0001_eval]
def e0596 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0593 e0595
def v0596 (X Y k : ℂ) : ℂ := (v0593 X Y k)+(v0595 X Y k)
theorem e0596_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0596) = v0596 X Y k := by
  simp only [e0596,v0596,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0593_eval,e0595_eval]
def e0597 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0596 e0190
def v0597 (X Y k : ℂ) : ℂ := (v0596 X Y k)*(v0190 X Y k)
theorem e0597_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0597) = v0597 X Y k := by
  simp only [e0597,v0597,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0596_eval,e0190_eval]
def e0598 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0597
def v0598 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0597 X Y k)
theorem e0598_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0598) = v0598 X Y k := by
  simp only [e0598,v0598,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0597_eval]
def e0599 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0598 e0078
def v0599 (X Y k : ℂ) : ℂ := (v0598 X Y k)*(v0078 X Y k)
theorem e0599_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0599) = v0599 X Y k := by
  simp only [e0599,v0599,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0598_eval,e0078_eval]
def e0600 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0589 e0599
def v0600 (X Y k : ℂ) : ℂ := (v0589 X Y k)+(v0599 X Y k)
theorem e0600_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0600) = v0600 X Y k := by
  simp only [e0600,v0600,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0589_eval,e0599_eval]
def e0601 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0262 e0376
def v0601 (X Y k : ℂ) : ℂ := (v0262 X Y k)*(v0376 X Y k)
theorem e0601_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0601) = v0601 X Y k := by
  simp only [e0601,v0601,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0262_eval,e0376_eval]
def e0602 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0601 e0113
def v0602 (X Y k : ℂ) : ℂ := (v0601 X Y k)*(v0113 X Y k)
theorem e0602_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0602) = v0602 X Y k := by
  simp only [e0602,v0602,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0601_eval,e0113_eval]
def e0603 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0602 e0115
def v0603 (X Y k : ℂ) : ℂ := (v0602 X Y k)*(v0115 X Y k)
theorem e0603_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0603) = v0603 X Y k := by
  simp only [e0603,v0603,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0602_eval,e0115_eval]
def e0604 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0603 e0228
def v0604 (X Y k : ℂ) : ℂ := (v0603 X Y k)*(v0228 X Y k)
theorem e0604_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0604) = v0604 X Y k := by
  simp only [e0604,v0604,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0603_eval,e0228_eval]
def e0605 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0604 e0230
def v0605 (X Y k : ℂ) : ℂ := (v0604 X Y k)*(v0230 X Y k)
theorem e0605_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0605) = v0605 X Y k := by
  simp only [e0605,v0605,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0604_eval,e0230_eval]
def e0606 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0605 e0117
def v0606 (X Y k : ℂ) : ℂ := (v0605 X Y k)*(v0117 X Y k)
theorem e0606_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0606) = v0606 X Y k := by
  simp only [e0606,v0606,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0605_eval,e0117_eval]
def e0607 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0606 e0119
def v0607 (X Y k : ℂ) : ℂ := (v0606 X Y k)*(v0119 X Y k)
theorem e0607_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0607) = v0607 X Y k := by
  simp only [e0607,v0607,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0606_eval,e0119_eval]
def e0608 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0600 e0607
def v0608 (X Y k : ℂ) : ℂ := (v0600 X Y k)*(v0607 X Y k)
theorem e0608_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0608) = v0608 X Y k := by
  simp only [e0608,v0608,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0600_eval,e0607_eval]
def e0609 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0154 e0571
def v0609 (X Y k : ℂ) : ℂ := (v0154 X Y k)*(v0571 X Y k)
theorem e0609_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0609) = v0609 X Y k := by
  simp only [e0609,v0609,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0154_eval,e0571_eval]
def e0610 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0609 e0466
def v0610 (X Y k : ℂ) : ℂ := (v0609 X Y k)*(v0466 X Y k)
theorem e0610_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0610) = v0610 X Y k := by
  simp only [e0610,v0610,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0609_eval,e0466_eval]
def e0611 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0154 e0579
def v0611 (X Y k : ℂ) : ℂ := (v0154 X Y k)*(v0579 X Y k)
theorem e0611_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0611) = v0611 X Y k := by
  simp only [e0611,v0611,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0154_eval,e0579_eval]
def e0612 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0611 e0472
def v0612 (X Y k : ℂ) : ℂ := (v0611 X Y k)*(v0472 X Y k)
theorem e0612_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0612) = v0612 X Y k := by
  simp only [e0612,v0612,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0611_eval,e0472_eval]
def e0613 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0612
def v0613 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0612 X Y k)
theorem e0613_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0613) = v0613 X Y k := by
  simp only [e0613,v0613,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0612_eval]
def e0614 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0613 e0585
def v0614 (X Y k : ℂ) : ℂ := (v0613 X Y k)*(v0585 X Y k)
theorem e0614_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0614) = v0614 X Y k := by
  simp only [e0614,v0614,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0613_eval,e0585_eval]
def e0615 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0610 e0614
def v0615 (X Y k : ℂ) : ℂ := (v0610 X Y k)+(v0614 X Y k)
theorem e0615_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0615) = v0615 X Y k := by
  simp only [e0615,v0615,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0610_eval,e0614_eval]
def e0616 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0615 e0346
def v0616 (X Y k : ℂ) : ℂ := (v0615 X Y k)*(v0346 X Y k)
theorem e0616_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0616) = v0616 X Y k := by
  simp only [e0616,v0616,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0615_eval,e0346_eval]
def e0617 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0609 e0472
def v0617 (X Y k : ℂ) : ℂ := (v0609 X Y k)*(v0472 X Y k)
theorem e0617_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0617) = v0617 X Y k := by
  simp only [e0617,v0617,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0609_eval,e0472_eval]
def e0618 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0611 e0466
def v0618 (X Y k : ℂ) : ℂ := (v0611 X Y k)*(v0466 X Y k)
theorem e0618_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0618) = v0618 X Y k := by
  simp only [e0618,v0618,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0611_eval,e0466_eval]
def e0619 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0618 e0001
def v0619 (X Y k : ℂ) : ℂ := (v0618 X Y k)*(v0001 X Y k)
theorem e0619_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0619) = v0619 X Y k := by
  simp only [e0619,v0619,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0618_eval,e0001_eval]
def e0620 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0617 e0619
def v0620 (X Y k : ℂ) : ℂ := (v0617 X Y k)+(v0619 X Y k)
theorem e0620_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0620) = v0620 X Y k := by
  simp only [e0620,v0620,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0617_eval,e0619_eval]
def e0621 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0612
def v0621 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0612 X Y k)
theorem e0621_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0621) = v0621 X Y k := by
  simp only [e0621,v0621,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0612_eval]
def e0622 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0621 e0001
def v0622 (X Y k : ℂ) : ℂ := (v0621 X Y k)*(v0001 X Y k)
theorem e0622_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0622) = v0622 X Y k := by
  simp only [e0622,v0622,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0621_eval,e0001_eval]
def e0623 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0620 e0622
def v0623 (X Y k : ℂ) : ℂ := (v0620 X Y k)+(v0622 X Y k)
theorem e0623_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0623) = v0623 X Y k := by
  simp only [e0623,v0623,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0620_eval,e0622_eval]

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
