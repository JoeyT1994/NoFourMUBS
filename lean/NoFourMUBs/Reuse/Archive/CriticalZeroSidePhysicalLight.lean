import NoFourMUBs.Reuse.Archive.CriticalRationalSideActualGauge
import NoFourMUBs.Reuse.Archive.CriticalZeroSideInterface
import NoFourMUBs.Reuse.Archive.CriticalLightSheet

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace CriticalNewtonGaugeLight20261003
open Matrix CriticalNewtonGauge20261003 CriticalLightSheet20261003 NoFourMUBs.Step2.Critical
open CriticalNewton20261003 CriticalPhysical20261003 CriticalZeroRational20261003
noncomputable section

theorem phase_block_linear_data (E : Matrix (Fin 3) (Fin 3) ℂ)
    (hE : ∀ i j,Complex.normSq (E i j)=1) :
    let D := dataOf (E 1) (E 2)
    D.s=sideS E ∧ D.t=sideT E ∧ D.r=sideR E := by
  exact ⟨rfl,rfl,phase_data_actual_r (E 1) (E 2) (hE 1)⟩

/-- In the regular zero-J parameter stratum the actual-sheet theorem supplies
all determinant and denominator guards. The parameter boundary exclusions are
listed explicitly, and no nonzero correlation is needed for this result. -/
theorem regular_zero_gauge_reconstruction (E : Matrix (Fin 3) (Fin 3) ℂ) (z : ℝ)
    (hE : ∀ i j,Complex.normSq (E i j)=1) (h0 : ∀ j,E 0 j=1)
    (hzlo : -3≤z) (hz0 : z≠0) (hz3 : z≠ -3) (hz2 : z≠ -2)
    (hp : sideP E=9-z^2) (hj : sideJ E=0) (hw : sideW E=z^2*(z+3)^2)
    (a b : ℂ) (ha : a≠0) (hb : b≠0) :
    let D := dataOf (E 1) (E 2)
    let G := scaleData a b D
    G=rationalSide G.s G.S G.t G.T G.r G.Q (z : ℂ) (3*(z : ℂ)^2) := by
  have hg := (CriticalLightSheet20261003.zero_parameter_g_chi E z hp hj hw).1
  have hd : E.det≠0 := by
    intro he
    have hn := CriticalLightSheet20261003.side_g_determinant E hE h0
    rw [hg,he,Complex.normSq_zero] at hn
    nlinarith [sq_pos_of_ne_zero hz0]
  have hD : FourierPhysicalSide.determinant (E 1 0) (E 1 1) (E 1 2)
      (E 2 0) (E 2 1) (E 2 2)≠0 := by
    simpa only [FourierPhysicalSide.determinant,
      CriticalLightSheet20261003.actual_side_matrix E h0] using hd
  have hs : blockSheet (E 1) (E 2)=(z : ℂ) :=
    CriticalLightSheet20261003.actual_zero_parameter_sheet E z hE h0 hz0 hp hj hw
  have hL : ∀ i,FourierPhysicalSide.sideDenominator (E 1 0) (E 1 1) (E 1 2)
      (E 2 0) (E 2 1) (E 2 2) i≠0 :=
    CriticalLightSheet20261003.actual_zero_parameter_denominators E z hE h0
      hzlo hz0 hz3 hz2 hp hj hw
  rcases phase_block_linear_data E hE with ⟨hds,hdt,hdr⟩
  have hgd : FourierGramNumerators.g (dataOf (E 1) (E 2)).s
      (dataOf (E 1) (E 2)).t (dataOf (E 1) (E 2)).r=3*z^2 := by
    rw [hds,hdt,hdr]
    exact hg
  have he := actual_gauged_rationalSide (E 1) (E 2) (hE 1) (hE 2)
    hD z hs hL a b ha hb
  dsimp only at he ⊢
  simpa only [hgd,Complex.ofReal_mul,Complex.ofReal_ofNat,Complex.ofReal_pow] using he

/-- The actual regular zero-J block maps to the exact zeroSide constructor.
The two original correlations are nonzero precisely because this chart divides
by them. Its three excluded z boundaries remain separate physical obligations. -/
theorem regular_zero_reciprocal_zeroSide (E : Matrix (Fin 3) (Fin 3) ℂ) (z : ℝ)
    (hE : ∀ i j,Complex.normSq (E i j)=1) (h0 : ∀ j,E 0 j=1)
    (hzlo : -3≤z) (hz0 : z≠0) (hz3 : z≠ -3) (hz2 : z≠ -2)
    (hp : sideP E=9-z^2) (hj : sideJ E=0) (hw : sideW E=z^2*(z+3)^2)
    (hs : (dataOf (E 1) (E 2)).s≠0) (ht : (dataOf (E 1) (E 2)).t≠0) :
    let D := dataOf (E 1) (E 2)
    let G := scaleData D.s⁻¹ D.t⁻¹ D
    G=zeroSide (Complex.normSq D.s : ℂ) (Complex.normSq D.t : ℂ) (z : ℂ) G.r 1 := by
  rcases phase_block_linear_data E hE with ⟨hds,hdt,hdr⟩
  have hjD : momentJ (dataOf (E 1) (E 2)).s (dataOf (E 1) (E 2)).t
      (dataOf (E 1) (E 2)).r=0 := by
    rw [hds,hdt,hdr]
    exact hj
  have hpD : Complex.normSq (dataOf (E 1) (E 2)).s +
      Complex.normSq (dataOf (E 1) (E 2)).t +
      Complex.normSq (dataOf (E 1) (E 2)).r=9-z^2 := by
    change momentP _ _ _=9-z^2
    rw [hds,hdt,hdr]
    exact hp
  let D := dataOf (E 1) (E 2)
  let G := scaleData D.s⁻¹ D.t⁻¹ D
  rcases phase_reciprocal_scalar_inputs (E 1) (E 2) (hE 1) (hE 2) hs ht with
    ⟨_,_,hs1,hS,ht1,hT,hprod,hQ,_⟩
  have hQzero : G.Q= -G.r*(Complex.normSq D.t : ℂ)/(Complex.normSq D.s : ℂ) := by
    simpa [G,D,hjD,mul_comm] using hQ
  change G.r*G.Q=(Complex.normSq D.r : ℂ) at hprod
  rw [hQzero] at hprod
  have hZ : (Complex.normSq D.r : ℂ)=9-(z : ℂ)^2-
      (Complex.normSq D.s : ℂ)-(Complex.normSq D.t : ℂ) := by
    have hr : Complex.normSq D.r=9-z^2-Complex.normSq D.s-Complex.normSq D.t := by
      dsimp only [D]
      linarith [hpD]
    exact_mod_cast hr
  have he := regular_zero_gauge_reconstruction E z hE h0 hzlo hz0 hz3 hz2 hp hj hw
    D.s⁻¹ D.t⁻¹ (inv_ne_zero hs) (inv_ne_zero ht)
  change G=rationalSide G.s G.S G.t G.T G.r G.Q (z : ℂ) (3*(z : ℂ)^2) at he
  rw [hs1,hS,ht1,hT,hQzero] at he
  have hchart := rationalSide_signed_eq_zeroSide (Complex.normSq D.s : ℂ)
    (Complex.normSq D.t : ℂ) (z : ℂ) G.r 1 (by norm_num) (hprod.trans hZ)
  exact he.trans (by simpa only [one_mul] using hchart)

end
#print axioms phase_block_linear_data
#print axioms regular_zero_gauge_reconstruction
#print axioms regular_zero_reciprocal_zeroSide
end CriticalNewtonGaugeLight20261003
