import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions13
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def e0672 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0671 e0135
def v0672 (X Y k : ℂ) : ℂ := (v0671 X Y k)*(v0135 X Y k)
theorem e0672_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0672) = v0672 X Y k := by
  simp only [e0672,v0672,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0671_eval,e0135_eval]
def e0673 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0670 e0672
def v0673 (X Y k : ℂ) : ℂ := (v0670 X Y k)+(v0672 X Y k)
theorem e0673_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0673) = v0673 X Y k := by
  simp only [e0673,v0673,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0670_eval,e0672_eval]
def e0674 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0664
def v0674 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0664 X Y k)
theorem e0674_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0674) = v0674 X Y k := by
  simp only [e0674,v0674,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0664_eval]
def e0675 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0674 e0001
def v0675 (X Y k : ℂ) : ℂ := (v0674 X Y k)*(v0001 X Y k)
theorem e0675_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0675) = v0675 X Y k := by
  simp only [e0675,v0675,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0674_eval,e0001_eval]
def e0676 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0673 e0675
def v0676 (X Y k : ℂ) : ℂ := (v0673 X Y k)+(v0675 X Y k)
theorem e0676_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0676) = v0676 X Y k := by
  simp only [e0676,v0676,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0673_eval,e0675_eval]
def e0677 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0676 e0159
def v0677 (X Y k : ℂ) : ℂ := (v0676 X Y k)*(v0159 X Y k)
theorem e0677_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0677) = v0677 X Y k := by
  simp only [e0677,v0677,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0676_eval,e0159_eval]
def e0678 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0677
def v0678 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0677 X Y k)
theorem e0678_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0678) = v0678 X Y k := by
  simp only [e0678,v0678,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0677_eval]
def e0679 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0678 e0061
def v0679 (X Y k : ℂ) : ℂ := (v0678 X Y k)*(v0061 X Y k)
theorem e0679_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0679) = v0679 X Y k := by
  simp only [e0679,v0679,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0678_eval,e0061_eval]
def e0680 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0669 e0679
def v0680 (X Y k : ℂ) : ℂ := (v0669 X Y k)+(v0679 X Y k)
theorem e0680_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0680) = v0680 X Y k := by
  simp only [e0680,v0680,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0669_eval,e0679_eval]
def e0681 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0293 e0082
def v0681 (X Y k : ℂ) : ℂ := (v0293 X Y k)*(v0082 X Y k)
theorem e0681_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0681) = v0681 X Y k := by
  simp only [e0681,v0681,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0293_eval,e0082_eval]
def e0682 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0681 e0009
def v0682 (X Y k : ℂ) : ℂ := (v0681 X Y k)*(v0009 X Y k)
theorem e0682_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0682) = v0682 X Y k := by
  simp only [e0682,v0682,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0681_eval,e0009_eval]
def e0683 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0682 e0113
def v0683 (X Y k : ℂ) : ℂ := (v0682 X Y k)*(v0113 X Y k)
theorem e0683_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0683) = v0683 X Y k := by
  simp only [e0683,v0683,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0682_eval,e0113_eval]
def e0684 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0683 e0115
def v0684 (X Y k : ℂ) : ℂ := (v0683 X Y k)*(v0115 X Y k)
theorem e0684_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0684) = v0684 X Y k := by
  simp only [e0684,v0684,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0683_eval,e0115_eval]
def e0685 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0684 e0228
def v0685 (X Y k : ℂ) : ℂ := (v0684 X Y k)*(v0228 X Y k)
theorem e0685_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0685) = v0685 X Y k := by
  simp only [e0685,v0685,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0684_eval,e0228_eval]
def e0686 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0685 e0230
def v0686 (X Y k : ℂ) : ℂ := (v0685 X Y k)*(v0230 X Y k)
theorem e0686_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0686) = v0686 X Y k := by
  simp only [e0686,v0686,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0685_eval,e0230_eval]
def e0687 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0686 e0025
def v0687 (X Y k : ℂ) : ℂ := (v0686 X Y k)*(v0025 X Y k)
theorem e0687_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0687) = v0687 X Y k := by
  simp only [e0687,v0687,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0686_eval,e0025_eval]
