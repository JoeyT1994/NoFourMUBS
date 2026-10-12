import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084DataPart00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084DataPart01
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084DataPart02
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084DataPart03
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084DataPart04
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084DataPart05
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084DataPart06
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084DataPart07
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084DataPart08
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084DataPart09
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084DataPart10
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084DataPart11
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084DataPart12
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084DataPart13
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084DataPart14
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084DataPart15
import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions01
import NoFourMUBs.Step2.CriticalZero.SumClearing.RowProduct
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0080
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
def r0081 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add r0067 r0080
theorem r0081_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0081) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0081 X Y k := by
  simp only [r0081,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0081,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,r0067_eval,r0080_eval]
def r0082 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0082
theorem r0082_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0082) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0082 X Y k := by
  simp only [r0082,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0082_eval]
def r0083 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul r0082 r0009
theorem r0083_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0083) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0083 X Y k := by
  simp only [r0083,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0083,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,r0082_eval,r0009_eval]
def calculationRemaining0084 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul r0081 r0083
theorem calculationRemaining0084_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y calculationRemaining0084) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0084 X Y k := by
  simp only [calculationRemaining0084,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0084,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,r0081_eval,r0083_eval]
def r0084 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := r0084_part00 ++ r0084_part01 ++ r0084_part02 ++ r0084_part03 ++ r0084_part04 ++ r0084_part05 ++ r0084_part06 ++ r0084_part07 ++ r0084_part08 ++ r0084_part09 ++ r0084_part10 ++ r0084_part11 ++ r0084_part12 ++ r0084_part13 ++ r0084_part14 ++ r0084_part15
theorem r0084_length : r0084.length = 127 := by rfl
theorem r0084_product_length : (CriticalZeroSumAssembly20261003.DenseCoefficients.mul r0083 r0081).length = r0084.length := by
  rw [CriticalZeroSumAssembly20261003.DenseCoefficients.length_mul _ _ (by decide) (by decide)]
  rfl

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
