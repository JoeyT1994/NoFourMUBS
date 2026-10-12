import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions15
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def e0768 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0767 e0228
def v0768 (X Y k : ℂ) : ℂ := (v0767 X Y k)*(v0228 X Y k)
theorem e0768_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0768) = v0768 X Y k := by
  simp only [e0768,v0768,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0767_eval,e0228_eval]
def e0769 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0768 e0230
def v0769 (X Y k : ℂ) : ℂ := (v0768 X Y k)*(v0230 X Y k)
theorem e0769_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0769) = v0769 X Y k := by
  simp only [e0769,v0769,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0768_eval,e0230_eval]
def e0770 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0763 e0769
def v0770 (X Y k : ℂ) : ℂ := (v0763 X Y k)*(v0769 X Y k)
theorem e0770_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0770) = v0770 X Y k := by
  simp only [e0770,v0770,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0763_eval,e0769_eval]
def e0771 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0710 e0195
def v0771 (X Y k : ℂ) : ℂ := (v0710 X Y k)*(v0195 X Y k)
theorem e0771_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0771) = v0771 X Y k := by
  simp only [e0771,v0771,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0710_eval,e0195_eval]
def e0772 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0719 e0200
def v0772 (X Y k : ℂ) : ℂ := (v0719 X Y k)*(v0200 X Y k)
theorem e0772_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0772) = v0772 X Y k := by
  simp only [e0772,v0772,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0719_eval,e0200_eval]
def e0773 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0772
def v0773 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0772 X Y k)
theorem e0773_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0773) = v0773 X Y k := by
  simp only [e0773,v0773,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0772_eval]
def e0774 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0773 e0258
def v0774 (X Y k : ℂ) : ℂ := (v0773 X Y k)*(v0258 X Y k)
theorem e0774_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0774) = v0774 X Y k := by
  simp only [e0774,v0774,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0773_eval,e0258_eval]
def e0775 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0771 e0774
def v0775 (X Y k : ℂ) : ℂ := (v0771 X Y k)+(v0774 X Y k)
theorem e0775_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0775) = v0775 X Y k := by
  simp only [e0775,v0775,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0771_eval,e0774_eval]
def e0776 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0775 e0130
def v0776 (X Y k : ℂ) : ℂ := (v0775 X Y k)*(v0130 X Y k)
theorem e0776_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0776) = v0776 X Y k := by
  simp only [e0776,v0776,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0775_eval,e0130_eval]
def e0777 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0776 e0006
def v0777 (X Y k : ℂ) : ℂ := (v0776 X Y k)*(v0006 X Y k)
theorem e0777_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0777) = v0777 X Y k := by
  simp only [e0777,v0777,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0776_eval,e0006_eval]
def e0778 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0710 e0200
def v0778 (X Y k : ℂ) : ℂ := (v0710 X Y k)*(v0200 X Y k)
theorem e0778_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0778) = v0778 X Y k := by
  simp only [e0778,v0778,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0710_eval,e0200_eval]
def e0779 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0719 e0195
def v0779 (X Y k : ℂ) : ℂ := (v0719 X Y k)*(v0195 X Y k)
theorem e0779_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0779) = v0779 X Y k := by
  simp only [e0779,v0779,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0719_eval,e0195_eval]
def e0780 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0779 e0250
def v0780 (X Y k : ℂ) : ℂ := (v0779 X Y k)*(v0250 X Y k)
theorem e0780_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0780) = v0780 X Y k := by
  simp only [e0780,v0780,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0779_eval,e0250_eval]
def e0781 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0778 e0780
def v0781 (X Y k : ℂ) : ℂ := (v0778 X Y k)+(v0780 X Y k)
theorem e0781_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0781) = v0781 X Y k := by
  simp only [e0781,v0781,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0778_eval,e0780_eval]
def e0782 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0772
def v0782 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0772 X Y k)
theorem e0782_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0782) = v0782 X Y k := by
  simp only [e0782,v0782,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0772_eval]
def e0783 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0782 e0001
def v0783 (X Y k : ℂ) : ℂ := (v0782 X Y k)*(v0001 X Y k)
theorem e0783_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0783) = v0783 X Y k := by
  simp only [e0783,v0783,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0782_eval,e0001_eval]
