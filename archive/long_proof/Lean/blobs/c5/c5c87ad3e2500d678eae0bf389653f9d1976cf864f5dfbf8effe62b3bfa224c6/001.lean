import CenteredLambdaBounds
set_option autoImplicit false

namespace Mub6.Classification.CenteredLambdaCancellation
open Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CarrierIntervals Mub6.Classification.RadicalIntervals
noncomputable section

def varyingDenominator : RationalRectangle := ⟨1,2,0,0⟩
def zeroResidual : RationalRectangle := ⟨0,0,0,0⟩
def exactUnit : RationalRectangle := ⟨1,1,0,0⟩
def independentOutput : RationalRectangle := ⟨1/4,1,0,0⟩

/-- Dependency control: N=D is simplified before any interval evaluation. -/
theorem shared_residual_zero (d : ℂ) :
    MemRectangle zeroResidual (d-rationalCenter 1 0*d) := by
  norm_num [rationalCenter, zeroResidual, MemRectangle]

theorem centered_output_exact :
    poleSafeCenteredLambdaBox zeroResidual varyingDenominator 1 0 0 = exactUnit := by
  decide +kernel

theorem independent_output_wider :
    phaseQuotientBox varyingDenominator varyingDenominator = independentOutput := by
  decide +kernel

/-- A universal correlated enclosure, not a sampled Hadamard claim. -/
theorem shared_quotient_exact {d L : ℂ}
    (hd : MemRectangle varyingDenominator d) (he : d=d*L)
    (hL : Complex.normSq L=1) : MemRectangle exactUnit L := by
  rw [← centered_output_exact]
  exact poleSafeCenteredLambdaBox_sound (shared_residual_zero d) hd he hL

theorem insufficient_radius_keeps_phases :
    poleSafeCenteredLambdaBox (⟨1,1,0,0⟩ : RationalRectangle)
      (⟨1,1,0,0⟩ : RationalRectangle) 1 0 (1/2) = unitBox := by
  decide +kernel

theorem negative_radius_keeps_phases :
    poleSafeCenteredLambdaBox zeroResidual varyingDenominator 1 0 (-1) = unitBox := by
  decide +kernel

theorem exact_pole_keeps_phases (a b radius : ℚ) :
    poleSafeCenteredLambdaBox zeroResidual zeroResidual a b radius = unitBox := by
  unfold poleSafeCenteredLambdaBox CenteredLambdaCertificate
  have h : ¬ (0 : ℚ) < (boxNormSq zeroResidual).lo := by decide +kernel
  simp only [h, false_and, ↓reduceIte]

#print axioms shared_residual_zero
#print axioms centered_output_exact
#print axioms independent_output_wider
#print axioms shared_quotient_exact
#print axioms insufficient_radius_keeps_phases
#print axioms negative_radius_keeps_phases
#print axioms exact_pole_keeps_phases
end
end Mub6.Classification.CenteredLambdaCancellation
