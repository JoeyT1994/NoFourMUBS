import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Inputs
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem n0043_input_width : CriticalZeroSumAssembly20261003.CoefficientRow.maxWidth n0041 + CriticalZeroSumAssembly20261003.CoefficientRow.maxWidth NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0042 ≤ 28 := by decide
theorem n0043_target_width : CriticalZeroSumAssembly20261003.CoefficientRow.maxWidth n0043 ≤ 28 := by decide
theorem n0043_eval_from_rows (X Y : ℂ) (n : ℕ)
    (hc : ∀ i : ℕ, i < 28 → CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add
      (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow n0041 NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0042 n i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((n0043.getD n []).getD i []))) = true) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt n0041 NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0042 n) =
      CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (n0043.getD n []) :=
  CriticalZeroSumAssembly20261003.CoefficientRow.coefficient_eq_of_rows X Y n0041 NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0042 n (n0043.getD n []) 28
    n0043_input_width (le_trans (CriticalZeroSumAssembly20261003.CoefficientRow.length_getD_le_maxWidth n0043 n) n0043_target_width) hc
theorem n0043_eval_from_whole (X Y : ℂ) (n : ℕ)
    (hc : CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (CriticalZeroSplitReduction20261003.Coefficients.add2 (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt n0041 NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0042 n)
      (CriticalZeroSplitReduction20261003.Coefficients.neg2 (n0043.getD n []))) = true) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt n0041 NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0042 n) =
      CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (n0043.getD n []) := by
  have hz := CriticalZeroSplitReduction20261003.IntegerReflector.evalII_zero X Y _ hc
  rw [CriticalZeroSplitReduction20261003.IntegerReflector.evalII_add,CriticalZeroSplitReduction20261003.IntegerReflector.evalII_neg] at hz
  exact sub_eq_zero.mp (by simpa only [sub_eq_add_neg] using hz)

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
