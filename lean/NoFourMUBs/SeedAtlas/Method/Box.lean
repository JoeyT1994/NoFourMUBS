import NoFourMUBs.SeedAtlas.Method.TaylorModel
import Mathlib.Analysis.Convex.Jensen

/-!
# The bound per box (`proof/seed_atlas/SPEC.md` §2, step 5)

* `le_of_vertices`: a convex function on `ℝᵈ` is bounded on the box `∏ [−hⱼ, hⱼ]` by its maximum over the `2ᵈ`
  vertices (`vertex h s`, `sⱼ ∈ {±}`).
* `box_bound`: in any normed space (for C1: `RMat6` with the Frobenius norm), a residual
  `a + Σ uⱼ bⱼ + Σ uⱼ u_l H_jl + e` with `‖e‖ ≤ ρ` is bounded on the box by
  `max_vertices ‖a + Σ vⱼ bⱼ‖ + Σ ‖H_jl‖ hⱼ h_l + ρ` (the affine part is convex in `u`).
-/

open Set

noncomputable section

namespace NoFourMUBs.SeedAtlas.Method

variable {d : ℕ}

/-- The vertex `(±hⱼ)` of the box, with signs `s`. -/
def vertex (h : Fin d → ℝ) (s : Fin d → Bool) : Fin d → ℝ := fun j => if s j then h j else -h j

/-- **Convex functions are bounded on a box by their values at the vertices.** -/
theorem le_of_vertices {f : (Fin d → ℝ) → ℝ} (hf : ConvexOn ℝ univ f) {h : Fin d → ℝ} {M : ℝ}
    (hv : ∀ s, f (vertex h s) ≤ M) {u : Fin d → ℝ} (hu : InBox h u) : f u ≤ M := by
  suffices key : ∀ S : Finset (Fin d), ∀ u, InBox h u → (∀ j ∉ S, u j = h j ∨ u j = -h j) → f u ≤ M from
    key Finset.univ u hu fun j hj => absurd (Finset.mem_univ j) hj
  intro S
  induction S using Finset.induction_on with
  | empty =>
    intro u _ hj
    have : u = vertex h fun j => decide (u j = h j) := by
      funext j
      simp only [vertex]
      by_cases e : u j = h j
      · simp [e]
      · simp only [e, decide_false, Bool.false_eq_true, if_false]
        exact (hj j (Finset.notMem_empty j)).resolve_left e
    rw [this]; exact hv _
  | insert k S hk ih =>
    intro u hu hj
    set up := Function.update u k (h k)
    set um := Function.update u k (-h k)
    have hk0 : 0 ≤ h k := hu.h_nonneg k
    have hbox : ∀ x, |x| ≤ h k → InBox h (Function.update u k x) := by
      intro x hx j
      by_cases e : j = k
      · subst e; simpa using hx
      · simp only [Function.update_of_ne e]; exact hu j
    have hfree : ∀ x, (x = h k ∨ x = -h k) → ∀ j ∉ S, Function.update u k x j = h j ∨
        Function.update u k x j = -h j := by
      intro x hx j hjS
      by_cases e : j = k
      · subst e; simpa using hx
      · simp only [Function.update_of_ne e]; exact hj j (by simp [e, hjS])
    have hup : f up ≤ M := ih up (hbox _ (by rw [abs_of_nonneg hk0])) (hfree _ (Or.inl rfl))
    have hum : f um ≤ M := ih um (hbox _ (by rw [abs_neg, abs_of_nonneg hk0])) (hfree _ (Or.inr rfl))
    have hseg : u ∈ segment ℝ um up := by
      rcases hk0.lt_or_eq with hpos | hzero
      · refine ⟨(h k - u k) / (2 * h k), (h k + u k) / (2 * h k), ?_, ?_, ?_, ?_⟩
        · have := (abs_le.1 (hu k)).2; apply div_nonneg <;> linarith
        · have := (abs_le.1 (hu k)).1; apply div_nonneg <;> linarith
        · field_simp; ring
        · funext j
          by_cases e : j = k
          · subst e; simp only [Pi.add_apply, Pi.smul_apply, smul_eq_mul, up, um, Function.update_self]
            field_simp; ring
          · simp only [Pi.add_apply, Pi.smul_apply, smul_eq_mul, up, um, Function.update_of_ne e]
            rw [← add_mul]; field_simp; ring
      · have : u k = h k := by have := hu k; rw [← hzero] at this ⊢; exact abs_nonpos_iff.1 this
        have e : up = u := by simp only [up]; rw [← this, Function.update_eq_self]
        rw [← e]; exact right_mem_segment ℝ um up
    exact (hf.le_max_of_mem_segment trivial trivial hseg).trans (max_le hum hup)

