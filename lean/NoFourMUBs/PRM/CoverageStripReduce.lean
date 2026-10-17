import NoFourMUBs.PRM.CoverageStripAlgebra
import NoFourMUBs.PRM.CoverageStripNonzero
import NoFourMUBs.PRM.CoverageStripZero

/-!
# Critical strip classification (I4): the zero-`J` square-sum identity from pure algebra

`ZeroJAlgebra` is the identity (4) of `CRITICAL_STRIP_CLASSIFICATION.md` as a statement about three complex
numbers `s, t, r` (the Gram data of one half; the other half has `−s, −t, −r`) satisfying the scalar
relations of the critical corner reduction (what the paper's `verify_critical_square_sums.py` checks, after
the row-scaling device `s = t = 1`).

* `zeroJSquareSum_of_algebra : ZeroJAlgebra → ZeroJSquareSum` (with the paper's row relabelling to make
  `X, Y > 0`: at most one modulus vanishes since `W = z²(z + 3)² ≠ 0`);
* `halves_reduction`, `triBlock_rowperm`, `isHadamard_rowperm`, `blockL_swap01/02`: shared with the
  nonzero-`J` stratum (`CoverageSigned*`).
-/

open Matrix Hadamard6 ComplexConjugate

noncomputable section

namespace NoFourMUBs.PRM.Coverage

open StripMoments Side

/-- **The zero-`J` square-sum identity, pure algebra** (§2, (4)). -/
def ZeroJAlgebra : Prop :=
  ∀ (s t r : ℂ) (z : ℝ), s ≠ 0 → t ≠ 0 → z ≠ 0 → z ≠ -2 → z ≠ -3 →
    pS s t r = 9 - z ^ 2 → jS s t r = 0 →
    Complex.normSq s * Complex.normSq t + Complex.normSq s * Complex.normSq r +
      Complex.normSq t * Complex.normSq r - Complex.normSq s * Complex.normSq t * Complex.normSq r =
        z ^ 2 * (z + 3) ^ 2 →
    (∀ j, lamL s t r z (3 * z ^ 2) j ≠ 0) →
    momentPoly (fun p => (lamData s t r z (3 * z ^ 2)).mom p + (lamData (-s) (-t) (-r) z (3 * z ^ 2)).mom p) *
      (((3 * z * (z + 3) ^ 4 + (3 * z + 8) *
          (Complex.normSq s * Complex.normSq t * Complex.normSq r)) ^ 3 : ℝ) : ℂ) =
      ((-3888 * z * (z + 2) ^ 2 * (z + 3) ^ 2 *
          (Complex.normSq s * Complex.normSq t * Complex.normSq r + (z - 1) * (z + 3) ^ 3) *
          (z ^ 2 * (z + 3) ^ 4 + (z + 2) ^ 2 *
            (Complex.normSq s * Complex.normSq t * Complex.normSq r)) ^ 2 : ℝ) : ℂ)

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

/-! ### Zero `J` -/

theorem triBlock_rowperm (H : Mat6) (π : Equiv.Perm (Fin 3)) (m : Fin 20) :
    triBlock (H.submatrix (Equiv.sumCongr π (Equiv.refl _)) id) 0 m = (triBlock H 0 m).submatrix π id := by
  ext i j; simp [triBlock, tri0_row]

theorem stripSq_rowperm (H : Mat6) (π : Equiv.Perm (Fin 3)) :
    stripSq (H.submatrix (Equiv.sumCongr π (Equiv.refl _)) id) = stripSq H := by
  simp only [stripSq, triBlock_rowperm, sig_submatrix]

theorem isHadamard_rowperm {H : Mat6} (hH : Hadamard6.IsHadamard H) (π : Equiv.Perm (Fin 3)) :
    Hadamard6.IsHadamard (H.submatrix (Equiv.sumCongr π (Equiv.refl _)) id) :=
  isHadamard_of_equivalent (equivalent_reindexMatrix (Equiv.sumCongr π (Equiv.refl _)) (Equiv.refl _) H) hH

