import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions01
import NoFourMUBs.Step2.CriticalZero.SumClearing.RowProduct
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0047
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
def r0048 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add r0046 r0047
theorem r0048_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0048) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0048 X Y k := by
  simp only [r0048,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0048,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,r0046_eval,r0047_eval]
def r0049 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul r0048 r0009
theorem r0049_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0049) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0049 X Y k := by
  simp only [r0049,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0049,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,r0048_eval,r0009_eval]
def r0050 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0050
theorem r0050_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0050) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0050 X Y k := by
  simp only [r0050,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0050_eval]
def calculationRemaining0051 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add r0049 r0050
theorem calculationRemaining0051_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y calculationRemaining0051) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0051 X Y k := by
  simp only [calculationRemaining0051,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0051,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,r0049_eval,r0050_eval]
def r0051 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s032
theorem r0051_length : r0051.length = 3 := by rfl
def residualRemaining0051 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add calculationRemaining0051 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg r0051)
theorem residualRemaining0051_length : residualRemaining0051.length = 3 := by rfl

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