def e0784 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0781 e0783
def v0784 (X Y k : ℂ) : ℂ := (v0781 X Y k)+(v0783 X Y k)
theorem e0784_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0784) = v0784 X Y k := by
  simp only [e0784,v0784,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0781_eval,e0783_eval]
def e0785 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0784 e0141
def v0785 (X Y k : ℂ) : ℂ := (v0784 X Y k)*(v0141 X Y k)
theorem e0785_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0785) = v0785 X Y k := by
  simp only [e0785,v0785,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0784_eval,e0141_eval]
def e0786 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0785
def v0786 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0785 X Y k)
theorem e0786_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0786) = v0786 X Y k := by
  simp only [e0786,v0786,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0785_eval]
def e0787 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0786 e0009
def v0787 (X Y k : ℂ) : ℂ := (v0786 X Y k)*(v0009 X Y k)
theorem e0787_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0787) = v0787 X Y k := by
  simp only [e0787,v0787,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0786_eval,e0009_eval]
def e0788 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0777 e0787
def v0788 (X Y k : ℂ) : ℂ := (v0777 X Y k)+(v0787 X Y k)
theorem e0788_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0788) = v0788 X Y k := by
  simp only [e0788,v0788,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0777_eval,e0787_eval]
def e0789 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0146 e0032
def v0789 (X Y k : ℂ) : ℂ := (v0146 X Y k)*(v0032 X Y k)
theorem e0789_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0789) = v0789 X Y k := by
  simp only [e0789,v0789,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0146_eval,e0032_eval]
def e0790 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0789 e0110
def v0790 (X Y k : ℂ) : ℂ := (v0789 X Y k)*(v0110 X Y k)
theorem e0790_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0790) = v0790 X Y k := by
  simp only [e0790,v0790,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0789_eval,e0110_eval]
def e0791 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e0009 8
def v0791 (X Y k : ℂ) : ℂ := (v0009 X Y k)^8
theorem e0791_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0791) = v0791 X Y k := by
  simp only [e0791,v0791,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,e0009_eval]
def e0792 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0790 e0791
def v0792 (X Y k : ℂ) : ℂ := (v0790 X Y k)*(v0791 X Y k)
theorem e0792_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0792) = v0792 X Y k := by
  simp only [e0792,v0792,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0790_eval,e0791_eval]
def e0793 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0792 e0113
def v0793 (X Y k : ℂ) : ℂ := (v0792 X Y k)*(v0113 X Y k)
theorem e0793_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0793) = v0793 X Y k := by
  simp only [e0793,v0793,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0792_eval,e0113_eval]
def e0794 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0793 e0115
def v0794 (X Y k : ℂ) : ℂ := (v0793 X Y k)*(v0115 X Y k)
theorem e0794_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0794) = v0794 X Y k := by
  simp only [e0794,v0794,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0793_eval,e0115_eval]
def e0795 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0794 e0228
def v0795 (X Y k : ℂ) : ℂ := (v0794 X Y k)*(v0228 X Y k)
theorem e0795_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0795) = v0795 X Y k := by
  simp only [e0795,v0795,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0794_eval,e0228_eval]
def e0796 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0795 e0230
def v0796 (X Y k : ℂ) : ℂ := (v0795 X Y k)*(v0230 X Y k)
theorem e0796_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0796) = v0796 X Y k := by
  simp only [e0796,v0796,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0795_eval,e0230_eval]
def e0797 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0788 e0796
def v0797 (X Y k : ℂ) : ℂ := (v0788 X Y k)*(v0796 X Y k)
theorem e0797_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0797) = v0797 X Y k := by
  simp only [e0797,v0797,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0788_eval,e0796_eval]
def e0798 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0154 e0710
def v0798 (X Y k : ℂ) : ℂ := (v0154 X Y k)*(v0710 X Y k)
theorem e0798_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0798) = v0798 X Y k := by
  simp only [e0798,v0798,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0154_eval,e0710_eval]
def e0799 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0798 e0272
def v0799 (X Y k : ℂ) : ℂ := (v0798 X Y k)*(v0272 X Y k)
theorem e0799_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0799) = v0799 X Y k := by
  simp only [e0799,v0799,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0798_eval,e0272_eval]
