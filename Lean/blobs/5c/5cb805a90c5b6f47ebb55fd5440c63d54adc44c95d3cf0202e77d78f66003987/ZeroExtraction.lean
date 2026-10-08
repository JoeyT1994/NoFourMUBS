import Worker12.ZeroPattern

namespace Worker12
set_option maxHeartbeats 4000000

def firstThree : Fin 3 ↪ Fin 6 where
  toFun i := ⟨i.val, by omega⟩
  inj' := by intro i j h; apply Fin.ext; exact congrArg (fun x : Fin 6 ↦ x.val) h

def patternRows (j : Fin 6) (hj : j = 3 ∨ j = 4 ∨ j = 5) : Fin 3 ↪ Fin 6 where
  toFun := ![0, 2, j]
  inj' := by
    rcases hj with rfl | rfl | rfl <;> decide

theorem normalized_repeated_pattern_hasHadamard3 {H : Mub6.BasisMatrix}
    (hH : Mub6.IsPhaseHadamard6 H) (hrow : ∀ j, H 0 j = 1)
    (hcol : ∀ i, H i 0 = 1) (h11 : H 1 1 = 1) (h12 : H 1 2 = 1) :
    ∃ rows cols : Fin 3 ↪ Fin 6, Hadamard6.IsHadamard3 (selectedMinor H rows cols) := by
  rcases normalized_repeated_pattern_has_fourier_rows hH hrow hcol h11 h12 with
    ⟨ω, hu, hq, j, hj, h21, h22, hj1, hj2⟩
  refine ⟨patternRows j hj, firstThree, ?_⟩
  have he : selectedMinor H (patternRows j hj) firstThree = Worker12.fourier3 ω := by
    ext a b
    fin_cases a <;> fin_cases b
    · change H 0 0 = 1; exact hrow 0
    · change H 0 1 = 1; exact hrow 1
    · change H 0 2 = 1; exact hrow 2
    · change H 2 0 = 1; exact hcol 2
    · change H 2 1 = ω; exact h21
    · change H 2 2 = ω ^ 2; exact h22
    · change H j 0 = 1; exact hcol j
    · change H j 1 = ω ^ 2; exact hj1
    · change H j 2 = ω; exact hj2
  rw [he]
  exact literal_fourier3_isHadamard hu hq

theorem hadamard3_minor_classified {H : Mub6.BasisMatrix}
    (hH : Mub6.IsPhaseHadamard6 H) (rows cols : Fin 3 ↪ Fin 6)
    (h3 : Hadamard6.IsHadamard3 (selectedMinor H rows cols)) :
    FourierOrTransposeOrTao H := by
  have hK := selectedMatrix_isHadamard hH rows cols
  have hc : Hadamard6.IsHadamard3 (Matrix.toBlocks₁₁ (selectedMatrix H rows cols)) := by
    rwa [selectedMatrix_corner]
  rcases allFourBlocks_exactFourierPresentation _ hK
    (Hadamard6.allFourBlocksHadamard_of_topLeft hK hc) with ⟨n⟩
  have hclass := exactFourierPresentation_classified n
  have heq := equivalent_unsplit
    (Hadamard6.equivalent_reindexMatrix (selectedPermutation rows)
      (selectedPermutation cols) (splitMatrix H))
  rw [unsplit_splitMatrix] at heq
  exact families_of_monomialEquivalent heq hclass

theorem normalized_repeated_pattern_classified {H : Mub6.BasisMatrix}
    (hH : Mub6.IsPhaseHadamard6 H) (hrow : ∀ j, H 0 j = 1)
    (hcol : ∀ i, H i 0 = 1) (h11 : H 1 1 = 1) (h12 : H 1 2 = 1) :
    FourierOrTransposeOrTao H := by
  rcases normalized_repeated_pattern_hasHadamard3 hH hrow hcol h11 h12 with ⟨r, c, h3⟩
  exact hadamard3_minor_classified hH r c h3

theorem unsplit_isPhaseHadamard {H : Hadamard6.Mat6}
    (hH : Hadamard6.IsHadamard H) : Mub6.IsPhaseHadamard6 (unsplitMatrix H) := by
  refine ⟨fun i j ↦ hH.1 (splitIndex.symm i) (splitIndex.symm j), ?_⟩
  ext i j
  change (∑ k, H (splitIndex.symm i) (splitIndex.symm k) *
      star (H (splitIndex.symm j) (splitIndex.symm k))) = _
  rw [splitIndex.symm.sum_comp (fun k ↦ H (splitIndex.symm i) k * star (H (splitIndex.symm j) k))]
  have h := congrArg (fun M : Hadamard6.Mat6 ↦ M (splitIndex.symm i) (splitIndex.symm j)) hH.2
  simpa [Matrix.mul_apply, Matrix.conjTranspose_apply, Matrix.smul_apply,
    Matrix.one_apply, splitIndex.symm.injective.eq_iff] using h

#print axioms normalized_repeated_pattern_classified
end Worker12
