import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions01
import NoFourMUBs.Step2.CriticalZero.SumClearing.RowProduct
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0058
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
def r0059 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul r0053 r0058
theorem r0059_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0059) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0059 X Y k := by
  simp only [r0059,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0059,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,r0053_eval,r0058_eval]
def calculationRemaining0060 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow r0001 2
theorem calculationRemaining0060_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y calculationRemaining0060) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0060 X Y k := by
  simp only [calculationRemaining0060,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0060,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,r0001_eval]
def r0060 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s027
theorem r0060_length : r0060.length = 1 := by rfl
def residualRemaining0060 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add calculationRemaining0060 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg r0060)
theorem residualRemaining0060_length : residualRemaining0060.length = 1 := by rfl

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
