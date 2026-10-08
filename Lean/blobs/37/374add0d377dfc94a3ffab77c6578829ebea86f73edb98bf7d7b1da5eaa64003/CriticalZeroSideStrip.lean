import CriticalZeroSidePhysical
import CriticalStripNewton

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace CriticalNewtonGauge20261003
open Mub6 Mub6.Classification CompactCover GlobalCornerDomain
open FourierSeedBinding FourPhase
open CriticalNewton20261003 CriticalPhysical20261003 CriticalZeroRational20261003
open CriticalStripMoments20261003
noncomputable section

theorem normalized_zero_side_pair_params {H : CompactCover.Mat6}
    (hH : NormalizedCarrier H) (z : ℝ)
    (hp : sideP (stripLeftBlock H)=9-z^2)
    (hj : sideJ (stripLeftBlock H)=0)
    (hw : sideW (stripLeftBlock H)=z^2*(z+3)^2) :
    sideP (stripRightBlock H)=9-z^2 ∧ sideJ (stripRightBlock H)=0 ∧
      sideW (stripRightBlock H)=z^2*(z+3)^2 := by
  have hEL : ∀ i j,Complex.normSq (stripLeftBlock H i j)=1 :=
    fun i j => hH.1.1 (GoodMinor.front i) (GoodMinor.front j)
  have hER : ∀ i j,Complex.normSq (stripRightBlock H i j)=1 :=
    fun i j => hH.1.1 (GoodMinor.front i) (j.natAdd 3)
  rcases phase_block_linear_data (stripLeftBlock H) hEL with ⟨hLs,hLt,hLr⟩
  rcases phase_block_linear_data (stripRightBlock H) hER with ⟨hRs,hRt,hRr⟩
  rcases normalized_opposite_data hH with ⟨hs,_,ht,_,hr,_⟩
  have hS : sideS (stripRightBlock H)= -sideS (stripLeftBlock H) := by
    rw [← hRs,← hLs]
    exact hs
  have hT : sideT (stripRightBlock H)= -sideT (stripLeftBlock H) := by
    rw [← hRt,← hLt]
    exact ht
  have hR : sideR (stripRightBlock H)= -sideR (stripLeftBlock H) := by
    rw [← hRr,← hLr]
    exact hr
  constructor
  · unfold sideP
    rw [hS,hT,hR,momentP_neg]
    exact hp
  · constructor
    · unfold sideJ
      rw [hS,hT,hR,momentJ_neg]
      change -sideJ (stripLeftBlock H)=0
      rw [hj,neg_zero]
    · unfold sideW
      rw [hS,hT,hR,momentW_neg]
      exact hw

