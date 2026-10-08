import GoodMinor
import FormalCore
import Mathlib.LinearAlgebra.Matrix.SemiringInverse

/-! Physical binding of quantitative good-minor selection to phase Hadamards. -/
namespace Mub6.Classification.GoodMinor
open scoped BigOperators
open Matrix Mub6.Numerical
noncomputable section

/-- The first three indices of six. -/
def front (j : Fin 3) : Fin 6 := j.castAdd 3

theorem front_injective : Function.Injective front := by
  intro a b h
  apply Fin.ext
  exact congrArg (fun x : Fin 6 => x.val) h

/-- Every selected column triple is completed by its increasing complement. -/
def permutationMap : Fin 20 → Fin 6 → Fin 6 :=
  ![![0,1,2,3,4,5], ![0,1,3,2,4,5], ![0,1,4,2,3,5], ![0,1,5,2,3,4],
    ![0,2,3,1,4,5], ![0,2,4,1,3,5], ![0,2,5,1,3,4],
    ![0,3,4,1,2,5], ![0,3,5,1,2,4], ![0,4,5,1,2,3],
    ![1,2,3,0,4,5], ![1,2,4,0,3,5], ![1,2,5,0,3,4],
    ![1,3,4,0,2,5], ![1,3,5,0,2,4], ![1,4,5,0,2,3],
    ![2,3,4,0,1,5], ![2,3,5,0,1,4], ![2,4,5,0,1,3], ![3,4,5,0,1,2]]

theorem permutationMap_bijective (k : Fin 20) :
    Function.Bijective (permutationMap k) := by
  fin_cases k <;> decide

def columnPermutation (k : Fin 20) : Equiv.Perm (Fin 6) :=
  Equiv.ofBijective (permutationMap k) (permutationMap_bijective k)

theorem columnPermutation_front (k : Fin 20) (j : Fin 3) :
    columnPermutation k (front j) = columns k j := by
  fin_cases k <;> fin_cases j <;> rfl

/-- Column orthogonality implies row orthogonality for the physical square matrix. -/
theorem phaseHadamard_rowGram {H : Matrix (Fin 6) (Fin 6) ℂ}
    (hH : PhaseHadamard H) :
    H * Hᴴ = (6 : ℂ) • (1 : Matrix (Fin 6) (Fin 6) ℂ) := by
  have hleft : ((1 / 6 : ℂ) • Hᴴ) * H = 1 := by
    rw [Matrix.smul_mul, hH.2, smul_smul]
    norm_num
  have hright := Matrix.mul_eq_one_comm.mp hleft
  rw [Matrix.mul_smul] at hright
  have h := congrArg (fun A : Matrix (Fin 6) (Fin 6) ℂ => (6 : ℂ) • A) hright
  simpa only [smul_smul, show (6 : ℂ) * (1 / 6) = 1 by norm_num, one_smul] using h

/-- Any three distinct rows retain the exact 6I row-Gram normalization. -/
theorem selected_rows_rowGram {H : Matrix (Fin 6) (Fin 6) ℂ}
    (hH : PhaseHadamard H) (ρ : Fin 3 → Fin 6) (hρ : Function.Injective ρ) :
    (H.submatrix ρ id) * (H.submatrix ρ id)ᴴ =
      (6 : ℂ) • (1 : Matrix (Fin 3) (Fin 3) ℂ) := by
  ext i j
  have h := congrFun (congrFun (phaseHadamard_rowGram hH) (ρ i)) (ρ j)
  simpa only [Matrix.mul_apply, Matrix.conjTranspose_apply, Matrix.submatrix_apply,
    id_eq, Matrix.smul_apply, smul_eq_mul, Matrix.one_apply, hρ.eq_iff] using h

/-- Selecting the good corner by a column permutation preserves the physical carrier. -/
theorem phaseHadamard_column_permutation {H : Matrix (Fin 6) (Fin 6) ℂ}
    (hH : PhaseHadamard H) (σ : Equiv.Perm (Fin 6)) :
    PhaseHadamard (H.submatrix id σ) := by
  refine ⟨fun r c => hH.1 r (σ c), ?_⟩
  ext i j
  have h := congrFun (congrFun hH.2 (σ i)) (σ j)
  simpa only [Matrix.mul_apply, Matrix.conjTranspose_apply, Matrix.submatrix_apply,
    id_eq, Matrix.smul_apply, smul_eq_mul, Matrix.one_apply, σ.injective.eq_iff] using h

