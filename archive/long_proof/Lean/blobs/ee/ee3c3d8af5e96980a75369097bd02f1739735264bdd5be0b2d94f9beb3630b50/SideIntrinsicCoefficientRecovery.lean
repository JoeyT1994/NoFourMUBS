import SideIntrinsicOrientedModes
import SideModeCoefficientAlgebra

/-! Literal q, sigma, c-plus, c-minus and cube phase recovery from an actual
oriented strict unit side. All moment and root premises are derived above. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
open Centiradian20261006
open scoped ComplexConjugate
noncomputable section

theorem oriented_mode_coefficient_recovery (a : Rows ℂ) (ha : UnitRows a)
    (hR : 0 < gramInvariant (rowS a) (rowT a) (rowR a)) (epsilon : ℝ)
    (he : epsilon^2=1)
    (hz : sideZ (rowS a) (rowT a) (rowR a) epsilon = intrinsicTheta a)
    (w : ℂ) (hwu : Complex.normSq w=1) (hw : w^2+w+1=0)
    (horder : Complex.normSq (sideModeB a w) ≤ Complex.normSq (sideModeA a w)) :
    prescribedQ (rowS a) (rowT a) (rowR a) epsilon (sideModeDelta a w) =
      sideModeB a w / conj (sideModeA a w) ∧
    prescribedSigma (rowS a) (rowT a) (rowR a) epsilon (sideModeDelta a w) =
      sideModeA a w^2 / conj (sideModeA a w) ∧
    prescribedCPlus (rowS a) (rowT a) (rowR a) epsilon (sideModeDelta a w) =
      sideModeC a w / sideModeA a w ∧
    prescribedCMinus (rowS a) (rowT a) (rowR a) epsilon (sideModeDelta a w) =
      sideModeD a w / conj (sideModeA a w) ∧
    (sideModeA a w / conj (sideModeA a w))^3 =
      prescribedXi (rowS a) (rowT a) (rowR a) epsilon (sideModeDelta a w) := by
  obtain ⟨hAp,_,_,_,hrho⟩ := oriented_mode_scalar_recovery a ha hR epsilon he hz w hwu hw horder
  have hA : sideModeA a w ≠ 0 := Complex.normSq_pos.mp hAp
  obtain ⟨hN,halpha,_,hk,_⟩ := actual_mode_reconstruction_moments a ha hR epsilon hz w hwu hw
  have hU := (prescribed_intrinsic_products a ha hR epsilon hz).1
  have hq : prescribedQ (rowS a) (rowT a) (rowR a) epsilon (sideModeDelta a w) =
      sideModeB a w / conj (sideModeA a w) := by
    unfold prescribedQ
    rw [halpha,hrho]
    exact mode_q_quotient _ _ hA
  have hs : prescribedSigma (rowS a) (rowT a) (rowR a) epsilon (sideModeDelta a w) =
      sideModeA a w^2 / conj (sideModeA a w) := by
    unfold prescribedSigma
    rw [hU,hq]
    exact mode_sigma_quotient _ _ _ _ hA (actual_mode_cubic a ha w hwu hw)
  refine ⟨hq,hs,?_,?_,?_⟩
  · unfold prescribedCPlus
    rw [hk,hq,hN]
    exact mode_cplus_quotient _ _ _ _ hA
  · unfold prescribedCMinus
    rw [hk,hq,hN]
    exact mode_cminus_quotient _ _ _ _ hA
  · unfold prescribedXi
    rw [hs,hrho]
    exact mode_phase_cube _ hA

#print axioms oriented_mode_coefficient_recovery
end
end StrictReconstruction20261007.SideIntrinsic
