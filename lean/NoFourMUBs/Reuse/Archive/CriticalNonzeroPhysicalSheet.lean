import NoFourMUBs.Reuse.Archive.CriticalLightSheet
import NoFourMUBs.Reuse.Archive.CriticalPositiveParam
import NoFourMUBs.Reuse.Archive.CriticalNonzeroData

set_option autoImplicit false
namespace CriticalNonzeroPhysicalInputs20261003
open Matrix NoFourMUBs.Step2.Critical CriticalPhysical20261003 CriticalLightSheet20261003
noncomputable section

theorem parameter_g_chi (E : Matrix (Fin 3) (Fin 3) ℂ) (k : ℝ)
    (hp : sideP E=CriticalRationalParam20261003.p k)
    (hj : sideJ E=CriticalRationalParam20261003.j k)
    (hw : sideW E=CriticalRationalParam20261003.w k) :
    FourierGramNumerators.g (sideS E) (sideT E) (sideR E)=
      3*CriticalRationalParam20261003.q k+CriticalRationalParam20261003.j k ∧
    FourierGramNumerators.chi (sideS E) (sideT E) (sideR E)=
      CriticalRationalParam20261003.chi (CriticalRationalParam20261003.p k)
        (CriticalRationalParam20261003.j k) (CriticalRationalParam20261003.w k) := by
  change momentP (sideS E) (sideT E) (sideR E)=_ at hp
  change momentJ (sideS E) (sideT E) (sideR E)=_ at hj
  change momentW (sideS E) (sideT E) (sideR E)=_ at hw
  rw [CriticalLightSheet20261003.moment_g,CriticalLightSheet20261003.moment_chi,hp,hj,hw]
  constructor
  · unfold CriticalRationalParam20261003.p
    ring
  · rfl

/-- The signed real parameter gives the full complex sheet of the actual
unit-entry block. This includes k=0 and both signs; no permanent or pole
exception is discarded. The Gram determinant is strictly positive. -/
theorem actual_parameter_sheet (E : Matrix (Fin 3) (Fin 3) ℂ) (k : ℝ)
    (hE : ∀ i j,Complex.normSq (E i j)=1) (h0 : ∀ j,E 0 j=1)
    (hp : sideP E=CriticalRationalParam20261003.p k)
    (hj : sideJ E=CriticalRationalParam20261003.j k)
    (hw : sideW E=CriticalRationalParam20261003.w k) :
    E.det≠0 ∧ blockSheet E=((-2*(1+k)/(1+k^2) : ℝ) : ℂ) := by
  obtain ⟨hg,hchi⟩ := parameter_g_chi E k hp hj hw
  have hgpos := (CriticalRationalParam20261003.g_positive k).1
  have hd : E.det≠0 := by
    intro he
    have hn := side_g_determinant E hE h0
    rw [hg,he,Complex.normSq_zero] at hn
    linarith
  have hr : CriticalScalarReduction20261003.R (sideP E) (sideJ E) (sideW E)=0 := by
    rw [hp,hj,hw]
    exact (CriticalRationalParam20261003.param_paired_zeros k).1
  refine ⟨hd,?_⟩
  rw [actual_critical_sheet E hE h0 hd hr,hg,hchi]
  rw [(CriticalRationalParam20261003.z_identities k).1]

/-- The scalar constructor uses these exact same sheet and Gram scalars. -/
theorem actual_parameter_sheet_complex (E : Matrix (Fin 3) (Fin 3) ℂ) (k : ℝ)
    (hE : ∀ i j,Complex.normSq (E i j)=1) (h0 : ∀ j,E 0 j=1)
    (hp : sideP E=CriticalRationalParam20261003.p k)
    (hj : sideJ E=CriticalRationalParam20261003.j k)
    (hw : sideW E=CriticalRationalParam20261003.w k) :
    E.det≠0 ∧ blockSheet E=CriticalNonzeroRational20261003.sheet (k : ℂ) 1 ∧
    (FourierGramNumerators.g (sideS E) (sideT E) (sideR E) : ℂ)=
      CriticalNonzeroRational20261003.gram (k : ℂ) 1 := by
  obtain ⟨hd,hz⟩ := actual_parameter_sheet E k hE h0 hp hj hw
  have hg := (parameter_g_chi E k hp hj hw).1
  refine ⟨hd,?_,?_⟩
  · simpa [CriticalNonzeroRational20261003.sheet,CriticalNonzeroRational20261003.h] using hz
  · rw [hg]
    simp [CriticalRationalParam20261003.q,CriticalRationalParam20261003.j,
      CriticalNonzeroRational20261003.gram,CriticalNonzeroRational20261003.q,
      CriticalNonzeroRational20261003.J,CriticalNonzeroRational20261003.h]

/-- Exact denominator binding, not a nonzero-denominator assertion. Every
possible physical pole remains visible until its separate case is settled. -/
theorem actual_parameter_denominators (E : Matrix (Fin 3) (Fin 3) ℂ) (k : ℝ)
    (hE : ∀ i j,Complex.normSq (E i j)=1) (h0 : ∀ j,E 0 j=1)
    (hp : sideP E=CriticalRationalParam20261003.p k)
    (hj : sideJ E=CriticalRationalParam20261003.j k)
    (hw : sideW E=CriticalRationalParam20261003.w k) :
    blockDenominator E 0=CriticalNonzeroRational20261003.pole (k : ℂ) 1
      (Complex.normSq (sideR E) : ℂ) ∧
    blockDenominator E 1=CriticalNonzeroRational20261003.pole (k : ℂ) 1
      (Complex.normSq (sideT E) : ℂ) ∧
    blockDenominator E 2=CriticalNonzeroRational20261003.pole (k : ℂ) 1
      (Complex.normSq (sideS E) : ℂ) := by
  obtain ⟨_,hz,hg⟩ := actual_parameter_sheet_complex E k hE h0 hp hj hw
  have hden (i : Fin 3) : blockDenominator E i=
      CriticalNonzeroRational20261003.gram (k : ℂ) 1+
      CriticalNonzeroRational20261003.sheet (k : ℂ) 1 *
        (FourierGramNumerators.q (sideS E) (sideT E) (sideR E) i : ℂ) := by
    unfold blockDenominator FourierPhysicalSide.sideDenominator
    change (FourierGramNumerators.g (sideS E) (sideT E) (sideR E) : ℂ)+
      blockSheet E*(FourierGramNumerators.q (sideS E) (sideT E) (sideR E) i : ℂ)=_
    rw [hz,hg]
  rw [hden 0,hden 1,hden 2]
  simp [FourierGramNumerators.q,CriticalNonzeroRational20261003.pole,mul_comm]

end
#print axioms parameter_g_chi
#print axioms actual_parameter_sheet
#print axioms actual_parameter_sheet_complex
#print axioms actual_parameter_denominators
end CriticalNonzeroPhysicalInputs20261003
