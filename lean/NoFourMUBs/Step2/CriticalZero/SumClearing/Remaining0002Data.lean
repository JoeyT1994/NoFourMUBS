import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions00
import NoFourMUBs.Step2.CriticalZero.SumClearing.RowProduct
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
def r0000 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0000
theorem r0000_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0000) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0000 X Y k := by
  simp only [r0000,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0000_eval]
def r0001 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0001
theorem r0001_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0001) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0001 X Y k := by
  simp only [r0001,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0001_eval]
def calculationRemaining0002 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow r0001 6
theorem calculationRemaining0002_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y calculationRemaining0002) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0002 X Y k := by
  simp only [calculationRemaining0002,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0002,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,r0001_eval]
def r0002 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s019
theorem r0002_length : r0002.length = 1 := by rfl
def residualRemaining0002 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add calculationRemaining0002 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg r0002)
theorem residualRemaining0002_length : residualRemaining0002.length = 1 := by rfl

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
