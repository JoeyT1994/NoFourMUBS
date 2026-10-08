import SideIntrinsicCoefficientRecovery
import SideModeMatrixFactor

/-! Exact matrix recovery from every oriented strict phase side.
No coefficient, root, or orientation equation is left as an extra premise. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
open Centiradian20261006
open scoped ComplexConjugate
noncomputable section

theorem oriented_side_modes_reconstruct (a : Rows ℂ) (ha : UnitRows a)
    (hR : 0 < gramInvariant (rowS a) (rowT a) (rowR a)) (epsilon : ℝ)
    (he : epsilon^2=1)
    (hz : sideZ (rowS a) (rowT a) (rowR a) epsilon = intrinsicTheta a)
    (omega : ℂ) (homega : Complex.normSq omega=1) (hquad : omega^2+omega+1=0)
    (horder : Complex.normSq (sideModeB a omega) ≤ Complex.normSq (sideModeA a omega)) :
    sideModeDelta a omega^2 = prescribedDeltaRadicand (rowS a) (rowT a) (rowR a) epsilon ∧
    0 ≤ (prescribedDF (rowS a) (rowT a) (rowR a) epsilon (sideModeDelta a omega)).re ∧
    (sideModeA a omega/conj (sideModeA a omega))^3 =
      prescribedXi (rowS a) (rowT a) (rowR a) epsilon (sideModeDelta a omega) ∧
    phaseFourierMatrix
      (prescribedMatrix (rowS a) (rowT a) (rowR a) epsilon (sideModeDelta a omega))
      omega (sideModeA a omega/conj (sideModeA a omega)) = phaseSide a := by
  obtain ⟨hAp,_,hd,ho,_⟩ := oriented_mode_scalar_recovery a ha hR epsilon he hz omega homega hquad horder
  have hA : sideModeA a omega ≠ 0 := Complex.normSq_pos.mp hAp
  obtain ⟨hq,hs,hcp,hcm,hw3⟩ :=
    oriented_mode_coefficient_recovery a ha hR epsilon he hz omega homega hquad horder
  have hM : prescribedMatrix (rowS a) (rowT a) (rowR a) epsilon (sideModeDelta a omega) *
      phaseDiagonal (sideModeA a omega/conj (sideModeA a omega)) = sideFourierCore a omega := by
    simp only [prescribedMatrix,hq,hs,hcp,hcm]
    exact mode_core_phase_factor (rowS a/3) (rowT a/3)
      (sideModeA a omega) (sideModeB a omega) (sideModeC a omega) (sideModeD a omega) hA
  refine ⟨hd,ho,hw3,?_⟩
  change prescribedMatrix (rowS a) (rowT a) (rowR a) epsilon (sideModeDelta a omega) *
      phaseDiagonal (sideModeA a omega/conj (sideModeA a omega)) * reconstructionFourierMatrix omega = _
  rw [hM]
  exact (side_fourier_factorization a omega hquad).symm

#print axioms oriented_side_modes_reconstruct
end
end StrictReconstruction20261007.SideIntrinsic
