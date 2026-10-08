import ThirdRowGatePolynomial
import PreRhoActualBindings

/-! Bind both finite third-row certificates to the literal prescribed lambda formulas. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007
open Centiradian20261006
open scoped ComplexConjugate
noncomputable section

theorem actual_third_row_polynomial_identities {s t r : ℂ}
    (hR : 0 < gramInvariant s t r) {epsilon : ℝ} (he : epsilon ^ 2 = 1) :
    let e := ThirdRowGate.coefficients s (conj s) t (conj t) r (conj r)
    let l0 := prescribedLambda0 s t r epsilon
    let b := conj (prescribedLambda1 s t r epsilon)
    let c := conj (prescribedLambda2 s t r epsilon)
    let z := sideZ s t r epsilon
    (e.f0 + e.fu * (l0 * b) + e.fl * (l0 * z) + e.fb * (b * conj z) = 0) ∧
    (e.e0 + e.eu * (l0 * b) + e.el * (l0 * z) + e.ec * c +
      e.euc * (l0 * b * c) = 0) := by
  obtain ⟨hg, heta, hchi, _, _, _⟩ := actualAlignmentData_scalar_bindings s t r
  obtain ⟨hp0, hp1, hp2⟩ := actualAlignmentData_P_bindings s t r
  obtain ⟨hP0, hP1, hP2⟩ := strict_sideP_nonzero hR
  obtain ⟨hsum, hprod⟩ := sideZ_moments hR he
  obtain ⟨hl0, hl1, hl2⟩ := actual_lambda_polynomial_bindings hR epsilon
  obtain ⟨e0, e1, e2⟩ := prescribedLambdas_eq_sideLambdas hR epsilon
  dsimp only
  rw [e0, e1, e2]
  apply ThirdRowGate.gram_lambda_identities s (conj s) t (conj t) r (conj r)
    (sideZ s t r epsilon) (conj (sideZ s t r epsilon))
    (sideLambda0 s t r epsilon) (conj (sideLambda1 s t r epsilon))
    (conj (sideLambda2 s t r epsilon))
  · change (actualAlignmentData s t r).g ≠ 0
    rw [hg]
    exact_mod_cast (strict_eta_pos_g_ne_zero hR).2
  · change (actualAlignmentData s t r).p0bar ≠ 0
    rw [hp0]
    exact conj_ne_zero_of_ne_zero hP0
  · change (actualAlignmentData s t r).p1 ≠ 0
    rw [hp1]
    exact hP1
  · change (actualAlignmentData s t r).p2 ≠ 0
    rw [hp2]
    exact hP2
  · change (actualAlignmentData s t r).g *
      (sideZ s t r epsilon + conj (sideZ s t r epsilon)) = (actualAlignmentData s t r).chi
    rw [hg, hchi]
    exact hsum
  · change sideZ s t r epsilon * conj (sideZ s t r epsilon) = (actualAlignmentData s t r).eta
    rw [heta]
    exact hprod
  · exact hl0
  · exact hl1
  · exact hl2

#print axioms actual_third_row_polynomial_identities
end
end StrictReconstruction20261007

