import NoFourMUBs.StageC.Cover

/-!
# Stage C, C2(a): the direct single-vector test

Cycle coordinates: the Hadamard is `E(P + δ)` with `E(Y)_{ji} = e(Y_{ji})`.  For a bin midpoint `u` and a displacement
`x`, put `q_{ji} = e(u_j − P_{ji})/√6`, `S_i = Σ_j q_{ji}` and `S′_i = Σ_j q_{ji} e(x_j − δ_{ji})`.  Then `e(u + x)` is
unbiased to column `i` iff `|S′_i| = 1`, and

* `|S′_i − S_i| ≤ 2π(‖x‖₁/√6 + ‖δ_{:,i}‖)`;
* `‖S′ − S‖ ≤ 2π(K‖x‖ + ‖δ‖_F)` whenever `K` bounds the operator `z ↦ (Σ_j e(−P_{ji}) z_j / √6)_i`.

The second bound uses the **Frobenius** norm of `δ` (the audit correction of 9 Oct 2026).
-/

open Matrix Hadamard6

namespace NoFourMUBs.StageC

/-- `E(Y)_{ji} = e(Y_{ji})`. -/
noncomputable def E (Y : RMat6) : Mat6 := Matrix.of fun j i => e (Y j i)

/-- Euclidean norm of a complex 6-vector. -/
noncomputable def cnorm (z : I6 → ℂ) : ℝ := vnorm fun i => ‖z i‖

/-- Column norm `‖δ_{:,i}‖`. -/
noncomputable def colnorm (δ : RMat6) (i : I6) : ℝ := vnorm fun j => δ j i

noncomputable def q (P : RMat6) (u : I6 → ℝ) (j i : I6) : ℂ := e (u j - P j i) / ((Real.sqrt 6 : ℝ) : ℂ)

noncomputable def S (P : RMat6) (u : I6 → ℝ) (i : I6) : ℂ := ∑ j, q P u j i

noncomputable def S' (P δ : RMat6) (u x : I6 → ℝ) (i : I6) : ℂ := ∑ j, q P u j i * e (x j - δ j i)

lemma sqrt6_pos : (0 : ℝ) < Real.sqrt 6 := Real.sqrt_pos.mpr (by norm_num)

lemma norm_q (P : RMat6) (u : I6 → ℝ) (j i : I6) : ‖q P u j i‖ = 1 / Real.sqrt 6 := by
  rw [q, norm_div, norm_e, Complex.norm_real, Real.norm_eq_abs, abs_of_pos sqrt6_pos]

