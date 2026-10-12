import NoFourMUBs.Step2.CriticalZero.ActualNonzeroCoefficients
import NoFourMUBs.Step2.CriticalZero.NonzeroProgramInvolution

/-! The current physical equation has no residual shared-root coefficient.
The original six physical nonpole guards are retained. -/
set_option autoImplicit false
noncomputable section
namespace NoFourMUBs.Step2.Critical
open CriticalPhysical20261003 CriticalStripMoments20261003
open CriticalNonzeroNumerator20261003

theorem allCritical_nonzero_a_zero {H : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H) (hj : sideJ (stripLeftBlock H) ≠ 0)
    (hL : ∀ i, CriticalLightSheet20261003.blockDenominator (stripLeftBlock H) i ≠ 0)
    (hR : ∀ i, CriticalLightSheet20261003.blockDenominator (stripRightBlock H) i ≠ 0) :
    ∃ k : ℝ, k ≠ 0 ∧
      sideP (stripLeftBlock H) = CriticalRationalParam20261003.p k ∧
      sideJ (stripLeftBlock H) = CriticalRationalParam20261003.j k ∧
      sideW (stripLeftBlock H) = CriticalRationalParam20261003.w k ∧
      (let X := Complex.normSq (stripLeftData H).s
       let Y := Complex.normSq (stripLeftData H).t
       0 < X ∧ 0 < Y ∧ (sumCoefficients (X : ℂ) (Y : ℂ) (k : ℂ)).a = 0) := by
  obtain ⟨k, hk, hp, hj', hw, he⟩ := allCritical_nonzero_coefficients hH hj hL hR
  refine ⟨k, hk, hp, hj', hw, ?_⟩
  dsimp only at he ⊢
  obtain ⟨hX, hY, _, he⟩ := he
  have hXc : (Complex.normSq (stripLeftData H).s : ℂ) ≠ 0 :=
    Complex.ofReal_ne_zero.mpr (ne_of_gt hX)
  have hYc : (Complex.normSq (stripLeftData H).t : ℂ) ≠ 0 :=
    Complex.ofReal_ne_zero.mpr (ne_of_gt hY)
  refine ⟨hX, hY, ?_⟩
  simpa only [NonzeroClearing.sumCoefficients_b_zero _ _ _ hXc hYc,
    zero_mul, add_zero] using he

end NoFourMUBs.Step2.Critical
