import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions12
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def e0624 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0623 e0348
def v0624 (X Y k : ℂ) : ℂ := (v0623 X Y k)*(v0348 X Y k)
theorem e0624_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0624) = v0624 X Y k := by
  simp only [e0624,v0624,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0623_eval,e0348_eval]
def e0625 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0624
def v0625 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0624 X Y k)
theorem e0625_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0625) = v0625 X Y k := by
  simp only [e0625,v0625,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0624_eval]
def e0626 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0625 e0127
def v0626 (X Y k : ℂ) : ℂ := (v0625 X Y k)*(v0127 X Y k)
theorem e0626_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0626) = v0626 X Y k := by
  simp only [e0626,v0626,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0625_eval,e0127_eval]
def e0627 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0616 e0626
def v0627 (X Y k : ℂ) : ℂ := (v0616 X Y k)+(v0626 X Y k)
theorem e0627_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0627) = v0627 X Y k := by
  simp only [e0627,v0627,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0616_eval,e0626_eval]
def e0628 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0221 e0006
def v0628 (X Y k : ℂ) : ℂ := (v0221 X Y k)*(v0006 X Y k)
theorem e0628_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0628) = v0628 X Y k := by
  simp only [e0628,v0628,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0221_eval,e0006_eval]
def e0629 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0628 e0078
def v0629 (X Y k : ℂ) : ℂ := (v0628 X Y k)*(v0078 X Y k)
theorem e0629_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0629) = v0629 X Y k := by
  simp only [e0629,v0629,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0628_eval,e0078_eval]
def e0630 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0629 e0113
def v0630 (X Y k : ℂ) : ℂ := (v0629 X Y k)*(v0113 X Y k)
theorem e0630_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0630) = v0630 X Y k := by
  simp only [e0630,v0630,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0629_eval,e0113_eval]
def e0631 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0630 e0115
def v0631 (X Y k : ℂ) : ℂ := (v0630 X Y k)*(v0115 X Y k)
theorem e0631_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0631) = v0631 X Y k := by
  simp only [e0631,v0631,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0630_eval,e0115_eval]
def e0632 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0631 e0228
def v0632 (X Y k : ℂ) : ℂ := (v0631 X Y k)*(v0228 X Y k)
theorem e0632_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0632) = v0632 X Y k := by
  simp only [e0632,v0632,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0631_eval,e0228_eval]
def e0633 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0632 e0230
def v0633 (X Y k : ℂ) : ℂ := (v0632 X Y k)*(v0230 X Y k)
theorem e0633_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0633) = v0633 X Y k := by
  simp only [e0633,v0633,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0632_eval,e0230_eval]
def e0634 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0633 e0117
def v0634 (X Y k : ℂ) : ℂ := (v0633 X Y k)*(v0117 X Y k)
theorem e0634_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0634) = v0634 X Y k := by
  simp only [e0634,v0634,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0633_eval,e0117_eval]
def e0635 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0634 e0119
def v0635 (X Y k : ℂ) : ℂ := (v0634 X Y k)*(v0119 X Y k)
theorem e0635_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0635) = v0635 X Y k := by
  simp only [e0635,v0635,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0634_eval,e0119_eval]
def e0636 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0627 e0635
def v0636 (X Y k : ℂ) : ℂ := (v0627 X Y k)*(v0635 X Y k)
theorem e0636_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0636) = v0636 X Y k := by
  simp only [e0636,v0636,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0627_eval,e0635_eval]
def e0637 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0609 e0386
def v0637 (X Y k : ℂ) : ℂ := (v0609 X Y k)*(v0386 X Y k)
theorem e0637_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0637) = v0637 X Y k := by
  simp only [e0637,v0637,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0609_eval,e0386_eval]
def e0638 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0611 e0389
def v0638 (X Y k : ℂ) : ℂ := (v0611 X Y k)*(v0389 X Y k)
theorem e0638_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0638) = v0638 X Y k := by
  simp only [e0638,v0638,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0611_eval,e0389_eval]
def e0639 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0638
def v0639 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0638 X Y k)
theorem e0639_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0639) = v0639 X Y k := by
  simp only [e0639,v0639,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0638_eval]
