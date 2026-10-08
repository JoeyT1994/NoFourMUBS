import ComplementaryMinor

/-! Determinant-denominator guards supplied by the finite corner selection. -/
namespace Mub6.Classification.GoodMinor
open Matrix Mub6.Numerical
noncomputable section

theorem good_det_ne_zero {z : ℂ} (hz : (54 / 5 : ℝ) ≤ Complex.normSq z) : z ≠ 0 := by
  apply Complex.normSq_pos.mp
  linarith

/-- This bounds the reciprocal determinant, not a matrix inverse norm. -/
theorem good_det_reciprocal_normSq {z : ℂ} (hz : (54 / 5 : ℝ) ≤ Complex.normSq z) :
    Complex.normSq z⁻¹ ≤ (5 / 54 : ℝ) := by
  rw [Complex.normSq_inv]
  have h := one_div_le_one_div_of_le (by norm_num : (0 : ℝ) < 54 / 5) hz
  simpa only [one_div, inv_div] using h

/-- Every physical carrier has a permutation with uniform guards for both corner determinants. -/
theorem phaseHadamard_good_corner_denominators {H : Matrix (Fin 6) (Fin 6) ℂ}
    (hH : PhaseHadamard H) :
    ∃ k : Fin 20,
      PhaseHadamard (H.submatrix id (columnPermutation k)) ∧
      (northwest (H.submatrix id (columnPermutation k))).det ≠ 0 ∧
      (southeast (H.submatrix id (columnPermutation k))).det ≠ 0 ∧
      Complex.normSq ((northwest (H.submatrix id (columnPermutation k))).det)⁻¹ ≤ (5 / 54 : ℝ) ∧
      Complex.normSq ((southeast (H.submatrix id (columnPermutation k))).det)⁻¹ ≤ (5 / 54 : ℝ) := by
  obtain ⟨k, hp, hNW, hSE⟩ := phaseHadamard_good_complementary_corners hH
  exact ⟨k, hp, good_det_ne_zero hNW, good_det_ne_zero hSE,
    good_det_reciprocal_normSq hNW, good_det_reciprocal_normSq hSE⟩

end
end Mub6.Classification.GoodMinor

#print axioms Mub6.Classification.GoodMinor.good_det_ne_zero
#print axioms Mub6.Classification.GoodMinor.good_det_reciprocal_normSq
#print axioms Mub6.Classification.GoodMinor.phaseHadamard_good_corner_denominators
