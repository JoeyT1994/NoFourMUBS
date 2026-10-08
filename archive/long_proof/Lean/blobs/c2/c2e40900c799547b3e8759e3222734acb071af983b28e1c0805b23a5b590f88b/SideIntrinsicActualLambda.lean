import SideIntrinsicActualBindings
import SideIntrinsicPolynomialLambda

/-! All three literal intrinsic lambda identities, for every unit side.
Only unit monomials are cancelled; the determinant and permanent may vanish. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
open scoped ComplexConjugate
noncomputable section

theorem actual_intrinsic_lambda_identities (a : Rows ℂ) (ha : UnitRows a) :
    rowDet a ^ 2 = rowU a * rowV a * ((9 - Complex.normSq (rowR a) : ℝ) : ℂ) *
      conj (rowPerm a) - rowU a * rowV a * conj (sideP0 (rowS a) (rowT a) (rowR a)) ∧
    rowDet a ^ 2 = rowU a * rowV a * ((9 - Complex.normSq (rowT a) : ℝ) : ℂ) *
      conj (rowPerm a) - rowV a * conj (sideP1 (rowS a) (rowT a) (rowR a)) ∧
    rowDet a ^ 2 = rowU a * rowV a * ((9 - Complex.normSq (rowS a) : ℝ) : ℂ) *
      conj (rowPerm a) - rowU a * conj (sideP2 (rowS a) (rowT a) (rowR a)) := by
  obtain ⟨_,_,hu,hv⟩ := row_product_units a ha
  have huv := mul_ne_zero hu hv
  obtain ⟨hc0,hc1,hc2,hP0,hP1,hP2⟩ := actual_lambda_numerators a ha
  have hper := (row_det_perm_conjugate_bindings a ha).2
  have h0 := lambda0_numerator a
  have h1 := lambda1_numerator a
  have h2 := lambda2_numerator a
  rw [← hc0, ← hper, ← hP0] at h0
  rw [← hc1, ← hper, ← hP1] at h1
  rw [← hc2, ← hper, ← hP2] at h2
  refine ⟨?_,?_,?_⟩
  · apply mul_left_cancel₀ huv
    linear_combination h0
  · apply mul_left_cancel₀ hv
    linear_combination h1
  · apply mul_left_cancel₀ hu
    linear_combination h2

#print axioms actual_intrinsic_lambda_identities
end
end StrictReconstruction20261007.SideIntrinsic
