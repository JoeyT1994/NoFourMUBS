import NoFourMUBs.Reuse.Archive.CriticalNonzeroCoefficientProgram
import NoFourMUBs.Reuse.Archive.CriticalNonzeroAllCritical
import NoFourMUBs.Reuse.Archive.CriticalZeroChartTransport

/-! The actual nonzero-J equation in the existing quadratic coefficient model.
The six physical denominator conditions remain explicit. -/

set_option autoImplicit false
noncomputable section
namespace NoFourMUBs.Step2.Critical
open CriticalPhysical20261003 CriticalStripMoments20261003
open CriticalNewtonGauge20261003 CriticalNonzeroRational20261003
open CriticalNonzeroNumerator20261003 CriticalNonzeroPhysicalBinding20261003

theorem allCritical_nonzero_coefficients {H : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H) (hj : sideJ (stripLeftBlock H) ≠ 0)
    (hL : ∀ i, CriticalLightSheet20261003.blockDenominator (stripLeftBlock H) i ≠ 0)
    (hR : ∀ i, CriticalLightSheet20261003.blockDenominator (stripRightBlock H) i ≠ 0) :
    ∃ k : ℝ, k ≠ 0 ∧
      sideP (stripLeftBlock H) = CriticalRationalParam20261003.p k ∧
      sideJ (stripLeftBlock H) = CriticalRationalParam20261003.j k ∧
      sideW (stripLeftBlock H) = CriticalRationalParam20261003.w k ∧
      (let D := stripLeftData H
       let G := scaleData D.s⁻¹ D.t⁻¹ D
       let X := Complex.normSq D.s
       let Y := Complex.normSq D.t
       0 < X ∧ 0 < Y ∧
       (Y : ℂ) * G.r ^ 2 - J (k : ℂ) * G.r +
         (X : ℂ) * (p (k : ℂ) - (X : ℂ) - (Y : ℂ)) = 0 ∧
       (sumCoefficients (X : ℂ) (Y : ℂ) (k : ℂ)).a +
         (sumCoefficients (X : ℂ) (Y : ℂ) (k : ℂ)).b * G.r = 0) := by
  obtain ⟨hs, ht⟩ := CriticalCorrelationChart20261003.nonzero_J_original_chart hj
  obtain ⟨k, hk, hp, hj', hw, he⟩ :=
    allCritical_nonzero_exists_scalar_equation hH hj hs ht hL hR
  refine ⟨k, hk, hp, hj', hw, ?_⟩
  dsimp only at he ⊢
  obtain ⟨hX, hY, hq, hzero⟩ := he
  refine ⟨hX, hY, hq, ?_⟩
  have hYc : (Complex.normSq (stripLeftData H).t : ℂ) ≠ 0 := by
    exact_mod_cast (ne_of_gt hY)
  exact (nonzero_polynomial66_via_coefficients _ _ _ _ hYc hq).symm.trans hzero

#print axioms allCritical_nonzero_coefficients
end NoFourMUBs.Step2.Critical
