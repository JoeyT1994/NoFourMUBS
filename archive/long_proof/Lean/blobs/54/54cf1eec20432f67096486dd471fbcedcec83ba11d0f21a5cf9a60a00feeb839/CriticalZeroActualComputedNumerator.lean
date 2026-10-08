import CriticalZeroAllCriticalInputs
import CriticalZeroSumPhysicalCleared
set_option autoImplicit false
namespace CriticalZeroPhysicalInputs20261003
open Mub6 Mub6.Classification CompactCover GlobalCornerDomain FourierSeedBinding FourPhase
open CriticalNewton20261003 CriticalPhysical20261003 CriticalZeroRational20261003
open CriticalStripMoments20261003 CriticalNewtonGauge20261003
open CriticalZeroSumAssembly20261003
noncomputable section

/-- The original physical matrix forces the complete computed numerator to
vanish. All chart boundaries and both original correlation guards are retained.
The identification with the separate raw polynomial is a later obligation. -/
theorem allCritical_computed_numerator_zero {H : CompactCover.Mat6}
    (hH : AllCritical H) (z : ℝ)
    (hzlo : -3≤z) (hz0 : z≠0) (hz3 : z≠ -3) (hz2 : z≠ -2)
    (hp : sideP (stripLeftBlock H)=9-z^2)
    (hj : sideJ (stripLeftBlock H)=0)
    (hw : sideW (stripLeftBlock H)=z^2*(z+3)^2)
    (hs : (stripLeftData H).s≠0) (ht : (stripLeftData H).t≠0) :
    let D := stripLeftData H
    let X := Complex.normSq D.s
    let Y := Complex.normSq D.t
    let Z := Complex.normSq D.r
    Inputs (X : ℂ) Y Z z (X*Y*Z : ℝ) ∧
      computedNumerator (X : ℂ) Y z=0 ∧
      commonDenominator (X : ℂ) Y z≠0 := by
  rcases allCritical_inputs_and_equation hH z hzlo hz0 hz3 hz2 hp hj hw hs ht
      with ⟨hi,hq,he⟩
  dsimp only at hi hq he ⊢
  have hd := commonDenominator_ne_zero _ _ _ hi.z_ne hi.Dx_ne hi.Dy_ne hi.Dz_ne
  have hv := pure_zeroSide_eq_computed_quotient _ _ _ _
    hi.X_ne hi.Y_ne hi.z_ne hi.Dx_ne hi.Dy_ne hi.Dz_ne hq
  have hn := (eq_div_iff hd).mp (he.symm.trans hv)
  simp only [zero_mul] at hn
  exact ⟨hi,hn.symm,hd⟩

end
#print axioms allCritical_computed_numerator_zero
end CriticalZeroPhysicalInputs20261003
