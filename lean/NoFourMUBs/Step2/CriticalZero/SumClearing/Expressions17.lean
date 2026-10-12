import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions16
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def e0816 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0815 e0009
def v0816 (X Y k : ℂ) : ℂ := (v0815 X Y k)*(v0009 X Y k)
theorem e0816_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0816) = v0816 X Y k := by
  simp only [e0816,v0816,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0815_eval,e0009_eval]
def e0817 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0806 e0816
def v0817 (X Y k : ℂ) : ℂ := (v0806 X Y k)+(v0816 X Y k)
theorem e0817_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0817) = v0817 X Y k := by
  simp only [e0817,v0817,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0806_eval,e0816_eval]
def e0818 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0789 e0222
def v0818 (X Y k : ℂ) : ℂ := (v0789 X Y k)*(v0222 X Y k)
theorem e0818_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0818) = v0818 X Y k := by
  simp only [e0818,v0818,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0789_eval,e0222_eval]
def e0819 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0818 e0791
def v0819 (X Y k : ℂ) : ℂ := (v0818 X Y k)*(v0791 X Y k)
theorem e0819_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0819) = v0819 X Y k := by
  simp only [e0819,v0819,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0818_eval,e0791_eval]
def e0820 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0819 e0177
def v0820 (X Y k : ℂ) : ℂ := (v0819 X Y k)*(v0177 X Y k)
theorem e0820_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0820) = v0820 X Y k := by
  simp only [e0820,v0820,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0819_eval,e0177_eval]
def e0821 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0820 e0179
def v0821 (X Y k : ℂ) : ℂ := (v0820 X Y k)*(v0179 X Y k)
theorem e0821_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0821) = v0821 X Y k := by
  simp only [e0821,v0821,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0820_eval,e0179_eval]
def e0822 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e0018 4
def v0822 (X Y k : ℂ) : ℂ := (v0018 X Y k)^4
theorem e0822_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0822) = v0822 X Y k := by
  simp only [e0822,v0822,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,e0018_eval]
def e0823 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0821 e0822
def v0823 (X Y k : ℂ) : ℂ := (v0821 X Y k)*(v0822 X Y k)
theorem e0823_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0823) = v0823 X Y k := by
  simp only [e0823,v0823,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0821_eval,e0822_eval]
def e0824 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e0021 4
def v0824 (X Y k : ℂ) : ℂ := (v0021 X Y k)^4
theorem e0824_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0824) = v0824 X Y k := by
  simp only [e0824,v0824,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,e0021_eval]
def e0825 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0823 e0824
def v0825 (X Y k : ℂ) : ℂ := (v0823 X Y k)*(v0824 X Y k)
theorem e0825_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0825) = v0825 X Y k := by
  simp only [e0825,v0825,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0823_eval,e0824_eval]
def e0826 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0817 e0825
def v0826 (X Y k : ℂ) : ℂ := (v0817 X Y k)*(v0825 X Y k)
theorem e0826_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0826) = v0826 X Y k := by
  simp only [e0826,v0826,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0817_eval,e0825_eval]
def e0827 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0220 e0006
def v0827 (X Y k : ℂ) : ℂ := (v0220 X Y k)*(v0006 X Y k)
theorem e0827_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0827) = v0827 X Y k := by
  simp only [e0827,v0827,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0220_eval,e0006_eval]
def e0828 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0094 e0188
def v0828 (X Y k : ℂ) : ℂ := (v0094 X Y k)*(v0188 X Y k)
theorem e0828_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0828) = v0828 X Y k := by
  simp only [e0828,v0828,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0094_eval,e0188_eval]
def e0829 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0105
def v0829 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0105 X Y k)
theorem e0829_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0829) = v0829 X Y k := by
  simp only [e0829,v0829,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0105_eval]
def e0830 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0828 e0829
def v0830 (X Y k : ℂ) : ℂ := (v0828 X Y k)+(v0829 X Y k)
theorem e0830_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0830) = v0830 X Y k := by
  simp only [e0830,v0830,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0828_eval,e0829_eval]
def e0831 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0827 e0830
def v0831 (X Y k : ℂ) : ℂ := (v0827 X Y k)*(v0830 X Y k)
theorem e0831_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0831) = v0831 X Y k := by
  simp only [e0831,v0831,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0827_eval,e0830_eval]
