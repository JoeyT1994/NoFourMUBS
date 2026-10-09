import NoFourMUBs.StageC.Basic

/-!
# Stage C, C1: bins

A bin of half-width `a` around a midpoint `u` (with `u₀ = 0`) contains the phase vectors `u + d` with `d₀ = 0` and
`|d_j| ≤ a`.  Up to a global phase such a vector is `e(u + x)` with `x = d − mean(d)`, and

  `Σx = 0`, `‖x‖ ≤ √(29/6)·a`, `‖x‖₁ ≤ 5a`, `‖x‖_∞ ≤ 3a/2`.

The bound on `‖x‖²` is tight at the cube vertices with odd coordinate sum; its proof uses the multilinear
interpolation of `−2Σ_{i<j} y_i y_j` over the 32 vertices of `[−1, 1]⁵` (`neg_two_pairs_le`).
-/

open Matrix Hadamard6

namespace NoFourMUBs.StageC

/-- The normalised coordinate (index `0` of `STAGEC.md`). -/
def j0 : I6 := Sum.inl 0

/-- `−2 Σ_{i<j} y_i y_j ≤ 4` on `[−1, 1]⁵`: a convex combination of its vertex values `5 − (Σv)² ≤ 4`. -/
lemma neg_two_pairs_le (y1 y2 y3 y4 y5 : ℝ) (p1 : 0 ≤ 1 + y1) (m1 : 0 ≤ 1 - y1) (p2 : 0 ≤ 1 + y2)
    (m2 : 0 ≤ 1 - y2) (p3 : 0 ≤ 1 + y3) (m3 : 0 ≤ 1 - y3) (p4 : 0 ≤ 1 + y4) (m4 : 0 ≤ 1 - y4)
    (p5 : 0 ≤ 1 + y5) (m5 : 0 ≤ 1 - y5) :
    -2 * (y1*y2+y1*y3+y1*y4+y1*y5+y2*y3+y2*y4+y2*y5+y3*y4+y3*y5+y4*y5) ≤ 4 := by
  linarith [(mul_nonneg (mul_nonneg (mul_nonneg (mul_nonneg p1 p2) p3) p4) p5),
    (mul_nonneg (mul_nonneg (mul_nonneg (mul_nonneg p1 p2) p3) p4) m5),
    (mul_nonneg (mul_nonneg (mul_nonneg (mul_nonneg p1 p2) p3) m4) p5),
    (mul_nonneg (mul_nonneg (mul_nonneg (mul_nonneg p1 p2) p3) m4) m5),
    (mul_nonneg (mul_nonneg (mul_nonneg (mul_nonneg p1 p2) m3) p4) p5),
    (mul_nonneg (mul_nonneg (mul_nonneg (mul_nonneg p1 p2) m3) p4) m5),
    (mul_nonneg (mul_nonneg (mul_nonneg (mul_nonneg p1 p2) m3) m4) p5),
    (mul_nonneg (mul_nonneg (mul_nonneg (mul_nonneg p1 p2) m3) m4) m5),
    (mul_nonneg (mul_nonneg (mul_nonneg (mul_nonneg p1 m2) p3) p4) p5),
    (mul_nonneg (mul_nonneg (mul_nonneg (mul_nonneg p1 m2) p3) p4) m5),
    (mul_nonneg (mul_nonneg (mul_nonneg (mul_nonneg p1 m2) p3) m4) p5),
    (mul_nonneg (mul_nonneg (mul_nonneg (mul_nonneg p1 m2) p3) m4) m5),
    (mul_nonneg (mul_nonneg (mul_nonneg (mul_nonneg p1 m2) m3) p4) p5),
    (mul_nonneg (mul_nonneg (mul_nonneg (mul_nonneg p1 m2) m3) p4) m5),
    (mul_nonneg (mul_nonneg (mul_nonneg (mul_nonneg p1 m2) m3) m4) p5),
    (mul_nonneg (mul_nonneg (mul_nonneg (mul_nonneg p1 m2) m3) m4) m5),
    (mul_nonneg (mul_nonneg (mul_nonneg (mul_nonneg m1 p2) p3) p4) p5),
    (mul_nonneg (mul_nonneg (mul_nonneg (mul_nonneg m1 p2) p3) p4) m5),
    (mul_nonneg (mul_nonneg (mul_nonneg (mul_nonneg m1 p2) p3) m4) p5),
    (mul_nonneg (mul_nonneg (mul_nonneg (mul_nonneg m1 p2) p3) m4) m5),
    (mul_nonneg (mul_nonneg (mul_nonneg (mul_nonneg m1 p2) m3) p4) p5),
    (mul_nonneg (mul_nonneg (mul_nonneg (mul_nonneg m1 p2) m3) p4) m5),
    (mul_nonneg (mul_nonneg (mul_nonneg (mul_nonneg m1 p2) m3) m4) p5),
    (mul_nonneg (mul_nonneg (mul_nonneg (mul_nonneg m1 p2) m3) m4) m5),
    (mul_nonneg (mul_nonneg (mul_nonneg (mul_nonneg m1 m2) p3) p4) p5),
    (mul_nonneg (mul_nonneg (mul_nonneg (mul_nonneg m1 m2) p3) p4) m5),
    (mul_nonneg (mul_nonneg (mul_nonneg (mul_nonneg m1 m2) p3) m4) p5),
    (mul_nonneg (mul_nonneg (mul_nonneg (mul_nonneg m1 m2) p3) m4) m5),
    (mul_nonneg (mul_nonneg (mul_nonneg (mul_nonneg m1 m2) m3) p4) p5),
    (mul_nonneg (mul_nonneg (mul_nonneg (mul_nonneg m1 m2) m3) p4) m5),
    (mul_nonneg (mul_nonneg (mul_nonneg (mul_nonneg m1 m2) m3) m4) p5),
    (mul_nonneg (mul_nonneg (mul_nonneg (mul_nonneg m1 m2) m3) m4) m5)]

