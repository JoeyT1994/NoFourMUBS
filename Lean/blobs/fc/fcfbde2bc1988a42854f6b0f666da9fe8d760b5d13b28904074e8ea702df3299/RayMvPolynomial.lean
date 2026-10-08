import RayPolynomial
import Mathlib.Algebra.MvPolynomial.CommRing

/-! Genuine multivariate polynomial objects with exact physical evaluation. -/
namespace Mub6.Classification.Rays
open Mub6 Mub6.Numerical Mub6.Numerical.CircleCharts
open MvPolynomial
open scoped BigOperators
noncomputable section

abbrev RayPoly := MvPolynomial (Fin 5) ℝ

def denominatorPoly : RayPoly := ∏ j : Fin 5, (1 + X j ^ 2)

def omittedDenominatorPoly (j : Fin 5) : RayPoly :=
  ∏ i ∈ Finset.univ.erase j, (1 + X i ^ 2)

def rayRePoly (s : SignChart) : Fin 6 → RayPoly :=
  Fin.cases denominatorPoly (fun j =>
    C (signValue (s j)) * (1 - X j ^ 2) * omittedDenominatorPoly j)

def rayImPoly (s : SignChart) : Fin 6 → RayPoly :=
  Fin.cases 0 (fun j =>
    C (signValue (s j)) * (2 * X j) * omittedDenominatorPoly j)

def amplitudeRePoly (H : BasisMatrix) (s : SignChart) (k : Fin 6) : RayPoly :=
  ∑ r, (C (H r k).re * rayRePoly s r + C (H r k).im * rayImPoly s r)

def amplitudeImPoly (H : BasisMatrix) (s : SignChart) (k : Fin 6) : RayPoly :=
  ∑ r, (C (H r k).re * rayImPoly s r - C (H r k).im * rayRePoly s r)

def residualPoly (H : BasisMatrix) (s : SignChart) (k : Fin 5) : RayPoly :=
  amplitudeRePoly H s k.succ ^ 2 + amplitudeImPoly H s k.succ ^ 2 -
    6 * denominatorPoly ^ 2

theorem eval_denominatorPoly (t : Parameters) :
    eval t denominatorPoly = rayDenominator t := by
  simp [denominatorPoly, rayDenominator]

theorem eval_omittedDenominatorPoly (t : Parameters) (j : Fin 5) :
    eval t (omittedDenominatorPoly j) = omittedDenominator t j := by
  simp [omittedDenominatorPoly, omittedDenominator]

theorem eval_rayRePoly (s : SignChart) (t : Parameters) (r : Fin 6) :
    eval t (rayRePoly s r) = clearedRayRe s t r := by
  refine Fin.cases ?_ (fun j => ?_) r
  · exact eval_denominatorPoly t
  · simp [rayRePoly, clearedRayRe, eval_omittedDenominatorPoly]

theorem eval_rayImPoly (s : SignChart) (t : Parameters) (r : Fin 6) :
    eval t (rayImPoly s r) = clearedRayIm s t r := by
  refine Fin.cases ?_ (fun j => ?_) r
  · simp [rayImPoly, clearedRayIm]
  · simp [rayImPoly, clearedRayIm, eval_omittedDenominatorPoly]

theorem eval_amplitudeRePoly (H : BasisMatrix) (s : SignChart) (t : Parameters) (k : Fin 6) :
    eval t (amplitudeRePoly H s k) = clearedAmplitudeRe H s t k := by
  simp [amplitudeRePoly, clearedAmplitudeRe, eval_rayRePoly, eval_rayImPoly]

theorem eval_amplitudeImPoly (H : BasisMatrix) (s : SignChart) (t : Parameters) (k : Fin 6) :
    eval t (amplitudeImPoly H s k) = clearedAmplitudeIm H s t k := by
  simp [amplitudeImPoly, clearedAmplitudeIm, eval_rayRePoly, eval_rayImPoly]

theorem eval_residualPoly (H : BasisMatrix) (s : SignChart) (t : Parameters) (k : Fin 5) :
    eval t (residualPoly H s k) = clearedResidual H s t k := by
  simp [residualPoly, clearedResidual, eval_amplitudeRePoly,
    eval_amplitudeImPoly, eval_denominatorPoly]

/-- The actual multivariate polynomial evaluates to a positive multiple of
the physical five-equation residual, with the shared H coefficient data. -/
theorem residualPoly_physical_binding (H : BasisMatrix) (s : SignChart)
    (t : Parameters) (k : Fin 5) :
    eval t (residualPoly H s k) = rayDenominator t ^ 2 * residual H s t k := by
  rw [eval_residualPoly, clearedResidual_binding]

#print axioms eval_denominatorPoly
#print axioms eval_omittedDenominatorPoly
#print axioms eval_rayRePoly
#print axioms eval_rayImPoly
#print axioms eval_amplitudeRePoly
#print axioms eval_amplitudeImPoly
#print axioms eval_residualPoly
#print axioms residualPoly_physical_binding
end
end Mub6.Classification.Rays
