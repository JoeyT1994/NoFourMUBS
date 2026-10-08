import CriticalLightSheet
import CriticalActualSheet

set_option autoImplicit false
namespace CriticalLightSheetBinding20261003
noncomputable section

/-- The light layer repeats only literal definitions, with no change of
physical convention, normalization, row order or Gram scalar. -/
theorem block_definitions_agree (E : Matrix (Fin 3) (Fin 3) ℂ) :
    CriticalLightSheet20261003.sideS E=Mub6.Classification.FourPhase.sideS E ∧
    CriticalLightSheet20261003.sideT E=Mub6.Classification.FourPhase.sideT E ∧
    CriticalLightSheet20261003.sideR E=Mub6.Classification.FourPhase.sideR E ∧
    CriticalLightSheet20261003.sideP E=CriticalPhysical20261003.sideP E ∧
    CriticalLightSheet20261003.sideJ E=CriticalPhysical20261003.sideJ E ∧
    CriticalLightSheet20261003.sideW E=CriticalPhysical20261003.sideW E ∧
    CriticalLightSheet20261003.blockSheet E=CriticalActualSheet20261003.blockSheet E ∧
    CriticalLightSheet20261003.blockDenominator E=CriticalActualSheet20261003.blockDenominator E :=
  ⟨rfl,rfl,rfl,rfl,rfl,rfl,rfl,rfl⟩

/-- Both producers accept precisely the same literal zero-J physical inputs. -/
theorem zero_sheet_old_and_new (E : Matrix (Fin 3) (Fin 3) ℂ) (z : ℝ)
    (hE : ∀ i j,Complex.normSq (E i j)=1) (h0 : ∀ j,E 0 j=1)
    (hz : z≠0) (hp : CriticalPhysical20261003.sideP E=9-z^2)
    (hj : CriticalPhysical20261003.sideJ E=0)
    (hw : CriticalPhysical20261003.sideW E=z^2*(z+3)^2) :
    CriticalActualSheet20261003.blockSheet E=(z : ℂ) ∧
      CriticalLightSheet20261003.blockSheet E=(z : ℂ) :=
  ⟨CriticalActualSheet20261003.actual_zero_parameter_sheet E z hE h0 hz hp hj hw,
    CriticalLightSheet20261003.actual_zero_parameter_sheet E z hE h0 hz hp hj hw⟩

theorem zero_denominators_old_and_new (E : Matrix (Fin 3) (Fin 3) ℂ) (z : ℝ)
    (hE : ∀ i j,Complex.normSq (E i j)=1) (h0 : ∀ j,E 0 j=1)
    (hzlo : -3≤z) (hz0 : z≠0) (hz3 : z≠ -3) (hz2 : z≠ -2)
    (hp : CriticalPhysical20261003.sideP E=9-z^2)
    (hj : CriticalPhysical20261003.sideJ E=0)
    (hw : CriticalPhysical20261003.sideW E=z^2*(z+3)^2) :
    (∀ i,CriticalActualSheet20261003.blockDenominator E i≠0) ∧
      (∀ i,CriticalLightSheet20261003.blockDenominator E i≠0) :=
  ⟨CriticalActualSheet20261003.actual_zero_parameter_denominators E z hE h0
      hzlo hz0 hz3 hz2 hp hj hw,
    CriticalLightSheet20261003.actual_zero_parameter_denominators E z hE h0
      hzlo hz0 hz3 hz2 hp hj hw⟩

end
#print axioms block_definitions_agree
#print axioms zero_sheet_old_and_new
#print axioms zero_denominators_old_and_new
end CriticalLightSheetBinding20261003