/-- `6Σd² − (Σd)² ≤ 29a²` on `[−a, a]⁵`. -/
lemma six_sumsq_sub_sq_le {a d1 d2 d3 d4 d5 : ℝ} (ha : 0 ≤ a) (h1 : |d1| ≤ a) (h2 : |d2| ≤ a)
    (h3 : |d3| ≤ a) (h4 : |d4| ≤ a) (h5 : |d5| ≤ a) :
    6 * (d1^2+d2^2+d3^2+d4^2+d5^2) - (d1+d2+d3+d4+d5)^2 ≤ 29 * a^2 := by
  rcases ha.eq_or_lt with h0 | hpos
  · subst h0
    simp only [abs_nonpos_iff] at h1 h2 h3 h4 h5
    subst h1 h2 h3 h4 h5; norm_num
  have key := neg_two_pairs_le (d1/a) (d2/a) (d3/a) (d4/a) (d5/a)
  have b : ∀ d : ℝ, |d| ≤ a → 0 ≤ 1 + d / a ∧ 0 ≤ 1 - d / a := fun d hd => by
    rcases abs_le.mp hd with ⟨l, r⟩
    constructor
    · rw [← div_self hpos.ne', ← add_div]; exact div_nonneg (by linarith) hpos.le
    · rw [← div_self hpos.ne', ← sub_div]; exact div_nonneg (by linarith) hpos.le
  have k := key (b d1 h1).1 (b d1 h1).2 (b d2 h2).1 (b d2 h2).2 (b d3 h3).1 (b d3 h3).2 (b d4 h4).1
    (b d4 h4).2 (b d5 h5).1 (b d5 h5).2
  have hsq : ∀ d : ℝ, |d| ≤ a → d ^ 2 ≤ a ^ 2 := fun d hd => by
    have := abs_le_abs_of_nonneg (abs_nonneg d) hd
    nlinarith [sq_abs d, abs_nonneg d]
  have e : -2 * (d1/a*(d2/a)+d1/a*(d3/a)+d1/a*(d4/a)+d1/a*(d5/a)+d2/a*(d3/a)+d2/a*(d4/a)+d2/a*(d5/a)
      +d3/a*(d4/a)+d3/a*(d5/a)+d4/a*(d5/a)) =
      (-2 * (d1*d2+d1*d3+d1*d4+d1*d5+d2*d3+d2*d4+d2*d5+d3*d4+d3*d5+d4*d5)) / a ^ 2 := by
    field_simp
  rw [e, div_le_iff₀ (by positivity)] at k
  nlinarith [hsq d1 h1, hsq d2 h2, hsq d3 h3, hsq d4 h4, hsq d5 h5]

/-- The centred displacement `x = d − mean(d)`. -/
noncomputable def centre (d : I6 → ℝ) : I6 → ℝ := fun j => d j - (∑ k, d k) / 6

lemma sum_centre (d : I6 → ℝ) : ∑ j, centre d j = 0 := by
  simp only [centre, Finset.sum_sub_distrib, Finset.sum_const, Finset.card_univ, card_I6, nsmul_eq_mul]
  ring

lemma sum_I6 (f : I6 → ℝ) : ∑ j, f j =
    f (Sum.inl 0) + f (Sum.inl 1) + f (Sum.inl 2) + (f (Sum.inr 0) + f (Sum.inr 1) + f (Sum.inr 2)) := by
  rw [Fintype.sum_sum_type, Fin.sum_univ_three, Fin.sum_univ_three]

/-- **C1.**  For `d₀ = 0` and `|d_j| ≤ a`: `‖x‖² ≤ (29/6)a²`, `‖x‖₁ ≤ 5a`, `‖x‖_∞ ≤ 3a/2`, `x = centre d`. -/
theorem bin_bounds {d : I6 → ℝ} {a : ℝ} (ha : 0 ≤ a) (h0 : d j0 = 0) (hd : ∀ j, |d j| ≤ a) :
    ∑ j, centre d j ^ 2 ≤ 29 / 6 * a ^ 2 ∧ ∑ j, |centre d j| ≤ 5 * a ∧ ∀ j, |centre d j| ≤ 3 / 2 * a := by
  have h0' : d (Sum.inl 0) = 0 := h0
  have b := fun j => abs_le.mp (hd j)
  obtain ⟨l1, r1⟩ := b (Sum.inl 1); obtain ⟨l2, r2⟩ := b (Sum.inl 2)
  obtain ⟨l3, r3⟩ := b (Sum.inr 0); obtain ⟨l4, r4⟩ := b (Sum.inr 1); obtain ⟨l5, r5⟩ := b (Sum.inr 2)
  have hS : ∑ k, d k = d (Sum.inl 1) + d (Sum.inl 2) + d (Sum.inr 0) + d (Sum.inr 1) + d (Sum.inr 2) := by
    rw [sum_I6, h0']; ring
  refine ⟨?_, ?_, ?_⟩
  · have key := six_sumsq_sub_sq_le ha (hd (Sum.inl 1)) (hd (Sum.inl 2)) (hd (Sum.inr 0)) (hd (Sum.inr 1))
      (hd (Sum.inr 2))
    rw [sum_I6]; simp only [centre, hS, h0']
    nlinarith [key]
  · rw [sum_I6]; simp only [centre, hS, h0']
    set A := d (Sum.inl 1); set B := d (Sum.inl 2); set C := d (Sum.inr 0)
    set D := d (Sum.inr 1); set E := d (Sum.inr 2)
    rcases abs_cases (0 - (A + B + C + D + E) / 6) with ⟨e0, -⟩ | ⟨e0, -⟩ <;>
    rcases abs_cases (A - (A + B + C + D + E) / 6) with ⟨e1, -⟩ | ⟨e1, -⟩ <;>
    rcases abs_cases (B - (A + B + C + D + E) / 6) with ⟨e2, -⟩ | ⟨e2, -⟩ <;>
    rcases abs_cases (C - (A + B + C + D + E) / 6) with ⟨e3, -⟩ | ⟨e3, -⟩ <;>
    rcases abs_cases (D - (A + B + C + D + E) / 6) with ⟨e4, -⟩ | ⟨e4, -⟩ <;>
    rcases abs_cases (E - (A + B + C + D + E) / 6) with ⟨e5, -⟩ | ⟨e5, -⟩ <;>
    · rw [e0, e1, e2, e3, e4, e5]; linarith
  · intro j
    rw [centre, hS, abs_le]
    rcases j with j | j <;> fin_cases j <;> simp only [Fin.zero_eta, Fin.mk_one, Fin.reduceFinMk] <;>
      first | (rw [h0']; constructor <;> linarith) | (constructor <;> linarith)

end NoFourMUBs.StageC
