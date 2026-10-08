import CriticalNonzeroBlockGauge
import CriticalStripNewton

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace CriticalNonzeroPhysicalBinding20261003
open Mub6 Mub6.Classification CompactCover GlobalCornerDomain
open CriticalNewton20261003 CriticalPhysical20261003
open CriticalNewtonGauge20261003 CriticalNewtonGaugeLight20261003
open CriticalStripMoments20261003 CriticalNonzeroRational20261003
noncomputable section

/-- The literal last three columns preserve p,W and reverse the cubic J. -/
theorem normalized_parameter_side_pair {H : CompactCover.Mat6}
    (hH : NormalizedCarrier H) (k : ℝ)
    (hp : CriticalLightSheet20261003.sideP (stripLeftBlock H)=CriticalRationalParam20261003.p k)
    (hj : CriticalLightSheet20261003.sideJ (stripLeftBlock H)=CriticalRationalParam20261003.j k)
    (hw : CriticalLightSheet20261003.sideW (stripLeftBlock H)=CriticalRationalParam20261003.w k) :
    CriticalLightSheet20261003.sideP (stripRightBlock H)=CriticalRationalParam20261003.p k ∧
    CriticalLightSheet20261003.sideJ (stripRightBlock H)= -CriticalRationalParam20261003.j k ∧
    CriticalLightSheet20261003.sideW (stripRightBlock H)=CriticalRationalParam20261003.w k := by
  have hEL : ∀ i j,Complex.normSq (stripLeftBlock H i j)=1 :=
    fun i j => hH.1.1 (GoodMinor.front i) (GoodMinor.front j)
  have hER : ∀ i j,Complex.normSq (stripRightBlock H i j)=1 :=
    fun i j => hH.1.1 (GoodMinor.front i) (j.natAdd 3)
  rcases phase_block_linear_data (stripLeftBlock H) hEL with ⟨hLs,hLt,hLr⟩
  rcases phase_block_linear_data (stripRightBlock H) hER with ⟨hRs,hRt,hRr⟩
  rcases normalized_opposite_data hH with ⟨hs,_,ht,_,hr,_⟩
  have hS : CriticalLightSheet20261003.sideS (stripRightBlock H)=
      -CriticalLightSheet20261003.sideS (stripLeftBlock H) := by
    rw [← hRs,← hLs]
    exact hs
  have hT : CriticalLightSheet20261003.sideT (stripRightBlock H)=
      -CriticalLightSheet20261003.sideT (stripLeftBlock H) := by
    rw [← hRt,← hLt]
    exact ht
  have hR : CriticalLightSheet20261003.sideR (stripRightBlock H)=
      -CriticalLightSheet20261003.sideR (stripLeftBlock H) := by
    rw [← hRr,← hLr]
    exact hr
  constructor
  · unfold CriticalLightSheet20261003.sideP
    rw [hS,hT,hR,momentP_neg]
    exact hp
  constructor
  · unfold CriticalLightSheet20261003.sideJ
    rw [hS,hT,hR,momentJ_neg]
    exact congrArg Neg.neg hj
  · unfold CriticalLightSheet20261003.sideW
    rw [hS,hT,hR,momentW_neg]
    exact hw

