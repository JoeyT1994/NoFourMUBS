import Mathlib

/-!
Elementary support lemmas for strict-seed side existence.

This file has not been compiled in the handoff environment.  It proves only
the displayed independent scalar facts, not the full matrix construction.
-/

namespace SideExistenceDomain

lemma strict_eta_pos (g eta chi : ℝ)
    (hR : 0 < 4 * g ^ 2 * eta - chi ^ 2) : 0 < eta := by
  by_contra h
  have heta : eta ≤ 0 := le_of_not_gt h
  have hprod : 4 * g ^ 2 * eta ≤ 0 :=
    mul_nonpos_of_nonneg_of_nonpos (by positivity) heta
  nlinarith [sq_nonneg chi]

lemma strict_scalar_divisors (g eta chi p detComplement : ℝ)
    (hR : 0 < 4 * g ^ 2 * eta - chi ^ 2)
    (hdet : 0 ≤ detComplement)
    (htrace : eta + detComplement = 36 - 4 * p)
    (hg : g = eta + 2 * (9 - p)) :
    0 < eta ∧ p < 9 ∧ eta < g ∧ 0 < g := by
  have heta : 0 < eta := strict_eta_pos g eta chi hR
  have hp : p < 9 := by linarith
  have hge : eta < g := by linarith
  exact ⟨heta, hp, hge, lt_trans heta hge⟩

lemma pnorm_pos (eta chi R c Pnorm : ℝ)
    (heta : 0 < eta) (hR : 0 < R)
    (hidentity : 4 * eta * Pnorm = (2 * c * eta + chi) ^ 2 + R) :
    0 < Pnorm := by
  by_contra h
  have hnorm : Pnorm ≤ 0 := le_of_not_gt h
  have hprod : 4 * eta * Pnorm ≤ 0 :=
    mul_nonpos_of_nonneg_of_nonpos (by positivity) hnorm
  nlinarith [sq_nonneg (2 * c * eta + chi)]

lemma delta_norm (g D : ℝ) (hg : 0 < g) (hD : 0 ≤ D)
    (hsquare : 729 * D ^ 2 = g ^ 2) : 27 * D = g := by
  have hproduct : (27 * D - g) * (27 * D + g) = 0 := by
    nlinarith
  have hpositive : 0 < 27 * D + g := by linarith
  rcases mul_eq_zero.mp hproduct with hzero | hzero
  · linarith
  · exact False.elim (ne_of_gt hpositive hzero)

lemma rho_pos (n d : ℝ) (hn : 0 < n) (hd : 0 ≤ d) :
    0 < (n + d) / 2 := by
  positivity

lemma lambda_numerator_identity (g eta chi c z zb : ℂ) :
    (g + c * z) * (g + c * zb) - (g ^ 2 + c * chi + c ^ 2 * eta) =
      c * (g * (z + zb) - chi) + c ^ 2 * (z * zb - eta) := by
  ring

lemma z_quadratic_identity (g eta chi z zb : ℂ) :
    g * z ^ 2 - chi * z + g * eta =
      z * (g * (z + zb) - chi) - g * (z * zb - eta) := by
  ring

lemma completed_square_identity (g eta chi R c : ℝ) :
    4 * eta * (g ^ 2 + c * chi + c ^ 2 * eta) -
      ((2 * c * eta + chi) ^ 2 + R) =
      4 * g ^ 2 * eta - chi ^ 2 - R := by
  ring

end SideExistenceDomain