def e0688 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0687 e0028
def v0688 (X Y k : ℂ) : ℂ := (v0687 X Y k)*(v0028 X Y k)
theorem e0688_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0688) = v0688 X Y k := by
  simp only [e0688,v0688,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0687_eval,e0028_eval]
def e0689 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0680 e0688
def v0689 (X Y k : ℂ) : ℂ := (v0680 X Y k)*(v0688 X Y k)
theorem e0689_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0689) = v0689 X Y k := by
  simp only [e0689,v0689,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0680_eval,e0688_eval]
def e0690 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0326 e0571
def v0690 (X Y k : ℂ) : ℂ := (v0326 X Y k)*(v0571 X Y k)
theorem e0690_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0690) = v0690 X Y k := by
  simp only [e0690,v0690,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0326_eval,e0571_eval]
def e0691 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0690 e0245
def v0691 (X Y k : ℂ) : ℂ := (v0690 X Y k)*(v0245 X Y k)
theorem e0691_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0691) = v0691 X Y k := by
  simp only [e0691,v0691,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0690_eval,e0245_eval]
def e0692 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0326 e0579
def v0692 (X Y k : ℂ) : ℂ := (v0326 X Y k)*(v0579 X Y k)
theorem e0692_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0692) = v0692 X Y k := by
  simp only [e0692,v0692,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0326_eval,e0579_eval]
def e0693 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0692 e0255
def v0693 (X Y k : ℂ) : ℂ := (v0692 X Y k)*(v0255 X Y k)
theorem e0693_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0693) = v0693 X Y k := by
  simp only [e0693,v0693,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0692_eval,e0255_eval]
def e0694 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0693
def v0694 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0693 X Y k)
theorem e0694_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0694) = v0694 X Y k := by
  simp only [e0694,v0694,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0693_eval]
def e0695 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0694 e0062
def v0695 (X Y k : ℂ) : ℂ := (v0694 X Y k)*(v0062 X Y k)
theorem e0695_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0695) = v0695 X Y k := by
  simp only [e0695,v0695,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0694_eval,e0062_eval]
def e0696 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0691 e0695
def v0696 (X Y k : ℂ) : ℂ := (v0691 X Y k)+(v0695 X Y k)
theorem e0696_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0696) = v0696 X Y k := by
  simp only [e0696,v0696,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0691_eval,e0695_eval]
def e0697 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0375 e0078
def v0697 (X Y k : ℂ) : ℂ := (v0375 X Y k)*(v0078 X Y k)
theorem e0697_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0697) = v0697 X Y k := by
  simp only [e0697,v0697,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0375_eval,e0078_eval]
def e0698 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0697 e0113
def v0698 (X Y k : ℂ) : ℂ := (v0697 X Y k)*(v0113 X Y k)
theorem e0698_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0698) = v0698 X Y k := by
  simp only [e0698,v0698,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0697_eval,e0113_eval]
def e0699 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0698 e0115
def v0699 (X Y k : ℂ) : ℂ := (v0698 X Y k)*(v0115 X Y k)
theorem e0699_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0699) = v0699 X Y k := by
  simp only [e0699,v0699,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0698_eval,e0115_eval]
def e0700 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0699 e0228
def v0700 (X Y k : ℂ) : ℂ := (v0699 X Y k)*(v0228 X Y k)
theorem e0700_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0700) = v0700 X Y k := by
  simp only [e0700,v0700,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0699_eval,e0228_eval]
def e0701 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0700 e0230
def v0701 (X Y k : ℂ) : ℂ := (v0700 X Y k)*(v0230 X Y k)
theorem e0701_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0701) = v0701 X Y k := by
  simp only [e0701,v0701,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0700_eval,e0230_eval]
def e0702 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0701 e0025
def v0702 (X Y k : ℂ) : ℂ := (v0701 X Y k)*(v0025 X Y k)
theorem e0702_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0702) = v0702 X Y k := by
  simp only [e0702,v0702,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0701_eval,e0025_eval]
def e0703 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0702 e0028
def v0703 (X Y k : ℂ) : ℂ := (v0702 X Y k)*(v0028 X Y k)
theorem e0703_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0703) = v0703 X Y k := by
  simp only [e0703,v0703,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0702_eval,e0028_eval]
