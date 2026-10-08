import CriticalNonzeroBlockGauge
import CriticalNonzeroLightStrip
import CriticalNonzeroReciprocalAssembly

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace CriticalNonzeroPhysicalBinding20261003
open Mub6 Mub6.Classification CompactCover GlobalCornerDomain
open CriticalNewton20261003 CriticalPhysical20261003
open CriticalNewtonGauge20261003 CriticalNewtonGaugeLight20261003
open CriticalNonzeroRational20261003
noncomputable section

/-- The literal last three columns preserve p,W and reverse the cubic J. -/
theorem normalized_parameter_side_pair {H : CompactCover.Mat6}
    (hH : NormalizedCarrier H) (k : ℝ)
    (hp : CriticalLightSheet20261003.sideP (leftBlock H)=CriticalRationalParam20261003.p k)
    (hj : CriticalLightSheet20261003.sideJ (leftBlock H)=CriticalRationalParam20261003.j k)
    (hw : CriticalLightSheet20261003.sideW (leftBlock H)=CriticalRationalParam20261003.w k) :
    CriticalLightSheet20261003.sideP (rightBlock H)=CriticalRationalParam20261003.p k ∧
    CriticalLightSheet20261003.sideJ (rightBlock H)= -CriticalRationalParam20261003.j k ∧
    CriticalLightSheet20261003.sideW (rightBlock H)=CriticalRationalParam20261003.w k := by
  have hEL : ∀ i j,Complex.normSq (leftBlock H i j)=1 :=
    fun i j => hH.1.1 (GoodMinor.front i) (GoodMinor.front j)
  have hER : ∀ i j,Complex.normSq (rightBlock H i j)=1 :=
    fun i j => hH.1.1 (GoodMinor.front i) (j.natAdd 3)
  rcases phase_block_linear_data (leftBlock H) hEL with ⟨hLs,hLt,hLr⟩
  rcases phase_block_linear_data (rightBlock H) hER with ⟨hRs,hRt,hRr⟩
  rcases normalized_opposite_inputs hH with ⟨hs,_,ht,_,hr,_⟩
  have hS : CriticalLightSheet20261003.sideS (rightBlock H)=
      -CriticalLightSheet20261003.sideS (leftBlock H) := by
    rw [← hRs,← hLs]
    exact hs
  have hT : CriticalLightSheet20261003.sideT (rightBlock H)=
      -CriticalLightSheet20261003.sideT (leftBlock H) := by
    rw [← hRt,← hLt]
    exact ht
  have hR : CriticalLightSheet20261003.sideR (rightBlock H)=
      -CriticalLightSheet20261003.sideR (leftBlock H) := by
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
    (hp : CriticalLightSheet20261003.sideP (leftBlock H)=CriticalRationalParam20261003.p k)
    (hj : CriticalLightSheet20261003.sideJ (leftBlock H)=CriticalRationalParam20261003.j k)
    (hw : CriticalLightSheet20261003.sideW (leftBlock H)=CriticalRationalParam20261003.w k)
    (hs : (leftData H).s≠0) (ht : (leftData H).t≠0)
    (hL : ∀ i,CriticalLightSheet20261003.blockDenominator (leftBlock H) i≠0)
    (hR : ∀ i,CriticalLightSheet20261003.blockDenominator (rightBlock H) i≠0) :
    let D := leftData H
    let G := scaleData D.s⁻¹ D.t⁻¹ D
    let B := scaleData D.s⁻¹ D.t⁻¹ (rightData H)
    let X := Complex.normSq D.s
    let Y := Complex.normSq D.t
    0<X ∧ 0<Y ∧
    (Y : ℂ)*G.r^2-J (k : ℂ)*G.r+(X : ℂ)*(p (k : ℂ)-(X : ℂ)-(Y : ℂ))=0 ∧
    G=nonzeroSide (X : ℂ) (Y : ℂ) (k : ℂ) G.r 1 ∧
    B=nonzeroSide (X : ℂ) (Y : ℂ) (k : ℂ) G.r (-1) := by
  have hEL : ∀ i j,Complex.normSq (leftBlock H i j)=1 :=
    fun i j => hH.1.1 (GoodMinor.front i) (GoodMinor.front j)
  have hER : ∀ i j,Complex.normSq (rightBlock H i j)=1 :=
    fun i j => hH.1.1 (GoodMinor.front i) (j.natAdd 3)
  have h0L : ∀ j,leftBlock H 0 j=1 := fun j => hH.2.1 (GoodMinor.front j)
  have h0R : ∀ j,rightBlock H 0 j=1 := fun j => hH.2.1 (j.natAdd 3)
  let D := leftData H
  let G := scaleData D.s⁻¹ D.t⁻¹ D
  let B := scaleData D.s⁻¹ D.t⁻¹ (rightData H)
  rcases phase_block_linear_data (leftBlock H) hEL with ⟨hds,hdt,hdr⟩
  change D.s=CriticalLightSheet20261003.sideS (leftBlock H) at hds
  change D.t=CriticalLightSheet20261003.sideT (leftBlock H) at hdt
  change D.r=CriticalLightSheet20261003.sideR (leftBlock H) at hdr
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
  rcases phase_reciprocal_scalar_inputs (leftBlock H 1) (leftBlock H 2)
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
  have hLeft := parameter_plus_gauge_reconstruction (leftBlock H) k hEL h0L
    hp hj hw hL D.s⁻¹ D.t⁻¹ (inv_ne_zero hs) (inv_ne_zero ht)
  change G=rationalSide G.s G.S G.t G.T G.r G.Q (sheet (k : ℂ) 1) (gram (k : ℂ) 1) at hLeft
  rcases normalized_parameter_side_pair hH k hp hj hw with ⟨hpR,hjR,hwR⟩
  have hRight := parameter_minus_gauge_reconstruction (rightBlock H) k hER h0R
    hpR hjR hwR hR D.s⁻¹ D.t⁻¹ (inv_ne_zero hs) (inv_ne_zero ht)
  change B=rationalSide B.s B.S B.t B.T B.r B.Q (sheet (k : ℂ) (-1))
    (gram (k : ℂ) (-1)) at hRight
  have hOpp : B.s= -G.s ∧ B.S= -G.S ∧ B.t= -G.t ∧ B.T= -G.T ∧
      B.r= -G.r ∧ B.Q= -G.Q :=
    scale_opposite_linear_inputs D.s⁻¹ D.t⁻¹ D (rightData H) (normalized_opposite_inputs hH)
  have hPair := reconstructed_signed_pair G B (Complex.normSq D.s : ℂ)
    (Complex.normSq D.t : ℂ) (k : ℂ) hX hq hs1 hS ht1 hT hQchart hOpp hLeft hRight
  exact ⟨hXp,hYp,hq,hPair⟩

end
#print axioms normalized_parameter_side_pair
#print axioms normalized_nonzero_side_pair
end CriticalNonzeroPhysicalBinding20261003
