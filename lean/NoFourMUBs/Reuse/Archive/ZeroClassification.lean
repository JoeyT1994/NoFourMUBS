import NoFourMUBs.Reuse.Archive.TransposeClassification

namespace Worker12
open Hadamard6

/-- The singular corner is first dephased and both repeated orientations are
then handled by the checked three-row Fourier extraction. H2 is not used as
a proxy for the stronger classification. -/
theorem singular_topLeft_classified {H : Mat6} (hH : IsHadamard H)
    (hdet : (Matrix.toBlocks₁₁ H).det = 0) :
    FourierOrTransposeOrTao (unsplitMatrix H) := by
  let K := dephase H
  have hK : IsHadamard K := dephase_isHadamard hH
  have hdeph : IsDephased K := dephase_isDephased hH.1
  let a := K (Sum.inl 1) (Sum.inl 1)
  let b := K (Sum.inl 1) (Sum.inl 2)
  let c := K (Sum.inl 2) (Sum.inl 1)
  let d := K (Sum.inl 2) (Sum.inl 2)
  have hcorner : Matrix.toBlocks₁₁ K = corner a b c d := by
    ext i j
    fin_cases i <;> fin_cases j <;>
      simp [Matrix.toBlocks₁₁, corner, a, b, c, d, hdeph.1, hdeph.2]
  have hdetK : (Matrix.toBlocks₁₁ K).det = 0 := by
    change Matrix.det
      (biGauge (fun i ↦ dephaseRowFactor H (Sum.inl i))
        (fun j ↦ dephaseColumnFactor H (Sum.inl j))
        (Matrix.toBlocks₁₁ H)) = 0
    rw [biGauge_det, hdet]
    ring
  have hrep : HasRepeatedRowOrColumn3 (Matrix.toBlocks₁₁ K) := by
    rw [hcorner]
    exact singular_corner_hasRepeatedRowOrColumn (hK.1 _ _) (hK.1 _ _)
      (hK.1 _ _) (hK.1 _ _) (by simpa [hcorner] using hdetK)
  have hclass : FourierOrTransposeOrTao (unsplitMatrix K) := by
    rcases hrep with ⟨i, k, hik, heq⟩ | ⟨j, l, hjl, heq⟩
    · exact repeatedRows_topLeft_classified hK hik heq
    · exact repeatedColumns_topLeft_classified hK hjl heq
  exact families_of_monomialEquivalent (equivalent_unsplit (equivalent_dephase hH.1)) hclass

theorem singular_selectedMinor_classified {H : OAI.MUB6.CMatrix}
    (hH : OAI.MUB6.IsHadamard H) (rows cols : Fin 3 ↪ Fin 6)
    (hdet : (selectedMinor H rows cols).det = 0) : FourierOrTransposeOrTao H := by
  have hk := selectedMatrix_isHadamard hH rows cols
  have hc : (Matrix.toBlocks₁₁ (selectedMatrix H rows cols)).det = 0 := by
    rwa [selectedMatrix_corner]
  have hclass := singular_topLeft_classified hk hc
  have heq := equivalent_unsplit
    (Hadamard6.equivalent_reindexMatrix (selectedPermutation rows)
      (selectedPermutation cols) (splitMatrix H))
  rw [unsplit_splitMatrix] at heq
  exact families_of_monomialEquivalent heq hclass

#print axioms singular_topLeft_classified
#print axioms singular_selectedMinor_classified
end Worker12
