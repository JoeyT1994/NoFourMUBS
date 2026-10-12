import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions18
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def e0912 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0911 e0113
def v0912 (X Y k : ℂ) : ℂ := (v0911 X Y k)*(v0113 X Y k)
theorem e0912_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0912) = v0912 X Y k := by
  simp only [e0912,v0912,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0911_eval,e0113_eval]
def e0913 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0912 e0115
def v0913 (X Y k : ℂ) : ℂ := (v0912 X Y k)*(v0115 X Y k)
theorem e0913_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0913) = v0913 X Y k := by
  simp only [e0913,v0913,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0912_eval,e0115_eval]
def e0914 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0913 e0228
def v0914 (X Y k : ℂ) : ℂ := (v0913 X Y k)*(v0228 X Y k)
theorem e0914_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0914) = v0914 X Y k := by
  simp only [e0914,v0914,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0913_eval,e0228_eval]
def e0915 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0914 e0230
def v0915 (X Y k : ℂ) : ℂ := (v0914 X Y k)*(v0230 X Y k)
theorem e0915_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0915) = v0915 X Y k := by
  simp only [e0915,v0915,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0914_eval,e0230_eval]
def e0916 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0915 e0117
def v0916 (X Y k : ℂ) : ℂ := (v0915 X Y k)*(v0117 X Y k)
theorem e0916_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0916) = v0916 X Y k := by
  simp only [e0916,v0916,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0915_eval,e0117_eval]
def e0917 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0916 e0119
def v0917 (X Y k : ℂ) : ℂ := (v0916 X Y k)*(v0119 X Y k)
theorem e0917_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0917) = v0917 X Y k := by
  simp only [e0917,v0917,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0916_eval,e0119_eval]
def e0918 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0910 e0917
def v0918 (X Y k : ℂ) : ℂ := (v0910 X Y k)*(v0917 X Y k)
theorem e0918_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0918) = v0918 X Y k := by
  simp only [e0918,v0918,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0910_eval,e0917_eval]
def e0919 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0326 e0831
def v0919 (X Y k : ℂ) : ℂ := (v0326 X Y k)*(v0831 X Y k)
theorem e0919_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0919) = v0919 X Y k := by
  simp only [e0919,v0919,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0326_eval,e0831_eval]
def e0920 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0919 e0094
def v0920 (X Y k : ℂ) : ℂ := (v0919 X Y k)*(v0094 X Y k)
theorem e0920_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0920) = v0920 X Y k := by
  simp only [e0920,v0920,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0919_eval,e0094_eval]
def e0921 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0920 e0001
def v0921 (X Y k : ℂ) : ℂ := (v0920 X Y k)*(v0001 X Y k)
theorem e0921_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0921) = v0921 X Y k := by
  simp only [e0921,v0921,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0920_eval,e0001_eval]
def e0922 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0326 e0839
def v0922 (X Y k : ℂ) : ℂ := (v0326 X Y k)*(v0839 X Y k)
theorem e0922_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0922) = v0922 X Y k := by
  simp only [e0922,v0922,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0326_eval,e0839_eval]
def e0923 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0922 e0105
def v0923 (X Y k : ℂ) : ℂ := (v0922 X Y k)*(v0105 X Y k)
theorem e0923_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0923) = v0923 X Y k := by
  simp only [e0923,v0923,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0922_eval,e0105_eval]
def e0924 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0923
def v0924 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0923 X Y k)
theorem e0924_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0924) = v0924 X Y k := by
  simp only [e0924,v0924,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0923_eval]
def e0925 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0924 e0078
def v0925 (X Y k : ℂ) : ℂ := (v0924 X Y k)*(v0078 X Y k)
theorem e0925_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0925) = v0925 X Y k := by
  simp only [e0925,v0925,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0924_eval,e0078_eval]
def e0926 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0921 e0925
def v0926 (X Y k : ℂ) : ℂ := (v0921 X Y k)+(v0925 X Y k)
theorem e0926_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0926) = v0926 X Y k := by
  simp only [e0926,v0926,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0921_eval,e0925_eval]
def e0927 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0789 e0335
def v0927 (X Y k : ℂ) : ℂ := (v0789 X Y k)*(v0335 X Y k)
theorem e0927_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0927) = v0927 X Y k := by
  simp only [e0927,v0927,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0789_eval,e0335_eval]
