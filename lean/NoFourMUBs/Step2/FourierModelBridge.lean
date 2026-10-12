import Hadamard6.HadamardQuotientCore
import Hadamard6.BlockGram
import OAI.Analysis.MutuallyUnbiased.Model

/-!
Coordinate and convention bridge to the existing Fourier formalization.
The repository uses `Fin 3 ⊕ Fin 3` and a row Gram; OAI uses `Fin 6`
and a column Gram. This module proves that the actual predicates agree.
-/

open Matrix Hadamard6

noncomputable section
namespace NoFourMUBs.Step2.FourierBridge

def coordinates : I6 ≃ OAI.MUB6.Coord := finSumFinEquiv

def toOAI (H : Mat6) : OAI.MUB6.CMatrix :=
  H.submatrix coordinates.symm coordinates.symm

def fromOAI (H : OAI.MUB6.CMatrix) : Mat6 :=
  H.submatrix coordinates coordinates

@[simp] theorem fromOAI_toOAI (H : Mat6) : fromOAI (toOAI H) = H := by
  ext i j
  simp [fromOAI, toOAI]

@[simp] theorem toOAI_fromOAI (H : OAI.MUB6.CMatrix) : toOAI (fromOAI H) = H := by
  ext i j
  simp [fromOAI, toOAI]

theorem hadamard_toOAI {H : Mat6} (hH : Hadamard6.IsHadamard H) :
    OAI.MUB6.IsHadamard (toOAI H) := by
  refine ⟨fun i j => hH.1 _ _, ?_⟩
  change (H.submatrix coordinates.symm coordinates.symm)ᴴ *
      H.submatrix coordinates.symm coordinates.symm = _
  rw [Matrix.conjTranspose_submatrix, Matrix.submatrix_mul_equiv,
    hadamard_column_gram hH]
  simp [Matrix.submatrix_smul]

/-- Full phase-and-permutation equivalence transports across the index change. -/
theorem equivalent_fromOAI {H : Mat6} {K : OAI.MUB6.CMatrix}
    (h : OAI.MUB6.Equivalent (toOAI H) K) : Equivalent H (fromOAI K) := by
  obtain ⟨r, c, u, v, hu, hv, h⟩ := h
  refine ⟨coordinates.trans (r.trans coordinates.symm),
    coordinates.trans (c.trans coordinates.symm),
    fun i => u (coordinates i), fun j => v (coordinates j),
    fun i => hu _, fun j => hv _, ?_⟩
  intro i j
  simpa [toOAI, fromOAI] using h (coordinates i) (coordinates j)

end NoFourMUBs.Step2.FourierBridge
