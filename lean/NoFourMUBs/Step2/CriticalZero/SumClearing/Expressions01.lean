import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions00
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def e0048 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0046 e0047
def v0048 (X Y k : ℂ) : ℂ := (v0046 X Y k)+(v0047 X Y k)
theorem e0048_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0048) = v0048 X Y k := by
  simp only [e0048,v0048,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0046_eval,e0047_eval]
def e0049 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0048 e0009
def v0049 (X Y k : ℂ) : ℂ := (v0048 X Y k)*(v0009 X Y k)
theorem e0049_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0049) = v0049 X Y k := by
  simp only [e0049,v0049,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0048_eval,e0009_eval]
def e0050 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[-4]]]
def v0050 (X Y k : ℂ) : ℂ := (-4 : ℂ)
theorem e0050_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0050) = v0050 X Y k := by
  norm_num [e0050,v0050,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,CriticalZeroSplitReduction20261003.Coefficients.eval,CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI]
def e0051 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0049 e0050
def v0051 (X Y k : ℂ) : ℂ := (v0049 X Y k)+(v0050 X Y k)
theorem e0051_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0051) = v0051 X Y k := by
  simp only [e0051,v0051,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0049_eval,e0050_eval]
def e0052 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0003 e0051
def v0052 (X Y k : ℂ) : ℂ := (v0003 X Y k)*(v0051 X Y k)
theorem e0052_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0052) = v0052 X Y k := by
  simp only [e0052,v0052,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0003_eval,e0051_eval]
def e0053 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e0052
def v0053 (X Y k : ℂ) : ℂ := -(v0052 X Y k)
theorem e0053_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0053) = v0053 X Y k := by
  simp only [e0053,v0053,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSplitReduction20261003.Coefficients.eval_neg,e0052_eval]
def e0054 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0032 e0036
def v0054 (X Y k : ℂ) : ℂ := (v0032 X Y k)*(v0036 X Y k)
theorem e0054_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0054) = v0054 X Y k := by
  simp only [e0054,v0054,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0032_eval,e0036_eval]
def e0055 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e0054
def v0055 (X Y k : ℂ) : ℂ := -(v0054 X Y k)
theorem e0055_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0055) = v0055 X Y k := by
  simp only [e0055,v0055,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSplitReduction20261003.Coefficients.eval_neg,e0054_eval]
def e0056 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0031 e0055
def v0056 (X Y k : ℂ) : ℂ := (v0031 X Y k)*(v0055 X Y k)
theorem e0056_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0056) = v0056 X Y k := by
  simp only [e0056,v0056,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0031_eval,e0055_eval]
def e0057 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p2_m4_b
def v0057 (X Y k : ℂ) : ℂ := integerNumerator_p2_m4_b X Y k
theorem e0057_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0057) = v0057 X Y k := by
  exact primitive_p2_m4_b_eval X Y k
def e0058 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0056 e0057
def v0058 (X Y k : ℂ) : ℂ := (v0056 X Y k)*(v0057 X Y k)
theorem e0058_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0058) = v0058 X Y k := by
  simp only [e0058,v0058,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0056_eval,e0057_eval]
def e0059 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0058
def v0059 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0058 X Y k)
theorem e0059_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0059) = v0059 X Y k := by
  simp only [e0059,v0059,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0058_eval]
def e0060 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e0001 2
def v0060 (X Y k : ℂ) : ℂ := (v0001 X Y k)^2
theorem e0060_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0060) = v0060 X Y k := by
  simp only [e0060,v0060,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,e0001_eval]
def e0061 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s023
def v0061 (X Y k : ℂ) : ℂ := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.v023 X Y k
theorem e0061_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0061) = v0061 X Y k := by
  exact NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s023_eval X Y k
def e0062 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0060 e0061
def v0062 (X Y k : ℂ) : ℂ := (v0060 X Y k)*(v0061 X Y k)
theorem e0062_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0062) = v0062 X Y k := by
  simp only [e0062,v0062,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0060_eval,e0061_eval]
def e0063 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0059 e0062
def v0063 (X Y k : ℂ) : ℂ := (v0059 X Y k)*(v0062 X Y k)
theorem e0063_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0063) = v0063 X Y k := by
  simp only [e0063,v0063,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0059_eval,e0062_eval]
