import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions21
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def e1056 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1055 e0115
def v1056 (X Y k : ℂ) : ℂ := (v1055 X Y k)*(v0115 X Y k)
theorem e1056_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1056) = v1056 X Y k := by
  simp only [e1056,v1056,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1055_eval,e0115_eval]
def e1057 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1056 e0228
def v1057 (X Y k : ℂ) : ℂ := (v1056 X Y k)*(v0228 X Y k)
theorem e1057_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1057) = v1057 X Y k := by
  simp only [e1057,v1057,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1056_eval,e0228_eval]
def e1058 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1057 e0230
def v1058 (X Y k : ℂ) : ℂ := (v1057 X Y k)*(v0230 X Y k)
theorem e1058_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1058) = v1058 X Y k := by
  simp only [e1058,v1058,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1057_eval,e0230_eval]
def e1059 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1058 e0117
def v1059 (X Y k : ℂ) : ℂ := (v1058 X Y k)*(v0117 X Y k)
theorem e1059_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1059) = v1059 X Y k := by
  simp only [e1059,v1059,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1058_eval,e0117_eval]
def e1060 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1059 e0119
def v1060 (X Y k : ℂ) : ℂ := (v1059 X Y k)*(v0119 X Y k)
theorem e1060_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1060) = v1060 X Y k := by
  simp only [e1060,v1060,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1059_eval,e0119_eval]
def e1061 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1053 e1060
def v1061 (X Y k : ℂ) : ℂ := (v1053 X Y k)*(v1060 X Y k)
theorem e1061_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1061) = v1061 X Y k := by
  simp only [e1061,v1061,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1053_eval,e1060_eval]
def e1062 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[-48]]]
def v1062 (X Y k : ℂ) : ℂ := (-48 : ℂ)
theorem e1062_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1062) = v1062 X Y k := by
  norm_num [e1062,v1062,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,CriticalZeroSplitReduction20261003.Coefficients.eval,CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI]
def e1063 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1062 e0939
def v1063 (X Y k : ℂ) : ℂ := (v1062 X Y k)*(v0939 X Y k)
theorem e1063_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1063) = v1063 X Y k := by
  simp only [e1063,v1063,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1062_eval,e0939_eval]
def e1064 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1063 e0130
def v1064 (X Y k : ℂ) : ℂ := (v1063 X Y k)*(v0130 X Y k)
theorem e1064_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1064) = v1064 X Y k := by
  simp only [e1064,v1064,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1063_eval,e0130_eval]
def e1065 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1062 e0946
def v1065 (X Y k : ℂ) : ℂ := (v1062 X Y k)*(v0946 X Y k)
theorem e1065_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1065) = v1065 X Y k := by
  simp only [e1065,v1065,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1062_eval,e0946_eval]
def e1066 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1065 e0141
def v1066 (X Y k : ℂ) : ℂ := (v1065 X Y k)*(v0141 X Y k)
theorem e1066_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1066) = v1066 X Y k := by
  simp only [e1066,v1066,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1065_eval,e0141_eval]
def e1067 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1066
def v1067 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1066 X Y k)
theorem e1067_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1067) = v1067 X Y k := by
  simp only [e1067,v1067,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1066_eval]
def e1068 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1067 e0061
def v1068 (X Y k : ℂ) : ℂ := (v1067 X Y k)*(v0061 X Y k)
theorem e1068_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1068) = v1068 X Y k := by
  simp only [e1068,v1068,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1067_eval,e0061_eval]
def e1069 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1064 e1068
def v1069 (X Y k : ℂ) : ℂ := (v1064 X Y k)+(v1068 X Y k)
theorem e1069_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1069) = v1069 X Y k := by
  simp only [e1069,v1069,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1064_eval,e1068_eval]
def e1070 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1026 e0335
def v1070 (X Y k : ℂ) : ℂ := (v1026 X Y k)*(v0335 X Y k)
theorem e1070_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1070) = v1070 X Y k := by
  simp only [e1070,v1070,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1026_eval,e0335_eval]
def e1071 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1070 e0791
def v1071 (X Y k : ℂ) : ℂ := (v1070 X Y k)*(v0791 X Y k)
theorem e1071_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1071) = v1071 X Y k := by
  simp only [e1071,v1071,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1070_eval,e0791_eval]
