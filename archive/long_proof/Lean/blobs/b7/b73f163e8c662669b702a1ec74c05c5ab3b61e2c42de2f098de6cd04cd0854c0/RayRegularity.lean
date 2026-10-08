import RayCompactness
import Mathlib.Analysis.Calculus.InverseFunctionTheorem.FDeriv

/-! A conditional finite regular-fibre theorem for the actual square residual.
Every strict derivative and its invertibility remain explicit premises. -/
namespace Mub6.Classification.Rays
open Mub6 Mub6.Numerical Mub6.Numerical.CircleCharts
noncomputable section

/-- A full-rank five-variable strict derivative gives local isolation by
the inverse function theorem, including chart-boundary solutions. -/
theorem isolated_of_invertible_strict_derivative (H : BasisMatrix) (s : SignChart)
    (hregular : ∀ t, ChartIncidence H s t →
      ∃ L : Parameters ≃L[ℝ] Parameters,
        HasStrictFDerivAt (residual H s) (L : Parameters →L[ℝ] Parameters) t) :
    LocallyIsolatedChartFibre H s := by
  apply isolated_of_local_residual_injective
  intro t ht
  obtain ⟨L, hL⟩ := hregular t ht
  let e := hL.toPartialHomeomorph (residual H s)
  exact ⟨e.source, e.open_source, hL.mem_toPartialHomeomorph_source, e.injOn⟩

theorem finite_regular_chart_fibre (H : BasisMatrix) (s : SignChart)
    (hregular : ∀ t, ChartIncidence H s t →
      ∃ L : Parameters ≃L[ℝ] Parameters,
        HasStrictFDerivAt (residual H s) (L : Parameters →L[ℝ] Parameters) t) :
    {t : Parameters | ChartIncidence H s t}.Finite :=
  finite_chart_fibre_of_isolated H s (isolated_of_invertible_strict_derivative H s hregular)

/-- Universal regularity on all 32 chart fibres is sufficient for a finite
physical ray fibre. This theorem does not assert universal regularity. -/
theorem finite_common_ray_fibre_of_regular {H : BasisMatrix} (hH : PhaseHadamard H)
    (hregular : ∀ s t, ChartIncidence H s t →
      ∃ L : Parameters ≃L[ℝ] Parameters,
        HasStrictFDerivAt (residual H s) (L : Parameters →L[ℝ] Parameters) t) :
    {z : Vector | IsRawCommonRay H z}.Finite :=
  finite_common_ray_fibre_of_isolated hH
    (fun s => isolated_of_invertible_strict_derivative H s (hregular s))

#print axioms isolated_of_invertible_strict_derivative
#print axioms finite_regular_chart_fibre
#print axioms finite_common_ray_fibre_of_regular
end
end Mub6.Classification.Rays