def e0064 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0043 e0063
def v0064 (X Y k : ℂ) : ℂ := (v0043 X Y k)+(v0063 X Y k)
theorem e0064_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0064) = v0064 X Y k := by
  simp only [e0064,v0064,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0043_eval,e0063_eval]
def e0065 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p2_p2_a
def v0065 (X Y k : ℂ) : ℂ := integerNumerator_p2_p2_a X Y k
theorem e0065_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0065) = v0065 X Y k := by
  exact primitive_p2_p2_a_eval X Y k
def e0066 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0064 e0065
def v0066 (X Y k : ℂ) : ℂ := (v0064 X Y k)*(v0065 X Y k)
theorem e0066_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0066) = v0066 X Y k := by
  simp only [e0066,v0066,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0064_eval,e0065_eval]
def e0067 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0066 e0006
def v0067 (X Y k : ℂ) : ℂ := (v0066 X Y k)*(v0006 X Y k)
theorem e0067_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0067) = v0067 X Y k := by
  simp only [e0067,v0067,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0066_eval,e0006_eval]
def e0068 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0041 e0057
def v0068 (X Y k : ℂ) : ℂ := (v0041 X Y k)*(v0057 X Y k)
theorem e0068_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0068) = v0068 X Y k := by
  simp only [e0068,v0068,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0041_eval,e0057_eval]
def e0069 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0056 e0042
def v0069 (X Y k : ℂ) : ℂ := (v0056 X Y k)*(v0042 X Y k)
theorem e0069_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0069) = v0069 X Y k := by
  simp only [e0069,v0069,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0056_eval,e0042_eval]
def e0070 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0069 e0006
def v0070 (X Y k : ℂ) : ℂ := (v0069 X Y k)*(v0006 X Y k)
theorem e0070_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0070) = v0070 X Y k := by
  simp only [e0070,v0070,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0069_eval,e0006_eval]
def e0071 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0068 e0070
def v0071 (X Y k : ℂ) : ℂ := (v0068 X Y k)+(v0070 X Y k)
theorem e0071_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0071) = v0071 X Y k := by
  simp only [e0071,v0071,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0068_eval,e0070_eval]
def e0072 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0058
def v0072 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0058 X Y k)
theorem e0072_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0072) = v0072 X Y k := by
  simp only [e0072,v0072,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0058_eval]
def e0073 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0072 e0001
def v0073 (X Y k : ℂ) : ℂ := (v0072 X Y k)*(v0001 X Y k)
theorem e0073_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0073) = v0073 X Y k := by
  simp only [e0073,v0073,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0072_eval,e0001_eval]
def e0074 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0071 e0073
def v0074 (X Y k : ℂ) : ℂ := (v0071 X Y k)+(v0073 X Y k)
theorem e0074_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0074) = v0074 X Y k := by
  simp only [e0074,v0074,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0071_eval,e0073_eval]
def e0075 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p2_p2_b
def v0075 (X Y k : ℂ) : ℂ := integerNumerator_p2_p2_b X Y k
theorem e0075_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0075) = v0075 X Y k := by
  exact primitive_p2_p2_b_eval X Y k
def e0076 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0074 e0075
def v0076 (X Y k : ℂ) : ℂ := (v0074 X Y k)*(v0075 X Y k)
theorem e0076_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0076) = v0076 X Y k := by
  simp only [e0076,v0076,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0074_eval,e0075_eval]
def e0077 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0076
def v0077 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0076 X Y k)
theorem e0077_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0077) = v0077 X Y k := by
  simp only [e0077,v0077,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0076_eval]
def e0078 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s035
def v0078 (X Y k : ℂ) : ℂ := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.v035 X Y k
theorem e0078_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0078) = v0078 X Y k := by
  exact NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s035_eval X Y k
def e0079 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0060 e0078
def v0079 (X Y k : ℂ) : ℂ := (v0060 X Y k)*(v0078 X Y k)
theorem e0079_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0079) = v0079 X Y k := by
  simp only [e0079,v0079,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0060_eval,e0078_eval]
