import NoFourMUBs.SeedAtlas.Method.WholeBallTaylor
import NoFourMUBs.SeedAtlas.Method.WholeBallFamily

/-!
# From derivative bounds to Z's contraction

This file discharges the two uniform estimates required by the Banach step.
It uses the exact zero jets and centre derivative norms, then Taylor bounds
on the parameter and normal segments. The finite Fourier formulas and their
numerical enclosures must separately establish these derivative hypotheses.
-/

open Metric Set

namespace NoFourMUBs.SeedAtlas.Method.WholeBall

variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
  [NormedAddCommGroup F] [NormedSpace ℝ F] [CompleteSpace F]

noncomputable def normalDerivative (G : E × F → F) (w : E) (z : F) : F →L[ℝ] F :=
  fderiv ℝ G (w, z) ∘L ContinuousLinearMap.inr ℝ E F

/-- The exact jets and derivative estimates in Z §§2–4. These are semantic
obligations about `G`, not trusted numerical fields. -/
structure JetBounds (G : E × F → F) (B : Bounds ℝ) : Prop where
  residual_zero : G (0, 0) = 0
  residual_one : iteratedFDeriv ℝ 1 (fun w => G (w, 0)) 0 = 0
  residual_two : iteratedFDeriv ℝ 2 (fun w => G (w, 0)) 0 = 0
  residual_three : ‖iteratedFDeriv ℝ 3 (fun w => G (w, 0)) 0‖ ≤ B.t3
  residual_four : ‖iteratedFDeriv ℝ 4 (fun w => G (w, 0)) 0‖ ≤ B.t4
  residual_smooth : ∀ w ∈ closedBall (0 : E) B.r, ContDiffAt ℝ 5 (fun w => G (w, 0)) w
  residual_five : ∀ w ∈ closedBall (0 : E) B.r,
    ‖iteratedFDeriv ℝ 5 (fun w => G (w, 0)) w‖ ≤ B.L5
  normal_zero : normalDerivative G 0 0 = ContinuousLinearMap.id ℝ F
  normal_one : ‖iteratedFDeriv ℝ 1 (fun w => normalDerivative G w 0) 0‖ ≤ B.c
  normal_two : ‖iteratedFDeriv ℝ 2 (fun w => normalDerivative G w 0) 0‖ ≤ B.a2
  normal_smooth : ∀ w ∈ closedBall (0 : E) B.r,
    ContDiffAt ℝ 3 (fun w => normalDerivative G w 0) w
  normal_three : ∀ w ∈ closedBall (0 : E) B.r,
    ‖iteratedFDeriv ℝ 3 (fun w => normalDerivative G w 0) w‖ ≤ B.L3a
  tube_one : ∀ w ∈ closedBall (0 : E) B.r,
    ‖fderiv ℝ (normalDerivative G w) 0‖ ≤ B.d + B.L3 * B.x ^ 2 * B.base
  tube_smooth : ∀ w ∈ closedBall (0 : E) B.r, ∀ z ∈ closedBall (0 : F) B.tau,
    ContDiffAt ℝ 2 (normalDerivative G w) z
  tube_two : ∀ w ∈ closedBall (0 : E) B.r, ∀ z ∈ closedBall (0 : F) B.tau,
    ‖iteratedFDeriv ℝ 2 (normalDerivative G w) z‖ ≤ B.L3 * B.x ^ 3

