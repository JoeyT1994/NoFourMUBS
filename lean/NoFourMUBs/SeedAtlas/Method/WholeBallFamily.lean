import NoFourMUBs.SeedAtlas.Method.WholeBallContraction
import NoFourMUBs.SeedAtlas.Method.WholeBallImplicit
import NoFourMUBs.SeedAtlas.Method.WholeBallContinuation

/-!
# The analytic projected family on the whole ball

Return Z, THEOREM.md §4: uniform contraction, analyticity in the interior and
continuity on the boundary. This theorem takes the actual residual and normal
derivative bounds. The finite centre formulas must establish those bounds before
it can be used for a seed certificate.
-/

open Metric Set Filter Topology

namespace NoFourMUBs.SeedAtlas.Method.WholeBall

variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
  [NormedAddCommGroup F] [NormedSpace ℝ F] [CompleteSpace F]

theorem analytic_projected_family (G : E × F → F) {r τ b q : ℝ}
    (hτ : 0 ≤ τ) (hq0 : 0 ≤ q) (hq1 : q < 1)
    (hb : ∀ w ∈ closedBall (0 : E) r, ‖G (w, 0)‖ ≤ b)
    (ha : ∀ w ∈ closedBall (0 : E) r, ∀ z ∈ closedBall (0 : F) τ,
      AnalyticAt ℝ G (w, z))
    (hnear : ∀ w ∈ closedBall (0 : E) r, ∀ z ∈ closedBall (0 : F) τ,
      ‖ContinuousLinearMap.id ℝ F -
        (fderiv ℝ G (w, z) ∘L ContinuousLinearMap.inr ℝ E F)‖ ≤ q)
    (hstrict : b + q * τ < τ) :
    ∃ z : E → F,
      (∀ w ∈ closedBall (0 : E) r, ‖z w‖ ≤ b + q * τ ∧ ‖z w‖ < τ ∧ G (w, z w) = 0 ∧
        ∀ z', ‖z'‖ ≤ τ → G (w, z') = 0 → z' = z w) ∧
      AnalyticOnNhd ℝ z (ball (0 : E) r) ∧ ContinuousOn z (closedBall (0 : E) r) := by
  classical
  have hex : ∀ w ∈ closedBall (0 : E) r,
      ∃ z : F, ‖z‖ ≤ b + q * τ ∧ ‖z‖ < τ ∧ G (w, z) = 0 ∧
        ∀ z', ‖z'‖ ≤ τ → G (w, z') = 0 → z' = z := by
    intro w hw
    apply projected_zero (fun z => G (w, z))
      (fun z => fderiv ℝ G (w, z) ∘L ContinuousLinearMap.inr ℝ E F)
      hτ hq0 hq1 (hb w hw) ?_ (hnear w hw) hstrict
    intro z hz
    have hd := (ha w hw z hz).differentiableAt.hasFDerivAt.comp z
      ((hasFDerivAt_const (c := w) z).prodMk (hasFDerivAt_id z))
    convert hd using 1 <;> ext v <;> simp
  let z : E → F := fun w => if hw : w ∈ closedBall (0 : E) r then (hex w hw).choose else 0
  have hz : ∀ w ∈ closedBall (0 : E) r, ‖z w‖ ≤ b + q * τ ∧ ‖z w‖ < τ ∧ G (w, z w) = 0 ∧
      ∀ z', ‖z'‖ ≤ τ → G (w, z') = 0 → z' = z w := by
    intro w hw
    simpa only [z, dif_pos hw] using (hex w hw).choose_spec
  have hlocal : ∀ w ∈ closedBall (0 : E) r,
      ∃ zl : E → F, AnalyticAt ℝ zl w ∧ zl w = z w ∧
        ∀ᶠ v in 𝓝 w, v ∈ closedBall (0 : E) r → zl v = z v := by
    intro w hw
    have hzw : z w ∈ closedBall (0 : F) τ := by
      simpa [mem_closedBall, dist_zero_right] using (hz w hw).2.1.le
    obtain ⟨zl, hzl, heq, hroot⟩ := analytic_implicit_root (ha w hw (z w) hzw)
      (hz w hw).2.2.1 ((hnear w hw (z w) hzw).trans_lt hq1)
    have hnorm : ContinuousAt (fun v => ‖zl v‖) w := hzl.continuousAt.norm
    have hsmall : ∀ᶠ v in 𝓝 w, ‖zl v‖ < τ := hnorm (gt_mem_nhds (by
      change ‖zl w‖ < τ
      rw [heq]
      exact (hz w hw).2.1))
    refine ⟨zl, hzl, heq, ?_⟩
    filter_upwards [hroot, hsmall] with v hv hvs
    intro hvr
    exact (hz v hvr).2.2.2 (zl v) hvs.le hv
  refine ⟨z, hz, ?_, ?_⟩
  · intro w hw
    obtain ⟨zl, hzl, -, heq⟩ := hlocal w (ball_subset_closedBall hw)
    apply hzl.congr
    filter_upwards [heq, isOpen_ball.mem_nhds hw] with v hv hvr
    exact hv (ball_subset_closedBall hvr)
  · intro w hw
    obtain ⟨zl, hzl, heq0, heq⟩ := hlocal w hw
    apply hzl.continuousAt.continuousWithinAt.congr_of_eventuallyEq _ heq0.symm
    filter_upwards [heq.filter_mono nhdsWithin_le_nhds, self_mem_nhdsWithin] with v hv hvr
    exact (hv hvr).symm

variable {D : Type*} [NormedAddCommGroup D] [NormedSpace ℝ D]

omit [CompleteSpace E] [CompleteSpace F] in
/-- Z §4, identification with the local matched germ and analytic continuation.
`H` is the full residual and `G` its projection. This is the step that prevents a
root of the 21 projected equations being mistaken for a Hadamard matrix. -/
theorem full_residual_of_local_germ {G : E × F → F} {H : E × F → D}
    {z zs : E → F} {r τ : ℝ} (hr : 0 < r) (hτ : 0 < τ)
    (hzmem : ∀ w ∈ closedBall (0 : E) r, ‖z w‖ ≤ τ)
    (huniq : ∀ w ∈ closedBall (0 : E) r, ∀ z', ‖z'‖ ≤ τ → G (w, z') = 0 → z' = z w)
    (hza : AnalyticOnNhd ℝ z (ball (0 : E) r))
    (hzc : ContinuousOn z (closedBall (0 : E) r))
    (hHa : ∀ w ∈ closedBall (0 : E) r, ∀ v ∈ closedBall (0 : F) τ, AnalyticAt ℝ H (w, v))
    (hprojection : ∀ w v, H (w, v) = 0 → G (w, v) = 0)
    (hsa : AnalyticAt ℝ zs 0) (hs0 : zs 0 = 0)
    (hsgerm : ∀ᶠ w in 𝓝 (0 : E), H (w, zs w) = 0) :
    ∀ w ∈ closedBall (0 : E) r, H (w, z w) = 0 := by
  have hzm : ∀ w ∈ closedBall (0 : E) r, z w ∈ closedBall (0 : F) τ := by
    intro w hw
    simpa [mem_closedBall, dist_zero_right] using hzmem w hw
  have hfa : AnalyticOnNhd ℝ (fun w => H (w, z w)) (ball (0 : E) r) := by
    intro w hw
    exact (hHa w (ball_subset_closedBall hw) (z w) (hzm w (ball_subset_closedBall hw))).comp
      (f := fun v : E => (v, z v))
      (analyticAt_id.prod (hza w hw))
  have hfc : ContinuousOn (fun w => H (w, z w)) (closedBall (0 : E) r) := by
    intro w hw
    exact (hHa w hw (z w) (hzm w hw)).continuousAt.comp_continuousWithinAt
      (f := fun v : E => (v, z v))
      (continuousWithinAt_id.prodMk (hzc w hw))
  have hsmall : ∀ᶠ w in 𝓝 (0 : E), ‖zs w‖ < τ :=
    hsa.continuousAt.norm (gt_mem_nhds (by simpa [hs0] using hτ))
  have hlocal : (fun w => H (w, z w)) =ᶠ[𝓝 (0 : E)] 0 := by
    filter_upwards [hsgerm, hsmall, isOpen_ball.mem_nhds (mem_ball_self hr)] with w hw hs hb
    have heq := huniq w (ball_subset_closedBall hb) (zs w) hs.le (hprojection w (zs w) hw)
    simpa [heq] using hw
  exact residual_zero_on_closedBall hr hfa hfc hlocal

end NoFourMUBs.SeedAtlas.Method.WholeBall