def e0080 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0077 e0079
def v0080 (X Y k : ℂ) : ℂ := (v0077 X Y k)*(v0079 X Y k)
theorem e0080_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0080) = v0080 X Y k := by
  simp only [e0080,v0080,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0077_eval,e0079_eval]
def e0081 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0067 e0080
def v0081 (X Y k : ℂ) : ℂ := (v0067 X Y k)+(v0080 X Y k)
theorem e0081_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0081) = v0081 X Y k := by
  simp only [e0081,v0081,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0067_eval,e0080_eval]
def e0082 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s015
def v0082 (X Y k : ℂ) : ℂ := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.v015 X Y k
theorem e0082_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0082) = v0082 X Y k := by
  exact NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s015_eval X Y k
def e0083 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0082 e0009
def v0083 (X Y k : ℂ) : ℂ := (v0082 X Y k)*(v0009 X Y k)
theorem e0083_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0083) = v0083 X Y k := by
  simp only [e0083,v0083,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0082_eval,e0009_eval]
def e0084 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0081 e0083
def v0084 (X Y k : ℂ) : ℂ := (v0081 X Y k)*(v0083 X Y k)
theorem e0084_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0084) = v0084 X Y k := by
  simp only [e0084,v0084,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0081_eval,e0083_eval]
def e0085 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0001 e0040
def v0085 (X Y k : ℂ) : ℂ := (v0001 X Y k)*(v0040 X Y k)
theorem e0085_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0085) = v0085 X Y k := by
  simp only [e0085,v0085,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0001_eval,e0040_eval]
def e0086 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p2_m3_a
def v0086 (X Y k : ℂ) : ℂ := integerNumerator_p2_m3_a X Y k
theorem e0086_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0086) = v0086 X Y k := by
  exact primitive_p2_m3_a_eval X Y k
def e0087 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0085 e0086
def v0087 (X Y k : ℂ) : ℂ := (v0085 X Y k)*(v0086 X Y k)
theorem e0087_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0087) = v0087 X Y k := by
  simp only [e0087,v0087,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0085_eval,e0086_eval]
def e0088 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0001 e0055
def v0088 (X Y k : ℂ) : ℂ := (v0001 X Y k)*(v0055 X Y k)
theorem e0088_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0088) = v0088 X Y k := by
  simp only [e0088,v0088,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0001_eval,e0055_eval]
def e0089 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p2_m3_b
def v0089 (X Y k : ℂ) : ℂ := integerNumerator_p2_m3_b X Y k
theorem e0089_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0089) = v0089 X Y k := by
  exact primitive_p2_m3_b_eval X Y k
def e0090 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0088 e0089
def v0090 (X Y k : ℂ) : ℂ := (v0088 X Y k)*(v0089 X Y k)
theorem e0090_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0090) = v0090 X Y k := by
  simp only [e0090,v0090,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0088_eval,e0089_eval]
def e0091 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0090
def v0091 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0090 X Y k)
theorem e0091_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0091) = v0091 X Y k := by
  simp only [e0091,v0091,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0090_eval]
def e0092 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0091 e0061
def v0092 (X Y k : ℂ) : ℂ := (v0091 X Y k)*(v0061 X Y k)
theorem e0092_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0092) = v0092 X Y k := by
  simp only [e0092,v0092,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0091_eval,e0061_eval]
def e0093 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0087 e0092
def v0093 (X Y k : ℂ) : ℂ := (v0087 X Y k)+(v0092 X Y k)
theorem e0093_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0093) = v0093 X Y k := by
  simp only [e0093,v0093,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0087_eval,e0092_eval]
def e0094 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p2_p1_a
def v0094 (X Y k : ℂ) : ℂ := integerNumerator_p2_p1_a X Y k
theorem e0094_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0094) = v0094 X Y k := by
  exact primitive_p2_p1_a_eval X Y k
def e0095 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0093 e0094
def v0095 (X Y k : ℂ) : ℂ := (v0093 X Y k)*(v0094 X Y k)
theorem e0095_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0095) = v0095 X Y k := by
  simp only [e0095,v0095,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0093_eval,e0094_eval]

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
