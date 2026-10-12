import NoFourMUBs.Reuse.Archive.CriticalNonzeroBlockGauge
import NoFourMUBs.Reuse.Archive.CriticalStripNewton
import NoFourMUBs.Reuse.Archive.CriticalNonzeroReciprocalAssembly

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace CriticalNonzeroPhysicalBinding20261003
open NoFourMUBs.Step2.Critical
open CriticalNewton20261003 CriticalPhysical20261003
open CriticalNewtonGauge20261003 CriticalNewtonGaugeLight20261003
open CriticalNonzeroRational20261003
noncomputable section

/-- The literal last three columns preserve p,W and reverse the cubic J. -/
theorem normalized_parameter_side_pair {H : OAI.MUB6.CMatrix}
    (hH : NormalizedCarrier H) (k : ℝ)
    (hp : CriticalPhysical20261003.sideP (CriticalStripMoments20261003.stripLeftBlock H)=CriticalRationalParam20261003.p k)
    (hj : CriticalPhysical20261003.sideJ (CriticalStripMoments20261003.stripLeftBlock H)=CriticalRationalParam20261003.j k)
    (hw : CriticalPhysical20261003.sideW (CriticalStripMoments20261003.stripLeftBlock H)=CriticalRationalParam20261003.w k) :
    CriticalPhysical20261003.sideP (CriticalStripMoments20261003.stripRightBlock H)=CriticalRationalParam20261003.p k ∧
    CriticalPhysical20261003.sideJ (CriticalStripMoments20261003.stripRightBlock H)= -CriticalRationalParam20261003.j k ∧
    CriticalPhysical20261003.sideW (CriticalStripMoments20261003.stripRightBlock H)=CriticalRationalParam20261003.w k := by
  have hEL : ∀ i j,Complex.normSq (CriticalStripMoments20261003.stripLeftBlock H i j)=1 :=
    fun i j => hH.1.1 (NoFourMUBs.Step2.Critical.front i) (NoFourMUBs.Step2.Critical.front j)
  have hER : ∀ i j,Complex.normSq (CriticalStripMoments20261003.stripRightBlock H i j)=1 :=
    fun i j => hH.1.1 (NoFourMUBs.Step2.Critical.front i) (j.natAdd 3)
  rcases phase_block_linear_data (CriticalStripMoments20261003.stripLeftBlock H) hEL with ⟨hLs,hLt,hLr⟩
  rcases phase_block_linear_data (CriticalStripMoments20261003.stripRightBlock H) hER with ⟨hRs,hRt,hRr⟩
  rcases CriticalStripMoments20261003.normalized_opposite_data hH with ⟨hs,_,ht,_,hr,_⟩
  have hS : NoFourMUBs.Step2.Critical.sideS (CriticalStripMoments20261003.stripRightBlock H)=
      -NoFourMUBs.Step2.Critical.sideS (CriticalStripMoments20261003.stripLeftBlock H) := by
    rw [← hRs,← hLs]
    exact hs
  have hT : NoFourMUBs.Step2.Critical.sideT (CriticalStripMoments20261003.stripRightBlock H)=
      -NoFourMUBs.Step2.Critical.sideT (CriticalStripMoments20261003.stripLeftBlock H) := by
    rw [← hRt,← hLt]
    exact ht
  have hR : NoFourMUBs.Step2.Critical.sideR (CriticalStripMoments20261003.stripRightBlock H)=
      -NoFourMUBs.Step2.Critical.sideR (CriticalStripMoments20261003.stripLeftBlock H) := by
    rw [← hRr,← hLr]
    exact hr
  constructor
  · unfold CriticalPhysical20261003.sideP
    rw [hS,hT,hR,momentP_neg]
    exact hp
  constructor
  · unfold CriticalPhysical20261003.sideJ
    rw [hS,hT,hR,momentJ_neg]
    exact congrArg Neg.neg hj
  · unfold CriticalPhysical20261003.sideW
    rw [hS,hT,hR,momentW_neg]
    exact hw

