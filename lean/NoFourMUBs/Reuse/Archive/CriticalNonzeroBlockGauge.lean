import NoFourMUBs.Reuse.Archive.CriticalZeroSidePhysicalLight
import NoFourMUBs.Reuse.Archive.CriticalNonzeroComplementarySheet
import NoFourMUBs.Reuse.Archive.CriticalNonzeroRationalBinding

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace CriticalNonzeroPhysicalBinding20261003
open Matrix NoFourMUBs.Step2.Critical CriticalNewton20261003 CriticalPhysical20261003
open CriticalNewtonGauge20261003 CriticalNewtonGaugeLight20261003
open CriticalLightSheet20261003 CriticalNonzeroPhysicalInputs20261003
noncomputable section

theorem parameter_complex_p_j (k : ℝ) :
    (CriticalRationalParam20261003.p k : ℂ)=CriticalNonzeroRational20261003.p (k : ℂ) ∧
    (CriticalRationalParam20261003.j k : ℂ)=CriticalNonzeroRational20261003.J (k : ℂ) := by
  constructor <;> simp [CriticalRationalParam20261003.p,CriticalRationalParam20261003.q,
    CriticalRationalParam20261003.j,CriticalNonzeroRational20261003.p,
    CriticalNonzeroRational20261003.q,CriticalNonzeroRational20261003.J,
    CriticalNonzeroRational20261003.h]

/-- The actual plus-parameter block under an arbitrary nonzero row gauge.
The three original physical pole guards are retained explicitly. -/
theorem parameter_plus_gauge_reconstruction (E : Matrix (Fin 3) (Fin 3) ℂ) (k : ℝ)
    (hE : ∀ i j,Complex.normSq (E i j)=1) (h0 : ∀ j,E 0 j=1)
    (hp : sideP E=CriticalRationalParam20261003.p k)
    (hj : sideJ E=CriticalRationalParam20261003.j k)
    (hw : sideW E=CriticalRationalParam20261003.w k)
    (hL : ∀ i,CriticalLightSheet20261003.blockDenominator E i≠0)
    (a b : ℂ) (ha : a≠0) (hb : b≠0) :
    let D := dataOf (E 1) (E 2)
    let G := scaleData a b D
    G=rationalSide G.s G.S G.t G.T G.r G.Q
      (CriticalNonzeroRational20261003.sheet (k : ℂ) 1)
      (CriticalNonzeroRational20261003.gram (k : ℂ) 1) := by
  obtain ⟨hd,hz⟩ := actual_parameter_sheet E k hE h0 hp hj hw
  have hD : FourierPhysicalSide.determinant (E 1 0) (E 1 1) (E 1 2)
      (E 2 0) (E 2 1) (E 2 2)≠0 := by
    simpa only [FourierPhysicalSide.determinant,
      CriticalLightSheet20261003.actual_side_matrix E h0] using hd
  rcases phase_block_linear_data E hE with ⟨hds,hdt,hdr⟩
  have hgd : (FourierGramNumerators.g (dataOf (E 1) (E 2)).s
      (dataOf (E 1) (E 2)).t (dataOf (E 1) (E 2)).r : ℂ)=
      CriticalNonzeroRational20261003.gram (k : ℂ) 1 := by
    rw [hds,hdt,hdr]
    exact (actual_parameter_sheet_complex E k hE h0 hp hj hw).2.2
  have hz' : CriticalNewtonGauge20261003.blockSheet (E 1) (E 2)=
      ((-2*(1+k)/(1+k^2) : ℝ) : ℂ) := hz
  have he := actual_gauged_rationalSide (E 1) (E 2) (hE 1) (hE 2)
    hD (-2*(1+k)/(1+k^2)) hz' hL a b ha hb
  dsimp only at he ⊢
  rw [hgd] at he
  simpa [CriticalNonzeroRational20261003.sheet,CriticalNonzeroRational20261003.h] using he

/-- Opposite-J block, with the same arbitrary gauge and all physical poles
still explicit. The sign change affects the sheet and Gram scalar. -/
theorem parameter_minus_gauge_reconstruction (E : Matrix (Fin 3) (Fin 3) ℂ) (k : ℝ)
    (hE : ∀ i j,Complex.normSq (E i j)=1) (h0 : ∀ j,E 0 j=1)
    (hp : sideP E=CriticalRationalParam20261003.p k)
    (hj : sideJ E= -CriticalRationalParam20261003.j k)
    (hw : sideW E=CriticalRationalParam20261003.w k)
    (hL : ∀ i,CriticalLightSheet20261003.blockDenominator E i≠0)
    (a b : ℂ) (ha : a≠0) (hb : b≠0) :
    let D := dataOf (E 1) (E 2)
    let G := scaleData a b D
    G=rationalSide G.s G.S G.t G.T G.r G.Q
      (CriticalNonzeroRational20261003.sheet (k : ℂ) (-1))
      (CriticalNonzeroRational20261003.gram (k : ℂ) (-1)) := by
  obtain ⟨hpn,hjn,hwn⟩ := CriticalRationalParam20261003.parameter_signs k
  have he := parameter_plus_gauge_reconstruction E (-k) hE h0
    (hp.trans hpn.symm) (hj.trans hjn.symm) (hw.trans hwn.symm) hL a b ha hb
  dsimp only at he ⊢
  simpa [neg_div,CriticalNonzeroRational20261003.sheet,CriticalNonzeroRational20261003.gram,
    CriticalNonzeroRational20261003.q,CriticalNonzeroRational20261003.J,
    CriticalNonzeroRational20261003.h] using he

end
#print axioms parameter_complex_p_j
#print axioms parameter_plus_gauge_reconstruction
#print axioms parameter_minus_gauge_reconstruction
end CriticalNonzeroPhysicalBinding20261003
