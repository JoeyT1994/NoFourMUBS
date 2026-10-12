import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions20
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def e1008 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1007 e0195
def v1008 (X Y k : ℂ) : ℂ := (v1007 X Y k)*(v0195 X Y k)
theorem e1008_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1008) = v1008 X Y k := by
  simp only [e1008,v1008,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1007_eval,e0195_eval]
def e1009 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1006 e0946
def v1009 (X Y k : ℂ) : ℂ := (v1006 X Y k)*(v0946 X Y k)
theorem e1009_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1009) = v1009 X Y k := by
  simp only [e1009,v1009,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1006_eval,e0946_eval]
def e1010 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1009 e0200
def v1010 (X Y k : ℂ) : ℂ := (v1009 X Y k)*(v0200 X Y k)
theorem e1010_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1010) = v1010 X Y k := by
  simp only [e1010,v1010,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1009_eval,e0200_eval]
def e1011 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1010
def v1011 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1010 X Y k)
theorem e1011_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1011) = v1011 X Y k := by
  simp only [e1011,v1011,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1010_eval]
def e1012 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1011 e0009
def v1012 (X Y k : ℂ) : ℂ := (v1011 X Y k)*(v0009 X Y k)
theorem e1012_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1012) = v1012 X Y k := by
  simp only [e1012,v1012,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1011_eval,e0009_eval]
def e1013 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1008 e1012
def v1013 (X Y k : ℂ) : ℂ := (v1008 X Y k)+(v1012 X Y k)
theorem e1013_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1013) = v1013 X Y k := by
  simp only [e1013,v1013,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1008_eval,e1012_eval]
def e1014 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1013 e0122
def v1014 (X Y k : ℂ) : ℂ := (v1013 X Y k)*(v0122 X Y k)
theorem e1014_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1014) = v1014 X Y k := by
  simp only [e1014,v1014,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1013_eval,e0122_eval]
def e1015 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1014 e0006
def v1015 (X Y k : ℂ) : ℂ := (v1014 X Y k)*(v0006 X Y k)
theorem e1015_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1015) = v1015 X Y k := by
  simp only [e1015,v1015,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1014_eval,e0006_eval]
def e1016 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1007 e0200
def v1016 (X Y k : ℂ) : ℂ := (v1007 X Y k)*(v0200 X Y k)
theorem e1016_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1016) = v1016 X Y k := by
  simp only [e1016,v1016,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1007_eval,e0200_eval]
def e1017 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1009 e0195
def v1017 (X Y k : ℂ) : ℂ := (v1009 X Y k)*(v0195 X Y k)
theorem e1017_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1017) = v1017 X Y k := by
  simp only [e1017,v1017,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1009_eval,e0195_eval]
def e1018 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1017 e0210
def v1018 (X Y k : ℂ) : ℂ := (v1017 X Y k)*(v0210 X Y k)
theorem e1018_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1018) = v1018 X Y k := by
  simp only [e1018,v1018,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1017_eval,e0210_eval]
def e1019 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1016 e1018
def v1019 (X Y k : ℂ) : ℂ := (v1016 X Y k)+(v1018 X Y k)
theorem e1019_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1019) = v1019 X Y k := by
  simp only [e1019,v1019,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1016_eval,e1018_eval]
def e1020 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e1010
def v1020 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v1010 X Y k)
theorem e1020_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1020) = v1020 X Y k := by
  simp only [e1020,v1020,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e1010_eval]
def e1021 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1019 e1020
def v1021 (X Y k : ℂ) : ℂ := (v1019 X Y k)+(v1020 X Y k)
theorem e1021_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1021) = v1021 X Y k := by
  simp only [e1021,v1021,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1019_eval,e1020_eval]
def e1022 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1021 e0124
def v1022 (X Y k : ℂ) : ℂ := (v1021 X Y k)*(v0124 X Y k)
theorem e1022_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1022) = v1022 X Y k := by
  simp only [e1022,v1022,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1021_eval,e0124_eval]
def e1023 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1022
def v1023 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1022 X Y k)
theorem e1023_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1023) = v1023 X Y k := by
  simp only [e1023,v1023,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1022_eval]
