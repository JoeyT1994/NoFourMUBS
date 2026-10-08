import FourierReference
import NormalizedColumnMetric
import RepeatedProjectorMetric

/-! Operator-distance estimate to the explicitly constructed common row-gauged
Fourier reference. The bound is on all six actual normalized columns. -/
set_option autoImplicit false
namespace Seed0024Mathematical20261007
open Seed0024ProjectorMetric20261007
noncomputable section

theorem rounded_fourier_projector_distance_lt (alpha beta : ℝ)
    (hs : |Real.sin (2*alpha-beta)|+|Real.sin (2*beta-alpha)|+
      |Real.sin (alpha+beta)|<(1:ℝ)/6) (j : Fin 6) :
    ‖columnProjector (normalizedColumn (explicitPairedFamily alpha beta) j)-
      columnProjector (normalizedColumn (gaugedReference alpha beta) j)‖<(1:ℝ)/60 := by
  have hv := rounded_fourier_variance_lt alpha beta hs
  change ‖columnProjector (fun r => explicitPairedFamily alpha beta r j/(Real.sqrt 6 : ℂ))-
    columnProjector (fun r => gaugedReference alpha beta r j/(Real.sqrt 6 : ℂ))‖<_
  rw [gaugedReference_column]
  by_cases hj : j.val<3
  · rw [explicitPairedFamily_left_column alpha beta j hj]
    exact repeated_left_projector_lt (fun r => roundedReference alpha beta r j)
      (fun r => roundedReference_unit alpha beta r j) _ _ _ (by norm_num) hv
  · rw [explicitPairedFamily_right_column alpha beta j (by omega)]
    exact repeated_right_projector_lt (fun r => roundedReference alpha beta r j)
      (fun r => roundedReference_unit alpha beta r j) _ _ _ (by norm_num) hv

theorem actual_to_gauged_reference_lt (H : Fin 6 → Fin 6 → ℂ)
    (hH : ∀ i j,Complex.normSq (H i j)=1) (alpha beta : ℝ)
    (hHK : (∑ i : Fin 6, ∑ j : Fin 6,
      Complex.normSq ((H i j-explicitPairedFamily alpha beta i j)/(Real.sqrt 6 : ℂ)))<
        (1/75:ℝ)^2)
    (hs : |Real.sin (2*alpha-beta)|+|Real.sin (2*beta-alpha)|+
      |Real.sin (alpha+beta)|<(1:ℝ)/6) (j : Fin 6) :
    ‖columnProjector (normalizedColumn H j)-
      columnProjector (normalizedColumn (gaugedReference alpha beta) j)‖<(3:ℝ)/100 := by
  have h1 := normalizedColumn_projector_lt_of_frobenius H (explicitPairedFamily alpha beta)
    hH (explicitPairedFamily_unit alpha beta) (1/75) (by norm_num) hHK j
  have h2 := rounded_fourier_projector_distance_lt alpha beta hs j
  have ht := dist_triangle (columnProjector (normalizedColumn H j))
    (columnProjector (normalizedColumn (explicitPairedFamily alpha beta) j))
    (columnProjector (normalizedColumn (gaugedReference alpha beta) j))
  simp only [dist_eq_norm] at ht
  linarith

end
end Seed0024Mathematical20261007
#print axioms Seed0024Mathematical20261007.rounded_fourier_projector_distance_lt
#print axioms Seed0024Mathematical20261007.actual_to_gauged_reference_lt
