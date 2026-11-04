import NoFourMUBs.StageC.Linear

/-!
# Stage C, the scalar test (6.12)

One component `i` of C2(b), without decomposing `δ`:

  `|c_i| ≤ a Σ_{j≠0}|J_{ij}| + r‖J_{i,:}‖ + min{ π[(KX + r)² + S_max(KIX + (2Xr + r²)/√6)],
                                                  π[(Λ/√6 + r)² + S_max(X + r)²/√6] }`.
-/

open Matrix Hadamard6

namespace NoFourMUBs.StageC

lemma norm_rx_K {P : RMat6} {u x : I6 → ℝ} {K I : ℝ} (hK0 : 0 ≤ K) (hK : ∀ z, cnorm (Qop P z) ≤ K * cnorm z)
    (hI : ∀ j, |x j| ≤ I) (i : I6) :
    ‖∑ j, q P u j i * rx x j‖ ≤ K * (2 * Real.pi ^ 2 * I * vnorm x) := by
  set z : I6 → ℂ := fun j => e (u j) * rx x j
  have hQ : ∑ j, q P u j i * rx x j = Qop P z i := by
    simp only [Qop, z, q]; refine Finset.sum_congr rfl fun j _ => ?_
    rw [show u j - P j i = u j + -P j i by ring, e_add]; ring
  have hI0 : 0 ≤ I := (abs_nonneg _).trans (hI j0)
  have hz : cnorm z ≤ 2 * Real.pi ^ 2 * I * vnorm x := by
    rw [← vnorm_abs x, show 2 * Real.pi ^ 2 * I * vnorm (fun j => |x j|) =
      vnorm (fun j => 2 * Real.pi ^ 2 * I * |x j|) by rw [vnorm_smul (by positivity)]]
    refine cnorm_le_of_norm_le fun j => ?_
    simp only [z, norm_mul, norm_e, one_mul]
    refine (norm_e_sub_lin_le (x j)).trans ?_
    have := hI j
    have : x j ^ 2 ≤ I * |x j| := by nlinarith [sq_abs (x j), abs_nonneg (x j)]
    nlinarith [Real.pi_pos]
  rw [hQ]
  exact (norm_le_cnorm _ i).trans ((hK z).trans (mul_le_mul_of_nonneg_left hz hK0))

lemma norm_rc_le (P δ : RMat6) (u x : I6 → ℝ) (i : I6) :
    ‖∑ j, q P u j i * rc δ x j i‖ ≤ 4 * Real.pi ^ 2 / Real.sqrt 6 * (vnorm x * colnorm δ i) := by
  have hcs : ∑ j, |x j| * |δ j i| ≤ vnorm x * colnorm δ i := by
    refine (le_abs_self _).trans ((abs_sum_mul_le _ _).trans (le_of_eq ?_))
    simp only [sq_abs]; rfl
  calc _ ≤ ∑ j, (2 * Real.pi * |x j|) * (2 * Real.pi * |δ j i|) / Real.sqrt 6 := by
        refine (norm_sum_le _ _).trans (Finset.sum_le_sum fun j _ => norm_q_mul_le _ _ _ _ _ ?_)
        rw [rc, norm_mul]
        have h2 := norm_e_sub_one_le (-δ j i); rw [abs_neg] at h2
        exact mul_le_mul (norm_e_sub_one_le _) h2 (norm_nonneg _) (by positivity)
    _ = 4 * Real.pi ^ 2 / Real.sqrt 6 * ∑ j, |x j| * |δ j i| := by
        rw [Finset.mul_sum]; exact Finset.sum_congr rfl fun j _ => by ring
    _ ≤ _ := by gcongr

