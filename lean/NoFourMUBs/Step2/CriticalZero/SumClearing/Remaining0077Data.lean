import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0077DataPart00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0077DataPart01
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0077DataPart02
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0077DataPart03
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0077DataPart04
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0077DataPart05
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0077DataPart06
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0077DataPart07
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0077DataPart08
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0077DataPart09
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0077DataPart10
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0077DataPart11
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0077DataPart12
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0077DataPart13
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0077DataPart14
import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions01
import NoFourMUBs.Step2.CriticalZero.SumClearing.RowProduct
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0076
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
def calculationRemaining0077 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul r0053 r0076
theorem calculationRemaining0077_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y calculationRemaining0077) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0077 X Y k := by
  simp only [calculationRemaining0077,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0077,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,r0053_eval,r0076_eval]
def r0077 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := r0077_part00 ++ r0077_part01 ++ r0077_part02 ++ r0077_part03 ++ r0077_part04 ++ r0077_part05 ++ r0077_part06 ++ r0077_part07 ++ r0077_part08 ++ r0077_part09 ++ r0077_part10 ++ r0077_part11 ++ r0077_part12 ++ r0077_part13 ++ r0077_part14
theorem r0077_length : r0077.length = 119 := by rfl
theorem r0077_product_length : (CriticalZeroSumAssembly20261003.DenseCoefficients.mul r0053 r0076).length = r0077.length := by
  rw [CriticalZeroSumAssembly20261003.DenseCoefficients.length_mul _ _ (by decide) (by decide)]
  rfl

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
