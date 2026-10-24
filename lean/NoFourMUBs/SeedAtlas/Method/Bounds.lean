import Mathlib.Analysis.SpecialFunctions.Complex.LogBounds
import Mathlib.Analysis.Calculus.MeanValue
import Mathlib.Analysis.SpecialFunctions.Complex.Arg

/-!
# One-variable remainder bounds for the C1 method (`proof/seed_atlas/SPEC.md` §2, steps 1 and 4)

* `norm_exp_I_taylor2_le`: for real `x`, `|e^{ix} − 1 − ix + x²/2| ≤ |x|³/6` (the `e^{i·}` rule of step 1), by three
  applications of the fencing theorem `image_norm_le_of_norm_deriv_right_le_deriv_boundary`
  (`|e^{ix} − 1| ≤ |x|`, `|e^{ix} − 1 − ix| ≤ x²/2`).
* `exists_arg_one_add`: for `|u| < 1`, `1 + u = |1 + u| e^{iφ}` with `φ = Im(u − u²/2) + R`,
  `|R| ≤ |u|³/(3(1 − |u|))` (the `arg` rule of step 4), from Mathlib's `Complex.norm_log_sub_logTaylor_le`.
-/

open Complex

noncomputable section

namespace NoFourMUBs.SeedAtlas.Method

/-- The three Taylor remainders of `e^{it}`. -/
def ex0 (t : ℝ) : ℂ := exp (t * I) - 1
def ex1 (t : ℝ) : ℂ := exp (t * I) - 1 - t * I
def ex2 (t : ℝ) : ℂ := exp (t * I) - 1 - t * I + (t : ℂ) ^ 2 / 2

lemma hasDerivAt_exp_mul_I (t : ℝ) : HasDerivAt (fun t : ℝ => exp (t * I)) (I * exp (t * I)) t := by
  have h1 : HasDerivAt (fun t : ℝ => (t : ℂ) * I) I t := by
    simpa using (hasDerivAt_id (t : ℝ)).ofReal_comp.mul_const I
  have := h1.cexp
  simpa [mul_comm] using this

lemma hasDerivAt_ofReal_mul_I (t : ℝ) : HasDerivAt (fun t : ℝ => (t : ℂ) * I) I t := by
  simpa using (hasDerivAt_id (t : ℝ)).ofReal_comp.mul_const I

lemma hasDerivAt_ex0 (t : ℝ) : HasDerivAt ex0 (I * exp (t * I)) t :=
  (hasDerivAt_exp_mul_I t).sub_const 1

lemma hasDerivAt_ex1 (t : ℝ) : HasDerivAt ex1 (I * ex0 t) t := by
  have := ((hasDerivAt_exp_mul_I t).sub_const 1).sub (hasDerivAt_ofReal_mul_I t)
  have e : I * ex0 t = I * exp (t * I) - I := by simp only [ex0]; ring
  rw [e]; exact this

lemma hasDerivAt_rsq (t : ℝ) : HasDerivAt (fun t : ℝ => t ^ 2 / 2) t t :=
  ((hasDerivAt_pow 2 t).div_const 2).congr_deriv (by norm_num)

lemma hasDerivAt_rcube (t : ℝ) : HasDerivAt (fun t : ℝ => t ^ 3 / 6) (t ^ 2 / 2) t :=
  ((hasDerivAt_pow 3 t).div_const 6).congr_deriv (by norm_num; ring)

lemma hasDerivAt_sq_half (t : ℝ) : HasDerivAt (fun t : ℝ => (t : ℂ) ^ 2 / 2) (t : ℂ) t := by
  have := (hasDerivAt_rsq t).ofReal_comp
  refine this.congr_of_eventuallyEq (Filter.Eventually.of_forall fun y => ?_)
  push_cast; ring

lemma hasDerivAt_ex2 (t : ℝ) : HasDerivAt ex2 (I * ex1 t) t := by
  have := (((hasDerivAt_exp_mul_I t).sub_const 1).sub (hasDerivAt_ofReal_mul_I t)).add (hasDerivAt_sq_half t)
  have e : I * ex1 t = I * exp (t * I) - I + t := by
    simp only [ex1]; linear_combination (-(t : ℂ)) * I_sq
  rw [e]; exact this