def e1072 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1071 e0013
def v1072 (X Y k : ℂ) : ℂ := (v1071 X Y k)*(v0013 X Y k)
theorem e1072_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1072) = v1072 X Y k := by
  simp only [e1072,v1072,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1071_eval,e0013_eval]
def e1073 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1072 e0016
def v1073 (X Y k : ℂ) : ℂ := (v1072 X Y k)*(v0016 X Y k)
theorem e1073_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1073) = v1073 X Y k := by
  simp only [e1073,v1073,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1072_eval,e0016_eval]
def e1074 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1073 e0228
def v1074 (X Y k : ℂ) : ℂ := (v1073 X Y k)*(v0228 X Y k)
theorem e1074_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1074) = v1074 X Y k := by
  simp only [e1074,v1074,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1073_eval,e0228_eval]
def e1075 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1074 e0230
def v1075 (X Y k : ℂ) : ℂ := (v1074 X Y k)*(v0230 X Y k)
theorem e1075_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1075) = v1075 X Y k := by
  simp only [e1075,v1075,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1074_eval,e0230_eval]
def e1076 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1075 e0117
def v1076 (X Y k : ℂ) : ℂ := (v1075 X Y k)*(v0117 X Y k)
theorem e1076_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1076) = v1076 X Y k := by
  simp only [e1076,v1076,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1075_eval,e0117_eval]
def e1077 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1076 e0119
def v1077 (X Y k : ℂ) : ℂ := (v1076 X Y k)*(v0119 X Y k)
theorem e1077_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1077) = v1077 X Y k := by
  simp only [e1077,v1077,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1076_eval,e0119_eval]
def e1078 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1069 e1077
def v1078 (X Y k : ℂ) : ℂ := (v1069 X Y k)*(v1077 X Y k)
theorem e1078_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1078) = v1078 X Y k := by
  simp only [e1078,v1078,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1069_eval,e1077_eval]
def e1079 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0156 e0006
def v1079 (X Y k : ℂ) : ℂ := (v0156 X Y k)*(v0006 X Y k)
theorem e1079_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1079) = v1079 X Y k := by
  simp only [e1079,v1079,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0156_eval,e0006_eval]
def e1080 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0159
def v1080 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0159 X Y k)
theorem e1080_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1080) = v1080 X Y k := by
  simp only [e1080,v1080,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0159_eval]
def e1081 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1079 e1080
def v1081 (X Y k : ℂ) : ℂ := (v1079 X Y k)+(v1080 X Y k)
theorem e1081_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1081) = v1081 X Y k := by
  simp only [e1081,v1081,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1079_eval,e1080_eval]
def e1082 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0220 e1081
def v1082 (X Y k : ℂ) : ℂ := (v0220 X Y k)*(v1081 X Y k)
theorem e1082_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1082) = v1082 X Y k := by
  simp only [e1082,v1082,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0220_eval,e1081_eval]
def e1083 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0154 e1082
def v1083 (X Y k : ℂ) : ℂ := (v0154 X Y k)*(v1082 X Y k)
theorem e1083_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1083) = v1083 X Y k := by
  simp only [e1083,v1083,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0154_eval,e1082_eval]
def e1084 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1083 e1082
def v1084 (X Y k : ℂ) : ℂ := (v1083 X Y k)*(v1082 X Y k)
theorem e1084_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1084) = v1084 X Y k := by
  simp only [e1084,v1084,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1083_eval,e1082_eval]
def e1085 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0220 e0159
def v1085 (X Y k : ℂ) : ℂ := (v0220 X Y k)*(v0159 X Y k)
theorem e1085_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1085) = v1085 X Y k := by
  simp only [e1085,v1085,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0220_eval,e0159_eval]
def e1086 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e1085
def v1086 (X Y k : ℂ) : ℂ := -(v1085 X Y k)
theorem e1086_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1086) = v1086 X Y k := by
  simp only [e1086,v1086,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSplitReduction20261003.Coefficients.eval_neg,e1085_eval]