def e0832 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0001 e0831
def v0832 (X Y k : ℂ) : ℂ := (v0001 X Y k)*(v0831 X Y k)
theorem e0832_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0832) = v0832 X Y k := by
  simp only [e0832,v0832,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0001_eval,e0831_eval]
def e0833 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0086 e0135
def v0833 (X Y k : ℂ) : ℂ := (v0086 X Y k)*(v0135 X Y k)
theorem e0833_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0833) = v0833 X Y k := by
  simp only [e0833,v0833,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0086_eval,e0135_eval]
def e0834 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0089
def v0834 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0089 X Y k)
theorem e0834_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0834) = v0834 X Y k := by
  simp only [e0834,v0834,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0089_eval]
def e0835 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0833 e0834
def v0835 (X Y k : ℂ) : ℂ := (v0833 X Y k)+(v0834 X Y k)
theorem e0835_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0835) = v0835 X Y k := by
  simp only [e0835,v0835,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0833_eval,e0834_eval]
def e0836 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0220 e0835
def v0836 (X Y k : ℂ) : ℂ := (v0220 X Y k)*(v0835 X Y k)
theorem e0836_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0836) = v0836 X Y k := by
  simp only [e0836,v0836,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0220_eval,e0835_eval]
def e0837 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0832 e0836
def v0837 (X Y k : ℂ) : ℂ := (v0832 X Y k)*(v0836 X Y k)
theorem e0837_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0837) = v0837 X Y k := by
  simp only [e0837,v0837,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0832_eval,e0836_eval]
def e0838 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0827 e0105
def v0838 (X Y k : ℂ) : ℂ := (v0827 X Y k)*(v0105 X Y k)
theorem e0838_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0838) = v0838 X Y k := by
  simp only [e0838,v0838,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0827_eval,e0105_eval]
def e0839 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e0838
def v0839 (X Y k : ℂ) : ℂ := -(v0838 X Y k)
theorem e0839_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0839) = v0839 X Y k := by
  simp only [e0839,v0839,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSplitReduction20261003.Coefficients.eval_neg,e0838_eval]
def e0840 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0001 e0839
def v0840 (X Y k : ℂ) : ℂ := (v0001 X Y k)*(v0839 X Y k)
theorem e0840_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0840) = v0840 X Y k := by
  simp only [e0840,v0840,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0001_eval,e0839_eval]
def e0841 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0220 e0089
def v0841 (X Y k : ℂ) : ℂ := (v0220 X Y k)*(v0089 X Y k)
theorem e0841_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0841) = v0841 X Y k := by
  simp only [e0841,v0841,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0220_eval,e0089_eval]
def e0842 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e0841
def v0842 (X Y k : ℂ) : ℂ := -(v0841 X Y k)
theorem e0842_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0842) = v0842 X Y k := by
  simp only [e0842,v0842,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSplitReduction20261003.Coefficients.eval_neg,e0841_eval]
def e0843 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0840 e0842
def v0843 (X Y k : ℂ) : ℂ := (v0840 X Y k)*(v0842 X Y k)
theorem e0843_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0843) = v0843 X Y k := by
  simp only [e0843,v0843,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0840_eval,e0842_eval]
def e0844 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0843
def v0844 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0843 X Y k)
theorem e0844_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0844) = v0844 X Y k := by
  simp only [e0844,v0844,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0843_eval]
def e0845 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0844 e0475
def v0845 (X Y k : ℂ) : ℂ := (v0844 X Y k)*(v0475 X Y k)
theorem e0845_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0845) = v0845 X Y k := by
  simp only [e0845,v0845,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0844_eval,e0475_eval]
def e0846 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0837 e0845
def v0846 (X Y k : ℂ) : ℂ := (v0837 X Y k)+(v0845 X Y k)
theorem e0846_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0846) = v0846 X Y k := by
  simp only [e0846,v0846,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0837_eval,e0845_eval]
def e0847 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0846 e0033
def v0847 (X Y k : ℂ) : ℂ := (v0846 X Y k)*(v0033 X Y k)
theorem e0847_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0847) = v0847 X Y k := by
  simp only [e0847,v0847,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0846_eval,e0033_eval]
