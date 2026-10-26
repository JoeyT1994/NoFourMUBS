import Mathlib.Analysis.Analytic.Uniqueness
import Mathlib.Analysis.Normed.Module.Convex

/-!
# From a local full-residual germ to the whole closed ball

Return Z, THEOREM.md §4, last paragraph of the proof. This is the identity-theorem
step, distinct from the Banach step. Analyticity of the projected solution and
its identification with a local matched-completion germ must be supplied before
this theorem can be applied to the thirty real Hadamard equations.
-/

open Metric Set Filter Topology

namespace NoFourMUBs.SeedAtlas.Method.WholeBall

variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
  [NormedAddCommGroup F] [NormedSpace ℝ F]

/-- An analytic residual which vanishes near the centre vanishes on the entire
closed parameter ball, provided it is continuous there. -/
theorem residual_zero_on_closedBall {f : E → F} {r : ℝ} (hr : 0 < r)
    (ha : AnalyticOnNhd ℝ f (ball (0 : E) r))
    (hc : ContinuousOn f (closedBall (0 : E) r))
    (hlocal : f =ᶠ[𝓝 (0 : E)] 0) :
    EqOn f 0 (closedBall (0 : E) r) := by
  have hball : EqOn f 0 (ball (0 : E) r) :=
    ha.eqOn_zero_of_preconnected_of_eventuallyEq_zero
      (convex_ball (0 : E) r).isPreconnected (mem_ball_self hr) hlocal
  have hclosure : closure (ball (0 : E) r) = closedBall (0 : E) r := closure_ball 0 (ne_of_gt hr)
  exact hball.of_subset_closure hc continuousOn_const ball_subset_closedBall (by rw [hclosure])

end NoFourMUBs.SeedAtlas.Method.WholeBall
