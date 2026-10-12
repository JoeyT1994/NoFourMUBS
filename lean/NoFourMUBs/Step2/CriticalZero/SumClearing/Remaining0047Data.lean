import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions00
import NoFourMUBs.Step2.CriticalZero.SumClearing.RowProduct
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0002
import NoFourMUBs.Step2.CriticalZero.SumClearing.Stage0000Factors
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Inputs
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
def r0003 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0003
theorem r0003_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0003) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0003 X Y k := by
  simp only [r0003,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0003_eval]
def r0004 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow r0003 8
theorem r0004_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0004) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0004 X Y k := by
  simp only [r0004,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0004,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,r0003_eval]
def r0005 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul r0002 r0004
theorem r0005_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0005) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0005 X Y k := by
  simp only [r0005,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0005,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,r0002_eval,r0004_eval]
def r0006 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0006
theorem r0006_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0006) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0006 X Y k := by
  simp only [r0006,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0006_eval]
def r0007 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow r0006 7
theorem r0007_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0007) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0007 X Y k := by
  simp only [r0007,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0007,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,r0006_eval]
def r0009 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0009
theorem r0009_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0009) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0009 X Y k := by
  simp only [r0009,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0009_eval]
def r0012 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0012
theorem r0012_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0012) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0012 X Y k := by
  simp only [r0012,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0012_eval]
def r0013 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow r0012 5
theorem r0013_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0013) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0013 X Y k := by
  simp only [r0013,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0013,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,r0012_eval]
def r0015 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0015
theorem r0015_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0015) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0015 X Y k := by
  simp only [r0015,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0015_eval]
def r0016 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow r0015 5
theorem r0016_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0016) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0016 X Y k := by
  simp only [r0016,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0016,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,r0015_eval]
def r0018 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0018
theorem r0018_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0018) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0018 X Y k := by
  simp only [r0018,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0018_eval]
def r0021 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0021
theorem r0021_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0021) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0021 X Y k := by
  simp only [r0021,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0021_eval]
def r0022 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow r0021 5
theorem r0022_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0022) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0022 X Y k := by
  simp only [r0022,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0022,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,r0021_eval]
def r0024 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0024
theorem r0024_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0024) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0024 X Y k := by
  simp only [r0024,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0024_eval]
def r0025 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow r0024 5
theorem r0025_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0025) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0025 X Y k := by
  simp only [r0025,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0025,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,r0024_eval]
def r0027 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0027
theorem r0027_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0027) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0027 X Y k := by
  simp only [r0027,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0027_eval]
def r0028 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow r0027 5
theorem r0028_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0028) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0028 X Y k := by
  simp only [r0028,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0028,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,r0027_eval]
def r0030 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul r0000 n0029
theorem r0030_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0030) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0030 X Y k := by
  simp only [r0030,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0030,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,r0000_eval,n0029_eval]
def r0031 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0031
theorem r0031_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0031) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0031 X Y k := by
  simp only [r0031,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0031_eval]
def r0032 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow r0003 4
theorem r0032_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0032) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0032 X Y k := by
  simp only [r0032,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0032,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,r0003_eval]
def r0033 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0033
theorem r0033_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0033) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0033 X Y k := by
  simp only [r0033,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0033_eval]
def r0034 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul r0033 r0006
theorem r0034_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0034) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0034 X Y k := by
  simp only [r0034,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0034,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,r0033_eval,r0006_eval]
def r0035 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0035
theorem r0035_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0035) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0035 X Y k := by
  simp only [r0035,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0035_eval]
def r0036 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0036
theorem r0036_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0036) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0036 X Y k := by
  simp only [r0036,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0036_eval]
def r0037 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul r0035 r0036
theorem r0037_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0037) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0037 X Y k := by
  simp only [r0037,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0037,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,r0035_eval,r0036_eval]
def r0038 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul r0037 r0001
theorem r0038_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0038) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0038 X Y k := by
  simp only [r0038,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0038,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,r0037_eval,r0001_eval]
def r0039 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add r0034 r0038
theorem r0039_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0039) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0039 X Y k := by
  simp only [r0039,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0039,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,r0034_eval,r0038_eval]
def r0040 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul r0032 r0039
theorem r0040_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0040) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0040 X Y k := by
  simp only [r0040,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0040,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,r0032_eval,r0039_eval]
def r0042 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0042
theorem r0042_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0042) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0042 X Y k := by
  simp only [r0042,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0042_eval]
def r0044 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0044
theorem r0044_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0044) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0044 X Y k := by
  simp only [r0044,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0044_eval]
def r0045 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg r0003
theorem r0045_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0045) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0045 X Y k := by
  simp only [r0045,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0045,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSplitReduction20261003.Coefficients.eval_neg,r0003_eval]
def r0046 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add r0044 r0045
theorem r0046_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0046) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0046 X Y k := by
  simp only [r0046,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0046,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,r0044_eval,r0045_eval]
def calculationRemaining0047 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg r0006
theorem calculationRemaining0047_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y calculationRemaining0047) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0047 X Y k := by
  simp only [calculationRemaining0047,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0047,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSplitReduction20261003.Coefficients.eval_neg,r0006_eval]
def r0047 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s049
theorem r0047_length : r0047.length = 1 := by rfl
def residualRemaining0047 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add calculationRemaining0047 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg r0047)
theorem residualRemaining0047_length : residualRemaining0047.length = 1 := by rfl

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