def e0848 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0832 e0842
def v0848 (X Y k : ℂ) : ℂ := (v0832 X Y k)*(v0842 X Y k)
theorem e0848_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0848) = v0848 X Y k := by
  simp only [e0848,v0848,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0832_eval,e0842_eval]
def e0849 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0840 e0836
def v0849 (X Y k : ℂ) : ℂ := (v0840 X Y k)*(v0836 X Y k)
theorem e0849_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0849) = v0849 X Y k := by
  simp only [e0849,v0849,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0840_eval,e0836_eval]
def e0850 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0848 e0849
def v0850 (X Y k : ℂ) : ℂ := (v0848 X Y k)+(v0849 X Y k)
theorem e0850_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0850) = v0850 X Y k := by
  simp only [e0850,v0850,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0848_eval,e0849_eval]
def e0851 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0843
def v0851 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0843 X Y k)
theorem e0851_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0851) = v0851 X Y k := by
  simp only [e0851,v0851,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0843_eval]
def e0852 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0850 e0851
def v0852 (X Y k : ℂ) : ℂ := (v0850 X Y k)+(v0851 X Y k)
theorem e0852_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0852) = v0852 X Y k := by
  simp only [e0852,v0852,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0850_eval,e0851_eval]
def e0853 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0852 e0036
def v0853 (X Y k : ℂ) : ℂ := (v0852 X Y k)*(v0036 X Y k)
theorem e0853_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0853) = v0853 X Y k := by
  simp only [e0853,v0853,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0852_eval,e0036_eval]
def e0854 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0853
def v0854 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0853 X Y k)
theorem e0854_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0854) = v0854 X Y k := by
  simp only [e0854,v0854,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0853_eval]
def e0855 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0854 e0127
def v0855 (X Y k : ℂ) : ℂ := (v0854 X Y k)*(v0127 X Y k)
theorem e0855_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0855) = v0855 X Y k := by
  simp only [e0855,v0855,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0854_eval,e0127_eval]
def e0856 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0847 e0855
def v0856 (X Y k : ℂ) : ℂ := (v0847 X Y k)+(v0855 X Y k)
theorem e0856_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0856) = v0856 X Y k := by
  simp only [e0856,v0856,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0847_eval,e0855_eval]
def e0857 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0060 e0082
def v0857 (X Y k : ℂ) : ℂ := (v0060 X Y k)*(v0082 X Y k)
theorem e0857_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0857) = v0857 X Y k := by
  simp only [e0857,v0857,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0060_eval,e0082_eval]
def e0858 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0857 e0113
def v0858 (X Y k : ℂ) : ℂ := (v0857 X Y k)*(v0113 X Y k)
theorem e0858_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0858) = v0858 X Y k := by
  simp only [e0858,v0858,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0857_eval,e0113_eval]
def e0859 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0858 e0115
def v0859 (X Y k : ℂ) : ℂ := (v0858 X Y k)*(v0115 X Y k)
theorem e0859_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0859) = v0859 X Y k := by
  simp only [e0859,v0859,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0858_eval,e0115_eval]
def e0860 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0859 e0117
def v0860 (X Y k : ℂ) : ℂ := (v0859 X Y k)*(v0117 X Y k)
theorem e0860_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0860) = v0860 X Y k := by
  simp only [e0860,v0860,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0859_eval,e0117_eval]
def e0861 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0860 e0119
def v0861 (X Y k : ℂ) : ℂ := (v0860 X Y k)*(v0119 X Y k)
theorem e0861_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0861) = v0861 X Y k := by
  simp only [e0861,v0861,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0860_eval,e0119_eval]
def e0862 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0856 e0861
def v0862 (X Y k : ℂ) : ℂ := (v0856 X Y k)*(v0861 X Y k)
theorem e0862_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0862) = v0862 X Y k := by
  simp only [e0862,v0862,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0856_eval,e0861_eval]
def e0863 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0154 e0831
def v0863 (X Y k : ℂ) : ℂ := (v0154 X Y k)*(v0831 X Y k)
theorem e0863_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0863) = v0863 X Y k := by
  simp only [e0863,v0863,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0154_eval,e0831_eval]

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