lemma norm_rd_le (P δ : RMat6) (u : I6 → ℝ) (i : I6) :
    ‖∑ j, q P u j i * rd δ j i‖ ≤ 2 * Real.pi ^ 2 / Real.sqrt 6 * colnorm δ i ^ 2 := by
  calc _ ≤ ∑ j, 2 * Real.pi ^ 2 * δ j i ^ 2 / Real.sqrt 6 :=
        (norm_sum_le _ _).trans (Finset.sum_le_sum fun j _ => norm_q_mul_le _ _ _ _ _ (by
          have := norm_e_sub_lin_le (-δ j i); rwa [neg_sq] at this))
    _ = _ := by rw [colnorm_sq, Finset.mul_sum]; exact Finset.sum_congr rfl fun j _ => by ring

/-- Direct form: `‖ρ_i‖ ≤ (2π²/√6)(‖x‖ + ‖δ_{:,i}‖)²`. -/
lemma norm_rho_direct (P δ : RMat6) (u x : I6 → ℝ) (i : I6) :
    ‖rho P δ u x i‖ ≤ 2 * Real.pi ^ 2 / Real.sqrt 6 * (vnorm x + colnorm δ i) ^ 2 := by
  have htri : vnorm (fun j => x j - δ j i) ≤ vnorm x + colnorm δ i := by
    have := vnorm_add_le x (fun j => -δ j i)
    have e1 : vnorm (fun j => -δ j i) = colnorm δ i := by
      rw [colnorm]; unfold vnorm; simp only [neg_sq]
    rw [e1] at this
    have e2 : (fun j => x j - δ j i) = x + fun j => -δ j i := by funext j; simp [sub_eq_add_neg]
    rw [e2]; exact this
  have hsq : ∑ j, (x j - δ j i) ^ 2 ≤ (vnorm x + colnorm δ i) ^ 2 := by
    have h0 := vnorm_nonneg (fun j => x j - δ j i)
    have : vnorm (fun j => x j - δ j i) ^ 2 = ∑ j, (x j - δ j i) ^ 2 :=
      Real.sq_sqrt (Finset.sum_nonneg fun _ _ => sq_nonneg _)
    rw [← this]; exact pow_le_pow_left₀ h0 htri 2
  calc _ ≤ ∑ j, 2 * Real.pi ^ 2 * (x j - δ j i) ^ 2 / Real.sqrt 6 :=
        (norm_sum_le _ _).trans (Finset.sum_le_sum fun j _ => norm_q_mul_le _ _ _ _ _ (norm_e_sub_lin_le _))
    _ = 2 * Real.pi ^ 2 / Real.sqrt 6 * ∑ j, (x j - δ j i) ^ 2 := by
        rw [Finset.mul_sum]; exact Finset.sum_congr rfl fun j _ => by ring
    _ ≤ _ := by gcongr

