import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0060Check00
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem r0060_all (n : ℕ) (hn : n < residualRemaining0060.length) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (residualRemaining0060.getD n []) = true := by
  rw [residualRemaining0060_length] at hn
  have hc : n = 0 := by omega
  rcases hc with hn
  · subst n
    exact r0060_whole_000
theorem r0060_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0060) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0060 X Y k := by
  have hz := CriticalZeroSplitReduction20261003.Coefficients.eval_allZero k _ (CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates X Y residualRemaining0060 r0060_all)
  simp only [residualRemaining0060,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,
    CriticalZeroSplitReduction20261003.Coefficients.eval_add,CriticalZeroSplitReduction20261003.Coefficients.eval_neg,calculationRemaining0060_eval] at hz
  exact (sub_eq_zero.mp (by simpa only [sub_eq_add_neg] using hz)).symm

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
