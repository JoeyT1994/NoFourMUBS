import CircleClosing
import Mathlib.Analysis.Real.Sqrt

/-! Explicit normalization of a phase Hadamard and the concrete Tao carrier. -/
namespace Mub6.Numerical.CircleFullPrototype.NormalizedWitness
open Mub6
open Mub6.Numerical
open scoped BigOperators

noncomputable def normalized (H : BasisMatrix) : BasisMatrix :=
  fun r k => H r k / (Real.sqrt 6 : ℂ)

private theorem sqrt_six_ne_zero : (Real.sqrt 6 : ℂ) ≠ 0 := by
  exact_mod_cast (Real.sqrt_ne_zero'.mpr (by norm_num : (0 : ℝ) < 6))

private theorem sqrt_six_normSq : Complex.normSq (Real.sqrt 6 : ℂ) = 6 := by
  rw [Complex.normSq_ofReal]
  norm_num [Real.sq_sqrt]

private theorem sqrt_six_star_mul :
    star (Real.sqrt 6 : ℂ) * (Real.sqrt 6 : ℂ) = 6 := by
  change (starRingEnd ℂ) (Real.sqrt 6 : ℂ) * (Real.sqrt 6 : ℂ) = 6
  rw [← Complex.normSq_eq_conj_mul_self]
  exact_mod_cast sqrt_six_normSq

theorem normalized_flat {H : BasisMatrix} (hH : PhaseHadamard H) :
    ∀ k, IsNormalizedFlatRay (fun r => normalized H r k) := by
  intro k r
  simp only [IsNormalizedFlatRay, normalized, Complex.normSq_div]
  rw [hH.1 r k, sqrt_six_normSq]

private theorem phase_gram {H : BasisMatrix} (hH : PhaseHadamard H)
    (i j : Fin 6) : overlap H H i j = if i = j then 6 else 0 := by
  have h := congrArg (fun M : Matrix (Fin 6) (Fin 6) ℂ => M i j) hH.2
  simpa [overlap, Matrix.mul_apply, Matrix.conjTranspose_apply,
    Matrix.smul_apply, Matrix.one_apply] using h

private theorem normalized_overlap (H : BasisMatrix) (i j : Fin 6) :
    overlap (normalized H) (normalized H) i j = overlap H H i j / 6 := by
  simp only [overlap, normalized]
  rw [Finset.sum_div]
  apply Finset.sum_congr rfl
  intro r _
  calc
    star (H r i / (Real.sqrt 6 : ℂ)) * (H r j / (Real.sqrt 6 : ℂ)) =
        (star (H r i) * H r j) /
          (star (Real.sqrt 6 : ℂ) * (Real.sqrt 6 : ℂ)) := by
            rw [star_div₀]
            ring
    _ = (star (H r i) * H r j) / 6 := by rw [sqrt_six_star_mul]

theorem normalized_orthonormal {H : BasisMatrix} (hH : PhaseHadamard H) :
    IsOrthonormalBasis (normalized H) := by
  intro i j
  rw [normalized_overlap, phase_gram hH]
  split_ifs <;> norm_num

theorem raw_carrier_normalized {H : BasisMatrix}
    (hrow : ∀ k, H 0 k = 1) : rawCarrierOfFlatBasis (normalized H) = H := by
  funext r k
  simp only [rawCarrierOfFlatBasis, normalized, hrow]
  field_simp [sqrt_six_ne_zero]

theorem tao_first_row : ∀ k, TaoCalibration.tao 0 k = 1 := by
  intro k
  fin_cases k <;> rfl

theorem tao_normalized_witness : ∃ B : BasisMatrix,
    IsOrthonormalBasis B ∧
    (∀ k, IsNormalizedFlatRay (fun r => B r k)) ∧
    rawCarrierOfFlatBasis B = TaoCalibration.tao := by
  refine ⟨normalized TaoCalibration.tao, ?_, ?_, ?_⟩
  · exact normalized_orthonormal TaoCalibration.tao_isPhaseHadamard
  · exact normalized_flat TaoCalibration.tao_isPhaseHadamard
  · exact raw_carrier_normalized tao_first_row

#print axioms normalized_flat
#print axioms normalized_orthonormal
#print axioms raw_carrier_normalized
#print axioms tao_first_row
#print axioms tao_normalized_witness
end Mub6.Numerical.CircleFullPrototype.NormalizedWitness
