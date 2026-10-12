import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0076DataPart00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0076DataPart01
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0076DataPart02
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0076DataPart03
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0076DataPart04
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0076DataPart05
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0076DataPart06
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0076DataPart07
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0076DataPart08
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0076DataPart09
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0076DataPart10
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0076DataPart11
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0076DataPart12
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0076DataPart13
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0076DataPart14
import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions01
import NoFourMUBs.Step2.CriticalZero.SumClearing.RowProduct
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0068
import NoFourMUBs.Step2.CriticalZero.SumClearing.Reused0069
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
def r0070 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul n0069 r0006
theorem r0070_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0070) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0070 X Y k := by
  simp only [r0070,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0070,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,n0069_eval,r0006_eval]
def r0071 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add r0068 r0070
theorem r0071_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0071) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0071 X Y k := by
  simp only [r0071,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0071,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,r0068_eval,r0070_eval]
def r0072 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul r0035 r0058
theorem r0072_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0072) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0072 X Y k := by
  simp only [r0072,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0072,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,r0035_eval,r0058_eval]
def r0073 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul r0072 r0001
theorem r0073_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0073) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0073 X Y k := by
  simp only [r0073,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0073,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,r0072_eval,r0001_eval]
def r0074 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add r0071 r0073
theorem r0074_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0074) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0074 X Y k := by
  simp only [r0074,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0074,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,r0071_eval,r0073_eval]
def r0075 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0075
theorem r0075_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0075) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0075 X Y k := by
  simp only [r0075,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0075_eval]
def calculationRemaining0076 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul r0074 r0075
theorem calculationRemaining0076_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y calculationRemaining0076) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0076 X Y k := by
  simp only [calculationRemaining0076,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0076,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,r0074_eval,r0075_eval]
def r0076 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := r0076_part00 ++ r0076_part01 ++ r0076_part02 ++ r0076_part03 ++ r0076_part04 ++ r0076_part05 ++ r0076_part06 ++ r0076_part07 ++ r0076_part08 ++ r0076_part09 ++ r0076_part10 ++ r0076_part11 ++ r0076_part12 ++ r0076_part13 ++ r0076_part14
theorem r0076_length : r0076.length = 117 := by rfl
theorem r0076_product_length : (CriticalZeroSumAssembly20261003.DenseCoefficients.mul r0075 r0074).length = r0076.length := by
  rw [CriticalZeroSumAssembly20261003.DenseCoefficients.length_mul _ _ (by decide) (by decide)]
  rfl
theorem r0076_input_width : CriticalZeroSumAssembly20261003.CoefficientRow.maxWidth r0075 + CriticalZeroSumAssembly20261003.CoefficientRow.maxWidth r0074 ≤ 38 := by decide
theorem r0076_target_width : CriticalZeroSumAssembly20261003.CoefficientRow.maxWidth r0076 ≤ 38 := by decide
theorem r0076_from_rows (X Y : ℂ) (n : ℕ)
    (hc : ∀ i : ℕ, i < 38 → CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add
      (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow r0075 r0074 n i) (CriticalZeroSplitReduction20261003.Coefficients.neg ((r0076.getD n []).getD i []))) = true) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt r0075 r0074 n) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (r0076.getD n []) :=
  CriticalZeroSumAssembly20261003.CoefficientRow.coefficient_eq_of_rows X Y r0075 r0074 n (r0076.getD n []) 38
    r0076_input_width (le_trans (CriticalZeroSumAssembly20261003.CoefficientRow.length_getD_le_maxWidth r0076 n) r0076_target_width) hc
theorem r0076_from_whole (X Y : ℂ) (n : ℕ)
    (hc : CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (CriticalZeroSplitReduction20261003.Coefficients.add2 (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt r0075 r0074 n)
      (CriticalZeroSplitReduction20261003.Coefficients.neg2 (r0076.getD n []))) = true) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt r0075 r0074 n) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (r0076.getD n []) := by
  have hz := CriticalZeroSplitReduction20261003.IntegerReflector.evalII_zero X Y _ hc
  rw [CriticalZeroSplitReduction20261003.IntegerReflector.evalII_add,CriticalZeroSplitReduction20261003.IntegerReflector.evalII_neg] at hz
  exact sub_eq_zero.mp (by simpa only [sub_eq_add_neg] using hz)

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
