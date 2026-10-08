import GoodMinorGuards

/-! Quantitative off-diagonal block selection and its residual Gram determinant. -/
namespace Mub6.Classification.GoodMinor
open Matrix Mub6.Numerical
noncomputable section

def southwest (H : Matrix (Fin 6) (Fin 6) ℂ) := H.submatrix back front

/-- A fixed interchange of the first and last column triples. -/
def halfSwap : Equiv.Perm (Fin 6) := Equiv.ofBijective ![3,4,5,0,1,2] (by decide)

theorem halfSwap_front (j : Fin 3) : halfSwap (front j) = back j := by
  fin_cases j <;> rfl

theorem halfSwap_back (j : Fin 3) : halfSwap (back j) = front j := by
  fin_cases j <;> rfl

def sidePermutation (k : Fin 20) : Equiv.Perm (Fin 6) :=
  halfSwap.trans (columnPermutation k)

theorem northeast_halfSwap (H : Matrix (Fin 6) (Fin 6) ℂ) :
    northeast (H.submatrix id halfSwap) = northwest H := by
  ext i j
  simp only [northeast, northwest, Matrix.submatrix_apply, id_eq, halfSwap_back]

theorem southwest_halfSwap (H : Matrix (Fin 6) (Fin 6) ℂ) :
    southwest (H.submatrix id halfSwap) = southeast H := by
  ext i j
  simp only [southwest, southeast, Matrix.submatrix_apply, id_eq, halfSwap_front]

theorem sidePermutation_matrix (H : Matrix (Fin 6) (Fin 6) ℂ) (k : Fin 20) :
    H.submatrix id (sidePermutation k) =
      (H.submatrix id (columnPermutation k)).submatrix id halfSwap := rfl

/-- The residual from the top-left block, with the phase-Hadamard normalization. -/
def residualGram (H : Matrix (Fin 6) (Fin 6) ℂ) : Matrix (Fin 3) (Fin 3) ℂ :=
  (6 : ℂ) • 1 - northwest H * (northwest H)ᴴ

/-- In a physical block decomposition H = [[E,B],[C,D]], 6I-EE† = BB†. -/
theorem residualGram_eq_sideGram {H : Matrix (Fin 6) (Fin 6) ℂ}
    (hH : PhaseHadamard H) : residualGram H = northeast H * (northeast H)ᴴ := by
  apply (eq_sub_iff_add_eq.mpr ?_).symm
  rw [add_comm]
  exact top_block_rowGram H 6 (phaseHadamard_rowGram hH)

/-- The complex residual determinant is the real squared determinant magnitude of B. -/
theorem residualGram_det {H : Matrix (Fin 6) (Fin 6) ℂ} (hH : PhaseHadamard H) :
    (residualGram H).det = (Complex.normSq (northeast H).det : ℂ) := by
  rw [residualGram_eq_sideGram hH]
  exact det_mul_conjTranspose _

/-- Twenty explicit permutations cover every physical carrier with both side blocks good. -/
theorem phaseHadamard_good_side_blocks {H : Matrix (Fin 6) (Fin 6) ℂ}
    (hH : PhaseHadamard H) :
    ∃ k : Fin 20,
      PhaseHadamard (H.submatrix id (sidePermutation k)) ∧
      (54 / 5 : ℝ) ≤ Complex.normSq (northeast (H.submatrix id (sidePermutation k))).det ∧
      (54 / 5 : ℝ) ≤ Complex.normSq (southwest (H.submatrix id (sidePermutation k))).det := by
  obtain ⟨k, _, hNW, hSE⟩ := phaseHadamard_good_complementary_corners hH
  refine ⟨k, phaseHadamard_column_permutation hH _, ?_, ?_⟩
  · rwa [sidePermutation_matrix, northeast_halfSwap]
  · rwa [sidePermutation_matrix, southwest_halfSwap]

/-- The residual determinant has a real lower bound and exactly zero imaginary part. -/
theorem phaseHadamard_good_side_residual {H : Matrix (Fin 6) (Fin 6) ℂ}
    (hH : PhaseHadamard H) :
    ∃ k : Fin 20,
      PhaseHadamard (H.submatrix id (sidePermutation k)) ∧
      (54 / 5 : ℝ) ≤ Complex.normSq (northeast (H.submatrix id (sidePermutation k))).det ∧
      (54 / 5 : ℝ) ≤ Complex.normSq (southwest (H.submatrix id (sidePermutation k))).det ∧
      (54 / 5 : ℝ) ≤ (residualGram (H.submatrix id (sidePermutation k))).det.re ∧
      (residualGram (H.submatrix id (sidePermutation k))).det.im = 0 := by
  obtain ⟨k, hp, hB, hC⟩ := phaseHadamard_good_side_blocks hH
  refine ⟨k, hp, hB, hC, ?_, ?_⟩
  · simpa only [residualGram_det hp, Complex.ofReal_re] using hB
  · simp only [residualGram_det hp, Complex.ofReal_im]

end
end Mub6.Classification.GoodMinor

#print axioms Mub6.Classification.GoodMinor.halfSwap_front
#print axioms Mub6.Classification.GoodMinor.halfSwap_back
#print axioms Mub6.Classification.GoodMinor.northeast_halfSwap
#print axioms Mub6.Classification.GoodMinor.southwest_halfSwap
#print axioms Mub6.Classification.GoodMinor.sidePermutation_matrix
#print axioms Mub6.Classification.GoodMinor.residualGram_eq_sideGram
#print axioms Mub6.Classification.GoodMinor.residualGram_det
#print axioms Mub6.Classification.GoodMinor.phaseHadamard_good_side_blocks
#print axioms Mub6.Classification.GoodMinor.phaseHadamard_good_side_residual
