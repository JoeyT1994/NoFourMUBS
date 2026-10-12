import NoFourMUBs.Step2.CriticalZero.FourierCriticalData
import NoFourMUBs.Step2.CriticalZero.Transpose
import NoFourMUBs.Reuse.Archive.ContinuousBindings
import Hadamard6.FourierCubicTaoTable
import Hadamard6.VanishingMinorReduction

/-! Shared models for the archived singular-minor argument. Existing coordinate,
normalization and finite Tao-table proofs are reused directly. -/

set_option autoImplicit false
noncomputable section
namespace Worker12
open Hadamard6 NoFourMUBs.Step2

abbrev taoPhase (ω : ℂ) : OAI.MUB6.CMatrix := unsplitMatrix (taoMatrix ω)

def FourierOrTransposeOrTao (H : OAI.MUB6.CMatrix) : Prop :=
  CriticalFourierRouting20261003.FourierOrTranspose H ∨
    ∃ ω : ℂ, PrimitiveCubicPhase ω ∧ OAI.MUB6.Equivalent H (taoPhase ω)

def selectedMinor (H : OAI.MUB6.CMatrix) (rows cols : Fin 3 ↪ Fin 6) :
    Matrix (Fin 3) (Fin 3) ℂ := H.submatrix rows cols

def HasHadamardTwoByTwo (H : OAI.MUB6.CMatrix) : Prop :=
  ∃ rows cols : Fin 2 ↪ Fin 6, Hadamard6.IsHadamard2 (H.submatrix rows cols)

theorem splitMatrix_hasHadamardTwoByTwo {H : OAI.MUB6.CMatrix}
    (h : Hadamard6.HasHadamardTwoByTwo (splitMatrix H)) :
    HasHadamardTwoByTwo H := by
  rcases h with ⟨rows, cols, h⟩
  exact ⟨rows.trans splitIndex.toEmbedding, cols.trans splitIndex.toEmbedding, h⟩

noncomputable def selectedMatrix (H : OAI.MUB6.CMatrix)
    (rows cols : Fin 3 ↪ Fin 6) : Hadamard6.Mat6 :=
  Hadamard6.reindexMatrix (selectedPermutation rows) (selectedPermutation cols)
    (splitMatrix H)

theorem selectedMatrix_corner (H : OAI.MUB6.CMatrix) (rows cols : Fin 3 ↪ Fin 6) :
    Matrix.toBlocks₁₁ (selectedMatrix H rows cols) = selectedMinor H rows cols := by
  ext i j
  simp [selectedMatrix, Hadamard6.reindexMatrix, Matrix.toBlocks₁₁,
    splitMatrix, FourierBridge.fromOAI, selectedPermutation_apply, selectedMinor]

theorem selectedMatrix_isHadamard {H : OAI.MUB6.CMatrix}
    (hH : OAI.MUB6.IsHadamard H) (rows cols : Fin 3 ↪ Fin 6) :
    Hadamard6.IsHadamard (selectedMatrix H rows cols) :=
  Hadamard6.reindexMatrix_isHadamard (splitMatrix_isHadamard hH)

abbrev allFourBlocks_exactFourierPresentation :=
  fourierNormalizationReduction_of_threeBlocks simultaneous_threeBlockFourierNormalization

theorem phase_row_orthogonal {H : OAI.MUB6.CMatrix}
    (hH : OAI.MUB6.IsHadamard H) {i j : Fin 6} (hij : i ≠ j) :
    ∑ k, H i k * star (H j k) = 0 :=
  CriticalPhysical20261003.relative_row_sum_zero hH hij

theorem phaseHadamard_columnGram {H : OAI.MUB6.CMatrix}
    (hH : OAI.MUB6.IsHadamard H) : H.conjTranspose * H = (6 : ℂ) • 1 := hH.2

theorem unsplit_isPhaseHadamard {H : Hadamard6.Mat6}
    (hH : Hadamard6.IsHadamard H) : OAI.MUB6.IsHadamard (unsplitMatrix H) :=
  FourierBridge.hadamard_toOAI hH

theorem unsplit_splitMatrix (H : OAI.MUB6.CMatrix) : unsplitMatrix (splitMatrix H) = H :=
  FourierBridge.toOAI_fromOAI H

/-- Use the already checked finite Tao table with only its unit-entry premise.
No new finite matrix equality or permutation certificate is introduced. -/
theorem cubic_table_families {ω : ℂ} (hω : PrimitiveCubicPhase ω) (n : CubicTaoRow)
    (hu : ∀ i j, Complex.normSq (unsplitMatrix
      (fourierNormalForm ω (cubicTaoP ω n) (cubicTaoQ ω n)
        (cubicTaoR ω n) (cubicTaoS ω n)
        (fourierForcedD ω (cubicTaoP ω n) (cubicTaoQ ω n)
          (cubicTaoR ω n) (cubicTaoS ω n))) i j) = 1) :
    FourierOrTransposeOrTao (unsplitMatrix
      (fourierNormalForm ω (cubicTaoP ω n) (cubicTaoQ ω n)
        (cubicTaoR ω n) (cubicTaoS ω n)
        (fourierForcedD ω (cubicTaoP ω n) (cubicTaoQ ω n)
          (cubicTaoR ω n) (cubicTaoS ω n)))) := by
  let M := fourierNormalForm ω (cubicTaoP ω n) (cubicTaoQ ω n)
    (cubicTaoR ω n) (cubicTaoS ω n)
    (fourierForcedD ω (cubicTaoP ω n) (cubicTaoQ ω n)
      (cubicTaoR ω n) (cubicTaoS ω n))
  have hunit : EntrywiseUnit M := by
    intro i j
    simpa [unsplitMatrix, FourierBridge.toOAI] using hu (splitIndex i) (splitIndex j)
  have he : Equivalent M (taoMatrix (cubicTaoTarget ω n)) := by
    rw [← cubicTaoTable_dephased_eq hω n]
    exact equivalent_trans (equivalent_reindexMatrix _ _ M)
      (equivalent_dephase (fun i j => hunit _ _))
  exact Or.inr ⟨cubicTaoTarget ω n, cubicTaoTarget_primitive hω n,
    equivalent_unsplit he⟩

#print axioms selectedMatrix_corner
#print axioms selectedMatrix_isHadamard
#print axioms cubic_table_families
end Worker12
