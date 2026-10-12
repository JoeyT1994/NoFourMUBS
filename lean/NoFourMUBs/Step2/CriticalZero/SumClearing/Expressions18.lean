import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions17
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def e0864 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0415 e0006
def v0864 (X Y k : ℂ) : ℂ := (v0415 X Y k)*(v0006 X Y k)
theorem e0864_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0864) = v0864 X Y k := by
  simp only [e0864,v0864,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0415_eval,e0006_eval]
def e0865 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0417
def v0865 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0417 X Y k)
theorem e0865_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0865) = v0865 X Y k := by
  simp only [e0865,v0865,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0417_eval]
def e0866 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0864 e0865
def v0866 (X Y k : ℂ) : ℂ := (v0864 X Y k)+(v0865 X Y k)
theorem e0866_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0866) = v0866 X Y k := by
  simp only [e0866,v0866,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0864_eval,e0865_eval]
def e0867 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0003 e0866
def v0867 (X Y k : ℂ) : ℂ := (v0003 X Y k)*(v0866 X Y k)
theorem e0867_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0867) = v0867 X Y k := by
  simp only [e0867,v0867,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0003_eval,e0866_eval]
def e0868 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0863 e0867
def v0868 (X Y k : ℂ) : ℂ := (v0863 X Y k)*(v0867 X Y k)
theorem e0868_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0868) = v0868 X Y k := by
  simp only [e0868,v0868,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0863_eval,e0867_eval]
def e0869 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0154 e0839
def v0869 (X Y k : ℂ) : ℂ := (v0154 X Y k)*(v0839 X Y k)
theorem e0869_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0869) = v0869 X Y k := by
  simp only [e0869,v0869,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0154_eval,e0839_eval]
def e0870 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0003 e0417
def v0870 (X Y k : ℂ) : ℂ := (v0003 X Y k)*(v0417 X Y k)
theorem e0870_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0870) = v0870 X Y k := by
  simp only [e0870,v0870,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0003_eval,e0417_eval]
def e0871 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e0870
def v0871 (X Y k : ℂ) : ℂ := -(v0870 X Y k)
theorem e0871_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0871) = v0871 X Y k := by
  simp only [e0871,v0871,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSplitReduction20261003.Coefficients.eval_neg,e0870_eval]
def e0872 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0869 e0871
def v0872 (X Y k : ℂ) : ℂ := (v0869 X Y k)*(v0871 X Y k)
theorem e0872_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0872) = v0872 X Y k := by
  simp only [e0872,v0872,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0869_eval,e0871_eval]
def e0873 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0872
def v0873 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0872 X Y k)
theorem e0873_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0873) = v0873 X Y k := by
  simp only [e0873,v0873,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0872_eval]
def e0874 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0873 e0475
def v0874 (X Y k : ℂ) : ℂ := (v0873 X Y k)*(v0475 X Y k)
theorem e0874_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0874) = v0874 X Y k := by
  simp only [e0874,v0874,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0873_eval,e0475_eval]
def e0875 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0868 e0874
def v0875 (X Y k : ℂ) : ℂ := (v0868 X Y k)+(v0874 X Y k)
theorem e0875_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0875) = v0875 X Y k := by
  simp only [e0875,v0875,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0868_eval,e0874_eval]
def e0876 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0875 e0346
def v0876 (X Y k : ℂ) : ℂ := (v0875 X Y k)*(v0346 X Y k)
theorem e0876_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0876) = v0876 X Y k := by
  simp only [e0876,v0876,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0875_eval,e0346_eval]
def e0877 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0863 e0871
def v0877 (X Y k : ℂ) : ℂ := (v0863 X Y k)*(v0871 X Y k)
theorem e0877_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0877) = v0877 X Y k := by
  simp only [e0877,v0877,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0863_eval,e0871_eval]
def e0878 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0869 e0867
def v0878 (X Y k : ℂ) : ℂ := (v0869 X Y k)*(v0867 X Y k)
theorem e0878_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0878) = v0878 X Y k := by
  simp only [e0878,v0878,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0869_eval,e0867_eval]