variable {E : Type*} [SeminormedAddCommGroup E] [NormedSpace ℝ E]

lemma convexOn_norm_affine (a : E) (B : Fin d → E) :
    ConvexOn ℝ univ fun u : Fin d → ℝ => ‖a + ∑ j, u j • B j‖ := by
  refine ⟨convex_univ, fun x _ y _ s t hs ht hst => ?_⟩
  have e1 : ∑ j, (s • x + t • y) j • B j = s • ∑ j, x j • B j + t • ∑ j, y j • B j := by
    simp only [Pi.add_apply, Pi.smul_apply, smul_eq_mul, add_smul, mul_smul, Finset.sum_add_distrib,
      Finset.smul_sum]
  have e : a + ∑ j, (s • x + t • y) j • B j = s • (a + ∑ j, x j • B j) + t • (a + ∑ j, y j • B j) := by
    rw [e1, smul_add, smul_add]
    conv_lhs => rw [show a = s • a + t • a by rw [← add_smul, hst, one_smul]]
    abel
  simp only [smul_eq_mul]
  rw [e]
  refine (norm_add_le _ _).trans ?_
  rw [norm_smul, norm_smul, Real.norm_of_nonneg hs, Real.norm_of_nonneg ht]

/-- **The bound per box** (SPEC step 5). -/
theorem box_bound (a : E) (B : Fin d → E) (H : Fin d → Fin d → E) {h : Fin d → ℝ} {M : ℝ}
    (hv : ∀ s, ‖a + ∑ j, vertex h s j • B j‖ ≤ M) {u : Fin d → ℝ} (hu : InBox h u) (e : E) {ρ : ℝ}
    (he : ‖e‖ ≤ ρ) :
    ‖a + ∑ j, u j • B j + ∑ j, ∑ l, (u j * u l) • H j l + e‖ ≤ M + ∑ j, ∑ l, ‖H j l‖ * (h j * h l) + ρ := by
  have h1 : ‖a + ∑ j, u j • B j‖ ≤ M := le_of_vertices (convexOn_norm_affine a B) hv hu
  have h2 : ‖∑ j, ∑ l, (u j * u l) • H j l‖ ≤ ∑ j, ∑ l, ‖H j l‖ * (h j * h l) :=
    (norm_sum_le _ _).trans (Finset.sum_le_sum fun j _ => (norm_sum_le _ _).trans
      (Finset.sum_le_sum fun l _ => by
        rw [norm_smul, Real.norm_eq_abs, abs_mul, mul_comm]
        exact mul_le_mul_of_nonneg_left (mul_le_mul (hu j) (hu l) (abs_nonneg _) (hu.h_nonneg j))
          (norm_nonneg _)))
  have n1 := norm_add_le (a + ∑ j, u j • B j + ∑ j, ∑ l, (u j * u l) • H j l) e
  have n2 := norm_add_le (a + ∑ j, u j • B j) (∑ j, ∑ l, (u j * u l) • H j l)
  linarith

end NoFourMUBs.SeedAtlas.Method
