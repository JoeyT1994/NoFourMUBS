import NoFourMUBs.NormalBound
import Mathlib.Analysis.Real.Pi.Bounds

/-!
# Stage C: basic objects (`proof/atlas/STAGEC.md`)

Stage C works in **cycles**: `e(t) = exp(2πit)`.  A vector unbiased to the standard basis is, after scaling by
`√6`, a *flat* vector `w : I6 → ℂ` (all entries of modulus one).

* `e`, with `‖e t‖ = 1`, `‖e t − 1‖ ≤ 2π|t|` and `‖e t − 1 − 2πit‖ ≤ 2π²t²`;
* `ip w w' = Σ_j w̄_j w'_j` (unscaled inner product); `w ⟂ w'` iff `ip = 0`, unbiased iff `‖ip‖² = 6`;
* a *label* `𝔅(v, s)` (C3) is the set of `λ e(v + x)` with `|λ| = 1`, `Σx = 0`, `‖x‖ ≤ s`;
* **distinct labels** (C3): two vectors of one label with `s < 1/10` have `‖ip‖ > √6`, so they are neither
  orthogonal nor unbiased.
-/

open Matrix Hadamard6

namespace NoFourMUBs.StageC

open Real in
/-- `e(t) = exp(2πit)`. -/
noncomputable def e (t : ℝ) : ℂ := Complex.exp (((2 * π * t : ℝ) : ℂ) * Complex.I)

lemma norm_e (t : ℝ) : ‖e t‖ = 1 := by rw [e]; exact Complex.norm_exp_ofReal_mul_I _

lemma e_add (s t : ℝ) : e (s + t) = e s * e t := by
  rw [e, e, e, ← Complex.exp_add]; congr 1; push_cast; ring

lemma star_e (t : ℝ) : star (e t) = e (-t) := by
  rw [e, e, star_exp_mul_I]; congr 3; ring

lemma norm_e_sub_one_le (t : ℝ) : ‖e t - 1‖ ≤ 2 * Real.pi * |t| := by
  have h := Real.norm_exp_I_mul_ofReal_sub_one_le (x := 2 * Real.pi * t)
  rw [e, mul_comm]
  calc _ ≤ ‖2 * Real.pi * t‖ := h
    _ = 2 * Real.pi * |t| := by
      rw [Real.norm_eq_abs, abs_mul, abs_of_pos (by positivity : (0:ℝ) < 2 * Real.pi)]

lemma norm_e_sub_lin_le (t : ℝ) :
    ‖e t - 1 - ((2 * Real.pi * t : ℝ) : ℂ) * Complex.I‖ ≤ 2 * Real.pi ^ 2 * t ^ 2 := by
  have h := norm_exp_mul_I_sub_le (2 * Real.pi * t)
  rw [e]
  calc _ ≤ (2 * Real.pi * t) ^ 2 / 2 := h
    _ = 2 * Real.pi ^ 2 * t ^ 2 := by ring

/-! ### Real vectors -/

/-- Euclidean norm of a real 6-vector. -/
noncomputable def vnorm (x : I6 → ℝ) : ℝ := Real.sqrt (∑ j, x j ^ 2)

lemma vnorm_nonneg (x : I6 → ℝ) : 0 ≤ vnorm x := Real.sqrt_nonneg _

/-- `‖x‖₁ ≤ √6 ‖x‖₂`. -/
lemma l1_le_sqrt6_vnorm (x : I6 → ℝ) : ∑ j, |x j| ≤ Real.sqrt 6 * vnorm x := by
  have hcs := Finset.sum_mul_sq_le_sq_mul_sq Finset.univ (fun _ => (1 : ℝ)) (fun j => |x j|)
  simp only [one_mul, one_pow, Finset.sum_const, Finset.card_univ, card_I6, sq_abs] at hcs
  rw [vnorm, ← Real.sqrt_mul (by norm_num)]
  apply Real.le_sqrt_of_sq_le
  simpa using hcs

/-! ### Flat vectors, inner products, labels -/

/-- All entries have modulus one (a basis vector unbiased to `I`, scaled by `√6`). -/
def Flat (w : I6 → ℂ) : Prop := ∀ j, ‖w j‖ = 1

