import NoFourMUBs.Step2.CriticalZero.Group00Exact
import NoFourMUBs.Step2.CriticalZero.Group01Exact
import NoFourMUBs.Step2.CriticalZero.Group02Exact
import NoFourMUBs.Step2.CriticalZero.Group03Exact
import NoFourMUBs.Step2.CriticalZero.Group04Exact
import NoFourMUBs.Step2.CriticalZero.Group05Exact
import NoFourMUBs.Step2.CriticalZero.Group06Exact
import NoFourMUBs.Step2.CriticalZero.Group07Exact
import NoFourMUBs.Step2.CriticalZero.Group08Exact
import NoFourMUBs.Step2.CriticalZero.Group09Exact
import NoFourMUBs.Step2.CriticalZero.Group10Exact
import NoFourMUBs.Step2.CriticalZero.NumeratorChecks
import NoFourMUBs.Step2.CriticalZero.NumeratorBindings

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003

noncomputable section
variable {K : Type*} [Field K] [CharZero K]

/-- Assemble the same numerator from the checked archived groups. -/
theorem computed_coefficients_eq_rawNumerator (X Y z : K) :
    Coefficients.eval z (allCommonCoefficients X Y) = rawNumerator X Y z := by
  have hall : Coefficients.eval z (allCommonCoefficients X Y) =
      Coefficients.eval z (ExprCoefficients.interpret X Y groupedNumeratorExpanded) := by
    rw [← allCommonExprCoefficients_interpret, ← groupedNumeratorOriginal_eval]
    simp only [groupedNumeratorOriginal, groupedNumeratorExpanded,
      ExprCoefficients.interpret_add, Coefficients.eval_add,
      numerator_group00_eval_identity, numerator_group01_eval_identity, numerator_group02_eval_identity, numerator_group03_eval_identity, numerator_group04_eval_identity, numerator_group05_eval_identity, numerator_group06_eval_identity, numerator_group07_eval_identity, numerator_group08_eval_identity, numerator_group09_eval_identity, numerator_group10_eval_identity]
  rw [hall]
  have h := DenseCoefficients.allZero_of_certificates X Y groupedNumeratorResidual
    numerator_all_certificates
  rw [groupedNumeratorResidual_interpret] at h
  have hv := Coefficients.eval_allZero z _ h
  rw [Coefficients.eval_add, Coefficients.eval_neg,
    rawNumeratorExprCoefficients_interpret] at hv
  exact sub_eq_zero.mp (by simpa only [rawNumerator, sub_eq_add_neg] using hv)

end
end CriticalZeroSumAssembly20261003
