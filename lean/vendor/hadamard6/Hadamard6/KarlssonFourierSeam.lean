import Hadamard6.AffineFourierCore
import Hadamard6.KarlssonMixedBlocks
import Hadamard6.TaoOrbit
import Hadamard6.BlockOppositePair

/-!
# The affine-Fourier seams in the Karlsson witness theorem

This file follows the exceptional-chart paragraph of the paper.  It defines
the displayed two-phase affine-Fourier matrix literally.  The six-corner
common-zero certificate is proved on top of this interface in
`FourierSeamCertificate.lean`; it is kept separate from the regular
mixed/mixed calculation.
-/

namespace Hadamard6

noncomputable section

/-- The affine-Fourier seam lies in the intrinsic Karlsson sector: its
leading `2 x 2` submatrix is the standard Fourier matrix. -/
theorem affineFourierMatrix_hasHadamardTwoByTwo
    (omega z₁ z₂ : ℂ) :
    HasHadamardTwoByTwo (affineFourierMatrix omega z₁ z₂) := by
  let rows : I2 ↪ I6 := pairEmbedding (Sum.inl 0) (Sum.inl 1) (by simp)
  let cols : I2 ↪ I6 := pairEmbedding (Sum.inl 0) (Sum.inl 1) (by simp)
  refine ⟨rows, cols, ?_⟩
  have heq :
      (affineFourierMatrix omega z₁ z₂).submatrix rows cols =
        rowHadamard2 1 := by
    ext i j
    fin_cases i <;> fin_cases j <;> rfl
  rw [heq]
  exact rowHadamard2_isHadamard2 (by norm_num)

/-- The two Möbius-degenerate Karlsson seams: the affine-Fourier family and
its transpose, closed under ordinary Hadamard equivalence. -/
def IsAffineFourierSeam (H : Mat6) : Prop :=
  ∃ omega z₁ z₂ : ℂ,
    IsPrimitiveCubicPhase omega ∧
    Complex.normSq z₁ = 1 ∧
    Complex.normSq z₂ = 1 ∧
    (Equivalent H (affineFourierMatrix omega z₁ z₂) ∨
      Equivalent H (affineFourierMatrix omega z₁ z₂).transpose)

theorem isAffineFourierSeam_of_equivalent {H K : Mat6}
    (hHK : Equivalent H K) (hK : IsAffineFourierSeam K) :
    IsAffineFourierSeam H := by
  rcases hK with ⟨omega, z₁, z₂, homega, hz₁, hz₂, hpres⟩
  exact ⟨omega, z₁, z₂, homega, hz₁, hz₂,
    hpres.elim (fun h ↦ Or.inl (equivalent_trans hHK h))
      (fun h ↦ Or.inr (equivalent_trans hHK h))⟩

theorem equivalent_isAffineFourierSeam_iff {H K : Mat6}
    (hHK : Equivalent H K) :
    IsAffineFourierSeam H ↔ IsAffineFourierSeam K := by
  constructor
  · exact isAffineFourierSeam_of_equivalent (equivalent_symm hHK)
  · exact isAffineFourierSeam_of_equivalent hHK

theorem isAffineFourierSeam_isHadamard {H : Mat6}
    (hH : IsAffineFourierSeam H) : IsHadamard H := by
  rcases hH with ⟨omega, z₁, z₂, homega, hz₁, hz₂, hpres⟩
  have hfourier := affineFourierMatrix_isHadamard homega hz₁ hz₂
  rcases hpres with hpres | hpres
  · exact (equivalent_isHadamard_iff hpres).2 hfourier
  · exact (equivalent_isHadamard_iff hpres).2
      (transpose_isHadamard hfourier)

/-! The six positional corners in the supplement.  Each permutation maps the
new block order to the listed zero-based original indices. -/

def seamRows012 : Equiv.Perm I6 := Equiv.refl I6

def seamRows013 : Equiv.Perm I6 :=
  Equiv.swap (Sum.inl 2) (Sum.inr 0)

def seamRows025 : Equiv.Perm I6 :=
  (((Equiv.swap (Sum.inl 1) (Sum.inl 2)).trans
      (Equiv.swap (Sum.inl 1) (Sum.inr 2))).trans
      (Equiv.swap (Sum.inl 1) (Sum.inr 1))).trans
      (Equiv.swap (Sum.inl 1) (Sum.inr 0))

def seamColumns024 : Equiv.Perm I6 :=
  ((Equiv.swap (Sum.inl 1) (Sum.inl 2)).trans
      (Equiv.swap (Sum.inl 1) (Sum.inr 1))).trans
      (Equiv.swap (Sum.inl 1) (Sum.inr 0))

def seamColumns025 : Equiv.Perm I6 := seamRows025

theorem seamRows013_order :
    seamRows013 (Sum.inl 0) = Sum.inl 0 ∧
    seamRows013 (Sum.inl 1) = Sum.inl 1 ∧
    seamRows013 (Sum.inl 2) = Sum.inr 0 ∧
    seamRows013 (Sum.inr 0) = Sum.inl 2 ∧
    seamRows013 (Sum.inr 1) = Sum.inr 1 ∧
    seamRows013 (Sum.inr 2) = Sum.inr 2 := by
  decide

theorem seamRows025_order :
    seamRows025 (Sum.inl 0) = Sum.inl 0 ∧
    seamRows025 (Sum.inl 1) = Sum.inl 2 ∧
    seamRows025 (Sum.inl 2) = Sum.inr 2 ∧
    seamRows025 (Sum.inr 0) = Sum.inl 1 ∧
    seamRows025 (Sum.inr 1) = Sum.inr 0 ∧
    seamRows025 (Sum.inr 2) = Sum.inr 1 := by
  decide

theorem seamColumns024_order :
    seamColumns024 (Sum.inl 0) = Sum.inl 0 ∧
    seamColumns024 (Sum.inl 1) = Sum.inl 2 ∧
    seamColumns024 (Sum.inl 2) = Sum.inr 1 ∧
    seamColumns024 (Sum.inr 0) = Sum.inl 1 ∧
    seamColumns024 (Sum.inr 1) = Sum.inr 0 ∧
    seamColumns024 (Sum.inr 2) = Sum.inr 2 := by
  decide

def seamRowPermutation (r : I3) : Equiv.Perm I6 :=
  Fin.cases seamRows012
    (fun r' ↦ Fin.cases seamRows013 (fun _ ↦ seamRows025) r') r

def seamColumnPermutation (c : I2) : Equiv.Perm I6 :=
  Fin.cases seamColumns024 (fun _ ↦ seamColumns025) c

/-- Reindex one of the six listed corners to the leading position and apply
the paper's canonical cross-ratio dephasing. -/
noncomputable def seamCornerChart (r : I3) (c : I2) (H : Mat6) : Mat6 :=
  dephase (reindexMatrix (seamRowPermutation r)
    (seamColumnPermutation c) H)

theorem equivalent_seamCornerChart {H : Mat6}
    (hH : EntrywiseUnit H) (r : I3) (c : I2) :
    Equivalent H (seamCornerChart r c H) := by
  have hreindex := equivalent_reindexMatrix
    (seamRowPermutation r) (seamColumnPermutation c) H
  have hunit : EntrywiseUnit
      (reindexMatrix (seamRowPermutation r)
        (seamColumnPermutation c) H) := by
    intro i j
    exact hH _ _
  exact equivalent_trans hreindex (equivalent_dephase hunit)

end

end Hadamard6