/-- Physical mass identity for any fixed choice of three distinct rows. -/
theorem phaseHadamard_sum_minor_normSq {H : Matrix (Fin 6) (Fin 6) ℂ}
    (hH : PhaseHadamard H) (ρ : Fin 3 → Fin 6) (hρ : Function.Injective ρ) :
    ∑ k : Fin 20, Complex.normSq (H.submatrix ρ (columns k)).det = 216 := by
  simpa only [minor, Matrix.submatrix_submatrix, Function.comp_id, Function.id_comp]
    using sum_minor_normSq_eq_216 (H.submatrix ρ id) (selected_rows_rowGram hH ρ hρ)

/-- Every physical Hadamard and every three distinct rows admit a quantitative corner. -/
theorem phaseHadamard_exists_good_minor {H : Matrix (Fin 6) (Fin 6) ℂ}
    (hH : PhaseHadamard H) (ρ : Fin 3 → Fin 6) (hρ : Function.Injective ρ) :
    ∃ k : Fin 20, (54 / 5 : ℝ) ≤ Complex.normSq (H.submatrix ρ (columns k)).det ∧
      (H.submatrix ρ (columns k)).det ≠ 0 := by
  simpa only [minor, Matrix.submatrix_submatrix, Function.comp_id, Function.id_comp]
    using exists_good_minor_nonsingular (H.submatrix ρ id) (selected_rows_rowGram hH ρ hρ)

/-- After one of twenty explicit column permutations, the top-left corner has the bound. -/
theorem phaseHadamard_exists_good_corner {H : Matrix (Fin 6) (Fin 6) ℂ}
    (hH : PhaseHadamard H) :
    ∃ k : Fin 20,
      (54 / 5 : ℝ) ≤ Complex.normSq
        ((H.submatrix id (columnPermutation k)).submatrix front front).det ∧
      ((H.submatrix id (columnPermutation k)).submatrix front front).det ≠ 0 := by
  obtain ⟨k, hk, hn⟩ := phaseHadamard_exists_good_minor hH front front_injective
  have hcorner : (H.submatrix id (columnPermutation k)).submatrix front front =
      H.submatrix front (columns k) := by
    ext i j
    simp only [Matrix.submatrix_apply, id_eq, columnPermutation_front]
  exact ⟨k, by rwa [hcorner], by rwa [hcorner]⟩

/-- A finite physical cover with a uniform determinant guard, including all carriers. -/
theorem phaseHadamard_good_corner_cover {H : Matrix (Fin 6) (Fin 6) ℂ}
    (hH : PhaseHadamard H) :
    ∃ k : Fin 20, PhaseHadamard (H.submatrix id (columnPermutation k)) ∧
      (54 / 5 : ℝ) ≤ Complex.normSq
        ((H.submatrix id (columnPermutation k)).submatrix front front).det ∧
      ((H.submatrix id (columnPermutation k)).submatrix front front).det ≠ 0 := by
  obtain ⟨k, hk⟩ := phaseHadamard_exists_good_corner hH
  exact ⟨k, phaseHadamard_column_permutation hH _, hk⟩

end
end Mub6.Classification.GoodMinor

#print axioms Mub6.Classification.GoodMinor.front_injective
#print axioms Mub6.Classification.GoodMinor.permutationMap_bijective
#print axioms Mub6.Classification.GoodMinor.columnPermutation_front
#print axioms Mub6.Classification.GoodMinor.phaseHadamard_rowGram
#print axioms Mub6.Classification.GoodMinor.selected_rows_rowGram
#print axioms Mub6.Classification.GoodMinor.phaseHadamard_column_permutation
#print axioms Mub6.Classification.GoodMinor.phaseHadamard_sum_minor_normSq
#print axioms Mub6.Classification.GoodMinor.phaseHadamard_exists_good_minor
#print axioms Mub6.Classification.GoodMinor.phaseHadamard_exists_good_corner
#print axioms Mub6.Classification.GoodMinor.phaseHadamard_good_corner_cover
