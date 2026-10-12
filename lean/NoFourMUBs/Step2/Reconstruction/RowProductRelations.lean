import NoFourMUBs.Reuse.Archive.SideIntrinsicActualLambda
import NoFourMUBs.Reuse.Archive.SideIntrinsicActualNorms

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
open scoped ComplexConjugate
noncomputable section

/-- Eliminate the shared determinant from the existing intrinsic identities.
Only unit row products are cancelled; singular sides remain included. -/
theorem row_permanent_product_relation (a : Rows ℂ) (ha : UnitRows a) :
    ((Complex.normSq (rowT a) - Complex.normSq (rowR a) : ℝ) : ℂ) * rowPerm a =
      sideP0 (rowS a) (rowT a) (rowR a) -
        rowU a * sideP1 (rowS a) (rowT a) (rowR a) := by
  obtain ⟨hunit,_,_,hv⟩ := row_product_units a ha
  obtain ⟨h0,h1,_⟩ := actual_intrinsic_lambda_identities a ha
  have hb : rowU a *
      ((Complex.normSq (rowT a) - Complex.normSq (rowR a) : ℝ) : ℂ) *
      conj (rowPerm a) = rowU a * conj (sideP0 (rowS a) (rowT a) (rowR a)) -
        conj (sideP1 (rowS a) (rowT a) (rowR a)) := by
    apply mul_left_cancel₀ hv
    push_cast at h0 h1 ⊢
    linear_combination h1 - h0
  have hu : rowU a * conj (rowU a) = 1 := by
    rw [Complex.mul_conj,hunit]; rfl
  have hh := congrArg (fun z : ℂ => rowU a * conj z) hb
  simp only [map_mul,map_sub,Complex.conj_ofReal,
    show conj (conj (rowPerm a)) = rowPerm a from by simp,
    show conj (conj (sideP0 (rowS a) (rowT a) (rowR a))) =
      sideP0 (rowS a) (rowT a) (rowR a) from by simp,
    show conj (conj (sideP1 (rowS a) (rowT a) (rowR a))) =
      sideP1 (rowS a) (rowT a) (rowR a) from by simp] at hh
  linear_combination hh -
    (((Complex.normSq (rowT a) - Complex.normSq (rowR a) : ℝ) : ℂ) * rowPerm a -
      sideP0 (rowS a) (rowT a) (rowR a)) * hu

/-- The second product is determined by the same moments whenever its
displayed factor is nonzero. This cleared identity also holds at its zeros. -/
theorem row_second_product_relation (a : Rows ℂ) (ha : UnitRows a) :
    rowV a * (conj (sideP0 (rowS a) (rowT a) (rowR a)) -
      ((Complex.normSq (rowS a) - Complex.normSq (rowR a) : ℝ) : ℂ) *
        conj (rowPerm a)) = conj (sideP2 (rowS a) (rowT a) (rowR a)) := by
  obtain ⟨_,_,hu,_⟩ := row_product_units a ha
  obtain ⟨h0,_,h2⟩ := actual_intrinsic_lambda_identities a ha
  apply mul_left_cancel₀ hu
  push_cast at h0 h2 ⊢
  linear_combination h0 - h2

/-- The original product quadratic follows from the intrinsic permanent
relation and its already checked norm. No denominator guard is imposed. -/
theorem row_product_quadratic (a : Rows ℂ) (ha : UnitRows a) :
    let P0 := sideP0 (rowS a) (rowT a) (rowR a)
    let P1 := sideP1 (rowS a) (rowT a) (rowR a)
    let gap := Complex.normSq (rowT a) - Complex.normSq (rowR a)
    conj P0 * P1 * rowU a^2 -
      ((Complex.normSq P0 + Complex.normSq P1 -
        gramEta (rowS a) (rowT a) (rowR a) * gap^2 : ℝ) : ℂ) * rowU a +
      P0 * conj P1 = 0 := by
  let P0 := sideP0 (rowS a) (rowT a) (rowR a)
  let P1 := sideP1 (rowS a) (rowT a) (rowR a)
  let gap := Complex.normSq (rowT a) - Complex.normSq (rowR a)
  change conj P0 * P1 * rowU a^2 -
    ((Complex.normSq P0 + Complex.normSq P1 -
      gramEta (rowS a) (rowT a) (rowR a) * gap^2 : ℝ) : ℂ) * rowU a +
    P0 * conj P1 = 0
  have hp : (gap : ℂ) * rowPerm a = P0 - rowU a * P1 :=
    row_permanent_product_relation a ha
  have hs : (P0 - rowU a*P1) * conj (P0 - rowU a*P1) =
      ((gramEta (rowS a) (rowT a) (rowR a) * gap^2 : ℝ) : ℂ) := by
    rw [← hp,Complex.mul_conj,map_mul,Complex.normSq_ofReal,
      ← actual_gramEta_norm_perm a ha]
    push_cast
    ring
  have hu : rowU a * conj (rowU a) = 1 := by
    rw [Complex.mul_conj,(row_product_units a ha).1]; rfl
  have h0 := Complex.mul_conj P0
  have h1 := Complex.mul_conj P1
  simp only [map_sub,map_mul] at hs
  push_cast at hs ⊢
  linear_combination -rowU a * hs +
    (rowU a*P1*conj P1 - P0*conj P1) * hu + rowU a*h0 + rowU a*h1

end
end StrictReconstruction20261007.SideIntrinsic
