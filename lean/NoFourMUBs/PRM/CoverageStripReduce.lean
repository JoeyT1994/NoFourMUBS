import NoFourMUBs.PRM.CoverageStripAlgebra
import NoFourMUBs.PRM.CoverageStripNonzero
import NoFourMUBs.PRM.CoverageStripZero

/-!
# Critical strip classification (I4): lemmas shared by the two strata

* `halves_reduction`: the critical corner reduction from the criticality of the two halves `l`, `19 − l`
  only;
* `triBlock_rowperm`, `isHadamard_rowperm`: relabelling the three rows of the top strip;
* `blockG_perm`, `blockL_swap01`, `blockL_swap02`: the invariants under the row swaps.
-/

open Matrix Hadamard6 ComplexConjugate

noncomputable section

namespace NoFourMUBs.PRM.Coverage

open StripMoments Side

/-- The critical corner reduction from the criticality of the two halves only. -/
theorem halves_reduction {H : Mat6} (hH : Hadamard6.IsHadamard H) (l : Fin 20)
    (hIm : (Step2.sideSignature (triBlock H 0 l)).im = 0)
    (hIm' : (Step2.sideSignature (triBlock H 0 (19 - l))).im = 0)
    (hd : (triBlock H 0 l).det ≠ 0) (hd' : (triBlock H 0 (19 - l)).det ≠ 0) :
    CoverageSum.critR (blockP (triBlock H 0 l)) (blockJ (triBlock H 0 l)) (blockW (triBlock H 0 l)) = 0 ∧
      CoverageSum.critR (blockP (triBlock H 0 l)) (-blockJ (triBlock H 0 l))
        (blockW (triBlock H 0 l)) = 0 ∧
      0 ≤ blockP (triBlock H 0 l) ∧ blockP (triBlock H 0 l) + |blockJ (triBlock H 0 l)| ≤ 9 := by
  have e1 := critR_eq_im_sq (triBlock_unit hH 0 l) hd
  have e2 := critR_eq_im_sq (triBlock_unit hH 0 (19 - l)) hd'
  rw [hIm] at e1
  rw [hIm', blockP_compl hH, blockJ_compl hH, blockW_compl hH] at e2
  have n1 := blockEta_nonneg (triBlock_unit hH 0 l)
  have n2 := blockEta_nonneg (triBlock_unit hH 0 (19 - l))
  rw [blockP_compl hH, blockJ_compl hH] at n2
  refine ⟨by rw [e1]; ring, by rw [e2]; ring, ?_, ?_⟩
  · simp only [blockP, pS]
    exact add_nonneg (add_nonneg (Complex.normSq_nonneg _) (Complex.normSq_nonneg _))
      (Complex.normSq_nonneg _)
  · rcases abs_cases (blockJ (triBlock H 0 l)) with ⟨h, -⟩ | ⟨h, -⟩ <;> rw [h] <;> linarith

theorem ne_zero_of_normSq_pos {a : ℂ} (h : 0 < Complex.normSq a) : a ≠ 0 := by
  rintro rfl; simp at h

/-! ### Row relabelling -/

theorem triBlock_rowperm (H : Mat6) (π : Equiv.Perm (Fin 3)) (m : Fin 20) :
    triBlock (H.submatrix (Equiv.sumCongr π (Equiv.refl _)) id) 0 m = (triBlock H 0 m).submatrix π id := by
  ext i j; simp [triBlock, tri0_row]

theorem isHadamard_rowperm {H : Mat6} (hH : Hadamard6.IsHadamard H) (π : Equiv.Perm (Fin 3)) :
    Hadamard6.IsHadamard (H.submatrix (Equiv.sumCongr π (Equiv.refl _)) id) :=
  isHadamard_of_equivalent (equivalent_reindexMatrix (Equiv.sumCongr π (Equiv.refl _)) (Equiv.refl _) H) hH

theorem blockG_perm {B C : Mat3} (hp : blockP C = blockP B) (hJ : blockJ C = blockJ B) :
    blockG C = blockG B := by rw [blockG_eq, blockG_eq, hp, hJ]

theorem blockL_swap02 (B : Mat3) :
    blockL (B.submatrix (Equiv.swap 0 2) id) 0 = blockL B 2 ∧
      blockL (B.submatrix (Equiv.swap 0 2) id) 1 = blockL B 1 ∧
      blockL (B.submatrix (Equiv.swap 0 2) id) 2 = blockL B 0 := by
  obtain ⟨a1, a2, a3, a4⟩ := swap02_data B
  have pw := blockP_of_perm (B := B) (C := B.submatrix (Equiv.swap 0 2) id) (Or.inr (Or.inl ⟨a1, a2, a3⟩))
  have hth := blockTheta_congr pw.1 a4 pw.2
  have hg := blockG_perm pw.1 a4
  refine ⟨?_, ?_, ?_⟩ <;> simp only [blockL, blockC_eq, blockMod, hth, hg] <;>
    simp only [Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two, Matrix.head_cons,
      Matrix.tail_cons, a1, a2, a3]

theorem blockL_swap01 (B : Mat3) :
    blockL (B.submatrix (Equiv.swap 0 1) id) 0 = blockL B 1 ∧
      blockL (B.submatrix (Equiv.swap 0 1) id) 1 = blockL B 0 ∧
      blockL (B.submatrix (Equiv.swap 0 1) id) 2 = blockL B 2 := by
  obtain ⟨a1, a2, a3, a4⟩ := swap01_data B
  have pw := blockP_of_perm (B := B) (C := B.submatrix (Equiv.swap 0 1) id) (Or.inl ⟨a1, a2, a3⟩)
  have hth := blockTheta_congr pw.1 a4 pw.2
  have hg := blockG_perm pw.1 a4
  refine ⟨?_, ?_, ?_⟩ <;> simp only [blockL, blockC_eq, blockMod, hth, hg] <;>
    simp only [Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two, Matrix.head_cons,
      Matrix.tail_cons, a1, a2, a3]

end NoFourMUBs.PRM.Coverage
