import SixColumnMetric
import RepeatedFourierColumns

noncomputable section
open scoped BigOperators
open Seed0024Mathematical20261007

namespace Seed0024ProjectorMetric20261007

theorem phaseColumn_projector_overlap (z : Fin 6 → ℂ)
    (hz : ∀ i, Complex.normSq (z i) = 1) (p q : Fin 6 → ℝ) :
    ‖columnProjector (phaseColumn z p)-columnProjector (phaseColumn z q)‖ ^ 2 =
      1-Complex.normSq (columnOverlap (phaseColumn z p) (phaseColumn z q)) := by
  exact columnProjector_sub_norm_sq _ _ (phaseColumn_mass z hz p) (phaseColumn_mass z hz q)

theorem repeated_left_projector_sq_le (z : Fin 6 → ℂ)
    (hz : ∀ i, Complex.normSq (z i) = 1) (x y : ℝ) :
    ‖columnProjector (phaseColumn z (fun _ => 0))-
      columnProjector (phaseColumn z (fun i => repeatedPhase x y i/2))‖ ^ 2 ≤
        (x^2+y^2-x*y)/18 := by
  rw [phaseColumn_projector_overlap z hz]
  exact repeated_left_infidelity_le z hz x y

theorem repeated_right_projector_sq_le (z : Fin 6 → ℂ)
    (hz : ∀ i, Complex.normSq (z i) = 1) (x y : ℝ) :
    ‖columnProjector (phaseColumn z (repeatedPhase x y))-
      columnProjector (phaseColumn z (fun i => repeatedPhase x y i/2))‖ ^ 2 ≤
        (x^2+y^2-x*y)/18 := by
  rw [phaseColumn_projector_overlap z hz]
  exact repeated_right_infidelity_le z hz x y

theorem repeated_left_projector_lt (z : Fin 6 → ℂ)
    (hz : ∀ i, Complex.normSq (z i) = 1) (x y ε : ℝ)
    (hε : 0 < ε) (hxy : (x^2+y^2-x*y)/18 < ε^2) :
    ‖columnProjector (phaseColumn z (fun _ => 0))-
      columnProjector (phaseColumn z (fun i => repeatedPhase x y i/2))‖ < ε := by
  apply (sq_lt_sq₀ (norm_nonneg _) hε.le).1
  exact (repeated_left_projector_sq_le z hz x y).trans_lt hxy

theorem repeated_right_projector_lt (z : Fin 6 → ℂ)
    (hz : ∀ i, Complex.normSq (z i) = 1) (x y ε : ℝ)
    (hε : 0 < ε) (hxy : (x^2+y^2-x*y)/18 < ε^2) :
    ‖columnProjector (phaseColumn z (repeatedPhase x y))-
      columnProjector (phaseColumn z (fun i => repeatedPhase x y i/2))‖ < ε := by
  apply (sq_lt_sq₀ (norm_nonneg _) hε.le).1
  exact (repeated_right_projector_sq_le z hz x y).trans_lt hxy

end Seed0024ProjectorMetric20261007

#print axioms Seed0024ProjectorMetric20261007.phaseColumn_projector_overlap
#print axioms Seed0024ProjectorMetric20261007.repeated_left_projector_sq_le
#print axioms Seed0024ProjectorMetric20261007.repeated_right_projector_sq_le
#print axioms Seed0024ProjectorMetric20261007.repeated_left_projector_lt
#print axioms Seed0024ProjectorMetric20261007.repeated_right_projector_lt