/-- **Scalar test (6.12).**  If `e(u + centre d)` is unbiased to column `i` of `E(P + δ)` (`|S′_i| = 1`), then
`|c_i| ≤ a Σ_{j≠0}|J_{ij}| + r‖J_{i,:}‖ + min{π[(KX + r)² + S_max(KIX + (2Xr + r²)/√6)],
π[(Λ/√6 + r)² + S_max(X + r)²/√6]}`. -/
theorem scalar_test {P δ : RMat6} {u d : I6 → ℝ} {a K X I Λ r Smax : ℝ} (i : I6)
    (hd0 : d j0 = 0) (hd : ∀ j, |d j| ≤ a) (hr : colnorm δ i ≤ r)
    (hK0 : 0 ≤ K) (hK : ∀ z, cnorm (Qop P z) ≤ K * cnorm z)
    (hX : vnorm (centre d) ≤ X) (hI : ∀ j, |centre d j| ≤ I) (hΛ : ∑ j, |centre d j| ≤ Λ)
    (hS : ‖S P u i‖ ≤ Smax) (hcol : ‖S' P δ u (centre d) i‖ = 1) :
    |cc P u i| ≤ a * ∑ j ∈ Finset.univ.erase j0, |Jm P u i j| + r * Real.sqrt (∑ j, Jm P u i j ^ 2) +
      min (Real.pi * ((K * X + r) ^ 2 + Smax * (K * I * X + (2 * X * r + r ^ 2) / Real.sqrt 6)))
        (Real.pi * ((Λ / Real.sqrt 6 + r) ^ 2 + Smax * (X + r) ^ 2 / Real.sqrt 6)) := by
  set x := centre d
  have hpi := Real.pi_pos
  have h6 := sqrt6_pos
  have hS0 : 0 ≤ Smax := (norm_nonneg _).trans hS
  have hX0 : 0 ≤ X := (vnorm_nonneg _).trans hX
  have hr0 : 0 ≤ r := (vnorm_nonneg _).trans hr
  have hK0X : K * vnorm x ≤ K * X := mul_le_mul_of_nonneg_left hX hK0
  have h := expansion P δ u x i
  rw [hcol] at h
  simp only [one_pow, sub_self, zero_div] at h
  set A := ∑ j, Jm P u i j * x j
  set B := ∑ j, Jm P u i j * δ j i
  set C := ‖S' P δ u x i - S P u i‖ ^ 2 / (4 * Real.pi)
  set Dρ := (star (S P u i) * rho P δ u x i).re / (2 * Real.pi)
  have hsplit : ∑ j, Jm P u i j * (x j - δ j i) = A - B := by
    rw [← Finset.sum_sub_distrib]; exact Finset.sum_congr rfl fun j _ => by ring
  have hc : cc P u i = -A + B - C - Dρ := by rw [hsplit] at h; linarith
  -- x-term
  have bA : |A| ≤ a * ∑ j ∈ Finset.univ.erase j0, |Jm P u i j| := by
    have e1 : A = ∑ j, Jm P u i j * d j := by
      simp only [A, x, centre, mul_sub, Finset.sum_sub_distrib, ← Finset.sum_mul, sum_Jm_row, zero_mul, sub_zero]
    rw [e1, ← Finset.sum_erase Finset.univ (f := fun j => Jm P u i j * d j) (a := j0) (by simp [hd0]),
      Finset.mul_sum]
    refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun j _ => ?_)
    rw [abs_mul, mul_comm a]; exact mul_le_mul_of_nonneg_left (hd j) (abs_nonneg _)
  -- δ-term
  have bB : |B| ≤ r * Real.sqrt (∑ j, Jm P u i j ^ 2) := by
    refine (abs_sum_mul_le _ _).trans ?_
    rw [mul_comm r]
    exact mul_le_mul_of_nonneg_left hr (Real.sqrt_nonneg _)
  -- Δ-term, both forms
  have hC0 : 0 ≤ C := by positivity
  have bC1 : C ≤ Real.pi * (K * X + r) ^ 2 := by
    have h1 := norm_S'_sub_S_le_K (δ := δ) (u := u) (x := x) hK0 hK i
    have h2 : 2 * Real.pi * (K * vnorm x + colnorm δ i) ≤ 2 * Real.pi * (K * X + r) := by gcongr
    have h3 := pow_le_pow_left₀ (norm_nonneg _) (h1.trans h2) 2
    rw [div_le_iff₀ (by positivity)]; nlinarith
  have bC2 : C ≤ Real.pi * (Λ / Real.sqrt 6 + r) ^ 2 := by
    have h1 := norm_S'_sub_S_le P δ u x i
    have h2 : 2 * Real.pi * ((∑ j, |x j|) / Real.sqrt 6 + colnorm δ i) ≤ 2 * Real.pi * (Λ / Real.sqrt 6 + r) := by
      have : (∑ j, |x j|) / Real.sqrt 6 ≤ Λ / Real.sqrt 6 := div_le_div_of_nonneg_right hΛ h6.le
      gcongr
    have h3 := pow_le_pow_left₀ (norm_nonneg _) (h1.trans h2) 2
    rw [div_le_iff₀ (by positivity)]; nlinarith
  -- ρ-term, both forms
  have hDρ : |Dρ| ≤ Smax * ‖rho P δ u x i‖ / (2 * Real.pi) := by
    rw [abs_div, abs_of_pos (by positivity : (0:ℝ) < 2 * Real.pi)]
    apply div_le_div_of_nonneg_right _ (by positivity)
    refine (Complex.abs_re_le_norm _).trans ?_
    rw [norm_mul, norm_star]; exact mul_le_mul_of_nonneg_right hS (norm_nonneg _)
  have bD1 : |Dρ| ≤ Real.pi * (Smax * (K * I * X + (2 * X * r + r ^ 2) / Real.sqrt 6)) := by
    have hsplitρ := rho_split P δ u x i
    have n1 := norm_rx_K (u := u) (P := P) hK0 hK hI i
    have n2 := norm_rc_le P δ u x i
    have n3 := norm_rd_le P δ u i
    have hI0 : 0 ≤ I := (abs_nonneg _).trans (hI j0)
    have hρ : ‖rho P δ u x i‖ ≤ 2 * Real.pi ^ 2 * (K * I * X) + 4 * Real.pi ^ 2 / Real.sqrt 6 * (X * r) +
        2 * Real.pi ^ 2 / Real.sqrt 6 * r ^ 2 := by
      rw [hsplitρ]
      refine (norm_add_le _ _).trans (add_le_add ((norm_add_le _ _).trans (add_le_add ?_ ?_)) ?_)
      · refine n1.trans (le_of_eq_of_le rfl ?_)
        have : K * (2 * Real.pi ^ 2 * I * vnorm x) ≤ K * (2 * Real.pi ^ 2 * I * X) := by gcongr
        linarith
      · refine n2.trans ?_
        have : vnorm x * colnorm δ i ≤ X * r := mul_le_mul hX hr (vnorm_nonneg _) hX0
        gcongr
      · exact n3.trans (mul_le_mul_of_nonneg_left (pow_le_pow_left₀ (vnorm_nonneg _) hr 2) (by positivity))
    refine hDρ.trans ?_
    rw [div_le_iff₀ (by positivity)]
    have := mul_le_mul_of_nonneg_left hρ hS0
    have e : Real.pi * (Smax * (K * I * X + (2 * X * r + r ^ 2) / Real.sqrt 6)) * (2 * Real.pi) =
        Smax * (2 * Real.pi ^ 2 * (K * I * X) + 4 * Real.pi ^ 2 / Real.sqrt 6 * (X * r) +
          2 * Real.pi ^ 2 / Real.sqrt 6 * r ^ 2) := by field_simp; ring
    rw [e]; exact this
  have bD2 : |Dρ| ≤ Real.pi * (Smax * (X + r) ^ 2 / Real.sqrt 6) := by
    have hρ := norm_rho_direct P δ u x i
    have h2 : (vnorm x + colnorm δ i) ^ 2 ≤ (X + r) ^ 2 :=
      pow_le_pow_left₀ (add_nonneg (vnorm_nonneg _) (vnorm_nonneg _)) (add_le_add hX hr) 2
    refine hDρ.trans ?_
    rw [div_le_iff₀ (by positivity)]
    have h3 : ‖rho P δ u x i‖ ≤ 2 * Real.pi ^ 2 / Real.sqrt 6 * (X + r) ^ 2 :=
      hρ.trans (mul_le_mul_of_nonneg_left h2 (by positivity))
    have := mul_le_mul_of_nonneg_left h3 hS0
    have e : Real.pi * (Smax * (X + r) ^ 2 / Real.sqrt 6) * (2 * Real.pi) =
        Smax * (2 * Real.pi ^ 2 / Real.sqrt 6 * (X + r) ^ 2) := by field_simp
    rw [e]; exact this
  have hmin : C + |Dρ| ≤ min (Real.pi * ((K * X + r) ^ 2 + Smax * (K * I * X + (2 * X * r + r ^ 2) / Real.sqrt 6)))
      (Real.pi * ((Λ / Real.sqrt 6 + r) ^ 2 + Smax * (X + r) ^ 2 / Real.sqrt 6)) :=
    le_min (by nlinarith) (by nlinarith)
  rw [hc, abs_le]
  constructor <;> linarith [le_abs_self A, neg_abs_le A, le_abs_self B, neg_abs_le B, le_abs_self Dρ, neg_abs_le Dρ]

end NoFourMUBs.StageC