/-- `e(u + x)` is unbiased to column `i` of `E(P + δ)` iff `|S′_i| = 1`. -/
lemma colUnb_iff (P δ : RMat6) (u x : I6 → ℝ) :
    ColUnb (E (P + δ)) (fun j => e (u j + x j)) ↔ ∀ i, ‖S' P δ u x i‖ = 1 := by
  have key : ∀ i, ∑ j, star (E (P + δ) j i) * e (u j + x j) =
      ((Real.sqrt 6 : ℝ) : ℂ) * S' P δ u x i := by
    intro i
    simp only [S', q, Finset.mul_sum]
    refine Finset.sum_congr rfl fun j _ => ?_
    have h6 : ((Real.sqrt 6 : ℝ) : ℂ) ≠ 0 := by exact_mod_cast sqrt6_pos.ne'
    rw [E, of_apply, Matrix.add_apply, star_e_mul_e]
    rw [show ((Real.sqrt 6 : ℝ) : ℂ) * (e (u j - P j i) / ((Real.sqrt 6 : ℝ) : ℂ) * e (x j - δ j i)) =
      e (u j - P j i) * e (x j - δ j i) by field_simp, ← e_add]
    congr 1; ring
  have h6sq : Real.sqrt 6 ^ 2 = 6 := Real.sq_sqrt (by norm_num)
  unfold ColUnb
  refine forall_congr' fun i => ?_
  rw [key, norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_pos sqrt6_pos, mul_pow, h6sq]
  constructor
  · intro h
    have : ‖S' P δ u x i‖ ^ 2 = 1 := by linarith
    nlinarith [norm_nonneg (S' P δ u x i)]
  · intro h; rw [h]; norm_num

/-! ### Norm facts -/

lemma vnorm_le_of_abs_le {a b : I6 → ℝ} (h : ∀ i, |a i| ≤ b i) : vnorm a ≤ vnorm b := by
  unfold vnorm
  refine Real.sqrt_le_sqrt (Finset.sum_le_sum fun i _ => ?_)
  have := h i
  nlinarith [abs_nonneg (a i), sq_abs (a i)]

lemma vnorm_smul {c : ℝ} (hc : 0 ≤ c) (a : I6 → ℝ) : vnorm (fun i => c * a i) = c * vnorm a := by
  unfold vnorm
  simp only [mul_pow, ← Finset.mul_sum]
  rw [Real.sqrt_mul (sq_nonneg c), Real.sqrt_sq hc]

lemma vnorm_abs (a : I6 → ℝ) : vnorm (fun i => |a i|) = vnorm a := by
  unfold vnorm; simp only [sq_abs]

lemma cnorm_add_le (z w : I6 → ℂ) : cnorm (z + w) ≤ cnorm z + cnorm w := by
  unfold cnorm
  calc vnorm (fun i => ‖(z + w) i‖) ≤ vnorm ((fun i => ‖z i‖) + fun i => ‖w i‖) :=
        vnorm_le_of_abs_le fun i => by rw [abs_norm]; exact norm_add_le _ _
    _ ≤ _ := vnorm_add_le _ _

lemma cnorm_le_of_norm_le {z : I6 → ℂ} {b : I6 → ℝ} (h : ∀ i, ‖z i‖ ≤ b i) : cnorm z ≤ vnorm b :=
  vnorm_le_of_abs_le fun i => by rw [abs_norm]; exact h i

lemma vnorm_colnorm (δ : RMat6) : vnorm (fun i => colnorm δ i) = frob δ := by
  rw [frob_eq_sqrt, vnorm]
  congr 1
  rw [sumsq, Finset.sum_comm]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [colnorm, vnorm, Real.sq_sqrt (Finset.sum_nonneg fun _ _ => sq_nonneg _)]

lemma l1_col_le (δ : RMat6) (i : I6) : ∑ j, |δ j i| ≤ Real.sqrt 6 * colnorm δ i :=
  l1_le_sqrt6_vnorm fun j => δ j i

/-! ### The increments -/

lemma S'_sub_S (P δ : RMat6) (u x : I6 → ℝ) (i : I6) :
    S' P δ u x i - S P u i = ∑ j, q P u j i * (e (x j - δ j i) - 1) := by
  simp only [S', S, ← Finset.sum_sub_distrib, mul_sub, mul_one]

/-- `|S′_i − S_i| ≤ 2π(‖x‖₁/√6 + ‖δ_{:,i}‖)`. -/
lemma norm_S'_sub_S_le (P δ : RMat6) (u x : I6 → ℝ) (i : I6) :
    ‖S' P δ u x i - S P u i‖ ≤ 2 * Real.pi * ((∑ j, |x j|) / Real.sqrt 6 + colnorm δ i) := by
  rw [S'_sub_S]
  have h6 := sqrt6_pos
  have step : ∀ j, ‖q P u j i * (e (x j - δ j i) - 1)‖ ≤ 2 * Real.pi * (|x j| + |δ j i|) / Real.sqrt 6 := by
    intro j
    rw [norm_mul, norm_q, one_div, inv_mul_eq_div]
    apply div_le_div_of_nonneg_right _ h6.le
    exact (norm_e_sub_one_le _).trans (mul_le_mul_of_nonneg_left (abs_sub _ _) (by positivity))
  calc _ ≤ ∑ j, 2 * Real.pi * (|x j| + |δ j i|) / Real.sqrt 6 :=
        (norm_sum_le _ _).trans (Finset.sum_le_sum fun j _ => step j)
    _ = 2 * Real.pi * ((∑ j, |x j|) / Real.sqrt 6 + (∑ j, |δ j i|) / Real.sqrt 6) := by
        rw [← Finset.sum_div, ← Finset.mul_sum, Finset.sum_add_distrib]; ring
    _ ≤ _ := by
        have := l1_col_le δ i
        have : (∑ j, |δ j i|) / Real.sqrt 6 ≤ colnorm δ i := by rw [div_le_iff₀ h6]; linarith
        gcongr

/-- The operator `z ↦ (Σ_j e(−P_{ji}) z_j / √6)_i`, which is unitarily equivalent to `e(P)ᴴ/√6`. -/
noncomputable def Qop (P : RMat6) (z : I6 → ℂ) : I6 → ℂ :=
  fun i => ∑ j, e (-P j i) * z j / ((Real.sqrt 6 : ℝ) : ℂ)

/-- `‖S′ − S‖ ≤ 2π(K‖x‖ + ‖δ‖_F)`. -/
lemma cnorm_S'_sub_S_le {P δ : RMat6} {u x : I6 → ℝ} {K : ℝ} (hK0 : 0 ≤ K)
    (hK : ∀ z, cnorm (Qop P z) ≤ K * cnorm z) :
    cnorm (fun i => S' P δ u x i - S P u i) ≤ 2 * Real.pi * (K * vnorm x + frob δ) := by
  have h6 := sqrt6_pos
  set z : I6 → ℂ := fun j => e (u j) * (e (x j) - 1)
  set A : I6 → ℂ := Qop P z
  set B : I6 → ℂ := fun i => ∑ j, q P u j i * e (x j) * (e (-δ j i) - 1)
  have hsplit : (fun i => S' P δ u x i - S P u i) = A + B := by
    funext i
    simp only [Pi.add_apply, A, B, z, Qop, S'_sub_S, ← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [q, show x j - δ j i = x j + -δ j i by ring, e_add, show u j - P j i = u j + -P j i by ring, e_add]
    ring
  have hz : cnorm z ≤ 2 * Real.pi * vnorm x := by
    rw [← vnorm_abs x, ← vnorm_smul (by positivity)]
    refine cnorm_le_of_norm_le fun j => ?_
    simp only [z, norm_mul, norm_e, one_mul]
    exact norm_e_sub_one_le _
  have hA : cnorm A ≤ K * (2 * Real.pi * vnorm x) := (hK z).trans (mul_le_mul_of_nonneg_left hz hK0)
  have hB : cnorm B ≤ 2 * Real.pi * frob δ := by
    rw [← vnorm_colnorm, ← vnorm_smul (by positivity)]
    refine cnorm_le_of_norm_le fun i => ?_
    calc ‖B i‖ ≤ ∑ j, 2 * Real.pi * |δ j i| / Real.sqrt 6 := by
          refine (norm_sum_le _ _).trans (Finset.sum_le_sum fun j _ => ?_)
          rw [norm_mul, norm_mul, norm_q, norm_e, mul_one, one_div, inv_mul_eq_div]
          apply div_le_div_of_nonneg_right _ h6.le
          have := norm_e_sub_one_le (-δ j i)
          rwa [abs_neg] at this
      _ = 2 * Real.pi * ((∑ j, |δ j i|) / Real.sqrt 6) := by
          rw [← Finset.sum_div, ← Finset.mul_sum]; ring
      _ ≤ 2 * Real.pi * colnorm δ i := by
          have := l1_col_le δ i
          have : (∑ j, |δ j i|) / Real.sqrt 6 ≤ colnorm δ i := by rw [div_le_iff₀ h6]; linarith
          gcongr
  rw [hsplit]
  calc cnorm (A + B) ≤ cnorm A + cnorm B := cnorm_add_le A B
    _ ≤ _ := by nlinarith

/-! ### C2(a) soundness -/

/-- **Direct test (C2a).**  If `e(u + x)` is unbiased to every column of `E(P + δ)`, then
`||S_i| − 1| ≤ 2π(Λ/√6 + r)` for all `i`, and `Σ_i (|S_i| − 1)² ≤ (2π(KX + r_F))²`. -/
theorem direct_test {P δ : RMat6} {u x : I6 → ℝ} {K X Λ r rF : ℝ} (hK0 : 0 ≤ K)
    (hK : ∀ z, cnorm (Qop P z) ≤ K * cnorm z) (hX : vnorm x ≤ X) (hΛ : ∑ j, |x j| ≤ Λ)
    (hr : ∀ i, colnorm δ i ≤ r) (hrF : frob δ ≤ rF)
    (hcol : ColUnb (E (P + δ)) (fun j => e (u j + x j))) :
    (∀ i, |‖S P u i‖ - 1| ≤ 2 * Real.pi * (Λ / Real.sqrt 6 + r)) ∧
      ∑ i, (‖S P u i‖ - 1) ^ 2 ≤ (2 * Real.pi * (K * X + rF)) ^ 2 := by
  have hS' := (colUnb_iff P δ u x).mp hcol
  have h6 := sqrt6_pos
  have hdiff : ∀ i, |‖S P u i‖ - 1| ≤ ‖S' P δ u x i - S P u i‖ := fun i => by
    rw [← hS' i, norm_sub_rev]; exact abs_norm_sub_norm_le _ _
  refine ⟨fun i => (hdiff i).trans ((norm_S'_sub_S_le P δ u x i).trans ?_), ?_⟩
  · have : (∑ j, |x j|) / Real.sqrt 6 ≤ Λ / Real.sqrt 6 := div_le_div_of_nonneg_right hΛ h6.le
    have := hr i
    gcongr
  · have hv := cnorm_S'_sub_S_le (δ := δ) (u := u) (x := x) hK0 hK
    have hsum : ∑ i, (‖S P u i‖ - 1) ^ 2 ≤ cnorm (fun i => S' P δ u x i - S P u i) ^ 2 := by
      rw [cnorm, vnorm, Real.sq_sqrt (Finset.sum_nonneg fun _ _ => sq_nonneg _)]
      refine Finset.sum_le_sum fun i _ => ?_
      have := hdiff i
      nlinarith [abs_nonneg (‖S P u i‖ - 1), sq_abs (‖S P u i‖ - 1)]
    have hc0 : 0 ≤ cnorm (fun i => S' P δ u x i - S P u i) := vnorm_nonneg _
    have hb : 2 * Real.pi * (K * vnorm x + frob δ) ≤ 2 * Real.pi * (K * X + rF) := by
      have := mul_le_mul_of_nonneg_left hX hK0
      gcongr
    nlinarith

end NoFourMUBs.StageC
