import NoFourMUBs.SeedAtlas.Method.WholeBallFourierModel
import NoFourMUBs.SeedAtlas.Method.WholeBallTensor

/-!
# Finite centre bounds imply the uniform contraction estimates

The hypotheses refer only to the coefficients and summed centre tensors of
the quadratic-phase model. In particular no uniform derivative estimate or
existence of a projected family is assumed. `tensor_power_bound` discharges
the homogeneous centre-jet bounds from flattened spectral certificates.

The two tube sums below are conservative sufficient bounds for Z's `L3`.
They permit the same contraction formula with a larger certified `L3`.
-/

open Metric Set Filter Topology

namespace NoFourMUBs.SeedAtlas.Method.WholeBall

variable {ι E F : Type*} [Fintype ι]
  [NormedAddCommGroup E] [NormedSpace ℝ E]
  [NormedAddCommGroup F] [NormedSpace ℝ F] [CompleteSpace F]

structure FiniteCentreBounds (M : FourierModel ι E F) (B : Bounds ℝ)
    (cn sn tn dn : ι → ℝ) : Prop where
  coeff : ∀ i, ‖M.coeff i‖ ≤ cn i
  linear : ∀ i, ‖M.linear i‖ ≤ sn i
  quadratic : ∀ i, ‖M.quadratic i‖ ≤ tn i
  normal : ∀ i, ‖M.normal i‖ ≤ dn i
  zero : M.equation (0, 0) = 0
  one : ∀ w, fourierRayJet M.coeff (fun i => M.linear i w) (fun i => M.quadratic i w w) 1 0 = 0
  two : ∀ w, fourierRayJet M.coeff (fun i => M.linear i w) (fun i => M.quadratic i w w) 2 0 = 0
  three : ∀ w, ‖fourierRayJet M.coeff (fun i => M.linear i w) (fun i => M.quadratic i w w) 3 0‖ ≤
    B.t3 * ‖w‖ ^ 3
  four : ∀ w, ‖fourierRayJet M.coeff (fun i => M.linear i w) (fun i => M.quadratic i w w) 4 0‖ ≤
    B.t4 * ‖w‖ ^ 4
  five : (∑ i, cn i * ((sn i + B.r * tn i) ^ 5 + 10 * tn i * (sn i + B.r * tn i) ^ 3 +
    15 * (tn i) ^ 2 * (sn i + B.r * tn i))) ≤ B.L5
  normal_zero : normalDerivative M.equation 0 0 = ContinuousLinearMap.id ℝ F
  normal_one : ∀ w, ‖fourierRayJet M.normalCoeff (fun i => M.linear i w)
    (fun i => M.quadratic i w w) 1 0‖ ≤ B.c * ‖w‖
  normal_two : ∀ w, ‖fourierRayJet M.normalCoeff (fun i => M.linear i w)
    (fun i => M.quadratic i w w) 2 0‖ ≤ B.a2 * ‖w‖ ^ 2
  normal_three : (∑ i, (cn i * dn i) * ((sn i + B.r * tn i) ^ 3 +
    3 * tn i * (sn i + B.r * tn i))) ≤ B.L3a
  tube_centre : ∀ z, ‖M.tubeJet 0 z‖ ≤ B.d * ‖z‖
  tube_variation : (∑ i, cn i * (dn i) ^ 2 * (sn i * B.r + tn i * B.r ^ 2 / 2)) ≤
    B.L3 * B.x ^ 2 * B.base
  tube_two : (∑ i, cn i * (dn i) ^ 3) ≤ B.L3 * B.x ^ 3

namespace FiniteCentreBounds

variable {M : FourierModel ι E F} {B : Bounds ℝ} {cn sn tn dn : ι → ℝ}

omit [CompleteSpace F] in
lemma linear_apply (h : FiniteCentreBounds M B cn sn tn dn) {w : E} (hw : ‖w‖ ≤ B.r) (i : ι) :
    |M.linear i w| ≤ sn i * B.r := by
  have hs := (norm_nonneg _).trans (h.linear i)
  exact ((M.linear i).le_opNorm w).trans (mul_le_mul (h.linear i) hw (norm_nonneg _) hs)

