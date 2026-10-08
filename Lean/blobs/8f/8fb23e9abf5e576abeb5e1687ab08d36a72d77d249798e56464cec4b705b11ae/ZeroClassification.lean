import Worker12.TransposeClassification

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

theorem singular_selectedMinor_classified {H : Mub6.BasisMatrix}
    (hH : Mub6.IsPhaseHadamard6 H) (rows cols : Fin 3 ↪ Fin 6)
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

theorem actual_edge_zero_minor_classified
    {B : Fin 4 → Mub6.BasisMatrix} (hB : Mub6.IsMUBQuartet B)
    (a b : Fin 4) (hab : a ≠ b) (rows cols : Fin 3 ↪ Fin 6)
    (hdet : (selectedMinor (Mub6.overlap (B a) (B b)) rows cols).det = 0) :
    FourierOrTransposeOrTao (Mub6.phaseScale (Real.sqrt 6) (Mub6.overlap (B a) (B b))) := by
  apply singular_selectedMinor_classified (Mub6.actual_edge_sqrt_six_phaseHadamard hB a b hab) rows cols
  exact selectedMinor_phaseScale_det_zero rows cols (Real.sqrt 6) hdet

theorem strongBoundaryRouting_checked : StrongBoundaryRouting := by
  intro H hH rows cols hd
  rcases hd with h0 | h27
  · apply singular_selectedMinor_classified hH rows cols
    exact Complex.normSq_eq_zero.mp h0
  · exact saturated_selectedMinor_classified hH rows cols h27

#print axioms singular_selectedMinor_classified
#print axioms actual_edge_zero_minor_classified
#print axioms strongBoundaryRouting_checked
end Worker12
