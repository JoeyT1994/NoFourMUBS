import RayIncidence

/-! Exact denominator clearing for all signed circle charts. Every displayed
cleared expression uses only finite sums, products and powers of real inputs. -/
namespace Mub6.Classification.Rays
open Mub6 Mub6.Numerical Mub6.Numerical.CircleCharts
open scoped BigOperators
noncomputable section

def rayDenominator (t : Parameters) : ℝ := ∏ j, (1 + t j ^ 2)

def omittedDenominator (t : Parameters) (j : Fin 5) : ℝ :=
  ∏ i ∈ Finset.univ.erase j, (1 + t i ^ 2)

theorem rayDenominator_pos (t : Parameters) : 0 < rayDenominator t :=
  Finset.prod_pos fun j _ => denominator_pos (t j)

theorem omittedDenominator_mul (t : Parameters) (j : Fin 5) :
    omittedDenominator t j * (1 + t j ^ 2) = rayDenominator t :=
  Finset.prod_erase_mul Finset.univ (fun i => 1 + t i ^ 2) (Finset.mem_univ j)

def clearedRayRe (s : SignChart) (t : Parameters) : Fin 6 → ℝ :=
  Fin.cases (rayDenominator t)
    (fun j => signValue (s j) * (1 - t j ^ 2) * omittedDenominator t j)

def clearedRayIm (s : SignChart) (t : Parameters) : Fin 6 → ℝ :=
  Fin.cases 0 (fun j => signValue (s j) * (2 * t j) * omittedDenominator t j)

theorem clearedRayRe_binding (s : SignChart) (t : Parameters) (r : Fin 6) :
    clearedRayRe s t r = rayDenominator t * (chartRay s t r).re := by
  refine Fin.cases ?_ (fun j => ?_) r
  · simp [clearedRayRe, chartRay]
  · change signValue (s j) * (1 - t j ^ 2) * omittedDenominator t j =
      rayDenominator t * (signedCircle (s j) (t j)).re
    rw [← omittedDenominator_mul t j]
    have hd := ne_of_gt (denominator_pos (t j))
    simp only [signedCircle, circlePoint, Complex.mul_re, Complex.ofReal_re,
      Complex.ofReal_im, zero_mul, sub_zero]
    field_simp
    <;> ring

theorem clearedRayIm_binding (s : SignChart) (t : Parameters) (r : Fin 6) :
    clearedRayIm s t r = rayDenominator t * (chartRay s t r).im := by
  refine Fin.cases ?_ (fun j => ?_) r
  · simp [clearedRayIm, chartRay]
  · change signValue (s j) * (2 * t j) * omittedDenominator t j =
      rayDenominator t * (signedCircle (s j) (t j)).im
    rw [← omittedDenominator_mul t j]
    have hd := ne_of_gt (denominator_pos (t j))
    simp only [signedCircle, circlePoint, Complex.mul_im, Complex.ofReal_re,
      Complex.ofReal_im, zero_mul, add_zero]
    field_simp
    <;> ring

def clearedAmplitudeRe (H : BasisMatrix) (s : SignChart) (t : Parameters) (k : Fin 6) : ℝ :=
  ∑ r, ((H r k).re * clearedRayRe s t r + (H r k).im * clearedRayIm s t r)

def clearedAmplitudeIm (H : BasisMatrix) (s : SignChart) (t : Parameters) (k : Fin 6) : ℝ :=
  ∑ r, ((H r k).re * clearedRayIm s t r - (H r k).im * clearedRayRe s t r)

theorem clearedAmplitudeRe_binding (H : BasisMatrix) (s : SignChart) (t : Parameters)
    (k : Fin 6) : clearedAmplitudeRe H s t k =
      rayDenominator t * (carrierAmplitude H (chartRay s t) k).re := by
  rw [carrierAmplitude_re, Finset.mul_sum]
  unfold clearedAmplitudeRe
  apply Finset.sum_congr rfl
  intro r _
  rw [clearedRayRe_binding, clearedRayIm_binding]
  ring

theorem clearedAmplitudeIm_binding (H : BasisMatrix) (s : SignChart) (t : Parameters)
    (k : Fin 6) : clearedAmplitudeIm H s t k =
      rayDenominator t * (carrierAmplitude H (chartRay s t) k).im := by
  rw [carrierAmplitude_im, Finset.mul_sum]
  unfold clearedAmplitudeIm
  apply Finset.sum_congr rfl
  intro r _
  rw [clearedRayRe_binding, clearedRayIm_binding]
  ring

def clearedResidual (H : BasisMatrix) (s : SignChart) (t : Parameters) (k : Fin 5) : ℝ :=
  clearedAmplitudeRe H s t k.succ ^ 2 + clearedAmplitudeIm H s t k.succ ^ 2 -
    6 * rayDenominator t ^ 2

/-- Exact all-real identity; no denominator zero branch or spurious real
solution is introduced by clearing the rational circle charts. -/
theorem clearedResidual_binding (H : BasisMatrix) (s : SignChart) (t : Parameters)
    (k : Fin 5) : clearedResidual H s t k = rayDenominator t ^ 2 * residual H s t k := by
  unfold clearedResidual residual
  rw [clearedAmplitudeRe_binding, clearedAmplitudeIm_binding, Complex.normSq_apply]
  ring

theorem clearedResidual_zero_iff (H : BasisMatrix) (s : SignChart) (t : Parameters)
    (k : Fin 5) : clearedResidual H s t k = 0 ↔ residual H s t k = 0 := by
  rw [clearedResidual_binding, mul_eq_zero]
  have hd : rayDenominator t ^ 2 ≠ 0 := pow_ne_zero 2 (ne_of_gt (rayDenominator_pos t))
  simp [hd]

def PolynomialIncidence (H : BasisMatrix) (s : SignChart) (t : Parameters) : Prop :=
  InCube t ∧ ∀ k, clearedResidual H s t k = 0

theorem polynomial_incidence_iff (H : BasisMatrix) (s : SignChart) (t : Parameters) :
    PolynomialIncidence H s t ↔ ChartIncidence H s t := by
  simp only [PolynomialIncidence, ChartIncidence, clearedResidual_zero_iff]

theorem common_ray_polynomial_chart_iff {H : BasisMatrix} (hH : PhaseHadamard H)
    (z : Vector) : IsRawCommonRay H z ↔ ∃ s t,
      PolynomialIncidence H s t ∧ z = chartRay s t := by
  simp only [polynomial_incidence_iff, common_ray_chart_iff hH z]

#print axioms rayDenominator_pos
#print axioms omittedDenominator_mul
#print axioms clearedRayRe_binding
#print axioms clearedRayIm_binding
#print axioms clearedAmplitudeRe_binding
#print axioms clearedAmplitudeIm_binding
#print axioms clearedResidual_binding
#print axioms clearedResidual_zero_iff
#print axioms polynomial_incidence_iff
#print axioms common_ray_polynomial_chart_iff
end
end Mub6.Classification.Rays
