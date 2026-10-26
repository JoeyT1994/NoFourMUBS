import Mathlib.Analysis.Calculus.ImplicitContDiff
import Mathlib.Analysis.SpecificLimits.Normed

/-!
# The analytic implicit-function step in Z §4

`ContDiff ℝ ω`, unlike `ContDiff ℝ ∞`, supplies real analyticity. This distinction
is necessary for the identity-theorem continuation of the full residual.
-/

open Filter Topology
open scoped ContDiff

namespace NoFourMUBs.SeedAtlas.Method.WholeBall

variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
  [NormedAddCommGroup F] [NormedSpace ℝ F] [CompleteSpace F]

omit [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E] in
/-- The normal derivative is invertible whenever its distance from the identity
is strictly below one. This uses the Neumann series in the operator algebra. -/
theorem invertible_of_near_id (A : F →L[ℝ] F) (hA : ‖ContinuousLinearMap.id ℝ F - A‖ < 1) :
    A.IsInvertible := by
  have hunit : IsUnit A := by
    have h := isUnit_one_sub_of_norm_lt_one hA
    convert h using 1
    ext x
    simp
  obtain ⟨u, hu⟩ := hunit
  exact ⟨ContinuousLinearEquiv.ofUnit u, hu⟩

/-- A local analytic root of an analytic projected equation, with the specified
centre value. No full-residual or matched-completion claim is made here. -/
theorem analytic_implicit_root {G : E × F → F} {w0 : E} {z0 : F}
    (ha : AnalyticAt ℝ G (w0, z0)) (hzero : G (w0, z0) = 0)
    (hnear : ‖ContinuousLinearMap.id ℝ F -
      (fderiv ℝ G (w0, z0) ∘L ContinuousLinearMap.inr ℝ E F)‖ < 1) :
    ∃ z : E → F, AnalyticAt ℝ z w0 ∧ z w0 = z0 ∧
      ∀ᶠ w in 𝓝 w0, G (w, z w) = 0 := by
  have hc : ContDiffAt ℝ ω G (w0, z0) := ha.contDiffAt
  have hn : (ω : ℕ∞ω) ≠ 0 := by simp
  have hi := invertible_of_near_id _ hnear
  refine ⟨hc.implicitFunction hn hi, (hc.contDiffAt_implicitFunction hn hi).analyticAt,
    hc.implicitFunction_apply_self hn hi, ?_⟩
  simpa [hzero] using hc.eventually_apply_implicitFunction hn hi

end NoFourMUBs.SeedAtlas.Method.WholeBall
