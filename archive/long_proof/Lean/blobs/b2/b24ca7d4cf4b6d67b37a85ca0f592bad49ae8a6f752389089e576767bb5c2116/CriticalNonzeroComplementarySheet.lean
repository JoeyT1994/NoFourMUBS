import CriticalNonzeroPhysicalSheet
set_option autoImplicit false
namespace CriticalNonzeroPhysicalInputs20261003
open Matrix CriticalPhysical20261003 CriticalLightSheet20261003
noncomputable section

theorem parameter_neg (k : ℝ) :
    CriticalRationalParam20261003.p (-k)=CriticalRationalParam20261003.p k ∧
    CriticalRationalParam20261003.j (-k)= -CriticalRationalParam20261003.j k ∧
    CriticalRationalParam20261003.w (-k)=CriticalRationalParam20261003.w k := by
  simp [neg_div,CriticalRationalParam20261003.p,CriticalRationalParam20261003.q,
    CriticalRationalParam20261003.j,CriticalRationalParam20261003.w]

theorem negative_parameter_sheet (E : Matrix (Fin 3) (Fin 3) ℂ) (k : ℝ)
    (hE : ∀ i j,Complex.normSq (E i j)=1) (h0 : ∀ j,E 0 j=1)
    (hp : sideP E=CriticalRationalParam20261003.p k)
    (hj : sideJ E= -CriticalRationalParam20261003.j k)
    (hw : sideW E=CriticalRationalParam20261003.w k) :
    E.det≠0 ∧ blockSheet E=CriticalNonzeroRational20261003.sheet (k : ℂ) (-1) ∧
    (FourierGramNumerators.g (sideS E) (sideT E) (sideR E) : ℂ)=
      CriticalNonzeroRational20261003.gram (k : ℂ) (-1) := by
  obtain ⟨hpn,hjn,hwn⟩ := parameter_neg k
  have h := actual_parameter_sheet_complex E (-k) hE h0
    (hp.trans hpn.symm) (hj.trans hjn.symm) (hw.trans hwn.symm)
  simpa [neg_div,CriticalNonzeroRational20261003.sheet,CriticalNonzeroRational20261003.gram,
    CriticalNonzeroRational20261003.q,CriticalNonzeroRational20261003.J,
    CriticalNonzeroRational20261003.h] using h

/-- The opposite physical J has the other literal denominator list. It is
not legal to infer that these denominators are nonzero from this equality. -/
theorem negative_parameter_denominators (E : Matrix (Fin 3) (Fin 3) ℂ) (k : ℝ)
    (hE : ∀ i j,Complex.normSq (E i j)=1) (h0 : ∀ j,E 0 j=1)
    (hp : sideP E=CriticalRationalParam20261003.p k)
    (hj : sideJ E= -CriticalRationalParam20261003.j k)
    (hw : sideW E=CriticalRationalParam20261003.w k) :
    blockDenominator E 0=CriticalNonzeroRational20261003.pole (k : ℂ) (-1)
      (Complex.normSq (sideR E) : ℂ) ∧
    blockDenominator E 1=CriticalNonzeroRational20261003.pole (k : ℂ) (-1)
      (Complex.normSq (sideT E) : ℂ) ∧
    blockDenominator E 2=CriticalNonzeroRational20261003.pole (k : ℂ) (-1)
      (Complex.normSq (sideS E) : ℂ) := by
  obtain ⟨hpn,hjn,hwn⟩ := parameter_neg k
  have h := actual_parameter_denominators E (-k) hE h0
    (hp.trans hpn.symm) (hj.trans hjn.symm) (hw.trans hwn.symm)
  simpa [neg_div,CriticalNonzeroRational20261003.pole,CriticalNonzeroRational20261003.sheet,
    CriticalNonzeroRational20261003.gram,CriticalNonzeroRational20261003.q,
    CriticalNonzeroRational20261003.J,CriticalNonzeroRational20261003.h] using h
end
#print axioms parameter_neg
#print axioms negative_parameter_sheet
#print axioms negative_parameter_denominators
end CriticalNonzeroPhysicalInputs20261003
