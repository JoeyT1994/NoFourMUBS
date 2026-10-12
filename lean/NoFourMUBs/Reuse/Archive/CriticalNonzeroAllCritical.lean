import NoFourMUBs.Reuse.Archive.CriticalNonzeroLightPair
import NoFourMUBs.Step2.CriticalZero.LeadingScalarPremises

set_option autoImplicit false
namespace CriticalNonzeroPhysicalBinding20261003
open NoFourMUBs.Step2.Critical
open CriticalNewton20261003 CriticalNewtonGauge20261003 CriticalNonzeroRational20261003
noncomputable section

/-- Physical all-criticality supplies the 66-zero equation. There is no
assumed scalar polynomial-zero premise. All six poles remain explicit. -/
theorem allCritical_regular_nonzero_scalar_equation {H : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H) (k : ℝ)
    (hp : CriticalPhysical20261003.sideP (CriticalStripMoments20261003.stripLeftBlock H)=CriticalRationalParam20261003.p k)
    (hj : CriticalPhysical20261003.sideJ (CriticalStripMoments20261003.stripLeftBlock H)=CriticalRationalParam20261003.j k)
    (hw : CriticalPhysical20261003.sideW (CriticalStripMoments20261003.stripLeftBlock H)=CriticalRationalParam20261003.w k)
    (hs : (CriticalStripMoments20261003.stripLeftData H).s≠0) (ht : (CriticalStripMoments20261003.stripLeftData H).t≠0)
    (hL : ∀ i,CriticalLightSheet20261003.blockDenominator (CriticalStripMoments20261003.stripLeftBlock H) i≠0)
    (hR : ∀ i,CriticalLightSheet20261003.blockDenominator (CriticalStripMoments20261003.stripRightBlock H) i≠0) :
    let D := CriticalStripMoments20261003.stripLeftData H
    let G := scaleData D.s⁻¹ D.t⁻¹ D
    let X := Complex.normSq D.s
    let Y := Complex.normSq D.t
    0<X ∧ 0<Y ∧
    (Y : ℂ)*G.r^2-J (k : ℂ)*G.r+(X : ℂ)*(p (k : ℂ)-(X : ℂ)-(Y : ℂ))=0 ∧
    pureNewtonPolynomial66 (nonzeroSide (X : ℂ) (Y : ℂ) (k : ℂ) G.r 1)
      (nonzeroSide (X : ℂ) (Y : ℂ) (k : ℂ) G.r (-1))=0 := by
  have h := normalized_nonzero_side_pair hH.1 k hp hj hw hs ht hL hR
  dsimp only at h ⊢
  rcases h with ⟨hXp,hYp,hq,hLeft,hRight⟩
  have hz := allCritical_reciprocal_pureNewton_zero hH hs ht
  change pureNewtonPolynomial66
    (scaleData (CriticalStripMoments20261003.stripLeftData H).s⁻¹ (CriticalStripMoments20261003.stripLeftData H).t⁻¹ (CriticalStripMoments20261003.stripLeftData H))
    (scaleData (CriticalStripMoments20261003.stripLeftData H).s⁻¹ (CriticalStripMoments20261003.stripLeftData H).t⁻¹ (CriticalStripMoments20261003.stripRightData H))=0 at hz
  exact ⟨hXp,hYp,hq,(congrArg₂ pureNewtonPolynomial66 hLeft hRight).symm.trans hz⟩

/-- The signed parameter comes from the actual scalar premises; no absolute
value replaces J and no sign or reciprocal-quadratic root is chosen. -/
theorem allCritical_signed_parameter {H : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H) (hj : CriticalPhysical20261003.sideJ (CriticalStripMoments20261003.stripLeftBlock H)≠0) :
    ∃ k : ℝ, k≠0 ∧
      CriticalPhysical20261003.sideP (CriticalStripMoments20261003.stripLeftBlock H)=CriticalRationalParam20261003.p k ∧
      CriticalPhysical20261003.sideJ (CriticalStripMoments20261003.stripLeftBlock H)=CriticalRationalParam20261003.j k ∧
      CriticalPhysical20261003.sideW (CriticalStripMoments20261003.stripLeftBlock H)=CriticalRationalParam20261003.w k := by
  rcases CriticalPhysical20261003.allCritical_scalar_premises hH with ⟨h0,hb,hp,hm⟩
  exact CriticalRationalParam20261003.nonzero_critical_parameterization h0 hb hj hp hm

/-- The actual nonzero-J branch has a signed scalar witness and the literal
paired 66 equation on this explicit nonzero-correlation/nonpole chart. -/
theorem allCritical_nonzero_exists_scalar_equation {H : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H) (hj : CriticalPhysical20261003.sideJ (CriticalStripMoments20261003.stripLeftBlock H)≠0)
    (hs : (CriticalStripMoments20261003.stripLeftData H).s≠0) (ht : (CriticalStripMoments20261003.stripLeftData H).t≠0)
    (hL : ∀ i,CriticalLightSheet20261003.blockDenominator (CriticalStripMoments20261003.stripLeftBlock H) i≠0)
    (hR : ∀ i,CriticalLightSheet20261003.blockDenominator (CriticalStripMoments20261003.stripRightBlock H) i≠0) :
    ∃ k : ℝ, k≠0 ∧
      CriticalPhysical20261003.sideP (CriticalStripMoments20261003.stripLeftBlock H)=CriticalRationalParam20261003.p k ∧
      CriticalPhysical20261003.sideJ (CriticalStripMoments20261003.stripLeftBlock H)=CriticalRationalParam20261003.j k ∧
      CriticalPhysical20261003.sideW (CriticalStripMoments20261003.stripLeftBlock H)=CriticalRationalParam20261003.w k ∧
      (let D := CriticalStripMoments20261003.stripLeftData H
       let G := scaleData D.s⁻¹ D.t⁻¹ D
       let X := Complex.normSq D.s
       let Y := Complex.normSq D.t
       0<X ∧ 0<Y ∧
       (Y : ℂ)*G.r^2-J (k : ℂ)*G.r+(X : ℂ)*(p (k : ℂ)-(X : ℂ)-(Y : ℂ))=0 ∧
       pureNewtonPolynomial66 (nonzeroSide (X : ℂ) (Y : ℂ) (k : ℂ) G.r 1)
         (nonzeroSide (X : ℂ) (Y : ℂ) (k : ℂ) G.r (-1))=0) := by
  obtain ⟨k,hk,hp,hj',hw⟩ := allCritical_signed_parameter hH hj
  exact ⟨k,hk,hp,hj',hw,
    allCritical_regular_nonzero_scalar_equation hH k hp hj' hw hs ht hL hR⟩

end
#print axioms allCritical_regular_nonzero_scalar_equation
#print axioms allCritical_signed_parameter
#print axioms allCritical_nonzero_exists_scalar_equation
end CriticalNonzeroPhysicalBinding20261003
