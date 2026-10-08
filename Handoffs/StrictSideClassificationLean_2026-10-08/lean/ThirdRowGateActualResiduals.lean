import ThirdRowGateActualBindings

/-! Both geometric residuals vanish for the actual recipe, with no certificate premise. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007
open Centiradian20261006
open scoped ComplexConjugate
noncomputable section

theorem actual_third_row_geometry_zero {s t r : ℂ}
    (hR : 0 < gramInvariant s t r) {epsilon : ℝ} (he : epsilon ^ 2 = 1) :
    actualGateConstant s t r epsilon = 0 ∧ actualGateLinear s t r epsilon = 0 := by
  obtain ⟨hc, hl⟩ := actual_third_row_polynomial_identities hR he
  have hg : (PreRhoAlignment.gramData s (conj s) t (conj t) r (conj r)).g =
      (gramG s t r : ℂ) := (actualAlignmentData_scalar_bindings s t r).1
  have hS : conj s / 3 = conj (s / 3) := by simp [map_ofNat]
  have hT : conj t / 3 = conj (t / 3) := by simp [map_ofNat]
  constructor
  · have h := ThirdRowGate.constant_geometry_scaling s (conj s) t (conj t) r (conj r)
      (prescribedLambda0 s t r epsilon) (conj (prescribedLambda1 s t r epsilon))
      (sideZ s t r epsilon) (conj (sideZ s t r epsilon))
    dsimp only at h
    rw [hc, mul_zero] at h
    rw [← preRhoN_complex s, ← reconstructionK_conjugate s t r, hg, hS, hT] at h
    have huA := prescribedU_conj_preRho hR he
    unfold prescribedU at huA
    rw [← huA] at h
    have hz : (27 : ℂ) * actualGateConstant s t r epsilon = 0 := by
      simp only [actualGateConstant, ThirdRowGate.geometryConstant, reconstructionK,
        preRhoN, preRhoAlpha, prescribedU, preRhoNumerator, preRhoWithLambdas] at h ⊢
      linear_combination h
    exact (mul_eq_zero.mp hz).resolve_left (by norm_num)
  · have h := ThirdRowGate.linear_geometry_scaling s (conj s) t (conj t) r (conj r)
      (prescribedLambda0 s t r epsilon) (conj (prescribedLambda1 s t r epsilon))
      (conj (prescribedLambda2 s t r epsilon)) (sideZ s t r epsilon)
    dsimp only at h
    rw [hl] at h
    rw [← preRhoN_complex s, ← reconstructionK_conjugate s t r, hg, hS, hT] at h
    have hz : (2187 : ℂ) * actualGateLinear s t r epsilon = 0 := by
      simpa only [actualGateLinear, reconstructionK, preRhoN, preRhoAlpha, prescribedU,
        preRhoNumerator, preRhoWithLambdas] using h
    exact (mul_eq_zero.mp hz).resolve_left (by norm_num)

#print axioms actual_third_row_geometry_zero
end
end StrictReconstruction20261007