/-- The actual normalized strip supplies the literal pair of scalar sides
under a common reciprocal row gauge. The physical 66-term zero equation is
an explicit input here, to keep the heavy moment and sheet import closures
separate. This theorem does not discharge that input. No scalar factorization
or exclusion is a premise, and all regular-chart boundaries remain. -/
theorem regular_zero_scalar_equation_of_66 {H : CompactCover.Mat6}
    (hH : NormalizedCarrier H) (z : ℝ)
    (hzlo : -3≤z) (hz0 : z≠0) (hz3 : z≠ -3) (hz2 : z≠ -2)
    (hp : sideP (stripLeftBlock H)=9-z^2)
    (hj : sideJ (stripLeftBlock H)=0)
    (hw : sideW (stripLeftBlock H)=z^2*(z+3)^2)
    (hs : (stripLeftData H).s≠0) (ht : (stripLeftData H).t≠0)
    (h66 : pureNewtonPolynomial66
      (scaleData (stripLeftData H).s⁻¹ (stripLeftData H).t⁻¹ (stripLeftData H))
      (scaleData (stripLeftData H).s⁻¹ (stripLeftData H).t⁻¹ (stripRightData H))=0) :
    let D := stripLeftData H
    let G := scaleData D.s⁻¹ D.t⁻¹ D
    let X := Complex.normSq D.s
    let Y := Complex.normSq D.t
    0<X ∧ 0<Y ∧
    G.r*(-G.r*(Y : ℂ)/(X : ℂ))=9-(z : ℂ)^2-(X : ℂ)-(Y : ℂ) ∧
    pureNewtonPolynomial66 (zeroSide (X : ℂ) (Y : ℂ) (z : ℂ) G.r 1)
      (zeroSide (X : ℂ) (Y : ℂ) (z : ℂ) G.r (-1))=0 := by
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
  have hjD : momentJ D.s D.t D.r=0 := by
    rw [hds,hdt,hdr]
    exact hj
  have hpD : Complex.normSq D.s+Complex.normSq D.t+Complex.normSq D.r=9-z^2 := by
    change momentP D.s D.t D.r=9-z^2
    rw [hds,hdt,hdr]
    exact hp
  rcases phase_reciprocal_scalar_inputs (stripLeftBlock H 1) (stripLeftBlock H 2)
    (hEL 1) (hEL 2) hs ht with ⟨hXp,hYp,hs1,hS,ht1,hT,hprod,hQ,_⟩
  have hQzero : G.Q= -G.r*(Complex.normSq D.t : ℂ)/(Complex.normSq D.s : ℂ) := by
    simpa [G,D,stripLeftData,hjD,mul_comm] using hQ
  change G.r*G.Q=(Complex.normSq D.r : ℂ) at hprod
  rw [hQzero] at hprod
  have hZ : (Complex.normSq D.r : ℂ)=9-(z : ℂ)^2-
      (Complex.normSq D.s : ℂ)-(Complex.normSq D.t : ℂ) := by
    have hr : Complex.normSq D.r=9-z^2-Complex.normSq D.s-Complex.normSq D.t := by
      linarith [hpD]
    exact_mod_cast hr
  have hLeft := regular_zero_reciprocal_zeroSide (stripLeftBlock H) z hEL h0L
    hzlo hz0 hz3 hz2 hp hj hw hs ht
  change G=zeroSide (Complex.normSq D.s : ℂ) (Complex.normSq D.t : ℂ) (z : ℂ) G.r 1 at hLeft
  rcases normalized_zero_side_pair_params hH z hp hj hw with ⟨hpR,hjR,hwR⟩
  have hRight := regular_zero_gauge_reconstruction (stripRightBlock H) z hER h0R
    hzlo hz0 hz3 hz2 hpR hjR hwR D.s⁻¹ D.t⁻¹ (inv_ne_zero hs) (inv_ne_zero ht)
  change B=rationalSide B.s B.S B.t B.T B.r B.Q (z : ℂ) (3*(z : ℂ)^2) at hRight
  have hOpp : B.s= -G.s ∧ B.S= -G.S ∧ B.t= -G.t ∧ B.T= -G.T ∧
      B.r= -G.r ∧ B.Q= -G.Q := by
    rcases normalized_opposite_data hH with ⟨h1,h2,h3,h4,h5,h6⟩
    simp only [B,G,D,scaleData,h1,h2,h3,h4,h5,h6,mul_neg]
  rcases hOpp with ⟨hbs,hbS,hbt,hbT,hbr,hbQ⟩
  rw [hbs,hbS,hbt,hbT,hbr,hbQ,hs1,hS,ht1,hT,hQzero] at hRight
  have hChart := rationalSide_signed_eq_zeroSide (Complex.normSq D.s : ℂ)
    (Complex.normSq D.t : ℂ) (z : ℂ) G.r (-1) (by norm_num) (hprod.trans hZ)
  have hRight' : B=zeroSide (Complex.normSq D.s : ℂ) (Complex.normSq D.t : ℂ)
      (z : ℂ) G.r (-1) := hRight.trans (by simpa only [neg_one_mul] using hChart)
  have hZero := h66
  change pureNewtonPolynomial66 G B=0 at hZero
  exact ⟨hXp,hYp,hprod.trans hZ,
    (congrArg₂ pureNewtonPolynomial66 hLeft hRight').symm.trans hZero⟩

end
#print axioms normalized_zero_side_pair_params
#print axioms regular_zero_scalar_equation_of_66
end CriticalNewtonGauge20261003
