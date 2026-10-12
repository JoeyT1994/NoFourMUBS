import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Inputs

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000

namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
open CriticalZeroSplitReduction20261003
open CriticalZeroSumAssembly20261003

theorem n0043_whole_045 :
    IntegerReflector.zeroII (Coefficients.add2
      (CoefficientAt.mulAt n0041 Expressions.e0042 45)
      (Coefficients.neg2 (n0043.getD 45 []))) = true := by rfl

theorem n0043_coefficient_045_eval (X Y : ℂ) :
    IntegerReflector.evalII X Y (CoefficientAt.mulAt n0041 Expressions.e0042 45) =
      IntegerReflector.evalII X Y (n0043.getD 45 []) := by
  have hz := IntegerReflector.evalII_zero X Y _ n0043_whole_045
  rw [IntegerReflector.evalII_add, IntegerReflector.evalII_neg] at hz
  exact sub_eq_zero.mp (by simpa only [sub_eq_add_neg] using hz)

#print axioms n0043_whole_045
#print axioms n0043_coefficient_045_eval
end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