omit [CompleteSpace F] in
lemma quadratic_apply (h : FiniteCentreBounds M B cn sn tn dn) {w : E} (hw : ‖w‖ ≤ B.r) (i : ι) :
    |M.quadratic i w w| ≤ tn i * B.r ^ 2 := by
  have ht : 0 ≤ tn i := (show 0 ≤ ‖M.quadratic i‖ by positivity).trans (h.quadratic i)
  have hr := (norm_nonneg _).trans hw
  calc
    _ ≤ ‖M.quadratic i w‖ * ‖w‖ := (M.quadratic i w).le_opNorm w
    _ ≤ (‖M.quadratic i‖ * ‖w‖) * ‖w‖ :=
      mul_le_mul_of_nonneg_right ((M.quadratic i).le_opNorm w) (norm_nonneg _)
    _ ≤ (tn i * B.r) * B.r := by gcongr; exact h.quadratic i
    _ = tn i * B.r ^ 2 := by ring

omit [CompleteSpace F] in
lemma normal_coeff (h : FiniteCentreBounds M B cn sn tn dn) (i : ι) :
    ‖M.normalCoeff i‖ ≤ cn i * dn i := by
  exact (M.norm_normalCoeff i).trans (mul_le_mul (h.coeff i) (h.normal i)
    (norm_nonneg _) ((norm_nonneg _).trans (h.coeff i)))

theorem residual_bound (h : FiniteCentreBounds M B cn sn tn dn) (hn : B.Nonneg)
    {w : E} (hw : ‖w‖ ≤ B.r) : ‖M.equation (w, 0)‖ ≤ B.b0 := by
  obtain ⟨hx, hu, hβ, hc, hd, hL3, ht3, ht4, hL5, ha2, hL3a, heP, heU⟩ := hn
  have hr := (norm_nonneg _).trans hw
  rw [← one_smul ℝ w, M.parameter_ray]
  apply fourier_predictor_bound M.coeff (fun i => M.linear i w) (fun i => M.quadratic i w w)
    cn sn tn hr ht3 ht4 hL5 h.coeff (h.linear_apply hw) (h.quadratic_apply hw) h.five
  · simpa only [← M.parameter_ray, zero_smul] using h.zero
  · exact h.one w
  · exact h.two w
  · exact (h.three w).trans (by gcongr)
  · exact (h.four w).trans (by gcongr)

theorem normal_bound (h : FiniteCentreBounds M B cn sn tn dn) (hn : B.Nonneg)
    {w : E} {z : F} (hw : ‖w‖ ≤ B.r) (hz : ‖z‖ ≤ B.tau) :
    ‖ContinuousLinearMap.id ℝ F - normalDerivative M.equation w z‖ ≤ B.q := by
  obtain ⟨hx, hu, hβ, hc, hd, hL3, ht3, ht4, hL5, ha2, hL3a, heP, heU⟩ := hn
  have hr := (norm_nonneg _).trans hw
  have htau := (norm_nonneg _).trans hz
  have hbase : 0 ≤ B.base := by unfold Bounds.base; positivity
  have hcn i : 0 ≤ cn i := (norm_nonneg _).trans (h.coeff i)
  have hdn i : 0 ≤ dn i := (norm_nonneg _).trans (h.normal i)
  have hsn i : 0 ≤ sn i := (norm_nonneg _).trans (h.linear i)
  have htn i : 0 ≤ tn i := (show 0 ≤ ‖M.quadratic i‖ by positivity).trans (h.quadratic i)
  have hp : ∀ i, |M.phase i (w, 0)| ≤ sn i * B.r + tn i * B.r ^ 2 / 2 := by
    intro i
    simp only [FourierModel.phase, map_zero, add_zero]
    apply (abs_add_le _ _).trans
    rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
    exact add_le_add (h.linear_apply hw i) (div_le_div_of_nonneg_right (h.quadratic_apply hw i) (by norm_num))
  have hparam : ‖normalDerivative M.equation w 0 - normalDerivative M.equation 0 0‖ ≤ B.qbase := by
    have hh := fourier_normal_base_bound M.normalCoeff (fun i => M.linear i w)
      (fun i => M.quadratic i w w) (fun i => cn i * dn i) sn tn hr hc ha2 hL3a
      h.normal_coeff (h.linear_apply hw) (h.quadratic_apply hw) h.normal_three
      ((h.normal_one w).trans (by gcongr)) ((h.normal_two w).trans (by gcongr))
    simpa only [← M.normal_parameter_ray, zero_smul, one_smul, Bounds.qbase] using hh
  have htube : ‖normalDerivative M.equation w z - normalDerivative M.equation w 0‖ ≤
      (B.d + B.L3 * B.x ^ 2 * B.base) * B.tau + B.L3 * B.x ^ 3 * B.tau ^ 2 / 2 := by
    have hh := M.normal_tube_bound w z cn dn (fun i => sn i * B.r + tn i * B.r ^ 2 / 2)
      hd hcn hdn h.normal_coeff h.normal hp (h.tube_centre z)
    apply hh.trans
    gcongr
    · exact h.tube_variation
    · exact h.tube_two
  rw [← h.normal_zero, norm_sub_rev]
  calc
    _ ≤ ‖normalDerivative M.equation w z - normalDerivative M.equation w 0‖ +
        ‖normalDerivative M.equation w 0 - normalDerivative M.equation 0 0‖ :=
      norm_sub_le_norm_sub_add_norm_sub _ _ _
    _ ≤ B.q := by unfold Bounds.q; linarith

