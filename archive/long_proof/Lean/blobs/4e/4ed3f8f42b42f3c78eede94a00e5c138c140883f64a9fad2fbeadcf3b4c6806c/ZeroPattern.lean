import Worker12.SaturatedClassification

namespace Worker12
open Hadamard6
set_option maxHeartbeats 4000000

theorem phase_row_orthogonal {H : Mub6.BasisMatrix}
    (hH : Mub6.IsPhaseHadamard6 H) {i j : Fin 6} (hij : i ≠ j) :
    ∑ k, H i k * star (H j k) = 0 := by
  simpa [Matrix.mul_apply, Matrix.conjTranspose_apply, Matrix.smul_apply,
    Matrix.one_apply, hij] using congrArg (fun M : Mub6.Matrix6 ↦ M i j) hH.2

theorem normalized_repeated_row_complement {H : Mub6.BasisMatrix}
    (hH : Mub6.IsPhaseHadamard6 H) (hrow : ∀ j, H 0 j = 1)
    (h10 : H 1 0 = 1) (h11 : H 1 1 = 1) (h12 : H 1 2 = 1) :
    H 1 3 = -1 ∧ H 1 4 = -1 ∧ H 1 5 = -1 := by
  have horth := phase_row_orthogonal hH (i := 1) (j := 0) (by decide)
  simp [Fin.sum_univ_succ, hrow, h10, h11, h12] at horth
  apply Hadamard6.three_units_sum_eq_neg_three (hH.1 1 3) (hH.1 1 4) (hH.1 1 5)
  linear_combination horth

theorem normalized_other_row_sum {H : Mub6.BasisMatrix}
    (hH : Mub6.IsPhaseHadamard6 H) (hrow : ∀ j, H 0 j = 1)
    (h10 : H 1 0 = 1) (h11 : H 1 1 = 1) (h12 : H 1 2 = 1)
    {i : Fin 6} (hi0 : i ≠ 0) (hi1 : i ≠ 1) :
    H i 0 + H i 1 + H i 2 = 0 := by
  rcases normalized_repeated_row_complement hH hrow h10 h11 h12 with ⟨h13, h14, h15⟩
  have ha := phase_row_orthogonal hH hi0
  have hb := phase_row_orthogonal hH hi1
  simp [Fin.sum_univ_succ, hrow] at ha
  simp [Fin.sum_univ_succ, h10, h11, h12, h13, h14, h15] at hb
  linear_combination (ha + hb) / 2

theorem literal_fourier3_isHadamard {ω : ℂ}
    (hu : Complex.normSq ω = 1) (hq : ω ^ 2 + ω + 1 = 0) :
    Hadamard6.IsHadamard3 (Worker12.fourier3 ω) := by
  have h3 : ω ^ 3 = 1 := Hadamard6.cubic_of_quadratic hq
  have h4 : ω ^ 4 = ω := by calc
    ω ^ 4 = ω * ω ^ 3 := by ring
    _ = ω := by rw [h3, mul_one]
  have hs := Hadamard6.star_eq_square_of_quadratic_unit hu hq
  have hs2 := Hadamard6.star_square_eq_of_quadratic_unit hu hq
  have hsc : (starRingEnd ℂ) ω = ω ^ 2 := hs
  have hs2c : (starRingEnd ℂ) (ω ^ 2) = ω := hs2
  constructor
  · intro i j
    fin_cases i <;> fin_cases j <;> simp [Worker12.fourier3, map_pow, hu]
  · ext i j
    fin_cases i <;> fin_cases j <;>
      simp [Worker12.fourier3, Matrix.mul_apply, Matrix.conjTranspose_apply,
        Fin.sum_univ_three, Matrix.smul_apply, Matrix.one_apply, hs, hs2, hsc, hs2c] <;>
      ring_nf <;> (try simp [h3, h4]) <;> (try ring) <;> linear_combination hq

theorem normalized_repeated_pattern_has_fourier_rows {H : Mub6.BasisMatrix}
    (hH : Mub6.IsPhaseHadamard6 H) (hrow : ∀ j, H 0 j = 1)
    (hcol : ∀ i, H i 0 = 1) (h11 : H 1 1 = 1) (h12 : H 1 2 = 1) :
    ∃ ω : ℂ, Complex.normSq ω = 1 ∧ ω ^ 2 + ω + 1 = 0 ∧
      ∃ j : Fin 6, (j = 3 ∨ j = 4 ∨ j = 5) ∧
        H 2 1 = ω ∧ H 2 2 = ω ^ 2 ∧ H j 1 = ω ^ 2 ∧ H j 2 = ω := by
  have hq (i : Fin 6) (hi0 : i ≠ 0) (hi1 : i ≠ 1) :
      (H i 1) ^ 2 + H i 1 + 1 = 0 ∧ H i 2 = (H i 1) ^ 2 := by
    apply Hadamard6.unit_pair_with_one_sum_zero (hH.1 i 1) (hH.1 i 2)
    simpa [hcol] using normalized_other_row_sum hH hrow (hcol 1) h11 h12 hi0 hi1
  let ω := H 2 1
  have hω := hq 2 (by decide) (by decide)
  have h3 : ω ^ 3 = 1 := Hadamard6.cubic_of_quadratic hω.1
  have h4 : (ω ^ 2) ^ 2 = ω := by calc
    (ω ^ 2) ^ 2 = ω * ω ^ 3 := by ring
    _ = ω := by rw [h3, mul_one]
  have hex : ∃ j : Fin 6, (j = 3 ∨ j = 4 ∨ j = 5) ∧ H j 1 = ω ^ 2 := by
    by_contra hn
    have heq (j : Fin 6) (hj : j = 3 ∨ j = 4 ∨ j = 5) : H j 1 = ω := by
      have hj0 : j ≠ 0 := by rcases hj with rfl | rfl | rfl <;> decide
      have hj1 : j ≠ 1 := by rcases hj with rfl | rfl | rfl <;> decide
      rcases Hadamard6.quadratic_root_relative hω.1 (hq j hj0 hj1).1 with h | h
      · exact h
      · exact False.elim (hn ⟨j, hj, h⟩)
    have h31 := heq 3 (Or.inl rfl)
    have h41 := heq 4 (Or.inr (Or.inl rfl))
    have h51 := heq 5 (Or.inr (Or.inr rfl))
    have hgram := congrArg (fun M : Mub6.Matrix6 ↦ M 0 1) (phaseHadamard_columnGram hH)
    have hh : 2 + 4 * ω = 0 := by
      simp [Matrix.mul_apply, Matrix.conjTranspose_apply, Fin.sum_univ_succ,
        Matrix.smul_apply, Matrix.one_apply, hcol, hrow, h11, h31, h41, h51] at hgram
      linear_combination hgram
    have he : ω = (-1 / 2 : ℂ) := by linear_combination hh / 4
    have hu : Complex.normSq ω = 1 := hH.1 2 1
    rw [he] at hu
    norm_num [Complex.normSq_apply] at hu
  rcases hex with ⟨j, hj, hjω⟩
  have hj0 : j ≠ 0 := by rcases hj with rfl | rfl | rfl <;> decide
  have hj1 : j ≠ 1 := by rcases hj with rfl | rfl | rfl <;> decide
  refine ⟨ω, hH.1 2 1, hω.1, j, hj, rfl, hω.2, hjω, ?_⟩
  rw [(hq j hj0 hj1).2, hjω, h4]

#print axioms normalized_repeated_pattern_has_fourier_rows
#print axioms literal_fourier3_isHadamard
end Worker12
