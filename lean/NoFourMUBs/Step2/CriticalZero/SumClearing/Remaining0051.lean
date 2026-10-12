import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0051Check00
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem r0051_all (n : ℕ) (hn : n < residualRemaining0051.length) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (residualRemaining0051.getD n []) = true := by
  rw [residualRemaining0051_length] at hn
  have hc : n = 0 ∨ n = 1 ∨ n = 2 := by omega
  rcases hc with hn | hn | hn
  · subst n
    exact r0051_whole_000
  · subst n
    exact r0051_whole_001
  · subst n
    exact r0051_whole_002
theorem r0051_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0051) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0051 X Y k := by
  have hz := CriticalZeroSplitReduction20261003.Coefficients.eval_allZero k _ (CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates X Y residualRemaining0051 r0051_all)
  simp only [residualRemaining0051,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,
    CriticalZeroSplitReduction20261003.Coefficients.eval_add,CriticalZeroSplitReduction20261003.Coefficients.eval_neg,calculationRemaining0051_eval] at hz
  exact (sub_eq_zero.mp (by simpa only [sub_eq_add_neg] using hz)).symm

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
