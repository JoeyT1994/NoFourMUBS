import Mathlib.Topology.MetricSpace.Contracting
import Mathlib.Analysis.Calculus.MeanValue

/-!
# Whole-ball projected contraction (return Z, THEOREM.md §4)

This is the Banach step of Z's theorem, in an arbitrary complete real normed space
(in the application, Euclidean `ℝ²¹`). The hypotheses are bounds on the *actual*
projected residual and derivative. Checking the scalar inequalities alone does
not establish these hypotheses, or imply that the full Hadamard residual vanishes.
-/

open Metric Set

namespace NoFourMUBs.SeedAtlas.Method.WholeBall

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]

omit [NormedSpace ℝ E] in
/-- Z §4 (8): the projected equation has a unique zero in the normal tube.
The difference bound is on `z ↦ z - G z`, with Euclidean operator norm in the
application. The zero lies strictly inside the tube. -/
theorem projected_zero_of_contraction (G : E → E) {b q τ : ℝ}
    (hτ : 0 ≤ τ) (hq0 : 0 ≤ q) (hq1 : q < 1)
    (hb : ‖G 0‖ ≤ b)
    (hmv : ∀ z ∈ closedBall (0 : E) τ, ∀ z' ∈ closedBall (0 : E) τ,
      ‖(z - G z) - (z' - G z')‖ ≤ q * ‖z - z'‖)
    (hstrict : b + q * τ < τ) :
    ∃ z, ‖z‖ ≤ b + q * τ ∧ ‖z‖ < τ ∧ G z = 0 ∧
      ∀ z', ‖z'‖ ≤ τ → G z' = 0 → z' = z := by
  let T : E → E := fun z => z - G z
  have hzero : (0 : E) ∈ closedBall (0 : E) τ := mem_closedBall_self hτ
  have hbound : ∀ z ∈ closedBall (0 : E) τ, ‖T z‖ ≤ b + q * τ := by
    intro z hz
    have hn : ‖z‖ ≤ τ := by simpa [mem_closedBall, dist_zero_right] using hz
    have h0 : ‖T 0‖ ≤ b := by simpa [T] using hb
    calc
      ‖T z‖ = ‖(T z - T 0) + T 0‖ := by rw [sub_add_cancel]
      _ ≤ ‖T z - T 0‖ + ‖T 0‖ := norm_add_le _ _
      _ ≤ q * ‖z - 0‖ + b := add_le_add (hmv z hz 0 hzero) h0
      _ ≤ q * τ + b := by simpa using add_le_add_right (mul_le_mul_of_nonneg_left hn hq0) b
      _ = b + q * τ := add_comm _ _
  have hmaps : MapsTo T (closedBall (0 : E) τ) (closedBall (0 : E) τ) := by
    intro z hz
    simpa [mem_closedBall, dist_zero_right] using (hbound z hz).trans hstrict.le
  have hc : ContractingWith ⟨q, hq0⟩ (hmaps.restrict T _ _) := by
    refine ⟨hq1, LipschitzWith.of_dist_le_mul (K := ⟨q, hq0⟩) fun z z' => ?_⟩
    simp only [Subtype.dist_eq, MapsTo.val_restrict_apply, dist_eq_norm]
    exact hmv z z.2 z' z'.2
  obtain ⟨z, hz, hfix, -⟩ := hc.exists_fixedPoint' isClosed_closedBall.isComplete hmaps
    hzero (edist_ne_top _ _)
  have hfix' : T z = z := hfix
  have heq : G z = 0 := by simpa [T, sub_eq_self] using hfix'
  have hn : ‖z‖ ≤ b + q * τ := by simpa [hfix'] using hbound z hz
  refine ⟨z, hn, hn.trans_lt hstrict, heq, ?_⟩
  intro z' hz' heq'
  have hz'm : z' ∈ closedBall (0 : E) τ := by simpa [mem_closedBall, dist_zero_right] using hz'
  have hh := hmv z' hz'm z hz
  rw [heq, heq', sub_zero, sub_zero] at hh
  have : ‖z' - z‖ = 0 := by nlinarith [norm_nonneg (z' - z)]
  exact sub_eq_zero.mp (norm_eq_zero.mp this)

omit [CompleteSpace E] in
/-- The derivative bound used by the Banach step. This bridges the operator-norm
bound `‖I - G_z‖ ≤ q` in Z §4 to the difference-bound hypothesis above. -/
theorem contraction_difference_of_derivative (G : E → E) (G' : E → E →L[ℝ] E)
    {q τ : ℝ}
    (hderiv : ∀ z ∈ closedBall (0 : E) τ, HasFDerivAt G (G' z) z)
    (hbound : ∀ z ∈ closedBall (0 : E) τ, ‖ContinuousLinearMap.id ℝ E - G' z‖ ≤ q)
    {z z' : E} (hz : z ∈ closedBall (0 : E) τ) (hz' : z' ∈ closedBall (0 : E) τ) :
    ‖(z - G z) - (z' - G z')‖ ≤ q * ‖z - z'‖ := by
  exact (convex_closedBall (0 : E) τ).norm_image_sub_le_of_norm_hasFDerivWithin_le
    (fun y hy => ((hasFDerivAt_id y).sub (hderiv y hy)).hasFDerivWithinAt)
    hbound hz' hz

/-- Z §4 (8), with the projected derivative bound as input. -/
theorem projected_zero (G : E → E) (G' : E → E →L[ℝ] E) {b q τ : ℝ}
    (hτ : 0 ≤ τ) (hq0 : 0 ≤ q) (hq1 : q < 1) (hb : ‖G 0‖ ≤ b)
    (hderiv : ∀ z ∈ closedBall (0 : E) τ, HasFDerivAt G (G' z) z)
    (hbound : ∀ z ∈ closedBall (0 : E) τ, ‖ContinuousLinearMap.id ℝ E - G' z‖ ≤ q)
    (hstrict : b + q * τ < τ) :
    ∃ z, ‖z‖ ≤ b + q * τ ∧ ‖z‖ < τ ∧ G z = 0 ∧
      ∀ z', ‖z'‖ ≤ τ → G z' = 0 → z' = z :=
  projected_zero_of_contraction G hτ hq0 hq1 hb
    (fun _ hz _ hz' => contraction_difference_of_derivative G G' hderiv hbound hz hz') hstrict

end NoFourMUBs.SeedAtlas.Method.WholeBall
