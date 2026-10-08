import CriticalZeroSideStripLight
import CriticalPhysicalGauge

set_option autoImplicit false
namespace CriticalNewtonGaugeLight20261003
open Mub6 Mub6.Classification CompactCover GlobalCornerDomain FourierSeedBinding FourPhase
open CriticalNewton20261003 CriticalPhysical20261003 CriticalZeroRational20261003
open CriticalStripMoments20261003 CriticalNewtonGauge20261003
noncomputable section

/-- The physical all-critical 66-term equation now discharges the explicit
input of the literal zeroSide adapter. No polynomial-zero premise remains. -/
theorem allCritical_regular_zero_scalar_equation {H : CompactCover.Mat6}
    (hH : AllCritical H) (z : ℝ)
    (hzlo : -3≤z) (hz0 : z≠0) (hz3 : z≠ -3) (hz2 : z≠ -2)
    (hp : sideP (stripLeftBlock H)=9-z^2)
    (hj : sideJ (stripLeftBlock H)=0)
    (hw : sideW (stripLeftBlock H)=z^2*(z+3)^2)
    (hs : (stripLeftData H).s≠0) (ht : (stripLeftData H).t≠0) :
    let D := stripLeftData H
    let G := scaleData D.s⁻¹ D.t⁻¹ D
    let X := Complex.normSq D.s
    let Y := Complex.normSq D.t
    0<X ∧ 0<Y ∧
    G.r*(-G.r*(Y : ℂ)/(X : ℂ))=9-(z : ℂ)^2-(X : ℂ)-(Y : ℂ) ∧
    pureNewtonPolynomial66 (zeroSide (X : ℂ) (Y : ℂ) (z : ℂ) G.r 1)
      (zeroSide (X : ℂ) (Y : ℂ) (z : ℂ) G.r (-1))=0 := by
  exact regular_zero_scalar_equation_of_66 hH.1 z hzlo hz0 hz3 hz2 hp hj hw hs ht
    (allCritical_reciprocal_pureNewton_zero hH hs ht)

end
#print axioms allCritical_regular_zero_scalar_equation
end CriticalNewtonGaugeLight20261003