def e1024 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1023 e0009
def v1024 (X Y k : ℂ) : ℂ := (v1023 X Y k)*(v0009 X Y k)
theorem e1024_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1024) = v1024 X Y k := by
  simp only [e1024,v1024,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1023_eval,e0009_eval]
def e1025 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1015 e1024
def v1025 (X Y k : ℂ) : ℂ := (v1015 X Y k)+(v1024 X Y k)
theorem e1025_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1025) = v1025 X Y k := by
  simp only [e1025,v1025,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1015_eval,e1024_eval]
def e1026 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0002 e0032
def v1026 (X Y k : ℂ) : ℂ := (v0002 X Y k)*(v0032 X Y k)
theorem e1026_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1026) = v1026 X Y k := by
  simp only [e1026,v1026,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0002_eval,e0032_eval]
def e1027 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1026 e0222
def v1027 (X Y k : ℂ) : ℂ := (v1026 X Y k)*(v0222 X Y k)
theorem e1027_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1027) = v1027 X Y k := by
  simp only [e1027,v1027,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1026_eval,e0222_eval]
def e1028 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1027 e0296
def v1028 (X Y k : ℂ) : ℂ := (v1027 X Y k)*(v0296 X Y k)
theorem e1028_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1028) = v1028 X Y k := by
  simp only [e1028,v1028,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1027_eval,e0296_eval]
def e1029 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1028 e0113
def v1029 (X Y k : ℂ) : ℂ := (v1028 X Y k)*(v0113 X Y k)
theorem e1029_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1029) = v1029 X Y k := by
  simp only [e1029,v1029,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1028_eval,e0113_eval]
def e1030 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1029 e0115
def v1030 (X Y k : ℂ) : ℂ := (v1029 X Y k)*(v0115 X Y k)
theorem e1030_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1030) = v1030 X Y k := by
  simp only [e1030,v1030,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1029_eval,e0115_eval]
def e1031 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1030 e0228
def v1031 (X Y k : ℂ) : ℂ := (v1030 X Y k)*(v0228 X Y k)
theorem e1031_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1031) = v1031 X Y k := by
  simp only [e1031,v1031,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1030_eval,e0228_eval]
def e1032 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1031 e0230
def v1032 (X Y k : ℂ) : ℂ := (v1031 X Y k)*(v0230 X Y k)
theorem e1032_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1032) = v1032 X Y k := by
  simp only [e1032,v1032,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1031_eval,e0230_eval]
def e1033 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1032 e0117
def v1033 (X Y k : ℂ) : ℂ := (v1032 X Y k)*(v0117 X Y k)
theorem e1033_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1033) = v1033 X Y k := by
  simp only [e1033,v1033,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1032_eval,e0117_eval]
def e1034 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1033 e0119
def v1034 (X Y k : ℂ) : ℂ := (v1033 X Y k)*(v0119 X Y k)
theorem e1034_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1034) = v1034 X Y k := by
  simp only [e1034,v1034,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1033_eval,e0119_eval]
def e1035 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1025 e1034
def v1035 (X Y k : ℂ) : ℂ := (v1025 X Y k)*(v1034 X Y k)
theorem e1035_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1035) = v1035 X Y k := by
  simp only [e1035,v1035,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1025_eval,e1034_eval]
def e1036 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0964 e0236
def v1036 (X Y k : ℂ) : ℂ := (v0964 X Y k)*(v0236 X Y k)
theorem e1036_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1036) = v1036 X Y k := by
  simp only [e1036,v1036,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0964_eval,e0236_eval]
def e1037 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1036 e0001
def v1037 (X Y k : ℂ) : ℂ := (v1036 X Y k)*(v0001 X Y k)
theorem e1037_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1037) = v1037 X Y k := by
  simp only [e1037,v1037,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1036_eval,e0001_eval]
def e1038 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0966 e0240
def v1038 (X Y k : ℂ) : ℂ := (v0966 X Y k)*(v0240 X Y k)
theorem e1038_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1038) = v1038 X Y k := by
  simp only [e1038,v1038,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0966_eval,e0240_eval]
def e1039 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1038
def v1039 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1038 X Y k)
theorem e1039_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1039) = v1039 X Y k := by
  simp only [e1039,v1039,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1038_eval]
