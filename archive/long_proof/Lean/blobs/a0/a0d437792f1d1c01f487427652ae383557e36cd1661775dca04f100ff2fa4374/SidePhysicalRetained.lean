import SideVerticalCandidates
import SidePhysicalCandidateMembership
import Hadamard6.BlockCompletion

/-! Actual strict physical matrices enter the paper's Retained interface.
All finite-candidate, invertibility and final modulus fields are discharged;
the original seed is allowed to be singular. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
open Centiradian20261006 Centiradian20261006.NativeSigned20261006
open scoped ComplexConjugate Matrix
noncomputable section

theorem physical_strict_seed_finite_dilation {H : Mat6}
    (hH : Physical H) (hd : Dephased H) (hR : 0 < leadingR H) :
    Hadamard6.IsFiniteDilationCorner (blockE H) := by
  have hE : Hadamard6.EntrywiseUnit (blockE H) :=
    fun i j => hH.1 (upperIndex i) (upperIndex j)
  have hRE : 0 < gramInvariant (seedS (blockE H))
      (seedT (blockE H)) (seedR (blockE H)) := by
    rw [← physical_leadingR_seed_parameters hH]
    exact hR
  have hRt : 0 < leadingR (Matrix.transpose H) := by
    rw [dephased_physical_leadingR_transpose hH hd]
    exact hR
  have hHt : Physical (Matrix.transpose H) := physical_transpose hH
  have hEt : blockE (Matrix.transpose H)=Matrix.transpose (blockE H) := rfl
  have hREt : 0 < gramInvariant (seedS (Matrix.transpose (blockE H)))
      (seedT (Matrix.transpose (blockE H))) (seedR (Matrix.transpose (blockE H))) := by
    have hb := physical_leadingR_seed_parameters hHt
    rw [hEt] at hb
    rw [← hb]
    exact hRt
  have hB := physical_blockB_horizontal_candidate hH hd
  have hC := physical_blockC_vertical_candidate hH hd
  have hBu : IsUnit (blockB H).det :=
    isUnit_iff_ne_zero.mpr (physical_positive_blockB_det_ne_zero hH hR)
  have hCu := physical_blockC_isUnit_det hH hd hR
  refine ⟨⟨blockB H,hB,hBu⟩,⟨blockC H,hC,hCu⟩,?_,?_⟩
  · exact (strict_horizontal_candidates_finite (blockE H) hE hRE).subset
      (fun _ hx => hx.1)
  · exact (strict_vertical_candidates_finite (blockE H) hE hREt).subset
      (fun _ hx => hx.1)

theorem physical_strict_corner_retained {H : Mat6}
    (hH : Physical H) (hd : Dephased H) (hR : 0 < leadingR H) :
    Hadamard6.Retained (blockE H) (blockB H) (blockC H) ∧
      blockT H=Hadamard6.forcedD (blockE H) (blockB H) (blockC H) := by
  have hT := physical_forcedD_binding hH hR
  refine ⟨⟨physical_strict_seed_finite_dilation hH hd hR,
    ⟨physical_blockB_horizontal_candidate hH hd,
      isUnit_iff_ne_zero.mpr (physical_positive_blockB_det_ne_zero hH hR)⟩,
    ⟨physical_blockC_vertical_candidate hH hd,physical_blockC_isUnit_det hH hd hR⟩,
    ?_⟩,hT⟩
  intro i j
  rw [← hT]
  exact hH.1 (bottomIndex i) (bottomIndex j)

theorem physical_retained_completion_hadamard {H : Mat6}
    (hH : Physical H) (hd : Dephased H) (hR : 0 < leadingR H) :
    Hadamard6.IsHadamard
      (Hadamard6.completion (blockE H) (blockB H) (blockC H)) := by
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
  have hh : Hadamard6.IsHadamard (Hadamard6.completion p.matrix (blockB H) (blockC H)) :=
    ⟨Hadamard6.retained_completion_entrywiseUnit hret,
      Hadamard6.retained_completion_rowGram hret⟩
  simpa only [hp] using hh

#print axioms physical_strict_seed_finite_dilation
#print axioms physical_strict_corner_retained
#print axioms physical_retained_completion_hadamard
end
end StrictReconstruction20261007.SideIntrinsic
