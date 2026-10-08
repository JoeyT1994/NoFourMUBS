import Worker12.BoundaryTransport
import Worker12.Strata
import Mathlib.Logic.Equiv.Fintype
import Mathlib.Logic.Equiv.Fin.Basic

/-! Explicit finite permutations extending injected row/column selections.
No classification premise occurs in this file. -/

namespace Worker12

noncomputable def embeddingPermutation {α β : Type*} [Fintype α] [Fintype β]
    [DecidableEq β] (r s : α ↪ β) : Equiv.Perm β := by
  classical
  exact (r.toEquivRange.symm.trans s.toEquivRange).extendSubtype

theorem embeddingPermutation_apply {α β : Type*} [Fintype α] [Fintype β]
    [DecidableEq β] (r s : α ↪ β) (i : α) :
    embeddingPermutation r s (r i) = s i := by
  classical
  unfold embeddingPermutation
  rw [Equiv.extendSubtype_apply_of_mem _ _ (Set.mem_range_self i)]
  simp

def splitIndex : Hadamard6.I6 ≃ Fin 6 := finSumFinEquiv

def splitMatrix (H : Mub6.BasisMatrix) : Hadamard6.Mat6 :=
  fun i j ↦ H (splitIndex i) (splitIndex j)

def splitEmbedding (r : Fin 3 ↪ Fin 6) : Hadamard6.I3 ↪ Hadamard6.I6 :=
  r.trans splitIndex.symm.toEmbedding

def leftEmbedding : Hadamard6.I3 ↪ Hadamard6.I6 := Function.Embedding.inl

noncomputable def selectedPermutation (r : Fin 3 ↪ Fin 6) : Equiv.Perm Hadamard6.I6 :=
  embeddingPermutation leftEmbedding (splitEmbedding r)

theorem selectedPermutation_apply (r : Fin 3 ↪ Fin 6) (i : Fin 3) :
    selectedPermutation r (Sum.inl i) = splitIndex.symm (r i) :=
  embeddingPermutation_apply leftEmbedding (splitEmbedding r) i

theorem splitMatrix_isHadamard {H : Mub6.BasisMatrix}
    (hH : Mub6.IsPhaseHadamard6 H) : Hadamard6.IsHadamard (splitMatrix H) := by
  refine ⟨fun i j ↦ hH.1 (splitIndex i) (splitIndex j), ?_⟩
  ext i j
  change (∑ k, H (splitIndex i) (splitIndex k) *
      star (H (splitIndex j) (splitIndex k))) = _
  rw [splitIndex.sum_comp (fun k ↦ H (splitIndex i) k * star (H (splitIndex j) k))]
  have h := congrArg (fun M : Mub6.Matrix6 ↦ M (splitIndex i) (splitIndex j)) hH.2
  simpa [Matrix.mul_apply, Matrix.conjTranspose_apply, Matrix.smul_apply,
    Matrix.one_apply, splitIndex.injective.eq_iff] using h

def selectedMinor (H : Mub6.BasisMatrix) (rows cols : Fin 3 ↪ Fin 6) :
    Matrix (Fin 3) (Fin 3) ℂ := (Matrix.of H).submatrix rows cols

def HasHadamardTwoByTwo (H : Mub6.BasisMatrix) : Prop :=
  ∃ rows cols : Fin 2 ↪ Fin 6,
    Hadamard6.IsHadamard2 ((Matrix.of H).submatrix rows cols)

theorem splitMatrix_hasHadamardTwoByTwo {H : Mub6.BasisMatrix}
    (h : Hadamard6.HasHadamardTwoByTwo (splitMatrix H)) :
    HasHadamardTwoByTwo H := by
  rcases h with ⟨rows, cols, h⟩
  exact ⟨rows.trans splitIndex.toEmbedding, cols.trans splitIndex.toEmbedding, h⟩

end Worker12