def e0928 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0927 e0337
def v0928 (X Y k : ℂ) : ℂ := (v0927 X Y k)*(v0337 X Y k)
theorem e0928_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0928) = v0928 X Y k := by
  simp only [e0928,v0928,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0927_eval,e0337_eval]
def e0929 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0928 e0013
def v0929 (X Y k : ℂ) : ℂ := (v0928 X Y k)*(v0013 X Y k)
theorem e0929_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0929) = v0929 X Y k := by
  simp only [e0929,v0929,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0928_eval,e0013_eval]
def e0930 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0929 e0016
def v0930 (X Y k : ℂ) : ℂ := (v0929 X Y k)*(v0016 X Y k)
theorem e0930_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0930) = v0930 X Y k := by
  simp only [e0930,v0930,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0929_eval,e0016_eval]
def e0931 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0930 e0228
def v0931 (X Y k : ℂ) : ℂ := (v0930 X Y k)*(v0228 X Y k)
theorem e0931_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0931) = v0931 X Y k := by
  simp only [e0931,v0931,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0930_eval,e0228_eval]
def e0932 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0931 e0230
def v0932 (X Y k : ℂ) : ℂ := (v0931 X Y k)*(v0230 X Y k)
theorem e0932_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0932) = v0932 X Y k := by
  simp only [e0932,v0932,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0931_eval,e0230_eval]
def e0933 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0932 e0117
def v0933 (X Y k : ℂ) : ℂ := (v0932 X Y k)*(v0117 X Y k)
theorem e0933_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0933) = v0933 X Y k := by
  simp only [e0933,v0933,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0932_eval,e0117_eval]
def e0934 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0933 e0119
def v0934 (X Y k : ℂ) : ℂ := (v0933 X Y k)*(v0119 X Y k)
theorem e0934_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0934) = v0934 X Y k := by
  simp only [e0934,v0934,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0933_eval,e0119_eval]
def e0935 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0926 e0934
def v0935 (X Y k : ℂ) : ℂ := (v0926 X Y k)*(v0934 X Y k)
theorem e0935_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0935) = v0935 X Y k := by
  simp only [e0935,v0935,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0926_eval,e0934_eval]
def e0936 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0130 e0006
def v0936 (X Y k : ℂ) : ℂ := (v0130 X Y k)*(v0006 X Y k)
theorem e0936_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0936) = v0936 X Y k := by
  simp only [e0936,v0936,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0130_eval,e0006_eval]
def e0937 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0141
def v0937 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0141 X Y k)
theorem e0937_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0937) = v0937 X Y k := by
  simp only [e0937,v0937,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0141_eval]
def e0938 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0936 e0937
def v0938 (X Y k : ℂ) : ℂ := (v0936 X Y k)+(v0937 X Y k)
theorem e0938_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0938) = v0938 X Y k := by
  simp only [e0938,v0938,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0936_eval,e0937_eval]
def e0939 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0220 e0938
def v0939 (X Y k : ℂ) : ℂ := (v0220 X Y k)*(v0938 X Y k)
theorem e0939_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0939) = v0939 X Y k := by
  simp only [e0939,v0939,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0220_eval,e0938_eval]
def e0940 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0122 e0006
def v0940 (X Y k : ℂ) : ℂ := (v0122 X Y k)*(v0006 X Y k)
theorem e0940_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0940) = v0940 X Y k := by
  simp only [e0940,v0940,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0122_eval,e0006_eval]
def e0941 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0124
def v0941 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0124 X Y k)
theorem e0941_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0941) = v0941 X Y k := by
  simp only [e0941,v0941,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0124_eval]
def e0942 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0940 e0941
def v0942 (X Y k : ℂ) : ℂ := (v0940 X Y k)+(v0941 X Y k)
theorem e0942_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0942) = v0942 X Y k := by
  simp only [e0942,v0942,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0940_eval,e0941_eval]
def e0943 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0220 e0942
def v0943 (X Y k : ℂ) : ℂ := (v0220 X Y k)*(v0942 X Y k)
theorem e0943_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0943) = v0943 X Y k := by
  simp only [e0943,v0943,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0220_eval,e0942_eval]
