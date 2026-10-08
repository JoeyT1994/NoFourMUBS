import RayPolynomial
import RayRegularity

namespace Mub6.Classification.Rays
open Mub6 Mub6.Numerical Mub6.Numerical.CircleCharts
noncomputable section

/-- A regularity certificate may be supplied directly for the denominator-
cleared polynomial system. All chart solutions must be covered. -/
theorem isolated_of_invertible_polynomial_derivative (H : BasisMatrix) (s : SignChart)
    (hregular : ∀ t, PolynomialIncidence H s t →
      ∃ L : Parameters ≃L[ℝ] Parameters,
        HasStrictFDerivAt (clearedResidual H s) (L : Parameters →L[ℝ] Parameters) t) :
    LocallyIsolatedChartFibre H s := by
  intro t ht
  have hpt := (polynomial_incidence_iff H s t).mpr ht
  obtain ⟨L, hL⟩ := hregular t hpt
  let e := hL.toOpenPartialHomeomorph (clearedResidual H s)
  refine ⟨e.source, e.open_source, hL.mem_toOpenPartialHomeomorph_source, ?_⟩
  intro u hu huU
  apply e.injOn huU hL.mem_toOpenPartialHomeomorph_source
  funext k
  have hpu := (polynomial_incidence_iff H s u).mpr hu
  exact (hpu.2 k).trans (hpt.2 k).symm

theorem finite_common_ray_fibre_of_polynomial_regular {H : BasisMatrix} (hH : PhaseHadamard H)
    (hregular : ∀ s t, PolynomialIncidence H s t →
      ∃ L : Parameters ≃L[ℝ] Parameters,
        HasStrictFDerivAt (clearedResidual H s) (L : Parameters →L[ℝ] Parameters) t) :
    {z : Vector | IsRawCommonRay H z}.Finite :=
  finite_common_ray_fibre_of_isolated hH
    (fun s => isolated_of_invertible_polynomial_derivative H s (hregular s))

#print axioms isolated_of_invertible_polynomial_derivative
#print axioms finite_common_ray_fibre_of_polynomial_regular
end
end Mub6.Classification.Rays
