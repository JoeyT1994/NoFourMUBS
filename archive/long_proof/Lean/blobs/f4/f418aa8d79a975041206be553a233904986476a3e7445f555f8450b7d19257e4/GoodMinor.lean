import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Analysis.Complex.Basic
import Mathlib.Algebra.BigOperators.Fin
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.FinCases

/-! Quantitative choice of a 3 by 3 minor of a 3 by 6 row frame. -/
namespace Mub6.Classification.GoodMinor
open scoped BigOperators
open Matrix
noncomputable section

/-- The twenty increasing triples of columns, in lexicographic order. -/
def columns : Fin 20 → Fin 3 → Fin 6 :=
  ![![0,1,2], ![0,1,3], ![0,1,4], ![0,1,5],
    ![0,2,3], ![0,2,4], ![0,2,5], ![0,3,4], ![0,3,5], ![0,4,5],
    ![1,2,3], ![1,2,4], ![1,2,5], ![1,3,4], ![1,3,5], ![1,4,5],
    ![2,3,4], ![2,3,5], ![2,4,5], ![3,4,5]]

theorem columns_injective (k : Fin 20) : Function.Injective (columns k) := by
  fin_cases k <;> decide

/-- The selected 3 by 3 column minor. -/
def minor {R : Type*} (A : Matrix (Fin 3) (Fin 6) R) (k : Fin 20) :
    Matrix (Fin 3) (Fin 3) R :=
  A.submatrix id (columns k)

set_option maxHeartbeats 0 in
/-- A concrete Cauchy--Binet identity, valid over every commutative ring. -/
theorem cauchyBinet_three_six {R : Type*} [CommRing R]
    (A : Matrix (Fin 3) (Fin 6) R) (B : Matrix (Fin 6) (Fin 3) R) :
    (A * B).det = ∑ k : Fin 20,
      (minor A k).det * (B.submatrix (columns k) id).det := by
  simp [Matrix.det_fin_three, Matrix.mul_apply, Fin.sum_univ_succ,
    minor, Matrix.submatrix, columns]
  ring

/-- The sum of the squared complex determinants is the row-Gram determinant. -/
theorem gram_det_eq_sum_minor_normSq (A : Matrix (Fin 3) (Fin 6) ℂ) :
    (A * Aᴴ).det = ((∑ k : Fin 20, Complex.normSq (minor A k).det : ℝ) : ℂ) := by
  have h := cauchyBinet_three_six A Aᴴ
  have hb (k : Fin 20) :
      ((Aᴴ).submatrix (columns k) id).det = star (minor A k).det := by
    change ((minor A k)ᴴ).det = _
    exact Matrix.det_conjTranspose _
  rw [Complex.ofReal_sum]
  rw [h]
  apply Finset.sum_congr rfl
  intro k _
  rw [hb, Complex.normSq_eq_conj_mul_self]
  exact mul_comm _ _

/-- The normalization AA† = 6 I makes the total squared-minor mass exactly 216. -/
theorem sum_minor_normSq_eq_216 (A : Matrix (Fin 3) (Fin 6) ℂ)
    (hA : A * Aᴴ = (6 : ℂ) • (1 : Matrix (Fin 3) (Fin 3) ℂ)) :
    ∑ k : Fin 20, Complex.normSq (minor A k).det = 216 := by
  have h := gram_det_eq_sum_minor_normSq A
  rw [hA, Matrix.det_smul, Matrix.det_one] at h
  norm_num at h
  apply Complex.ofReal_injective
  simpa using h.symm

/-- Universal quantitative minor bound for a normalized complex row frame. -/
theorem exists_good_minor (A : Matrix (Fin 3) (Fin 6) ℂ)
    (hA : A * Aᴴ = (6 : ℂ) • (1 : Matrix (Fin 3) (Fin 3) ℂ)) :
    ∃ k : Fin 20, (54 / 5 : ℝ) ≤ Complex.normSq (minor A k).det := by
  have hsum : (∑ _k : Fin 20, (54 / 5 : ℝ)) ≤
      ∑ k : Fin 20, Complex.normSq (minor A k).det := by
    rw [sum_minor_normSq_eq_216 A hA]
    norm_num
  obtain ⟨k, _, hk⟩ := Finset.exists_le_of_sum_le Finset.univ_nonempty hsum
  exact ⟨k, hk⟩

/-- The chosen determinant is bounded away from zero, hence is nonzero. -/
theorem exists_good_minor_nonsingular (A : Matrix (Fin 3) (Fin 6) ℂ)
    (hA : A * Aᴴ = (6 : ℂ) • (1 : Matrix (Fin 3) (Fin 3) ℂ)) :
    ∃ k : Fin 20, (54 / 5 : ℝ) ≤ Complex.normSq (minor A k).det ∧
      (minor A k).det ≠ 0 := by
  obtain ⟨k, hk⟩ := exists_good_minor A hA
  refine ⟨k, hk, Complex.normSq_pos.mp ?_⟩
  linarith

/-- A norm version of the same explicit lower bound. -/
theorem exists_good_minor_norm (A : Matrix (Fin 3) (Fin 6) ℂ)
    (hA : A * Aᴴ = (6 : ℂ) • (1 : Matrix (Fin 3) (Fin 3) ℂ)) :
    ∃ k : Fin 20, Real.sqrt (54 / 5) ≤ ‖(minor A k).det‖ := by
  obtain ⟨k, hk⟩ := exists_good_minor A hA
  refine ⟨k, ?_⟩
  rw [Complex.normSq_eq_norm_sq] at hk
  exact (Real.sqrt_le_iff).2 ⟨norm_nonneg _, hk⟩

end
end Mub6.Classification.GoodMinor

#print axioms Mub6.Classification.GoodMinor.columns_injective
#print axioms Mub6.Classification.GoodMinor.cauchyBinet_three_six
#print axioms Mub6.Classification.GoodMinor.gram_det_eq_sum_minor_normSq
#print axioms Mub6.Classification.GoodMinor.sum_minor_normSq_eq_216
#print axioms Mub6.Classification.GoodMinor.exists_good_minor
#print axioms Mub6.Classification.GoodMinor.exists_good_minor_nonsingular
#print axioms Mub6.Classification.GoodMinor.exists_good_minor_norm