def e1040 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1039 e0009
def v1040 (X Y k : ℂ) : ℂ := (v1039 X Y k)*(v0009 X Y k)
theorem e1040_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1040) = v1040 X Y k := by
  simp only [e1040,v1040,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1039_eval,e0009_eval]
def e1041 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1037 e1040
def v1041 (X Y k : ℂ) : ℂ := (v1037 X Y k)+(v1040 X Y k)
theorem e1041_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1041) = v1041 X Y k := by
  simp only [e1041,v1041,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1037_eval,e1040_eval]
def e1042 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1041 e0086
def v1042 (X Y k : ℂ) : ℂ := (v1041 X Y k)*(v0086 X Y k)
theorem e1042_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1042) = v1042 X Y k := by
  simp only [e1042,v1042,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1041_eval,e0086_eval]
def e1043 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1042 e0135
def v1043 (X Y k : ℂ) : ℂ := (v1042 X Y k)*(v0135 X Y k)
theorem e1043_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1043) = v1043 X Y k := by
  simp only [e1043,v1043,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1042_eval,e0135_eval]
def e1044 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0964 e0240
def v1044 (X Y k : ℂ) : ℂ := (v0964 X Y k)*(v0240 X Y k)
theorem e1044_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1044) = v1044 X Y k := by
  simp only [e1044,v1044,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0964_eval,e0240_eval]
def e1045 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0966 e0236
def v1045 (X Y k : ℂ) : ℂ := (v0966 X Y k)*(v0236 X Y k)
theorem e1045_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1045) = v1045 X Y k := by
  simp only [e1045,v1045,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0966_eval,e0236_eval]
def e1046 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1045 e0250
def v1046 (X Y k : ℂ) : ℂ := (v1045 X Y k)*(v0250 X Y k)
theorem e1046_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1046) = v1046 X Y k := by
  simp only [e1046,v1046,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1045_eval,e0250_eval]
def e1047 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1044 e1046
def v1047 (X Y k : ℂ) : ℂ := (v1044 X Y k)+(v1046 X Y k)
theorem e1047_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1047) = v1047 X Y k := by
  simp only [e1047,v1047,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1044_eval,e1046_eval]
def e1048 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e1038
def v1048 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v1038 X Y k)
theorem e1048_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1048) = v1048 X Y k := by
  simp only [e1048,v1048,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e1038_eval]
def e1049 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1047 e1048
def v1049 (X Y k : ℂ) : ℂ := (v1047 X Y k)+(v1048 X Y k)
theorem e1049_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1049) = v1049 X Y k := by
  simp only [e1049,v1049,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1047_eval,e1048_eval]
def e1050 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1049 e0089
def v1050 (X Y k : ℂ) : ℂ := (v1049 X Y k)*(v0089 X Y k)
theorem e1050_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1050) = v1050 X Y k := by
  simp only [e1050,v1050,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1049_eval,e0089_eval]
def e1051 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1050
def v1051 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1050 X Y k)
theorem e1051_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1051) = v1051 X Y k := by
  simp only [e1051,v1051,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1050_eval]
def e1052 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1051 e0009
def v1052 (X Y k : ℂ) : ℂ := (v1051 X Y k)*(v0009 X Y k)
theorem e1052_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1052) = v1052 X Y k := by
  simp only [e1052,v1052,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1051_eval,e0009_eval]
def e1053 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1043 e1052
def v1053 (X Y k : ℂ) : ℂ := (v1043 X Y k)+(v1052 X Y k)
theorem e1053_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1053) = v1053 X Y k := by
  simp only [e1053,v1053,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1043_eval,e1052_eval]
def e1054 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0790 e0224
def v1054 (X Y k : ℂ) : ℂ := (v0790 X Y k)*(v0224 X Y k)
theorem e1054_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1054) = v1054 X Y k := by
  simp only [e1054,v1054,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0790_eval,e0224_eval]
def e1055 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1054 e0113
def v1055 (X Y k : ℂ) : ℂ := (v1054 X Y k)*(v0113 X Y k)
theorem e1055_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1055) = v1055 X Y k := by
  simp only [e1055,v1055,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1054_eval,e0113_eval]

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
