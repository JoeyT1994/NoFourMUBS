import SidePhysicalExhaustion
import SidePhysicalTranspose

/-! Whole-matrix strict-domain necessity. Both side recipes, their independent
permutations, every scalar root choice, and forced lower block follow from only
the actual physical equations, dephasing, and leadingR H > 0. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
open Centiradian20261006 Centiradian20261006.NativeSigned20261006
open scoped ComplexConjugate Matrix
noncomputable section

theorem strict_physical_matrix_reconstruction {H : Mat6}
    (hH : Physical H) (hd : Dephased H) (hR : 0 < leadingR H)
    :
    ∃ (epsilonB : ℝ) (deltaB wB : ℂ) (pB : Equiv.Perm (Fin 3))
      (epsilonC : ℝ) (deltaC wC : ℂ) (pC : Equiv.Perm (Fin 3)),
      (epsilonB^2=1 ∧
      deltaB^2=prescribedDeltaRadicand (rightGram H 1 0)
        (rightGram H 2 0) (rightGram H 2 1) epsilonB ∧
      0 ≤ (prescribedDF (rightGram H 1 0)
        (rightGram H 2 0) (rightGram H 2 1) epsilonB deltaB).re ∧
      wB^3=prescribedXi (rightGram H 1 0)
        (rightGram H 2 0) (rightGram H 2 1) epsilonB deltaB ∧
      ∀ i j, prescribedSide (rightGram H 1 0)
        (rightGram H 2 0) (rightGram H 2 1) epsilonB deltaB wB i j =
          blockB H i (pB j)) ∧
      (epsilonC^2=1 ∧
      deltaC^2=prescribedDeltaRadicand (rightGram (Matrix.transpose H) 1 0)
        (rightGram (Matrix.transpose H) 2 0) (rightGram (Matrix.transpose H) 2 1) epsilonC ∧
      0 ≤ (prescribedDF (rightGram (Matrix.transpose H) 1 0)
        (rightGram (Matrix.transpose H) 2 0)
        (rightGram (Matrix.transpose H) 2 1) epsilonC deltaC).re ∧
      wC^3=prescribedXi (rightGram (Matrix.transpose H) 1 0)
        (rightGram (Matrix.transpose H) 2 0)
        (rightGram (Matrix.transpose H) 2 1) epsilonC deltaC ∧
      ∀ i j, prescribedSide (rightGram (Matrix.transpose H) 1 0)
        (rightGram (Matrix.transpose H) 2 0)
        (rightGram (Matrix.transpose H) 2 1) epsilonC deltaC wC i j =
          blockC H (pC j) i) ∧
      blockT H = -(blockC H * (blockE H)ᴴ) * (blockB H)ᴴ⁻¹ := by
  have hRt : 0 < leadingR (Matrix.transpose H) := by
    rw [dephased_physical_leadingR_transpose hH hd]
    exact hR
  exact physical_two_side_exhaustion_and_completion hH hd hR hRt

#print axioms strict_physical_matrix_reconstruction
end
end StrictReconstruction20261007.SideIntrinsic