def e0640 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0639 e0062
def v0640 (X Y k : ℂ) : ℂ := (v0639 X Y k)*(v0062 X Y k)
theorem e0640_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0640) = v0640 X Y k := by
  simp only [e0640,v0640,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0639_eval,e0062_eval]
def e0641 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0637 e0640
def v0641 (X Y k : ℂ) : ℂ := (v0637 X Y k)+(v0640 X Y k)
theorem e0641_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0641) = v0641 X Y k := by
  simp only [e0641,v0641,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0637_eval,e0640_eval]
def e0642 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0641 e0130
def v0642 (X Y k : ℂ) : ℂ := (v0641 X Y k)*(v0130 X Y k)
theorem e0642_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0642) = v0642 X Y k := by
  simp only [e0642,v0642,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0641_eval,e0130_eval]
def e0643 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0642 e0006
def v0643 (X Y k : ℂ) : ℂ := (v0642 X Y k)*(v0006 X Y k)
theorem e0643_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0643) = v0643 X Y k := by
  simp only [e0643,v0643,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0642_eval,e0006_eval]
def e0644 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0609 e0389
def v0644 (X Y k : ℂ) : ℂ := (v0609 X Y k)*(v0389 X Y k)
theorem e0644_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0644) = v0644 X Y k := by
  simp only [e0644,v0644,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0609_eval,e0389_eval]
def e0645 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0611 e0386
def v0645 (X Y k : ℂ) : ℂ := (v0611 X Y k)*(v0386 X Y k)
theorem e0645_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0645) = v0645 X Y k := by
  simp only [e0645,v0645,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0611_eval,e0386_eval]
def e0646 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0645 e0006
def v0646 (X Y k : ℂ) : ℂ := (v0645 X Y k)*(v0006 X Y k)
theorem e0646_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0646) = v0646 X Y k := by
  simp only [e0646,v0646,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0645_eval,e0006_eval]
def e0647 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0644 e0646
def v0647 (X Y k : ℂ) : ℂ := (v0644 X Y k)+(v0646 X Y k)
theorem e0647_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0647) = v0647 X Y k := by
  simp only [e0647,v0647,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0644_eval,e0646_eval]
def e0648 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0638
def v0648 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0638 X Y k)
theorem e0648_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0648) = v0648 X Y k := by
  simp only [e0648,v0648,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0638_eval]
def e0649 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0648 e0001
def v0649 (X Y k : ℂ) : ℂ := (v0648 X Y k)*(v0001 X Y k)
theorem e0649_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0649) = v0649 X Y k := by
  simp only [e0649,v0649,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0648_eval,e0001_eval]
def e0650 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0647 e0649
def v0650 (X Y k : ℂ) : ℂ := (v0647 X Y k)+(v0649 X Y k)
theorem e0650_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0650) = v0650 X Y k := by
  simp only [e0650,v0650,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0647_eval,e0649_eval]
def e0651 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0650 e0141
def v0651 (X Y k : ℂ) : ℂ := (v0650 X Y k)*(v0141 X Y k)
theorem e0651_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0651) = v0651 X Y k := by
  simp only [e0651,v0651,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0650_eval,e0141_eval]
def e0652 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0651
def v0652 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0651 X Y k)
theorem e0652_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0652) = v0652 X Y k := by
  simp only [e0652,v0652,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0651_eval]
def e0653 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0652 e0127
def v0653 (X Y k : ℂ) : ℂ := (v0652 X Y k)*(v0127 X Y k)
theorem e0653_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0653) = v0653 X Y k := by
  simp only [e0653,v0653,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0652_eval,e0127_eval]
def e0654 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0643 e0653
def v0654 (X Y k : ℂ) : ℂ := (v0643 X Y k)+(v0653 X Y k)
theorem e0654_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0654) = v0654 X Y k := by
  simp only [e0654,v0654,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0643_eval,e0653_eval]
def e0655 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0489 e0078
def v0655 (X Y k : ℂ) : ℂ := (v0489 X Y k)*(v0078 X Y k)
theorem e0655_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0655) = v0655 X Y k := by
  simp only [e0655,v0655,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0489_eval,e0078_eval]
