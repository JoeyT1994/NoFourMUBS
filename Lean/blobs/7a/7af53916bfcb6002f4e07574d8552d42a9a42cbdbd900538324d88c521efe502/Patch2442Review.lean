import Patch2442Cancellation
import Patch2442SignedSqrt

set_option autoImplicit false
namespace Patch2442IndependentReview20261003
open Patch2442Algebra20261003 Patch2442SignedSqrt20261003

/-- The endpoint is a literal identity in the existing physical gate's
radicand, for arbitrary complex moments. No unit/regularity premise is hidden. -/
theorem literal_real_radicand (s t r : ℂ) :
    (ShoulderPhaseGate20261002.radicand s t r).re =
      cancelledR
        (Complex.normSq s + Complex.normSq t + Complex.normSq r)
        (Complex.normSq s * Complex.normSq t + Complex.normSq s * Complex.normSq r +
          Complex.normSq t * Complex.normSq r -
          Complex.normSq s * Complex.normSq t * Complex.normSq r)
        (2 * (s * r * star t).re) :=
  phaseGate_radicand_re_cancelled s t r

/-- Both signs are handled by sigma squared equal to one. R nonnegativity
and strict positivity of C and F are explicit. -/
theorem both_signs_arithmetic (C T R σ : ℝ)
    (hC : 0 < C) (hF : 0 < C^2-T^2*R)
    (hR : 0 ≤ R) (hσ : σ^2 = 1) :
    0 < C+σ*T*Real.sqrt R :=
  cleared_F_excludes_both_signs hC hF hR hσ

/-- The provider formula remains a necessary explicit mathematical input. -/
theorem mean_obstruction (A B D R σ x y z : ℝ)
    (hD : 0 < D) (hR : 0 ≤ R) (hσ : σ^2 = 1)
    (hx : x^2 ≤ R) (hy : y^2 ≤ R) (hz : z^2 ≤ R)
    (provider : (x+y+z)/3 = (A+σ*B*Real.sqrt R)/D)
    (hC : 0 < A^2+(B^2-D^2)*R)
    (hF : 0 < (A^2+(B^2-D^2)*R)^2-(2*A*B)^2*R) : False := by
  have hm := mean_square_le_of_three hx hy hz
  rw [provider] at hm
  exact mean_square_excluded_by_CF hD hR hσ hC hF hm

theorem zero_lower_does_not_certify :
    ¬ SignedSqrtLowerCertificate 0 1 0 0 := by
  norm_num [SignedSqrtLowerCertificate]

theorem upper_equality_does_not_certify :
    ¬ SignedSqrtLowerCertificate 1 (-1) 0 1 := by
  norm_num [SignedSqrtLowerCertificate]

theorem lower_equality_does_not_certify :
    ¬ SignedSqrtLowerCertificate (-1) 1 1 1 := by
  norm_num [SignedSqrtLowerCertificate]

#print axioms literal_real_radicand
#print axioms both_signs_arithmetic
#print axioms mean_obstruction
#print axioms zero_lower_does_not_certify
#print axioms upper_equality_does_not_certify
#print axioms lower_equality_does_not_certify
end Patch2442IndependentReview20261003