def e0879 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0877 e0878
def v0879 (X Y k : ℂ) : ℂ := (v0877 X Y k)+(v0878 X Y k)
theorem e0879_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0879) = v0879 X Y k := by
  simp only [e0879,v0879,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0877_eval,e0878_eval]
def e0880 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0872
def v0880 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0872 X Y k)
theorem e0880_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0880) = v0880 X Y k := by
  simp only [e0880,v0880,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0872_eval]
def e0881 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0879 e0880
def v0881 (X Y k : ℂ) : ℂ := (v0879 X Y k)+(v0880 X Y k)
theorem e0881_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0881) = v0881 X Y k := by
  simp only [e0881,v0881,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0879_eval,e0880_eval]
def e0882 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0881 e0348
def v0882 (X Y k : ℂ) : ℂ := (v0881 X Y k)*(v0348 X Y k)
theorem e0882_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0882) = v0882 X Y k := by
  simp only [e0882,v0882,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0881_eval,e0348_eval]
def e0883 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0882
def v0883 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0882 X Y k)
theorem e0883_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0883) = v0883 X Y k := by
  simp only [e0883,v0883,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0882_eval]
def e0884 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0883 e0127
def v0884 (X Y k : ℂ) : ℂ := (v0883 X Y k)*(v0127 X Y k)
theorem e0884_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0884) = v0884 X Y k := by
  simp only [e0884,v0884,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0883_eval,e0127_eval]
def e0885 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0876 e0884
def v0885 (X Y k : ℂ) : ℂ := (v0876 X Y k)+(v0884 X Y k)
theorem e0885_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0885) = v0885 X Y k := by
  simp only [e0885,v0885,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0876_eval,e0884_eval]
def e0886 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0377 e0177
def v0886 (X Y k : ℂ) : ℂ := (v0377 X Y k)*(v0177 X Y k)
theorem e0886_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0886) = v0886 X Y k := by
  simp only [e0886,v0886,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0377_eval,e0177_eval]
def e0887 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0886 e0179
def v0887 (X Y k : ℂ) : ℂ := (v0886 X Y k)*(v0179 X Y k)
theorem e0887_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0887) = v0887 X Y k := by
  simp only [e0887,v0887,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0886_eval,e0179_eval]
def e0888 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0887 e0228
def v0888 (X Y k : ℂ) : ℂ := (v0887 X Y k)*(v0228 X Y k)
theorem e0888_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0888) = v0888 X Y k := by
  simp only [e0888,v0888,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0887_eval,e0228_eval]
def e0889 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0888 e0230
def v0889 (X Y k : ℂ) : ℂ := (v0888 X Y k)*(v0230 X Y k)
theorem e0889_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0889) = v0889 X Y k := by
  simp only [e0889,v0889,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0888_eval,e0230_eval]
def e0890 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0889 e0117
def v0890 (X Y k : ℂ) : ℂ := (v0889 X Y k)*(v0117 X Y k)
theorem e0890_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0890) = v0890 X Y k := by
  simp only [e0890,v0890,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0889_eval,e0117_eval]
def e0891 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0890 e0119
def v0891 (X Y k : ℂ) : ℂ := (v0890 X Y k)*(v0119 X Y k)
theorem e0891_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0891) = v0891 X Y k := by
  simp only [e0891,v0891,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0890_eval,e0119_eval]
def e0892 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0885 e0891
def v0892 (X Y k : ℂ) : ℂ := (v0885 X Y k)*(v0891 X Y k)
theorem e0892_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0892) = v0892 X Y k := by
  simp only [e0892,v0892,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0885_eval,e0891_eval]
def e0893 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0863 e0236
def v0893 (X Y k : ℂ) : ℂ := (v0863 X Y k)*(v0236 X Y k)
theorem e0893_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0893) = v0893 X Y k := by
  simp only [e0893,v0893,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0863_eval,e0236_eval]
def e0894 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0893 e0001
def v0894 (X Y k : ℂ) : ℂ := (v0893 X Y k)*(v0001 X Y k)
theorem e0894_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0894) = v0894 X Y k := by
  simp only [e0894,v0894,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0893_eval,e0001_eval]
def e0895 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0869 e0240
def v0895 (X Y k : ℂ) : ℂ := (v0869 X Y k)*(v0240 X Y k)
theorem e0895_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0895) = v0895 X Y k := by
  simp only [e0895,v0895,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0869_eval,e0240_eval]
