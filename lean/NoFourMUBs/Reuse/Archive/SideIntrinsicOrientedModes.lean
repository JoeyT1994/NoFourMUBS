import NoFourMUBs.Reuse.Archive.SideIntrinsicModeRecovery

/-! Actual positivity, root, orientation, and rho recovery after the finite
column reflection. The equality case in the orientation comparison is included. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
open Centiradian20261006
open scoped ComplexConjugate
noncomputable section

theorem oriented_mode_scalar_recovery (a : Rows ℂ) (ha : UnitRows a)
    (hR : 0 < gramInvariant (rowS a) (rowT a) (rowR a)) (epsilon : ℝ)
    (he : epsilon^2=1)
    (hz : sideZ (rowS a) (rowT a) (rowR a) epsilon = intrinsicTheta a)
    (w : ℂ) (hwu : Complex.normSq w=1) (hw : w^2+w+1=0)
    (horder : Complex.normSq (sideModeB a w) ≤ Complex.normSq (sideModeA a w)) :
    0 < Complex.normSq (sideModeA a w) ∧
    0 < preRhoN (rowS a) ∧
    sideModeDelta a w^2 = prescribedDeltaRadicand (rowS a) (rowT a) (rowR a) epsilon ∧
    0 ≤ (prescribedDF (rowS a) (rowT a) (rowR a) epsilon (sideModeDelta a w)).re ∧
    prescribedRho (rowS a) (rowT a) (rowR a) epsilon (sideModeDelta a w) =
      Complex.normSq (sideModeA a w) := by
  have hg := (strict_intrinsic_det_guard a ha hR).2
  have hd := actual_mode_delta_is_prescribed_root a ha hR epsilon he hz w hw
  have hd0 := (prescribed_delta_guard hR hg he hd).2
  obtain ⟨hN,_,_,_,hA⟩ := actual_mode_reconstruction_moments a ha hR epsilon hz w hwu hw
  have hA0 : sideModeA a w ≠ 0 := by
    intro hzero
    have hBnonpos : Complex.normSq (sideModeB a w) ≤ 0 := by simpa [hzero] using horder
    have hBzero : sideModeB a w = 0 :=
      Complex.normSq_eq_zero.mp (le_antisymm hBnonpos (Complex.normSq_nonneg _))
    apply hd0
    simp [sideModeDelta,hzero,hBzero]
  have hApos : 0 < Complex.normSq (sideModeA a w) := Complex.normSq_pos.mpr hA0
  have hn : 0 < preRhoN (rowS a) := by
    rw [hN]
    exact add_pos_of_pos_of_nonneg hApos (Complex.normSq_nonneg _)
  have hf := prescribed_preRho_factor hR hg he hd
  have hc : 2 * (prescribedRho (rowS a) (rowT a) (rowR a) epsilon (sideModeDelta a w) : ℂ) -
      (preRhoN (rowS a) : ℂ) =
      ((Complex.normSq (sideModeA a w) - Complex.normSq (sideModeB a w) : ℝ) : ℂ) :=
    mul_right_cancel₀ hd0 (hf.symm.trans hA)
  have hreal : 2 * prescribedRho (rowS a) (rowT a) (rowR a) epsilon (sideModeDelta a w) -
      preRhoN (rowS a) = Complex.normSq (sideModeA a w) - Complex.normSq (sideModeB a w) := by
    exact_mod_cast hc
  have hrho : prescribedRho (rowS a) (rowT a) (rowR a) epsilon (sideModeDelta a w) =
      Complex.normSq (sideModeA a w) := by linarith
  have hdef : 2 * prescribedRho (rowS a) (rowT a) (rowR a) epsilon (sideModeDelta a w) =
      preRhoN (rowS a) + (prescribedDF (rowS a) (rowT a) (rowR a) epsilon (sideModeDelta a w)).re := by
    unfold prescribedRho
    ring
  refine ⟨hApos,hn,hd,?_,hrho⟩
  linarith

#print axioms oriented_mode_scalar_recovery
end
end StrictReconstruction20261007.SideIntrinsic
