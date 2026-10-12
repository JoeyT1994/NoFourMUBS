import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0080DataPart00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0080DataPart01
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0080DataPart02
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0080DataPart03
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0080DataPart04
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0080DataPart05
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0080DataPart06
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0080DataPart07
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0080DataPart08
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0080DataPart09
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0080DataPart10
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0080DataPart11
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0080DataPart12
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0080DataPart13
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0080DataPart14
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0080DataPart15
import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions01
import NoFourMUBs.Step2.CriticalZero.SumClearing.RowProduct
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0077
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
def r0078 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0078
theorem r0078_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0078) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0078 X Y k := by
  simp only [r0078,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0078_eval]
def r0079 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul r0060 r0078
theorem r0079_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0079) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0079 X Y k := by
  simp only [r0079,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0079,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,r0060_eval,r0078_eval]
def calculationRemaining0080 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul r0077 r0079
theorem calculationRemaining0080_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y calculationRemaining0080) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0080 X Y k := by
  simp only [calculationRemaining0080,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0080,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,r0077_eval,r0079_eval]
def r0080 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := r0080_part00 ++ r0080_part01 ++ r0080_part02 ++ r0080_part03 ++ r0080_part04 ++ r0080_part05 ++ r0080_part06 ++ r0080_part07 ++ r0080_part08 ++ r0080_part09 ++ r0080_part10 ++ r0080_part11 ++ r0080_part12 ++ r0080_part13 ++ r0080_part14 ++ r0080_part15
theorem r0080_length : r0080.length = 123 := by rfl
theorem r0080_product_length : (CriticalZeroSumAssembly20261003.DenseCoefficients.mul r0079 r0077).length = r0080.length := by
  rw [CriticalZeroSumAssembly20261003.DenseCoefficients.length_mul _ _ (by decide) (by decide)]
  rfl

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