def e0896 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0895
def v0896 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0895 X Y k)
theorem e0896_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0896) = v0896 X Y k := by
  simp only [e0896,v0896,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0895_eval]
def e0897 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0896 e0009
def v0897 (X Y k : ℂ) : ℂ := (v0896 X Y k)*(v0009 X Y k)
theorem e0897_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0897) = v0897 X Y k := by
  simp only [e0897,v0897,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0896_eval,e0009_eval]
def e0898 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0894 e0897
def v0898 (X Y k : ℂ) : ℂ := (v0894 X Y k)+(v0897 X Y k)
theorem e0898_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0898) = v0898 X Y k := by
  simp only [e0898,v0898,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0894_eval,e0897_eval]
def e0899 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0898 e0122
def v0899 (X Y k : ℂ) : ℂ := (v0898 X Y k)*(v0122 X Y k)
theorem e0899_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0899) = v0899 X Y k := by
  simp only [e0899,v0899,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0898_eval,e0122_eval]
def e0900 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0899 e0006
def v0900 (X Y k : ℂ) : ℂ := (v0899 X Y k)*(v0006 X Y k)
theorem e0900_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0900) = v0900 X Y k := by
  simp only [e0900,v0900,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0899_eval,e0006_eval]
def e0901 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0863 e0240
def v0901 (X Y k : ℂ) : ℂ := (v0863 X Y k)*(v0240 X Y k)
theorem e0901_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0901) = v0901 X Y k := by
  simp only [e0901,v0901,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0863_eval,e0240_eval]
def e0902 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0869 e0236
def v0902 (X Y k : ℂ) : ℂ := (v0869 X Y k)*(v0236 X Y k)
theorem e0902_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0902) = v0902 X Y k := by
  simp only [e0902,v0902,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0869_eval,e0236_eval]
def e0903 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0902 e0250
def v0903 (X Y k : ℂ) : ℂ := (v0902 X Y k)*(v0250 X Y k)
theorem e0903_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0903) = v0903 X Y k := by
  simp only [e0903,v0903,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0902_eval,e0250_eval]
def e0904 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0901 e0903
def v0904 (X Y k : ℂ) : ℂ := (v0901 X Y k)+(v0903 X Y k)
theorem e0904_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0904) = v0904 X Y k := by
  simp only [e0904,v0904,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0901_eval,e0903_eval]
def e0905 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0895
def v0905 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0895 X Y k)
theorem e0905_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0905) = v0905 X Y k := by
  simp only [e0905,v0905,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0895_eval]
def e0906 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0904 e0905
def v0906 (X Y k : ℂ) : ℂ := (v0904 X Y k)+(v0905 X Y k)
theorem e0906_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0906) = v0906 X Y k := by
  simp only [e0906,v0906,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0904_eval,e0905_eval]
def e0907 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0906 e0124
def v0907 (X Y k : ℂ) : ℂ := (v0906 X Y k)*(v0124 X Y k)
theorem e0907_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0907) = v0907 X Y k := by
  simp only [e0907,v0907,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0906_eval,e0124_eval]
def e0908 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0907
def v0908 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0907 X Y k)
theorem e0908_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0908) = v0908 X Y k := by
  simp only [e0908,v0908,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0907_eval]
def e0909 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0908 e0009
def v0909 (X Y k : ℂ) : ℂ := (v0908 X Y k)*(v0009 X Y k)
theorem e0909_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0909) = v0909 X Y k := by
  simp only [e0909,v0909,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0908_eval,e0009_eval]
def e0910 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0900 e0909
def v0910 (X Y k : ℂ) : ℂ := (v0900 X Y k)+(v0909 X Y k)
theorem e0910_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0910) = v0910 X Y k := by
  simp only [e0910,v0910,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0900_eval,e0909_eval]
def e0911 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0790 e0296
def v0911 (X Y k : ℂ) : ℂ := (v0790 X Y k)*(v0296 X Y k)
theorem e0911_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0911) = v0911 X Y k := by
  simp only [e0911,v0911,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0790_eval,e0296_eval]

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
