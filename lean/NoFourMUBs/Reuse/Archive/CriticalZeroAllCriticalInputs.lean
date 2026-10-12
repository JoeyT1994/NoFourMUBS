import NoFourMUBs.Reuse.Archive.CriticalZeroModuliInputs
import NoFourMUBs.Reuse.Archive.CriticalZeroSideAllCritical
set_option autoImplicit false
namespace CriticalZeroPhysicalInputs20261003
open NoFourMUBs.Step2.Critical FourierSeedBinding
open CriticalNewton20261003 CriticalPhysical20261003 CriticalZeroRational20261003
open CriticalStripMoments20261003 CriticalNewtonGauge20261003
noncomputable section
/-- All current finite scalar-check prerequisites from the literal physical
matrix. Parameter boundaries and the two chart correlations stay explicit. -/
theorem allCritical_inputs_and_equation {H : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H) (z : ℝ)
    (hzlo : -3≤z) (hz0 : z≠0) (hz3 : z≠ -3) (hz2 : z≠ -2)
    (hp : sideP (stripLeftBlock H)=9-z^2)
    (hj : sideJ (stripLeftBlock H)=0)
    (hw : sideW (stripLeftBlock H)=z^2*(z+3)^2)
    (hs : (stripLeftData H).s≠0) (ht : (stripLeftData H).t≠0) :
    let D := stripLeftData H
    let G := scaleData D.s⁻¹ D.t⁻¹ D
    let X := Complex.normSq D.s
    let Y := Complex.normSq D.t
    let Z := Complex.normSq D.r
    Inputs (X : ℂ) Y Z z (X*Y*Z : ℝ) ∧
    (Y : ℂ)*G.r^2= -(X : ℂ)*(9-(z : ℂ)^2-X-Y) ∧
    pureNewtonPolynomial66 (zeroSide (X : ℂ) Y z G.r 1)
      (zeroSide (X : ℂ) Y z G.r (-1))=0 := by
  have hEL : ∀ i j,Complex.normSq (stripLeftBlock H i j)=1 :=
    fun i j => hH.1.1.1 (NoFourMUBs.Step2.Critical.front i) (NoFourMUBs.Step2.Critical.front j)
  rcases CriticalNewtonGaugeLight20261003.phase_block_linear_data
      (stripLeftBlock H) hEL with ⟨hds,hdt,hdr⟩
  have hpD : momentP (stripLeftData H).s (stripLeftData H).t
      (stripLeftData H).r=9-z^2 := by
    change momentP (dataOf (stripLeftBlock H 1) (stripLeftBlock H 2)).s
      (dataOf (stripLeftBlock H 1) (stripLeftBlock H 2)).t
      (dataOf (stripLeftBlock H 1) (stripLeftBlock H 2)).r=9-z^2
    rw [hds,hdt,hdr]
    exact hp
  have hwD : momentW (stripLeftData H).s (stripLeftData H).t
      (stripLeftData H).r=z^2*(z+3)^2 := by
    change momentW (dataOf (stripLeftBlock H 1) (stripLeftBlock H 2)).s
      (dataOf (stripLeftBlock H 1) (stripLeftBlock H 2)).t
      (dataOf (stripLeftBlock H 1) (stripLeftBlock H 2)).r=z^2*(z+3)^2
    rw [hds,hdt,hdr]
    exact hw
  have hi := moment_inputs (stripLeftData H).s (stripLeftData H).t
    (stripLeftData H).r z hs ht hzlo hz0 hz3 hz2 hpD hwD
  have he := CriticalNewtonGaugeLight20261003.allCritical_regular_zero_scalar_equation
    hH z hzlo hz0 hz3 hz2 hp hj hw hs ht
  dsimp only at hi he ⊢
  exact ⟨hi,quadratic_from_product _ _ _ _ hi.X_ne he.2.2.1,he.2.2.2⟩
end
#print axioms allCritical_inputs_and_equation
end CriticalZeroPhysicalInputs20261003
