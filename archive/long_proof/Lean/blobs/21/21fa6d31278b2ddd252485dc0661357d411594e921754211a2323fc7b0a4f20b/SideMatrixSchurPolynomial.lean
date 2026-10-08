import Mathlib.Data.Complex.Basic
import Mathlib.Tactic.Ring

/-! The small correlation-only Schur identity, before actual definition binding. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace StrictReconstruction20261007
open scoped ComplexConjugate
noncomputable section

theorem side_matrix_schur_polynomial (s t r : ℂ) :
    (1 - Complex.normSq (s / 3)) * (1 - Complex.normSq (t / 3)) -
      Complex.normSq (r / 3 - (t / 3) * conj (s / 3)) =
      (27 - 3 * (Complex.normSq s + Complex.normSq t + Complex.normSq r) +
        2 * (s * r * conj t).re) / 27 := by
  simp [Complex.normSq_apply, Complex.mul_re, Complex.mul_im,
    Complex.div_re, Complex.div_im, pow_two]
  <;> ring

end
end StrictReconstruction20261007

#print axioms StrictReconstruction20261007.side_matrix_schur_polynomial