def e1087 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0154 e1086
def v1087 (X Y k : ℂ) : ℂ := (v0154 X Y k)*(v1086 X Y k)
theorem e1087_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1087) = v1087 X Y k := by
  simp only [e1087,v1087,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0154_eval,e1086_eval]
def e1088 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1087 e1086
def v1088 (X Y k : ℂ) : ℂ := (v1087 X Y k)*(v1086 X Y k)
theorem e1088_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1088) = v1088 X Y k := by
  simp only [e1088,v1088,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1087_eval,e1086_eval]
def e1089 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1088
def v1089 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1088 X Y k)
theorem e1089_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1089) = v1089 X Y k := by
  simp only [e1089,v1089,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1088_eval]
def e1090 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1089 e0475
def v1090 (X Y k : ℂ) : ℂ := (v1089 X Y k)*(v0475 X Y k)
theorem e1090_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1090) = v1090 X Y k := by
  simp only [e1090,v1090,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1089_eval,e0475_eval]
def e1091 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1084 e1090
def v1091 (X Y k : ℂ) : ℂ := (v1084 X Y k)+(v1090 X Y k)
theorem e1091_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1091) = v1091 X Y k := by
  simp only [e1091,v1091,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1084_eval,e1090_eval]
def e1092 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1091 e0033
def v1092 (X Y k : ℂ) : ℂ := (v1091 X Y k)*(v0033 X Y k)
theorem e1092_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1092) = v1092 X Y k := by
  simp only [e1092,v1092,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1091_eval,e0033_eval]
def e1093 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1083 e1086
def v1093 (X Y k : ℂ) : ℂ := (v1083 X Y k)*(v1086 X Y k)
theorem e1093_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1093) = v1093 X Y k := by
  simp only [e1093,v1093,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1083_eval,e1086_eval]
def e1094 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1087 e1082
def v1094 (X Y k : ℂ) : ℂ := (v1087 X Y k)*(v1082 X Y k)
theorem e1094_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1094) = v1094 X Y k := by
  simp only [e1094,v1094,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1087_eval,e1082_eval]
def e1095 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1093 e1094
def v1095 (X Y k : ℂ) : ℂ := (v1093 X Y k)+(v1094 X Y k)
theorem e1095_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1095) = v1095 X Y k := by
  simp only [e1095,v1095,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1093_eval,e1094_eval]
def e1096 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e1088
def v1096 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v1088 X Y k)
theorem e1096_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1096) = v1096 X Y k := by
  simp only [e1096,v1096,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e1088_eval]
def e1097 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1095 e1096
def v1097 (X Y k : ℂ) : ℂ := (v1095 X Y k)+(v1096 X Y k)
theorem e1097_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1097) = v1097 X Y k := by
  simp only [e1097,v1097,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1095_eval,e1096_eval]
def e1098 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1097 e0036
def v1098 (X Y k : ℂ) : ℂ := (v1097 X Y k)*(v0036 X Y k)
theorem e1098_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1098) = v1098 X Y k := by
  simp only [e1098,v1098,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1097_eval,e0036_eval]
def e1099 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1098
def v1099 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1098 X Y k)
theorem e1099_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1099) = v1099 X Y k := by
  simp only [e1099,v1099,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1098_eval]
def e1100 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1099 e0127
def v1100 (X Y k : ℂ) : ℂ := (v1099 X Y k)*(v0127 X Y k)
theorem e1100_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1100) = v1100 X Y k := by
  simp only [e1100,v1100,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1099_eval,e0127_eval]
def e1101 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1092 e1100
def v1101 (X Y k : ℂ) : ℂ := (v1092 X Y k)+(v1100 X Y k)
theorem e1101_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1101) = v1101 X Y k := by
  simp only [e1101,v1101,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1092_eval,e1100_eval]
def e1102 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1101 e0184
def v1102 (X Y k : ℂ) : ℂ := (v1101 X Y k)*(v0184 X Y k)
theorem e1102_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1102) = v1102 X Y k := by
  simp only [e1102,v1102,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1101_eval,e0184_eval]
def e1103 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0001 e1082
def v1103 (X Y k : ℂ) : ℂ := (v0001 X Y k)*(v1082 X Y k)
theorem e1103_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1103) = v1103 X Y k := by
  simp only [e1103,v1103,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0001_eval,e1082_eval]

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
