import SidePhysicalReconstruction
import SidePhysicalSeedParameters

/-! Literal full reconstruction from the actual seed E and its transpose.
No reconstructed-side Gram remains as a parameter in the recipe statement. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
open Centiradian20261006 Centiradian20261006.NativeSigned20261006
open scoped ComplexConjugate Matrix
noncomputable section

theorem strict_physical_literal_seed_reconstruction {H : Mat6}
    (hH : Physical H) (hd : Dephased H) (hR : 0 < leadingR H)
    :
    ∃ (epsilonB : ℝ) (deltaB wB : ℂ) (pB : Equiv.Perm (Fin 3))
      (epsilonC : ℝ) (deltaC wC : ℂ) (pC : Equiv.Perm (Fin 3)),
      (epsilonB^2=1 ∧
      deltaB^2=prescribedDeltaRadicand (seedS (blockE H))
        (seedT (blockE H)) (seedR (blockE H)) epsilonB ∧
      0 ≤ (prescribedDF (seedS (blockE H))
        (seedT (blockE H)) (seedR (blockE H)) epsilonB deltaB).re ∧
      wB^3=prescribedXi (seedS (blockE H))
        (seedT (blockE H)) (seedR (blockE H)) epsilonB deltaB ∧
      ∀ i j, prescribedSide (seedS (blockE H))
        (seedT (blockE H)) (seedR (blockE H)) epsilonB deltaB wB i j =
          blockB H i (pB j)) ∧
      (epsilonC^2=1 ∧
      deltaC^2=prescribedDeltaRadicand (seedS (Matrix.transpose (blockE H)))
        (seedT (Matrix.transpose (blockE H))) (seedR (Matrix.transpose (blockE H))) epsilonC ∧
      0 ≤ (prescribedDF (seedS (Matrix.transpose (blockE H)))
        (seedT (Matrix.transpose (blockE H)))
        (seedR (Matrix.transpose (blockE H))) epsilonC deltaC).re ∧
      wC^3=prescribedXi (seedS (Matrix.transpose (blockE H)))
        (seedT (Matrix.transpose (blockE H)))
        (seedR (Matrix.transpose (blockE H))) epsilonC deltaC ∧
      ∀ i j, prescribedSide (seedS (Matrix.transpose (blockE H)))
        (seedT (Matrix.transpose (blockE H)))
        (seedR (Matrix.transpose (blockE H))) epsilonC deltaC wC i j =
          blockC H (pC j) i) ∧
      blockT H = -(blockC H * (blockE H)ᴴ) * (blockB H)ᴴ⁻¹ := by
  obtain ⟨hs,ht,hr⟩ := physical_seed_parameter_binding hH
  obtain ⟨hst,htt,hrt⟩ := physical_seed_parameter_binding (physical_transpose hH)
  have hEt : blockE (Matrix.transpose H)=Matrix.transpose (blockE H) := rfl
  simpa only [hs,ht,hr,hst,htt,hrt,hEt] using
    strict_physical_matrix_reconstruction hH hd hR

#print axioms strict_physical_literal_seed_reconstruction
end
end StrictReconstruction20261007.SideIntrinsic
