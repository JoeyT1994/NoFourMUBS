import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Pilot
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem n0029_input_width : CriticalZeroSumAssembly20261003.CoefficientRow.maxWidth denPairZ5+CriticalZeroSumAssembly20261003.CoefficientRow.maxWidth n0023≤30 := by decide
theorem n0029_target_width : CriticalZeroSumAssembly20261003.CoefficientRow.maxWidth n0029≤30 := by decide
theorem n0029_eval_from_rows (X Y : ℂ) (n : ℕ)
    (hc : ∀ i : ℕ, i<30 → CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add
      (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow denPairZ5 n0023 n i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((n0029.getD n []).getD i [])))=true) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt denPairZ5 n0023 n) =
      CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (n0029.getD n []) :=
  CriticalZeroSumAssembly20261003.CoefficientRow.coefficient_eq_of_rows X Y denPairZ5 n0023 n (n0029.getD n []) 30
    n0029_input_width (le_trans (CriticalZeroSumAssembly20261003.CoefficientRow.length_getD_le_maxWidth n0029 n) n0029_target_width) hc
theorem n0029_eval_from_whole (X Y : ℂ) (n : ℕ)
    (hc : CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (CriticalZeroSplitReduction20261003.Coefficients.add2 (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt denPairZ5 n0023 n)
      (CriticalZeroSplitReduction20261003.Coefficients.neg2 (n0029.getD n [])))=true) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt denPairZ5 n0023 n) =
      CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (n0029.getD n []) := by
  have hz := CriticalZeroSplitReduction20261003.IntegerReflector.evalII_zero X Y _ hc
  rw [CriticalZeroSplitReduction20261003.IntegerReflector.evalII_add,CriticalZeroSplitReduction20261003.IntegerReflector.evalII_neg] at hz
  exact sub_eq_zero.mp (by simpa only [sub_eq_add_neg] using hz)

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