/-- All uniform hypotheses of the contraction theorem follow from the finite
centre data; analyticity follows from the explicit Fourier model. -/
theorem analytic_projected_family [CompleteSpace E]
    (h : FiniteCentreBounds M B cn sn tn dn) (hn : B.Nonneg)
    (hr : 0 < B.r) (hτ : 0 < B.tau) (hq : B.q < 1)
    (hb : B.b0 + B.q * B.tau < B.tau) :
    ∃ z : E → F,
      (∀ w ∈ closedBall (0 : E) B.r, ‖z w‖ ≤ B.b0 + B.q * B.tau ∧ ‖z w‖ < B.tau ∧
        M.equation (w, z w) = 0 ∧
        ∀ z', ‖z'‖ ≤ B.tau → M.equation (w, z') = 0 → z' = z w) ∧
      AnalyticOnNhd ℝ z (ball (0 : E) B.r) ∧ ContinuousOn z (closedBall (0 : E) B.r) := by
  have hq0 : 0 ≤ B.q := by
    obtain ⟨hx, hu, hβ, hc, hd, hL3, ht3, ht4, hL5, ha2, hL3a, heP, heU⟩ := hn
    unfold Bounds.q Bounds.qbase Bounds.base
    positivity
  apply WholeBall.analytic_projected_family M.equation hτ.le hq0 hq
  · intro w hw
    exact h.residual_bound hn (by simpa [mem_closedBall, dist_zero_right] using hw)
  · intro w _ z _
    exact M.contDiff_equation.contDiffAt.analyticAt
  · intro w hw z hz
    exact h.normal_bound hn (by simpa [mem_closedBall, dist_zero_right] using hw)
      (by simpa [mem_closedBall, dist_zero_right] using hz)
  · exact hb

/-- Z §4 with every uniform derivative premise replaced by finite centre
bounds. The full-residual germ remains explicit, so projected roots are never
identified with full roots without the analytic continuation argument. -/
theorem analytic_full_family [CompleteSpace E]
    {D : Type*} [NormedAddCommGroup D] [NormedSpace ℝ D]
    (h : FiniteCentreBounds M B cn sn tn dn) (hn : B.Nonneg)
    (hr : 0 < B.r) (hτ : 0 < B.tau) (hq : B.q < 1)
    (hb : B.b0 + B.q * B.tau < B.tau)
    (H : E × F → D) (ha : ∀ p, AnalyticAt ℝ H p)
    (hproj : ∀ w z, H (w, z) = 0 → M.equation (w, z) = 0)
    (zs : E → F) (hsa : AnalyticAt ℝ zs 0) (hs0 : zs 0 = 0)
    (hs : ∀ᶠ w in 𝓝 (0 : E), H (w, zs w) = 0) :
    ∃ z : E → F,
      (∀ w ∈ closedBall (0 : E) B.r, ‖z w‖ < B.tau ∧ H (w, z w) = 0) ∧
      AnalyticOnNhd ℝ z (ball (0 : E) B.r) ∧ ContinuousOn z (closedBall (0 : E) B.r) := by
  obtain ⟨z, hz, hza, hzc⟩ := h.analytic_projected_family hn hr hτ hq hb
  have hfull := full_residual_of_local_germ hr hτ (fun w hw => (hz w hw).2.1.le)
    (fun w hw => (hz w hw).2.2.2) hza hzc (fun w _ z _ => ha (w, z))
    hproj hsa hs0 hs
  exact ⟨z, fun w hw => ⟨(hz w hw).2.1, hfull w hw⟩, hza, hzc⟩

end FiniteCentreBounds

end NoFourMUBs.SeedAtlas.Method.WholeBall