/-- The zero-`J` identity when `s, t ≠ 0`. -/
theorem zeroJ_direct (hA : ZeroJAlgebra) {H : Mat6} (hH : Hadamard6.IsHadamard H) (l : Fin 20)
    (hIm : (Step2.sideSignature (triBlock H 0 l)).im = 0)
    (hIm' : (Step2.sideSignature (triBlock H 0 (19 - l))).im = 0)
    (hd : (triBlock H 0 l).det ≠ 0) (hd' : (triBlock H 0 (19 - l)).det ≠ 0)
    (hJ : blockJ (triBlock H 0 l) = 0) (hz3 : blockTheta (triBlock H 0 l) ≠ -3)
    (hz2 : blockTheta (triBlock H 0 l) ≠ -2) (hL : ∀ j, blockL (triBlock H 0 l) j ≠ 0)
    (hs : blockS (triBlock H 0 l) ≠ 0) (ht : blockT (triBlock H 0 l) ≠ 0) :
    stripSq H * (3 * blockTheta (triBlock H 0 l) * (blockTheta (triBlock H 0 l) + 3) ^ 4 +
        (3 * blockTheta (triBlock H 0 l) + 8) * blockK (triBlock H 0 l)) ^ 3 =
      -3888 * blockTheta (triBlock H 0 l) * (blockTheta (triBlock H 0 l) + 2) ^ 2 *
        (blockTheta (triBlock H 0 l) + 3) ^ 2 *
        (blockK (triBlock H 0 l) + (blockTheta (triBlock H 0 l) - 1) * (blockTheta (triBlock H 0 l) + 3) ^ 3) *
        (blockTheta (triBlock H 0 l) ^ 2 * (blockTheta (triBlock H 0 l) + 3) ^ 4 +
          (blockTheta (triBlock H 0 l) + 2) ^ 2 * blockK (triBlock H 0 l)) ^ 2 := by
  have hBu := triBlock_unit hH 0 l
  obtain ⟨hg, hp, hW, hz0, -⟩ := zero_data hBu hd hIm hJ
  set B := triBlock H 0 l with hBdef
  set B' := triBlock H 0 (19 - l) with hB'def
  set z := blockTheta B with hzdef
  have hth' : blockTheta B' = z :=
    blockTheta_congr (blockP_compl hH 0 l) (by rw [hB'def, blockJ_compl hH, hJ, neg_zero])
      (blockW_compl hH 0 l)
  have hg' : blockG B' = 3 * z ^ 2 := by
    rw [hB'def, blockG_compl hH, hJ, hp]; ring
  have hL' : ∀ j, blockL B' j ≠ 0 := by
    intro j
    have e : blockL B' j = blockL B j := by
      rw [blockL, blockL, hth', hg', hg, blockC_eq, blockC_eq, hB'def, blockMod_compl hH]
    rw [e]; exact hL j
  have hS := stripSq_alg hH l hIm hIm' hd hd' hL hL'
  rw [hth', hg', hg] at hS
  have hLA : ∀ j, lamL (blockS B) (blockT B) (blockR B) z (3 * z ^ 2) j = blockL B j := by
    intro j; rw [← hg]; exact lamL_block B j
  have key := hA (blockS B) (blockT B) (blockR B) z hs ht hz0 hz2 hz3 hp hJ hW
    (fun j => by rw [hLA]; exact hL j)
  rw [← hS] at key
  exact_mod_cast key

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

/-- The zero-`J` identity through a row relabelling `π` of the top strip. -/
theorem zeroJ_via_perm (hA : ZeroJAlgebra) {H : Mat6} (hH : Hadamard6.IsHadamard H) (l : Fin 20)
    (π : Equiv.Perm (Fin 3))
    (hIm : (Step2.sideSignature (triBlock H 0 l)).im = 0)
    (hIm' : (Step2.sideSignature (triBlock H 0 (19 - l))).im = 0)
    (hd : (triBlock H 0 l).det ≠ 0) (hd' : (triBlock H 0 (19 - l)).det ≠ 0)
    (hz3 : blockTheta (triBlock H 0 l) ≠ -3) (hz2 : blockTheta (triBlock H 0 l) ≠ -2)
    (hJπ : blockJ ((triBlock H 0 l).submatrix π id) = 0)
    (hthπ : blockTheta ((triBlock H 0 l).submatrix π id) = blockTheta (triBlock H 0 l))
    (hKπ : blockK ((triBlock H 0 l).submatrix π id) = blockK (triBlock H 0 l))
    (hLπ : ∀ j, blockL ((triBlock H 0 l).submatrix π id) j ≠ 0)
    (hsπ : blockS ((triBlock H 0 l).submatrix π id) ≠ 0)
    (htπ : blockT ((triBlock H 0 l).submatrix π id) ≠ 0) :
    stripSq H * (3 * blockTheta (triBlock H 0 l) * (blockTheta (triBlock H 0 l) + 3) ^ 4 +
        (3 * blockTheta (triBlock H 0 l) + 8) * blockK (triBlock H 0 l)) ^ 3 =
      -3888 * blockTheta (triBlock H 0 l) * (blockTheta (triBlock H 0 l) + 2) ^ 2 *
        (blockTheta (triBlock H 0 l) + 3) ^ 2 *
        (blockK (triBlock H 0 l) + (blockTheta (triBlock H 0 l) - 1) * (blockTheta (triBlock H 0 l) + 3) ^ 3) *
        (blockTheta (triBlock H 0 l) ^ 2 * (blockTheta (triBlock H 0 l) + 3) ^ 4 +
          (blockTheta (triBlock H 0 l) + 2) ^ 2 * blockK (triBlock H 0 l)) ^ 2 := by
  have eB := triBlock_rowperm H π
  have e := zeroJ_direct hA (isHadamard_rowperm hH π) l (by rw [eB, sig_submatrix]; exact hIm)
    (by rw [eB, sig_submatrix]; exact hIm') (by rw [eB]; exact det_submatrix_ne hd π)
    (by rw [eB]; exact det_submatrix_ne hd' π) (by rw [eB]; exact hJπ)
    (by rw [eB, hthπ]; exact hz3) (by rw [eB, hthπ]; exact hz2) (by rw [eB]; exact hLπ)
    (by rw [eB]; exact hsπ) (by rw [eB]; exact htπ)
  rw [stripSq_rowperm, eB, hthπ, hKπ] at e
  exact e

/-- **`ZeroJAlgebra` gives the zero-`J` square-sum identity** (with the row relabelling). -/
theorem zeroJSquareSum_of_algebra (hA : ZeroJAlgebra) : ZeroJSquareSum := by
  intro H hH l hIm hIm' hd hd' hJ hz3 hz2 hL
  have hBu := triBlock_unit hH 0 l
  obtain ⟨hg, hp, hW, hz0, -⟩ := zero_data hBu hd hIm hJ
  -- at most one modulus vanishes
  have hW0 : blockW (triBlock H 0 l) ≠ 0 := by
    rw [hW]
    have : blockTheta (triBlock H 0 l) + 3 ≠ 0 := fun h0 => hz3 (by linarith)
    positivity
  have sne : ∀ {C : Mat3}, blockX C ≠ 0 → blockS C ≠ 0 := fun h h0 => h (by simp [blockX, h0])
  have tne : ∀ {C : Mat3}, blockY C ≠ 0 → blockT C ≠ 0 := fun h h0 => h (by simp [blockY, h0])
  by_cases hs : blockS (triBlock H 0 l) = 0
  · -- relabel rows `0 ↔ 2`: `(X, Y, Z) ↦ (Z, Y, X)`
    have hX : blockX (triBlock H 0 l) = 0 := by simp [blockX, hs]
    have hY : blockY (triBlock H 0 l) ≠ 0 := by
      intro h0; apply hW0; simp only [blockW, hX, h0]; ring
    have hZ : blockZ (triBlock H 0 l) ≠ 0 := by
      intro h0; apply hW0; simp only [blockW, hX, h0]; ring
    obtain ⟨a1, a2, a3, a4⟩ := swap02_data (triBlock H 0 l)
    have pw := blockP_of_perm (B := triBlock H 0 l) (C := (triBlock H 0 l).submatrix (Equiv.swap 0 2) id)
      (Or.inr (Or.inl ⟨a1, a2, a3⟩))
    obtain ⟨l0, l1, l2⟩ := blockL_swap02 (triBlock H 0 l)
    refine zeroJ_via_perm hA hH l (Equiv.swap 0 2) hIm hIm' hd hd' hz3 hz2 (by rw [a4]; exact hJ)
      (blockTheta_congr pw.1 a4 pw.2) (by simp only [blockK]; rw [a1, a2, a3]; ring) ?_
      (sne (by rw [a1]; exact hZ)) (tne (by rw [a2]; exact hY))
    intro j; fin_cases j
    · rw [show ((⟨0, by decide⟩ : Fin 3)) = 0 from rfl, l0]; exact hL 2
    · rw [show ((⟨1, by decide⟩ : Fin 3)) = 1 from rfl, l1]; exact hL 1
    · rw [show ((⟨2, by decide⟩ : Fin 3)) = 2 from rfl, l2]; exact hL 0
  by_cases ht : blockT (triBlock H 0 l) = 0
  · -- relabel rows `0 ↔ 1`: `(X, Y, Z) ↦ (X, Z, Y)`
    have hY : blockY (triBlock H 0 l) = 0 := by simp [blockY, ht]
    have hX : blockX (triBlock H 0 l) ≠ 0 := by
      intro h0; apply hW0; simp only [blockW, hY, h0]; ring
    have hZ : blockZ (triBlock H 0 l) ≠ 0 := by
      intro h0; apply hW0; simp only [blockW, hY, h0]; ring
    obtain ⟨a1, a2, a3, a4⟩ := swap01_data (triBlock H 0 l)
    have pw := blockP_of_perm (B := triBlock H 0 l) (C := (triBlock H 0 l).submatrix (Equiv.swap 0 1) id)
      (Or.inl ⟨a1, a2, a3⟩)
    obtain ⟨l0, l1, l2⟩ := blockL_swap01 (triBlock H 0 l)
    refine zeroJ_via_perm hA hH l (Equiv.swap 0 1) hIm hIm' hd hd' hz3 hz2 (by rw [a4]; exact hJ)
      (blockTheta_congr pw.1 a4 pw.2) (by simp only [blockK]; rw [a1, a2, a3]; ring) ?_
      (sne (by rw [a1]; exact hX)) (tne (by rw [a2]; exact hZ))
    intro j; fin_cases j
    · rw [show ((⟨0, by decide⟩ : Fin 3)) = 0 from rfl, l0]; exact hL 1
    · rw [show ((⟨1, by decide⟩ : Fin 3)) = 1 from rfl, l1]; exact hL 0
    · rw [show ((⟨2, by decide⟩ : Fin 3)) = 2 from rfl, l2]; exact hL 2
  exact zeroJ_direct hA hH l hIm hIm' hd hd' hJ hz3 hz2 hL hs ht

end NoFourMUBs.PRM.Coverage