def e0944 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0939 e0943
def v0944 (X Y k : ℂ) : ℂ := (v0939 X Y k)*(v0943 X Y k)
theorem e0944_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0944) = v0944 X Y k := by
  simp only [e0944,v0944,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0939_eval,e0943_eval]
def e0945 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0220 e0141
def v0945 (X Y k : ℂ) : ℂ := (v0220 X Y k)*(v0141 X Y k)
theorem e0945_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0945) = v0945 X Y k := by
  simp only [e0945,v0945,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0220_eval,e0141_eval]
def e0946 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e0945
def v0946 (X Y k : ℂ) : ℂ := -(v0945 X Y k)
theorem e0946_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0946) = v0946 X Y k := by
  simp only [e0946,v0946,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSplitReduction20261003.Coefficients.eval_neg,e0945_eval]
def e0947 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0220 e0124
def v0947 (X Y k : ℂ) : ℂ := (v0220 X Y k)*(v0124 X Y k)
theorem e0947_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0947) = v0947 X Y k := by
  simp only [e0947,v0947,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0220_eval,e0124_eval]
def e0948 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e0947
def v0948 (X Y k : ℂ) : ℂ := -(v0947 X Y k)
theorem e0948_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0948) = v0948 X Y k := by
  simp only [e0948,v0948,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSplitReduction20261003.Coefficients.eval_neg,e0947_eval]
def e0949 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0946 e0948
def v0949 (X Y k : ℂ) : ℂ := (v0946 X Y k)*(v0948 X Y k)
theorem e0949_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0949) = v0949 X Y k := by
  simp only [e0949,v0949,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0946_eval,e0948_eval]
def e0950 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0949
def v0950 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0949 X Y k)
theorem e0950_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0950) = v0950 X Y k := by
  simp only [e0950,v0950,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0949_eval]
def e0951 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0950 e0475
def v0951 (X Y k : ℂ) : ℂ := (v0950 X Y k)*(v0475 X Y k)
theorem e0951_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0951) = v0951 X Y k := by
  simp only [e0951,v0951,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0950_eval,e0475_eval]
def e0952 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0944 e0951
def v0952 (X Y k : ℂ) : ℂ := (v0944 X Y k)+(v0951 X Y k)
theorem e0952_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0952) = v0952 X Y k := by
  simp only [e0952,v0952,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0944_eval,e0951_eval]
def e0953 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0952 e0033
def v0953 (X Y k : ℂ) : ℂ := (v0952 X Y k)*(v0033 X Y k)
theorem e0953_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0953) = v0953 X Y k := by
  simp only [e0953,v0953,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0952_eval,e0033_eval]
def e0954 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0939 e0948
def v0954 (X Y k : ℂ) : ℂ := (v0939 X Y k)*(v0948 X Y k)
theorem e0954_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0954) = v0954 X Y k := by
  simp only [e0954,v0954,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0939_eval,e0948_eval]
def e0955 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0946 e0943
def v0955 (X Y k : ℂ) : ℂ := (v0946 X Y k)*(v0943 X Y k)
theorem e0955_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0955) = v0955 X Y k := by
  simp only [e0955,v0955,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0946_eval,e0943_eval]
def e0956 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0954 e0955
def v0956 (X Y k : ℂ) : ℂ := (v0954 X Y k)+(v0955 X Y k)
theorem e0956_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0956) = v0956 X Y k := by
  simp only [e0956,v0956,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0954_eval,e0955_eval]
def e0957 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0949
def v0957 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0949 X Y k)
theorem e0957_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0957) = v0957 X Y k := by
  simp only [e0957,v0957,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0949_eval]
def e0958 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0956 e0957
def v0958 (X Y k : ℂ) : ℂ := (v0956 X Y k)+(v0957 X Y k)
theorem e0958_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0958) = v0958 X Y k := by
  simp only [e0958,v0958,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0956_eval,e0957_eval]
def e0959 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0958 e0036
def v0959 (X Y k : ℂ) : ℂ := (v0958 X Y k)*(v0036 X Y k)
theorem e0959_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0959) = v0959 X Y k := by
  simp only [e0959,v0959,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0958_eval,e0036_eval]

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