def e0800 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0154 e0719
def v0800 (X Y k : ℂ) : ℂ := (v0154 X Y k)*(v0719 X Y k)
theorem e0800_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0800) = v0800 X Y k := by
  simp only [e0800,v0800,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0154_eval,e0719_eval]
def e0801 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0800 e0274
def v0801 (X Y k : ℂ) : ℂ := (v0800 X Y k)*(v0274 X Y k)
theorem e0801_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0801) = v0801 X Y k := by
  simp only [e0801,v0801,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0800_eval,e0274_eval]
def e0802 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0801
def v0802 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0801 X Y k)
theorem e0802_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0802) = v0802 X Y k := by
  simp only [e0802,v0802,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0801_eval]
def e0803 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0802 e0541
def v0803 (X Y k : ℂ) : ℂ := (v0802 X Y k)*(v0541 X Y k)
theorem e0803_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0803) = v0803 X Y k := by
  simp only [e0803,v0803,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0802_eval,e0541_eval]
def e0804 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0799 e0803
def v0804 (X Y k : ℂ) : ℂ := (v0799 X Y k)+(v0803 X Y k)
theorem e0804_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0804) = v0804 X Y k := by
  simp only [e0804,v0804,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0799_eval,e0803_eval]
def e0805 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0804 e0272
def v0805 (X Y k : ℂ) : ℂ := (v0804 X Y k)*(v0272 X Y k)
theorem e0805_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0805) = v0805 X Y k := by
  simp only [e0805,v0805,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0804_eval,e0272_eval]
def e0806 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0805 e0006
def v0806 (X Y k : ℂ) : ℂ := (v0805 X Y k)*(v0006 X Y k)
theorem e0806_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0806) = v0806 X Y k := by
  simp only [e0806,v0806,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0805_eval,e0006_eval]
def e0807 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0798 e0274
def v0807 (X Y k : ℂ) : ℂ := (v0798 X Y k)*(v0274 X Y k)
theorem e0807_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0807) = v0807 X Y k := by
  simp only [e0807,v0807,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0798_eval,e0274_eval]
def e0808 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0800 e0272
def v0808 (X Y k : ℂ) : ℂ := (v0800 X Y k)*(v0272 X Y k)
theorem e0808_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0808) = v0808 X Y k := by
  simp only [e0808,v0808,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0800_eval,e0272_eval]
def e0809 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0808 e0188
def v0809 (X Y k : ℂ) : ℂ := (v0808 X Y k)*(v0188 X Y k)
theorem e0809_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0809) = v0809 X Y k := by
  simp only [e0809,v0809,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0808_eval,e0188_eval]
def e0810 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0807 e0809
def v0810 (X Y k : ℂ) : ℂ := (v0807 X Y k)+(v0809 X Y k)
theorem e0810_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0810) = v0810 X Y k := by
  simp only [e0810,v0810,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0807_eval,e0809_eval]
def e0811 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0801
def v0811 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0801 X Y k)
theorem e0811_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0811) = v0811 X Y k := by
  simp only [e0811,v0811,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0801_eval]
def e0812 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0811 e0001
def v0812 (X Y k : ℂ) : ℂ := (v0811 X Y k)*(v0001 X Y k)
theorem e0812_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0812) = v0812 X Y k := by
  simp only [e0812,v0812,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0811_eval,e0001_eval]
def e0813 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0810 e0812
def v0813 (X Y k : ℂ) : ℂ := (v0810 X Y k)+(v0812 X Y k)
theorem e0813_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0813) = v0813 X Y k := by
  simp only [e0813,v0813,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0810_eval,e0812_eval]
def e0814 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0813 e0274
def v0814 (X Y k : ℂ) : ℂ := (v0813 X Y k)*(v0274 X Y k)
theorem e0814_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0814) = v0814 X Y k := by
  simp only [e0814,v0814,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0813_eval,e0274_eval]
def e0815 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0814
def v0815 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0814 X Y k)
theorem e0815_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0815) = v0815 X Y k := by
  simp only [e0815,v0815,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0814_eval]

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
