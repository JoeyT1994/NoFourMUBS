import StrictSideScalarGuards
import Mathlib.Tactic.FieldSimp

/-!
The finite scalar algebra after dF reality/discriminant in SIDE_FIBER.md.
This does not assume that sigma has the required norm: the exact numerator
identity below proves it from the prescribed alpha and rho quadratic.
The full-domain dF identities are recorded separately as the next translation
frontier; this module does not assert that frontier by an axiom or hypothesis
hidden in a physical definition.
-/

set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace StrictReconstruction20261007
open scoped ComplexConjugate
noncomputable section

/-- Exact polynomial identity underlying sigma=u+mu*alpha/rho. -/
theorem sigma_numerator_identity (u mu : ℂ) (rho : ℝ) :
    Complex.normSq ((rho : ℂ) * u + mu * (mu ^ 2 - u * conj mu)) =
      rho ^ 3 +
        (Complex.normSq mu - rho) *
          (rho ^ 2 - (1 - Complex.normSq mu) * rho +
            Complex.normSq (mu ^ 2 - u * conj mu)) +
        (Complex.normSq u - 1) * rho * (rho - Complex.normSq mu) := by
  simp [Complex.normSq_apply, Complex.mul_re, Complex.mul_im, pow_two]
  <;> ring

/-- The orientation rule and discriminant identity imply the positive rho root. -/
theorem oriented_rho_positive_quadratic (n d a : ℝ) (hn : 0 < n)
    (hd : 0 ≤ d) (hdisc : d ^ 2 = n ^ 2 - 4 * a) :
    0 < (n + d) / 2 ∧ ((n + d) / 2) ^ 2 - n * ((n + d) / 2) + a = 0 := by
  constructor
  · linarith
  · nlinarith

/-- No sigma-norm premise: this is discharged from the displayed recipe. -/
theorem prescribed_sigma_normSq (u mu : ℂ) (rho : ℝ)
    (hu : Complex.normSq u = 1) (hr : 0 < rho)
    (hquad : rho ^ 2 - (1 - Complex.normSq mu) * rho +
      Complex.normSq (mu ^ 2 - u * conj mu) = 0) :
    Complex.normSq (u + mu * ((mu ^ 2 - u * conj mu) / (rho : ℂ))) = rho := by
  have hr0 : rho ≠ 0 := ne_of_gt hr
  have hrc : (rho : ℂ) ≠ 0 := by exact_mod_cast hr0
  have hnum : Complex.normSq ((rho : ℂ) * u + mu * (mu ^ 2 - u * conj mu)) = rho ^ 3 := by
    rw [sigma_numerator_identity, hquad, hu]
    ring
  have hform : u + mu * ((mu ^ 2 - u * conj mu) / (rho : ℂ)) =
      ((rho : ℂ) * u + mu * (mu ^ 2 - u * conj mu)) / (rho : ℂ) := by
    field_simp [hrc]
    <;> ring
  rw [hform, Complex.normSq_div, hnum, Complex.normSq_ofReal]
  field_simp [hr0]
  <;> ring

theorem prescribed_sigma_nonzero (u mu : ℂ) (rho : ℝ)
    (hu : Complex.normSq u = 1) (hr : 0 < rho)
    (hquad : rho ^ 2 - (1 - Complex.normSq mu) * rho +
      Complex.normSq (mu ^ 2 - u * conj mu) = 0) :
    u + mu * ((mu ^ 2 - u * conj mu) / (rho : ℂ)) ≠ 0 := by
  apply Complex.normSq_pos.mp
  rw [prescribed_sigma_normSq u mu rho hu hr hquad]
  exact hr

end
end StrictReconstruction20261007

#print axioms StrictReconstruction20261007.sigma_numerator_identity
#print axioms StrictReconstruction20261007.oriented_rho_positive_quadratic
#print axioms StrictReconstruction20261007.prescribed_sigma_normSq
#print axioms StrictReconstruction20261007.prescribed_sigma_nonzero
