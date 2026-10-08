import Worker12.ZeroExtraction

namespace Worker12
open Hadamard6
set_option maxHeartbeats 4000000

noncomputable def repeatedRowPermutation (i k : I3) (hik : i ≠ k) : Equiv.Perm I6 :=
  embeddingPermutation
    (pairEmbedding6 (Sum.inl 0) (Sum.inl 1) (by decide))
    (pairEmbedding6 (Sum.inl i) (Sum.inl k) (by simpa using hik))

@[simp] theorem repeatedRowPermutation_zero (i k : I3) (hik : i ≠ k) :
    repeatedRowPermutation i k hik (Sum.inl 0) = Sum.inl i := by
  exact embeddingPermutation_apply
    (pairEmbedding6 (Sum.inl 0) (Sum.inl 1) (by decide))
    (pairEmbedding6 (Sum.inl i) (Sum.inl k) (by simpa using hik)) 0

@[simp] theorem repeatedRowPermutation_one (i k : I3) (hik : i ≠ k) :
    repeatedRowPermutation i k hik (Sum.inl 1) = Sum.inl k := by
  exact embeddingPermutation_apply
    (pairEmbedding6 (Sum.inl 0) (Sum.inl 1) (by decide))
    (pairEmbedding6 (Sum.inl i) (Sum.inl k) (by simpa using hik)) 1

theorem repeatedRows_topLeft_classified {H : Mat6} (hH : IsHadamard H)
    {i k : I3} (hik : i ≠ k)
    (heq : ∀ j, Matrix.toBlocks₁₁ H i j = Matrix.toBlocks₁₁ H k j) :
    FourierOrTransposeOrTao (unsplitMatrix H) := by
  let P := repeatedRowPermutation i k hik
  let L := reindexMatrix P (Equiv.refl I6) H
  have hL : IsHadamard L := reindexMatrix_isHadamard hH
  have hrep (j : I3) : L (Sum.inl 1) (Sum.inl j) = L (Sum.inl 0) (Sum.inl j) := by
    simpa [L, P, reindexMatrix, Matrix.toBlocks₁₁] using (heq j).symm
  let K := dephase L
  have hK : IsHadamard K := dephase_isHadamard hL
  have hd : IsDephased K := dephase_isDephased hL.1
  have hone (j : I3) : K (Sum.inl 1) (Sum.inl j) = 1 := by
    calc
      K (Sum.inl 1) (Sum.inl j) = K (Sum.inl 0) (Sum.inl j) := by
        simp only [K, dephase, phaseTransform, dephaseRowFactor, dephaseColumnFactor]
        rw [hrep j, hrep 0]
      _ = 1 := hd.1 _
  have hclass : FourierOrTransposeOrTao (unsplitMatrix K) := by
    apply normalized_repeated_pattern_classified (unsplit_isPhaseHadamard hK)
    · intro j
      simpa [unsplitMatrix] using hd.1 (splitIndex.symm j)
    · intro j
      simpa [unsplitMatrix] using hd.2 (splitIndex.symm j)
    · simpa [unsplitMatrix] using hone 1
    · simpa [unsplitMatrix] using hone 2
  apply families_of_monomialEquivalent _ hclass
  exact equivalent_unsplit (equivalent_trans
    (equivalent_reindexMatrix P (Equiv.refl I6) H) (equivalent_dephase hL.1))

#print axioms repeatedRows_topLeft_classified
end Worker12
