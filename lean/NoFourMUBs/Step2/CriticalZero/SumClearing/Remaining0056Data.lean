import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions01
import NoFourMUBs.Step2.CriticalZero.SumClearing.RowProduct
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0051
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
def r0052 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul r0003 r0051
theorem r0052_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0052) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0052 X Y k := by
  simp only [r0052,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0052,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,r0003_eval,r0051_eval]
def r0053 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg r0052
theorem r0053_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0053) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0053 X Y k := by
  simp only [r0053,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0053,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSplitReduction20261003.Coefficients.eval_neg,r0052_eval]
def r0054 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul r0032 r0036
theorem r0054_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0054) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0054 X Y k := by
  simp only [r0054,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0054,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,r0032_eval,r0036_eval]
def r0055 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg r0054
theorem r0055_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0055) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0055 X Y k := by
  simp only [r0055,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0055,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSplitReduction20261003.Coefficients.eval_neg,r0054_eval]
def calculationRemaining0056 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul r0031 r0055
theorem calculationRemaining0056_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y calculationRemaining0056) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0056 X Y k := by
  simp only [calculationRemaining0056,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0056,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,r0031_eval,r0055_eval]
def r0056 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := r0054
theorem r0056_length : r0056.length = 40 := by rfl
def residualRemaining0056 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add calculationRemaining0056 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg r0056)
theorem residualRemaining0056_length : residualRemaining0056.length = 40 := by rfl

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