/-- The unscaled inner product `Σ_j w̄_j w'_j`. -/
def ip (w w' : I6 → ℂ) : ℂ := ∑ j, star (w j) * w' j

/-- The label `𝔅(v, s)`: vectors `λ e(v + x)` with `|λ| = 1`, `Σx = 0`, `‖x‖ ≤ s`. -/
def InLabel (v : I6 → ℝ) (s : ℝ) (w : I6 → ℂ) : Prop :=
  ∃ c : ℂ, ‖c‖ = 1 ∧ ∃ x : I6 → ℝ, ∑ j, x j = 0 ∧ vnorm x ≤ s ∧ ∀ j, w j = c * e (v j + x j)

/-- `|Σ_j e(z_j)| ≥ 6 − 2π ‖z‖₁`. -/
lemma norm_sum_e_ge (z : I6 → ℝ) : 6 - 2 * Real.pi * ∑ j, |z j| ≤ ‖∑ j, e (z j)‖ := by
  have h1 : ‖∑ j, (e (z j) - 1)‖ ≤ 2 * Real.pi * ∑ j, |z j| := by
    rw [Finset.mul_sum]
    exact (norm_sum_le _ _).trans (Finset.sum_le_sum fun j _ => norm_e_sub_one_le (z j))
  have h2 : ∑ j, e (z j) = (6 : ℂ) + ∑ j, (e (z j) - 1) := by
    rw [Finset.sum_sub_distrib]; simp [Finset.card_univ]
  have h3 : ‖(6 : ℂ)‖ ≤ ‖∑ j, e (z j)‖ + ‖∑ j, (e (z j) - 1)‖ := by
    have := norm_sub_le (∑ j, e (z j)) (∑ j, (e (z j) - 1))
    have e2 : ∑ j, e (z j) - ∑ j, (e (z j) - 1) = 6 := by rw [h2]; ring
    rwa [e2] at this
  simp only [Complex.norm_ofNat] at h3
  linarith

lemma star_e_mul_e (a b : ℝ) : star (e a) * e b = e (b - a) := by
  rw [star_e, ← e_add]; congr 1; ring

/-- **Distinct labels (C3).**  Two vectors of one label of radius `s < 1/10` have `‖ip‖ > √6`. -/
theorem norm_ip_gt_of_inLabel {v : I6 → ℝ} {s : ℝ} {w w' : I6 → ℂ} (hs : s < 1 / 10)
    (hw : InLabel v s w) (hw' : InLabel v s w') : Real.sqrt 6 < ‖ip w w'‖ := by
  obtain ⟨c, hc, x, -, hx, hwx⟩ := hw
  obtain ⟨c', hc', x', -, hx', hwx'⟩ := hw'
  have hip : ip w w' = star c * c' * ∑ j, e (x' j - x j) := by
    simp only [ip, hwx, hwx', Finset.mul_sum]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [star_mul', show star c * star (e (v j + x j)) * (c' * e (v j + x' j)) =
      star c * c' * (star (e (v j + x j)) * e (v j + x' j)) by ring, star_e_mul_e]
    congr 2; ring
  have hnorm : ‖ip w w'‖ = ‖∑ j, e (x' j - x j)‖ := by
    rw [hip, norm_mul, norm_mul, norm_star, hc, hc', one_mul, one_mul]
  have hz : ∑ j, |x' j - x j| ≤ Real.sqrt 6 * (2 * s) := by
    have h1 : ∑ j, |x' j - x j| ≤ ∑ j, |x' j| + ∑ j, |x j| := by
      rw [← Finset.sum_add_distrib]; exact Finset.sum_le_sum fun j _ => abs_sub _ _
    have h2 := l1_le_sqrt6_vnorm x
    have h3 := l1_le_sqrt6_vnorm x'
    have h6 : 0 ≤ Real.sqrt 6 := Real.sqrt_nonneg 6
    nlinarith
  have hlow := norm_sum_e_ge (fun j => x' j - x j)
  have hr2 : Real.sqrt 6 ^ 2 = 6 := Real.sq_sqrt (by norm_num)
  have hr0 : 0 < Real.sqrt 6 := Real.sqrt_pos.mpr (by norm_num)
  have hr : Real.sqrt 6 < 2.45 := by nlinarith
  have hpi := Real.pi_lt_d2
  have hpi0 := Real.pi_pos
  rw [hnorm]
  have hA := mul_le_mul_of_nonneg_left hz (by positivity : (0:ℝ) ≤ 2 * Real.pi)
  have hps : Real.pi * s < 0.315 := by nlinarith
  have hB : 2 * Real.pi * (Real.sqrt 6 * (2 * s)) < 1.26 * Real.sqrt 6 := by
    nlinarith [mul_lt_mul_of_pos_right hps hr0]
  nlinarith

end NoFourMUBs.StageC