/-- All eighteen fields of the two actual complementary blocks match the
signed scalar constructors under the SAME left reciprocal row gauge.
Original zero correlations and all six physical poles are explicit guards. -/
theorem normalized_nonzero_side_pair {H : CompactCover.Mat6}
    (hH : NormalizedCarrier H) (k : ℝ)
    (hp : CriticalLightSheet20261003.sideP (stripLeftBlock H)=CriticalRationalParam20261003.p k)
    (hj : CriticalLightSheet20261003.sideJ (stripLeftBlock H)=CriticalRationalParam20261003.j k)
    (hw : CriticalLightSheet20261003.sideW (stripLeftBlock H)=CriticalRationalParam20261003.w k)
    (hs : (stripLeftData H).s≠0) (ht : (stripLeftData H).t≠0)
    (hL : ∀ i,CriticalLightSheet20261003.blockDenominator (stripLeftBlock H) i≠0)
    (hR : ∀ i,CriticalLightSheet20261003.blockDenominator (stripRightBlock H) i≠0) :
    let D := stripLeftData H
    let G := scaleData D.s⁻¹ D.t⁻¹ D
    let B := scaleData D.s⁻¹ D.t⁻¹ (stripRightData H)
    let X := Complex.normSq D.s
    let Y := Complex.normSq D.t
    0<X ∧ 0<Y ∧
    (Y : ℂ)*G.r^2-J (k : ℂ)*G.r+(X : ℂ)*(p (k : ℂ)-(X : ℂ)-(Y : ℂ))=0 ∧
    G=nonzeroSide (X : ℂ) (Y : ℂ) (k : ℂ) G.r 1 ∧
    B=nonzeroSide (X : ℂ) (Y : ℂ) (k : ℂ) G.r (-1) := by
  have hEL : ∀ i j,Complex.normSq (stripLeftBlock H i j)=1 :=
    fun i j => hH.1.1 (GoodMinor.front i) (GoodMinor.front j)
  have hER : ∀ i j,Complex.normSq (stripRightBlock H i j)=1 :=
    fun i j => hH.1.1 (GoodMinor.front i) (j.natAdd 3)
  have h0L : ∀ j,stripLeftBlock H 0 j=1 := fun j => hH.2.1 (GoodMinor.front j)
  have h0R : ∀ j,stripRightBlock H 0 j=1 := fun j => hH.2.1 (j.natAdd 3)
  let D := stripLeftData H
  let G := scaleData D.s⁻¹ D.t⁻¹ D
  let B := scaleData D.s⁻¹ D.t⁻¹ (stripRightData H)
  rcases phase_block_linear_data (stripLeftBlock H) hEL with ⟨hds,hdt,hdr⟩
  change D.s=CriticalLightSheet20261003.sideS (stripLeftBlock H) at hds
  change D.t=CriticalLightSheet20261003.sideT (stripLeftBlock H) at hdt
  change D.r=CriticalLightSheet20261003.sideR (stripLeftBlock H) at hdr
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
  rcases phase_reciprocal_scalar_inputs (stripLeftBlock H 1) (stripLeftBlock H 2)
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
  have hq : (Complex.normSq D.t : ℂ)*G.r^2-J (k : ℂ)*G.r+
      (Complex.normSq D.s : ℂ)*(p (k : ℂ)-(Complex.normSq D.s : ℂ)-
        (Complex.normSq D.t : ℂ))=0 := by
    have he : G.r*(J (k : ℂ)-G.r*(Complex.normSq D.t : ℂ))=
        (p (k : ℂ)-(Complex.normSq D.s : ℂ)-(Complex.normSq D.t : ℂ))*
          (Complex.normSq D.s : ℂ) := by
      apply (div_eq_iff hX).mp
      simpa only [mul_div_assoc] using hprodchart
    linear_combination -he
  have hLeft := parameter_plus_gauge_reconstruction (stripLeftBlock H) k hEL h0L
    hp hj hw hL D.s⁻¹ D.t⁻¹ (inv_ne_zero hs) (inv_ne_zero ht)
  change G=rationalSide G.s G.S G.t G.T G.r G.Q (sheet (k : ℂ) 1) (gram (k : ℂ) 1) at hLeft
  rw [hs1,hS,ht1,hT,hQchart] at hLeft
  have hLeftChart := rationalSide_nonzeroSide (Complex.normSq D.s : ℂ)
    (Complex.normSq D.t : ℂ) (k : ℂ) G.r 1 hX (by norm_num) hq
  have hLeft' : G=nonzeroSide (Complex.normSq D.s : ℂ) (Complex.normSq D.t : ℂ)
      (k : ℂ) G.r 1 := hLeft.trans (by simpa only [one_mul] using hLeftChart)
  rcases normalized_parameter_side_pair hH k hp hj hw with ⟨hpR,hjR,hwR⟩
  have hRight := parameter_minus_gauge_reconstruction (stripRightBlock H) k hER h0R
    hpR hjR hwR hR D.s⁻¹ D.t⁻¹ (inv_ne_zero hs) (inv_ne_zero ht)
  change B=rationalSide B.s B.S B.t B.T B.r B.Q (sheet (k : ℂ) (-1))
    (gram (k : ℂ) (-1)) at hRight
  have hOpp : B.s= -G.s ∧ B.S= -G.S ∧ B.t= -G.t ∧ B.T= -G.T ∧
      B.r= -G.r ∧ B.Q= -G.Q := by
    rcases normalized_opposite_data hH with ⟨h1,h2,h3,h4,h5,h6⟩
    simp [B,G,D,scaleData,h1,h2,h3,h4,h5,h6,mul_neg]
  rcases hOpp with ⟨hbs,hbS,hbt,hbT,hbr,hbQ⟩
  rw [hbs,hbS,hbt,hbT,hbr,hbQ,hs1,hS,ht1,hT,hQchart] at hRight
  have hRightChart := rationalSide_nonzeroSide (Complex.normSq D.s : ℂ)
    (Complex.normSq D.t : ℂ) (k : ℂ) G.r (-1) hX (by norm_num) hq
  have hRight' : B=nonzeroSide (Complex.normSq D.s : ℂ) (Complex.normSq D.t : ℂ)
      (k : ℂ) G.r (-1) := hRight.trans (by simpa only [neg_one_mul] using hRightChart)
  exact ⟨hXp,hYp,hq,hLeft',hRight'⟩

end
#print axioms normalized_parameter_side_pair
#print axioms normalized_nonzero_side_pair
end CriticalNonzeroPhysicalBinding20261003
