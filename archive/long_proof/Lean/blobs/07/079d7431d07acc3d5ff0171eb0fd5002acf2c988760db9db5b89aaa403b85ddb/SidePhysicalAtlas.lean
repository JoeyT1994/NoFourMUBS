import SidePhysicalRetained
import Mathlib.Logic.Equiv.Fin.Basic

/-! The literal index correspondence between an actual physical matrix and
its retained four-block completion. This is the strict-positive physical
subdomain only; no global corner existence is asserted. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
open Centiradian20261006 Centiradian20261006.NativeSigned20261006
open scoped ComplexConjugate Matrix
noncomputable section

def physicalBlockEquiv : Hadamard6.I6 ≃ Fin 6 := finSumFinEquiv

theorem physicalBlockEquiv_left (i : Fin 3) :
    physicalBlockEquiv (Sum.inl i)=upperIndex i := rfl

theorem physicalBlockEquiv_right (i : Fin 3) :
    physicalBlockEquiv (Sum.inr i)=bottomIndex i := rfl

def physicalBlockMatrix (H : Mat6) : Hadamard6.Mat6 :=
  fun i j => H (physicalBlockEquiv i) (physicalBlockEquiv j)

theorem physicalBlockMatrix_eq_fromBlocks (H : Mat6) :
    physicalBlockMatrix H =
      Matrix.fromBlocks (blockE H) (blockB H) (blockC H) (blockT H) := by
  ext i j
  rcases i with i | i <;> rcases j with j | j <;> rfl

theorem physical_completion_eq_blockMatrix {H : Mat6}
    (hH : Physical H) (hR : 0 < leadingR H) :
    Hadamard6.completion (blockE H) (blockB H) (blockC H)=physicalBlockMatrix H := by
  rw [physicalBlockMatrix_eq_fromBlocks,Hadamard6.completion,
    physical_forcedD_binding hH hR]

theorem physical_completion_recovers_entries {H : Mat6}
    (hH : Physical H) (hR : 0 < leadingR H) (i j : Fin 6) :
    Hadamard6.completion (blockE H) (blockB H) (blockC H)
      (physicalBlockEquiv.symm i) (physicalBlockEquiv.symm j)=H i j := by
  rw [physical_completion_eq_blockMatrix hH hR]
  simp only [physicalBlockMatrix,Equiv.apply_symm_apply]

theorem strict_physical_mem_finiteCornerAtlas {H : Mat6}
    (hH : Physical H) (hd : Dephased H) (hR : 0 < leadingR H) :
    Hadamard6.InFiniteCornerAtlas (physicalBlockMatrix H) := by
  let p : Hadamard6.CornerData :=
    { a := H 1 1
      b := H 1 2
      c := H 2 1
      d := H 2 2
      abs_a := hH.1 1 1
      abs_b := hH.1 1 2
      abs_c := hH.1 2 1
      abs_d := hH.1 2 2 }
  have hp : p.matrix=blockE H := by
    change Hadamard6.corner (H 1 1) (H 1 2) (H 2 1) (H 2 2)=blockE H
    exact (dephased_blockE_corner hd).symm
  have hret : Hadamard6.Retained p.matrix (blockB H) (blockC H) := by
    rw [hp]
    exact (physical_strict_corner_retained hH hd hR).1
  apply Hadamard6.mem_finiteCornerAtlas_of_retained hret
  rw [hp,physical_completion_eq_blockMatrix hH hR]
  exact Hadamard6.equivalent_refl (physicalBlockMatrix H)

#print axioms physicalBlockEquiv_left
#print axioms physicalBlockEquiv_right
#print axioms physicalBlockMatrix_eq_fromBlocks
#print axioms physical_completion_eq_blockMatrix
#print axioms physical_completion_recovers_entries
#print axioms strict_physical_mem_finiteCornerAtlas
end
end StrictReconstruction20261007.SideIntrinsic