lemma norm_ex0_nonneg {x : ℝ} (hx : 0 ≤ x) : ‖ex0 x‖ ≤ x := by
  have := image_norm_le_of_norm_deriv_right_le_deriv_boundary (f := ex0) (a := 0) (b := x)
    (f' := fun t => I * exp (t * I)) (B := fun t => t) (B' := fun _ => 1)
    (fun t _ => (hasDerivAt_ex0 t).continuousAt.continuousWithinAt)
    (fun t _ => (hasDerivAt_ex0 t).hasDerivWithinAt) (by simp [ex0]) (fun t => hasDerivAt_id' t)
    (fun t _ => by rw [norm_mul, norm_I, one_mul, norm_exp_ofReal_mul_I])
  exact this ⟨hx, le_rfl⟩

lemma norm_ex1_nonneg {x : ℝ} (hx : 0 ≤ x) : ‖ex1 x‖ ≤ x ^ 2 / 2 := by
  have := image_norm_le_of_norm_deriv_right_le_deriv_boundary (f := ex1) (a := 0) (b := x)
    (f' := fun t => I * ex0 t) (B := fun t => t ^ 2 / 2) (B' := fun t => t)
    (fun t _ => (hasDerivAt_ex1 t).continuousAt.continuousWithinAt)
    (fun t _ => (hasDerivAt_ex1 t).hasDerivWithinAt) (by simp [ex1]) hasDerivAt_rsq
    (fun t ht => by rw [norm_mul, norm_I, one_mul]; exact norm_ex0_nonneg ht.1)
  exact this ⟨hx, le_rfl⟩

lemma norm_ex2_nonneg {x : ℝ} (hx : 0 ≤ x) : ‖ex2 x‖ ≤ x ^ 3 / 6 := by
  have := image_norm_le_of_norm_deriv_right_le_deriv_boundary (f := ex2) (a := 0) (b := x)
    (f' := fun t => I * ex1 t) (B := fun t => t ^ 3 / 6) (B' := fun t => t ^ 2 / 2)
    (fun t _ => (hasDerivAt_ex2 t).continuousAt.continuousWithinAt)
    (fun t _ => (hasDerivAt_ex2 t).hasDerivWithinAt) (by simp [ex2]) hasDerivAt_rcube
    (fun t ht => by rw [norm_mul, norm_I, one_mul]; exact norm_ex1_nonneg ht.1)
  exact this ⟨hx, le_rfl⟩

lemma ex2_neg (x : ℝ) : ex2 (-x) = (starRingEnd ℂ) (ex2 x) := by
  simp only [ex2, map_add, map_sub, map_one, map_mul, map_div₀, map_pow, ← exp_conj, conj_ofReal, conj_I,
    map_ofNat]
  push_cast; ring_nf

/-- **The `e^{i·}` remainder:** `|e^{ix} − 1 − ix + x²/2| ≤ |x|³/6`. -/
theorem norm_exp_I_taylor2_le (x : ℝ) :
    ‖exp (x * I) - 1 - x * I + (x : ℂ) ^ 2 / 2‖ ≤ |x| ^ 3 / 6 := by
  show ‖ex2 x‖ ≤ _
  rcases le_or_gt 0 x with hx | hx
  · rw [abs_of_nonneg hx]; exact norm_ex2_nonneg hx
  · have := norm_ex2_nonneg (neg_nonneg.2 hx.le)
    rw [ex2_neg, norm_conj] at this
    rwa [abs_of_neg hx]

/-- **The `arg` rule:** for `|u| < 1`, `1 + u = |1 + u| e^{i (Im(u − u²/2) + R)}` with `|R| ≤ |u|³/(3(1 − |u|))`. -/
theorem exists_arg_one_add {u : ℂ} (hu : ‖u‖ < 1) :
    ∃ R : ℝ, |R| ≤ ‖u‖ ^ 3 / (3 * (1 - ‖u‖)) ∧
      1 + u = (‖1 + u‖ : ℂ) * exp ((((u - u ^ 2 / 2).im + R : ℝ) : ℂ) * I) := by
  have h := norm_log_sub_logTaylor_le 2 hu
  have hT : logTaylor (2 + 1) u = u - u ^ 2 / 2 := by
    simp [logTaylor, Finset.sum_range_succ]; ring
  rw [hT] at h
  refine ⟨(log (1 + u) - (u - u ^ 2 / 2)).im, ?_, ?_⟩
  · have h1 : 0 < 1 - ‖u‖ := by linarith
    calc |(log (1 + u) - (u - u ^ 2 / 2)).im| ≤ ‖log (1 + u) - (u - u ^ 2 / 2)‖ := abs_im_le_norm _
      _ ≤ ‖u‖ ^ (2 + 1) * (1 - ‖u‖)⁻¹ / (2 + 1) := by exact_mod_cast h
      _ = ‖u‖ ^ 3 / (3 * (1 - ‖u‖)) := by field_simp; norm_num
  · have hne : 1 + u ≠ 0 := by
      intro h0
      have : u = -1 := by linear_combination h0
      rw [this, norm_neg, norm_one] at hu; exact lt_irrefl _ hu
    have e1 : ((u - u ^ 2 / 2).im + (log (1 + u) - (u - u ^ 2 / 2)).im) = (log (1 + u)).im := by
      simp only [sub_im]; ring
    rw [e1, log_im]
    exact (Complex.norm_mul_exp_arg_mul_I (1 + u)).symm