def e0656 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0655 e0113
def v0656 (X Y k : ℂ) : ℂ := (v0655 X Y k)*(v0113 X Y k)
theorem e0656_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0656) = v0656 X Y k := by
  simp only [e0656,v0656,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0655_eval,e0113_eval]
def e0657 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0656 e0115
def v0657 (X Y k : ℂ) : ℂ := (v0656 X Y k)*(v0115 X Y k)
theorem e0657_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0657) = v0657 X Y k := by
  simp only [e0657,v0657,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0656_eval,e0115_eval]
def e0658 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0657 e0228
def v0658 (X Y k : ℂ) : ℂ := (v0657 X Y k)*(v0228 X Y k)
theorem e0658_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0658) = v0658 X Y k := by
  simp only [e0658,v0658,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0657_eval,e0228_eval]
def e0659 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0658 e0230
def v0659 (X Y k : ℂ) : ℂ := (v0658 X Y k)*(v0230 X Y k)
theorem e0659_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0659) = v0659 X Y k := by
  simp only [e0659,v0659,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0658_eval,e0230_eval]
def e0660 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0659 e0117
def v0660 (X Y k : ℂ) : ℂ := (v0659 X Y k)*(v0117 X Y k)
theorem e0660_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0660) = v0660 X Y k := by
  simp only [e0660,v0660,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0659_eval,e0117_eval]
def e0661 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0660 e0119
def v0661 (X Y k : ℂ) : ℂ := (v0660 X Y k)*(v0119 X Y k)
theorem e0661_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0661) = v0661 X Y k := by
  simp only [e0661,v0661,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0660_eval,e0119_eval]
def e0662 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0654 e0661
def v0662 (X Y k : ℂ) : ℂ := (v0654 X Y k)*(v0661 X Y k)
theorem e0662_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0662) = v0662 X Y k := by
  simp only [e0662,v0662,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0654_eval,e0661_eval]
def e0663 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0572 e0415
def v0663 (X Y k : ℂ) : ℂ := (v0572 X Y k)*(v0415 X Y k)
theorem e0663_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0663) = v0663 X Y k := by
  simp only [e0663,v0663,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0572_eval,e0415_eval]
def e0664 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0580 e0417
def v0664 (X Y k : ℂ) : ℂ := (v0580 X Y k)*(v0417 X Y k)
theorem e0664_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0664) = v0664 X Y k := by
  simp only [e0664,v0664,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0580_eval,e0417_eval]
def e0665 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0664
def v0665 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0664 X Y k)
theorem e0665_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0665) = v0665 X Y k := by
  simp only [e0665,v0665,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0664_eval]
def e0666 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0665 e0127
def v0666 (X Y k : ℂ) : ℂ := (v0665 X Y k)*(v0127 X Y k)
theorem e0666_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0666) = v0666 X Y k := by
  simp only [e0666,v0666,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0665_eval,e0127_eval]
def e0667 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0663 e0666
def v0667 (X Y k : ℂ) : ℂ := (v0663 X Y k)+(v0666 X Y k)
theorem e0667_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0667) = v0667 X Y k := by
  simp only [e0667,v0667,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0663_eval,e0666_eval]
def e0668 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0667 e0156
def v0668 (X Y k : ℂ) : ℂ := (v0667 X Y k)*(v0156 X Y k)
theorem e0668_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0668) = v0668 X Y k := by
  simp only [e0668,v0668,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0667_eval,e0156_eval]
def e0669 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0668 e0006
def v0669 (X Y k : ℂ) : ℂ := (v0668 X Y k)*(v0006 X Y k)
theorem e0669_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0669) = v0669 X Y k := by
  simp only [e0669,v0669,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0668_eval,e0006_eval]
def e0670 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0572 e0417
def v0670 (X Y k : ℂ) : ℂ := (v0572 X Y k)*(v0417 X Y k)
theorem e0670_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0670) = v0670 X Y k := by
  simp only [e0670,v0670,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0572_eval,e0417_eval]
def e0671 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0580 e0415
def v0671 (X Y k : ℂ) : ℂ := (v0580 X Y k)*(v0415 X Y k)
theorem e0671_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0671) = v0671 X Y k := by
  simp only [e0671,v0671,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0580_eval,e0415_eval]

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