omit [CompleteSpace E] [CompleteSpace F] in
lemma smul_mem_zero_closedBall {x : E} {r t : ℝ} (hr : 0 ≤ r)
    (hx : x ∈ closedBall (0 : E) r) (ht : t ∈ Icc (0 : ℝ) 1) :
    t • x ∈ closedBall (0 : E) r := by
  rw [mem_closedBall, dist_zero_right, norm_smul, Real.norm_eq_abs, abs_of_nonneg ht.1]
  have hx' : ‖x‖ ≤ r := by simpa [mem_closedBall, dist_zero_right] using hx
  exact (mul_le_mul_of_nonneg_left hx' ht.1).trans (by nlinarith [ht.2])

omit [CompleteSpace E] in
theorem JetBounds.residual_bound {G : E × F → F} {B : Bounds ℝ}
    (h : JetBounds G B) (hn : B.Nonneg) (hr : 0 ≤ B.r) :
    ∀ w ∈ closedBall (0 : E) B.r, ‖G (w, 0)‖ ≤ B.b0 := by
  intro w hw
  obtain ⟨hx, hu, hβ, hc, hd, hL3, ht3, ht4, hL5, ha2, hL3a, heP, heU⟩ := hn
  exact predictor_residual_bound (f := fun w => G (w, 0)) (y := w)
    (by simpa [mem_closedBall, dist_zero_right] using hw) ht3 ht4 hL5
    (fun t ht => h.residual_smooth _ (smul_mem_zero_closedBall hr hw ht))
    h.residual_zero h.residual_one h.residual_two h.residual_three h.residual_four
    (fun t ht => h.residual_five _ (smul_mem_zero_closedBall hr hw ht))

omit [CompleteSpace E] in
theorem JetBounds.normal_bound {G : E × F → F} {B : Bounds ℝ}
    (h : JetBounds G B) (hn : B.Nonneg) (hr : 0 ≤ B.r) (hτ : 0 ≤ B.tau) :
    ∀ w ∈ closedBall (0 : E) B.r, ∀ z ∈ closedBall (0 : F) B.tau,
      ‖ContinuousLinearMap.id ℝ F - normalDerivative G w z‖ ≤ B.q := by
  intro w hw z hz
  obtain ⟨hx, hu, hβ, hc, hd, hL3, ht3, ht4, hL5, ha2, hL3a, heP, heU⟩ := hn
  have hbase : 0 ≤ B.base := by unfold Bounds.base; positivity
  have hp : ‖normalDerivative G w 0 - ContinuousLinearMap.id ℝ F‖ ≤ B.qbase := by
    rw [← h.normal_zero]
    exact norm_sub_le_cubic (by simpa [mem_closedBall, dist_zero_right] using hw) hc ha2 hL3a
      (fun t ht => h.normal_smooth _ (smul_mem_zero_closedBall hr hw ht))
      h.normal_one h.normal_two
      (fun t ht => h.normal_three _ (smul_mem_zero_closedBall hr hw ht))
  have htube : ‖normalDerivative G w z - normalDerivative G w 0‖ ≤
      (B.d + B.L3 * B.x ^ 2 * B.base) * B.tau + B.L3 * B.x ^ 3 * B.tau ^ 2 / 2 := by
    have hh := norm_sub_le_linear_quadratic (f := normalDerivative G w) (x := (0 : F))
      (y := z) (r := B.tau) (a := B.d + B.L3 * B.x ^ 2 * B.base) (C := B.L3 * B.x ^ 3)
      (by simpa [mem_closedBall, dist_zero_right] using hz) (by positivity) (by positivity)
      (by intro t ht; simpa only [zero_add] using h.tube_smooth w hw _ (smul_mem_zero_closedBall hτ hz ht))
      (h.tube_one w hw)
      (by intro t ht; simpa only [zero_add] using h.tube_two w hw _ (smul_mem_zero_closedBall hτ hz ht))
    simpa only [zero_add] using hh
  rw [norm_sub_rev]
  calc
    _ ≤ ‖normalDerivative G w z - normalDerivative G w 0‖ +
        ‖normalDerivative G w 0 - ContinuousLinearMap.id ℝ F‖ := norm_sub_le_norm_sub_add_norm_sub _ _ _
    _ ≤ B.q := by unfold Bounds.q; linarith

/-- Z's contraction conclusion with its actual uniform norm hypotheses
discharged by the Taylor estimates above. -/
theorem analytic_projected_family_of_jets {G : E × F → F} {B : Bounds ℝ}
    (h : JetBounds G B) (hn : B.Nonneg) (hr : 0 < B.r) (hτ : 0 < B.tau)
    (hq : B.q < 1) (hb : B.b0 + B.q * B.tau < B.tau)
    (ha : ∀ w ∈ closedBall (0 : E) B.r, ∀ z ∈ closedBall (0 : F) B.tau, AnalyticAt ℝ G (w, z)) :
    ∃ z : E → F,
      (∀ w ∈ closedBall (0 : E) B.r, ‖z w‖ ≤ B.b0 + B.q * B.tau ∧ ‖z w‖ < B.tau ∧
        G (w, z w) = 0 ∧ ∀ z', ‖z'‖ ≤ B.tau → G (w, z') = 0 → z' = z w) ∧
      AnalyticOnNhd ℝ z (ball (0 : E) B.r) ∧ ContinuousOn z (closedBall (0 : E) B.r) := by
  have hq0 : 0 ≤ B.q := by
    obtain ⟨hx, hu, hβ, hc, hd, hL3, ht3, ht4, hL5, ha2, hL3a, heP, heU⟩ := hn
    unfold Bounds.q Bounds.qbase Bounds.base
    positivity
  exact analytic_projected_family G hτ.le hq0 hq (h.residual_bound hn hr.le) ha
    (h.normal_bound hn hr.le hτ.le) hb

end NoFourMUBs.SeedAtlas.Method.WholeBall
