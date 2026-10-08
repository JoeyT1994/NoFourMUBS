import SideIntrinsicTransposeInvariants
import PhysicalBlockRecovery

/-! Exact leadingR transpose transport on an actual dephased physical matrix.
The seed calculation uses the negative Gram convention verbatim. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
open Centiradian20261006 Centiradian20261006.NativeSigned20261006
open scoped ComplexConjugate Matrix
noncomputable section

theorem leadingR_eq_seed_negative_gram (H : Mat6) :
    leadingR H =
      gramInvariant (-((blockE H * (blockE H)ᴴ) 1 0))
        (-((blockE H * (blockE H)ᴴ) 2 0)) (-((blockE H * (blockE H)ᴴ) 2 1)) := by
  simp [leadingR,cornerR,gramEntry,leadingCols,blockE,upperIndex,
    Matrix.mul_apply,Matrix.conjTranspose_apply,Complex.star_def,Fin.sum_univ_three]

theorem dephased_physical_leadingR_transpose {H : Mat6}
    (hH : Physical H) (hd : Dephased H) :
    leadingR (Matrix.transpose H)=leadingR H := by
  have hE : Hadamard6.EntrywiseUnit (blockE H) := by
    intro i j
    exact hH.1 (upperIndex i) (upperIndex j)
  have hrow : ∀ j, blockE H 0 j=1 := by
    intro j
    change H 0 (upperIndex j)=1
    exact hd.1 (upperIndex j)
  have hcol : ∀ i, blockE H i 0=1 := by
    intro i
    change H (upperIndex i) 0=1
    exact hd.2 (upperIndex i)
  have hEt : blockE (Matrix.transpose H)=Matrix.transpose (blockE H) := rfl
  rw [leadingR_eq_seed_negative_gram,leadingR_eq_seed_negative_gram,hEt]
  exact dephased_negative_gramInvariant_transpose (blockE H) hE hrow hcol

#print axioms leadingR_eq_seed_negative_gram
#print axioms dephased_physical_leadingR_transpose
end
end StrictReconstruction20261007.SideIntrinsic
