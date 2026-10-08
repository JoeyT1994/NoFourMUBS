import CriticalStripObstruction
import CriticalScalarReduction

set_option autoImplicit false
set_option maxHeartbeats 1000000
namespace CriticalIndependentReview20261003
open Mub6 Mub6.Numerical
open CriticalCounts20261003 CriticalRowSum20261003 CriticalScalarReduction20261003
open scoped BigOperators
noncomputable section

/-- All subsets of size three, encoded by arbitrary Boolean masks, occur
exactly once in the literal catalogue. -/
theorem every_three_subset_once : ∀ mask : Fin 6 → Bool,
    (∑ j : Fin 6, if mask j then (1 : ℕ) else 0) = 3 →
    ∃! c : Fin 20, ∀ j : Fin 6,
      mask j = true ↔ ∃ i : Fin 3, triples c i = j := by
  simp only [ExistsUnique]
  decide +kernel

/-- The physical sum starts with the column Gram convention actually used
by PhaseHadamard, and derives the needed row orthogonality. -/
theorem sum_from_column_equations (H : BasisMatrix)
    (hunit : ∀ r j, Complex.normSq (H r j) = 1)
    (hcol : ∀ i j : Fin 6, (∑ r : Fin 6, star (H r i) * H r j) =
      if i = j then 6 else 0)
    (rows : Fin 3 → Fin 6) (hr : Function.Injective rows) :
    (∑ c : Fin 20, cornerP H rows c) = 108 := by
  have hH : PhaseHadamard H := by
    refine ⟨hunit, ?_⟩
    ext i j
    change (∑ r : Fin 6, star (H r i) * H r j) =
      (6 : ℂ) * (if i = j then 1 else 0)
    rw [hcol]
    split_ifs <;> norm_num
  exact physical_sum hH rows hr

theorem row_gram_from_phase_hadamard {H : BasisMatrix} (hH : PhaseHadamard H) :
    Matrix.of H * Matrix.conjTranspose (Matrix.of H) =
      (6 : ℂ) • (1 : Matrix (Fin 6) (Fin 6) ℂ) := row_gram hH

theorem expected_strip_endpoint {H : BasisMatrix} (hH : PhaseHadamard H)
    (rows : Fin 3 → Fin 6) (hr : Function.Injective rows)
    {k : ℝ} (hk : 0 < k) (hc : 3*k^3+k^2+k-1 = 0)
    (hclass : ∀ c : Fin 20, cornerP H rows c = 0 ∨
      cornerP H rows c = 5 ∨ cornerP H rows c = 9-4/(1+k^2)) : False :=
  CriticalStripObstruction20261003.no_classified_strip hH rows hr hk hc hclass

theorem expected_closed_band_endpoint {H : BasisMatrix} (hH : PhaseHadamard H)
    (rows : Fin 3 → Fin 6) (hr : Function.Injective rows)
    {p : ℝ} (hl : (572220/100000 : ℝ) ≤ p) (hu : p ≤ (572221/100000 : ℝ))
    (hclass : ∀ c : Fin 20, cornerP H rows c = 0 ∨
      cornerP H rows c = 5 ∨ cornerP H rows c = p) : False :=
  CriticalStripObstruction20261003.no_classified_strip_in_band hH rows hr hl hu hclass

theorem closest_lower_count_margin :
    (5 : ℚ) + 18*(572221/100000) = 108-11/50000 := by norm_num

/-- Complementary zeros alone do retain the zero-J algebraic boundary. -/
theorem zero_J_boundary_examples :
    R 0 0 0 = 0 ∧ R 0 0 324 = 0 ∧ R 5 0 4 = 0 ∧ R 9 0 0 = 0 := by
  norm_num [R]

theorem scalar_nonzero_endpoint {p j w : ℝ}
    (hp : 0 ≤ p) (hphys : p + |j| ≤ 9) (hj : j ≠ 0)
    (hplus : R p j w = 0) (hminus : R p (-j) w = 0) :
    5 < p ∧ p < 9 ∧ j^2 = (9-p)^3*(p-5)/4 ∧
      w = -(p-9)*(p^2-10*p+27)/2 :=
  nonzero_reduction hp hphys hj hplus hminus

theorem algebraic_converse_endpoint {p j w : ℝ}
    (hj : j^2 = (9-p)^3*(p-5)/4)
    (hw : w = -(p-9)*(p^2-10*p+27)/2) :
    R p j w = 0 ∧ R p (-j) w = 0 := algebraic_converse hj hw

end
#print axioms CriticalRowSum20261003.row_gram
#print axioms every_three_subset_once
#print axioms sum_from_column_equations
#print axioms row_gram_from_phase_hadamard
#print axioms expected_strip_endpoint
#print axioms expected_closed_band_endpoint
#print axioms closest_lower_count_margin
#print axioms zero_J_boundary_examples
#print axioms scalar_nonzero_endpoint
#print axioms algebraic_converse_endpoint
end CriticalIndependentReview20261003