/-- All eighteen fields of the two actual complementary blocks match the
signed scalar constructors under the SAME left reciprocal row gauge.
Original zero correlations and all six physical poles are explicit guards. -/
theorem normalized_nonzero_side_pair {H : OAI.MUB6.CMatrix}
    (hH : NormalizedCarrier H) (k : ℝ)
    (hp : CriticalPhysical20261003.sideP (CriticalStripMoments20261003.stripLeftBlock H)=CriticalRationalParam20261003.p k)
    (hj : CriticalPhysical20261003.sideJ (CriticalStripMoments20261003.stripLeftBlock H)=CriticalRationalParam20261003.j k)
    (hw : CriticalPhysical20261003.sideW (CriticalStripMoments20261003.stripLeftBlock H)=CriticalRationalParam20261003.w k)
    (hs : (CriticalStripMoments20261003.stripLeftData H).s≠0) (ht : (CriticalStripMoments20261003.stripLeftData H).t≠0)
    (hL : ∀ i,CriticalLightSheet20261003.blockDenominator (CriticalStripMoments20261003.stripLeftBlock H) i≠0)
    (hR : ∀ i,CriticalLightSheet20261003.blockDenominator (CriticalStripMoments20261003.stripRightBlock H) i≠0) :
    let D := CriticalStripMoments20261003.stripLeftData H
    let G := scaleData D.s⁻¹ D.t⁻¹ D
    let B := scaleData D.s⁻¹ D.t⁻¹ (CriticalStripMoments20261003.stripRightData H)
    let X := Complex.normSq D.s
    let Y := Complex.normSq D.t
    0<X ∧ 0<Y ∧
    (Y : ℂ)*G.r^2-J (k : ℂ)*G.r+(X : ℂ)*(p (k : ℂ)-(X : ℂ)-(Y : ℂ))=0 ∧
    G=nonzeroSide (X : ℂ) (Y : ℂ) (k : ℂ) G.r 1 ∧
    B=nonzeroSide (X : ℂ) (Y : ℂ) (k : ℂ) G.r (-1) := by
  have hEL : ∀ i j,Complex.normSq (CriticalStripMoments20261003.stripLeftBlock H i j)=1 :=
    fun i j => hH.1.1 (NoFourMUBs.Step2.Critical.front i) (NoFourMUBs.Step2.Critical.front j)
  have hER : ∀ i j,Complex.normSq (CriticalStripMoments20261003.stripRightBlock H i j)=1 :=
    fun i j => hH.1.1 (NoFourMUBs.Step2.Critical.front i) (j.natAdd 3)
  have h0L : ∀ j,CriticalStripMoments20261003.stripLeftBlock H 0 j=1 := fun j => hH.2.1 (NoFourMUBs.Step2.Critical.front j)
  have h0R : ∀ j,CriticalStripMoments20261003.stripRightBlock H 0 j=1 := fun j => hH.2.1 (j.natAdd 3)
  let D := CriticalStripMoments20261003.stripLeftData H
  let G := scaleData D.s⁻¹ D.t⁻¹ D
  let B := scaleData D.s⁻¹ D.t⁻¹ (CriticalStripMoments20261003.stripRightData H)
  rcases phase_block_linear_data (CriticalStripMoments20261003.stripLeftBlock H) hEL with ⟨hds,hdt,hdr⟩
  change D.s=NoFourMUBs.Step2.Critical.sideS (CriticalStripMoments20261003.stripLeftBlock H) at hds
  change D.t=NoFourMUBs.Step2.Critical.sideT (CriticalStripMoments20261003.stripLeftBlock H) at hdt
  change D.r=NoFourMUBs.Step2.Critical.sideR (CriticalStripMoments20261003.stripLeftBlock H) at hdr
  have hjD : momentJ D.s D.t D.r=CriticalRationalParam20261003.j k := by
    rw [hds,hdt,hdr]
    exact hj
  have hpD : Complex.normSq D.s+Complex.normSq D.t+Complex.normSq D.r=
      CriticalRationalParam20261003.p k := by
    change momentP D.s D.t D.r=_
    rw [hds,hdt,hdr]
    exact hp
  have hJc : (momentJ D.s D.t D.r : ℂ)=J (k : ℂ) :=
    (congrArg Complex.ofReal hjD).trans (parameter_complex_p_j k).2
  have hZ : (Complex.normSq D.r : ℂ)=p (k : ℂ)-
      (Complex.normSq D.s : ℂ)-(Complex.normSq D.t : ℂ) := by
    have he : Complex.normSq D.r=CriticalRationalParam20261003.p k-
        Complex.normSq D.s-Complex.normSq D.t := by linarith [hpD]
    have hc := congrArg Complex.ofReal he
    simpa only [Complex.ofReal_sub,(parameter_complex_p_j k).1] using hc
  rcases phase_reciprocal_scalar_inputs (CriticalStripMoments20261003.stripLeftBlock H 1) (CriticalStripMoments20261003.stripLeftBlock H 2)
    (hEL 1) (hEL 2) hs ht with ⟨hXp,hYp,hs1,hS,ht1,hT,hprod,hQ,_⟩
  change G.s=1 at hs1
  change G.S=(Complex.normSq D.s : ℂ) at hS
  change G.t=1 at ht1
  change G.T=(Complex.normSq D.t : ℂ) at hT
  change G.Q=((momentJ D.s D.t D.r : ℂ)-(Complex.normSq D.t : ℂ)*G.r) /
    (Complex.normSq D.s : ℂ) at hQ
  rw [hJc] at hQ
  have hQchart : G.Q=(J (k : ℂ)-G.r*(Complex.normSq D.t : ℂ)) /
      (Complex.normSq D.s : ℂ) := by simpa only [mul_comm] using hQ
  change G.r*G.Q=(Complex.normSq D.r : ℂ) at hprod
  have hprodchart : G.r*((J (k : ℂ)-G.r*(Complex.normSq D.t : ℂ)) /
      (Complex.normSq D.s : ℂ))=p (k : ℂ)-
        (Complex.normSq D.s : ℂ)-(Complex.normSq D.t : ℂ) := by
    rw [← hQchart]
    exact hprod.trans hZ
  have hX : (Complex.normSq D.s : ℂ)≠0 := Complex.ofReal_ne_zero.mpr (ne_of_gt hXp)
  have hq := quadratic_from_product (Complex.normSq D.s : ℂ) (Complex.normSq D.t : ℂ)
    (p (k : ℂ)) (J (k : ℂ)) G.r hX hprodchart
  have hLeft := parameter_plus_gauge_reconstruction (CriticalStripMoments20261003.stripLeftBlock H) k hEL h0L
    hp hj hw hL D.s⁻¹ D.t⁻¹ (inv_ne_zero hs) (inv_ne_zero ht)
  change G=rationalSide G.s G.S G.t G.T G.r G.Q (sheet (k : ℂ) 1) (gram (k : ℂ) 1) at hLeft
  rcases normalized_parameter_side_pair hH k hp hj hw with ⟨hpR,hjR,hwR⟩
  have hRight := parameter_minus_gauge_reconstruction (CriticalStripMoments20261003.stripRightBlock H) k hER h0R
    hpR hjR hwR hR D.s⁻¹ D.t⁻¹ (inv_ne_zero hs) (inv_ne_zero ht)
  change B=rationalSide B.s B.S B.t B.T B.r B.Q (sheet (k : ℂ) (-1))
    (gram (k : ℂ) (-1)) at hRight
  have hOpp : B.s= -G.s ∧ B.S= -G.S ∧ B.t= -G.t ∧ B.T= -G.T ∧
      B.r= -G.r ∧ B.Q= -G.Q :=
    scale_opposite_linear_inputs D.s⁻¹ D.t⁻¹ D (CriticalStripMoments20261003.stripRightData H) (CriticalStripMoments20261003.normalized_opposite_data hH)
  have hPair := reconstructed_signed_pair G B (Complex.normSq D.s : ℂ)
    (Complex.normSq D.t : ℂ) (k : ℂ) hX hq hs1 hS ht1 hT hQchart hOpp hLeft hRight
  exact ⟨hXp,hYp,hq,hPair⟩

end
#print axioms normalized_parameter_side_pair
#print axioms normalized_nonzero_side_pair
end CriticalNonzeroPhysicalBinding20261003