def e0704 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0696 e0703
def v0704 (X Y k : ℂ) : ℂ := (v0696 X Y k)*(v0703 X Y k)
theorem e0704_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0704) = v0704 X Y k := by
  simp only [e0704,v0704,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0696_eval,e0703_eval]
def e0705 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0220 e0082
def v0705 (X Y k : ℂ) : ℂ := (v0220 X Y k)*(v0082 X Y k)
theorem e0705_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0705) = v0705 X Y k := by
  simp only [e0705,v0705,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0220_eval,e0082_eval]
def e0706 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0065 e0283
def v0706 (X Y k : ℂ) : ℂ := (v0065 X Y k)*(v0283 X Y k)
theorem e0706_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0706) = v0706 X Y k := by
  simp only [e0706,v0706,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0065_eval,e0283_eval]
def e0707 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0075
def v0707 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0075 X Y k)
theorem e0707_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0707) = v0707 X Y k := by
  simp only [e0707,v0707,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0075_eval]
def e0708 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0707 e0001
def v0708 (X Y k : ℂ) : ℂ := (v0707 X Y k)*(v0001 X Y k)
theorem e0708_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0708) = v0708 X Y k := by
  simp only [e0708,v0708,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0707_eval,e0001_eval]
def e0709 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0706 e0708
def v0709 (X Y k : ℂ) : ℂ := (v0706 X Y k)+(v0708 X Y k)
theorem e0709_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0709) = v0709 X Y k := by
  simp only [e0709,v0709,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0706_eval,e0708_eval]
def e0710 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0705 e0709
def v0710 (X Y k : ℂ) : ℂ := (v0705 X Y k)*(v0709 X Y k)
theorem e0710_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0710) = v0710 X Y k := by
  simp only [e0710,v0710,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0705_eval,e0709_eval]
def e0711 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0031 e0710
def v0711 (X Y k : ℂ) : ℂ := (v0031 X Y k)*(v0710 X Y k)
theorem e0711_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0711) = v0711 X Y k := by
  simp only [e0711,v0711,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0031_eval,e0710_eval]
def e0712 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0042 e0006
def v0712 (X Y k : ℂ) : ℂ := (v0042 X Y k)*(v0006 X Y k)
theorem e0712_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0712) = v0712 X Y k := by
  simp only [e0712,v0712,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0042_eval,e0006_eval]
def e0713 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0057
def v0713 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0057 X Y k)
theorem e0713_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0713) = v0713 X Y k := by
  simp only [e0713,v0713,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0057_eval]
def e0714 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0713 e0001
def v0714 (X Y k : ℂ) : ℂ := (v0713 X Y k)*(v0001 X Y k)
theorem e0714_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0714) = v0714 X Y k := by
  simp only [e0714,v0714,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0713_eval,e0001_eval]
def e0715 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0712 e0714
def v0715 (X Y k : ℂ) : ℂ := (v0712 X Y k)+(v0714 X Y k)
theorem e0715_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0715) = v0715 X Y k := by
  simp only [e0715,v0715,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0712_eval,e0714_eval]
def e0716 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0220 e0715
def v0716 (X Y k : ℂ) : ℂ := (v0220 X Y k)*(v0715 X Y k)
theorem e0716_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0716) = v0716 X Y k := by
  simp only [e0716,v0716,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0220_eval,e0715_eval]
def e0717 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0711 e0716
def v0717 (X Y k : ℂ) : ℂ := (v0711 X Y k)*(v0716 X Y k)
theorem e0717_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0717) = v0717 X Y k := by
  simp only [e0717,v0717,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0711_eval,e0716_eval]
def e0718 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0705 e0075
def v0718 (X Y k : ℂ) : ℂ := (v0705 X Y k)*(v0075 X Y k)
theorem e0718_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0718) = v0718 X Y k := by
  simp only [e0718,v0718,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0705_eval,e0075_eval]
def e0719 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e0718
def v0719 (X Y k : ℂ) : ℂ := -(v0718 X Y k)
theorem e0719_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0719) = v0719 X Y k := by
  simp only [e0719,v0719,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSplitReduction20261003.Coefficients.eval_neg,e0718_eval]

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
