import NoFourMUBs.Reuse.Archive.CriticalZeroSumEval00
import NoFourMUBs.Reuse.Archive.CriticalZeroSumTrip00Exact

set_option autoImplicit false
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]

/-- The archived product certificate supplies common term 01 without expanding
its three factors again. No new coefficient array is introduced. -/
theorem common_term01_from_trip00 (X Y z : K) :
    Coefficients.eval z (DenseCoefficients.interpret X Y (DenseCoefficients.neg trip00Cs)) =
      Coefficients.eval z (commonCoefficients_01 X Y) := by
  rw [DenseCoefficients.interpret_neg, Coefficients.eval_neg, trip00_eval, eval_common_01]
  simp [commonTerm_01, mul_assoc]

end
end CriticalZeroSumAssembly20261003
