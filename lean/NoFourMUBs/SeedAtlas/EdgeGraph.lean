import NoFourMUBs.SeedAtlas.Method.NormalTube
import NoFourMUBs.Record

/-!
# The graph property (G) near `F6` (`proof/seed_atlas/SPEC.md` §10.2)

`graph_unique`: let `P` be a centre with a frame `T` whose normal complement carries the bound
`σ ‖ν‖ ≤ ‖J_P ν‖` (a record's `hσ`).  If `e^{i(P + δ₁)}` and `e^{i(P + δ₂)}` are both Hadamard, `‖δ₁‖, ‖δ₂‖ ≤ R`,
`2√3 R < σ` and `δ₁ − δ₂` lies in the normal complement (horizontal and orthogonal to every `T_k`), then `δ₁ = δ₂`.
So two Hadamards `e^{i(P + Tη + ν_i)}` with the same `η` and `‖Tη + ν_i‖ ≤ R` coincide.

*Proof* (the mean value theorem along the segment, calculus-free).  Cut `[δ₂, δ₁]` into `n` steps `h = (δ₁ − δ₂)/n`
at `x_k = δ₂ + k h`.  By the mean-value form at `x_k` (`outNorm_phi_sub_jac_le` with `c = x_k`) and the Jacobian's
Lipschitz bound (`outNorm_jac_sub_le`, `‖x_k‖ ≤ R` by convexity),
`‖Φ(x_{k+1}) − Φ(x_k) − J_P h‖ ≤ √3 ‖h‖² + 2√3 R ‖h‖`.  Summing (`Φ(δ₁) = Φ(δ₂) = 0`):
`σ ‖v‖ ≤ ‖J_P v‖ = n ‖J_P h‖ ≤ √3 ‖v‖²/n + 2√3 R ‖v‖` for every `n`, so `‖v‖ = 0`.
-/

open Matrix Hadamard6

noncomputable section

namespace NoFourMUBs.SeedAtlas

open Method

lemma jac_smul (P v : RMat6) (c : ℝ) : Jac P (c • v) = (c : ℂ) • Jac P v := by
  ext a b
  simp only [Jac, of_apply, Matrix.smul_apply, smul_eq_mul, Finset.mul_sum]
  refine Finset.sum_congr rfl fun c' _ => ?_
  push_cast; ring

section
attribute [local instance] Matrix.frobeniusNormedAddCommGroup Matrix.frobeniusNormedSpace

lemma outNorm_smul_real (c : ℝ) (w : Mat6) : outNorm ((c : ℂ) • w) = |c| * outNorm w := by
  unfold outNorm
  rw [norm_smul, Complex.norm_real, Real.norm_eq_abs, mul_div_assoc]

lemma frob_eq_zero {Y : RMat6} (h : frob Y = 0) : Y = 0 := norm_eq_zero.mp h

end

lemma outNorm_sum_le {ι : Type*} (s : Finset ι) (f : ι → Mat6) : outNorm (∑ i ∈ s, f i) ≤ ∑ i ∈ s, outNorm (f i) := by
  classical
  induction s using Finset.induction_on with
  | empty => simp
  | insert a s ha ih =>
    rw [Finset.sum_insert ha, Finset.sum_insert ha]
    exact (outNorm_add_le _ _).trans (add_le_add le_rfl ih)

/-- Convexity of `frob`: `‖(1 − s) a + s b‖ ≤ R` for `s ∈ [0, 1]`, `‖a‖, ‖b‖ ≤ R`. -/
lemma frob_convex_le {a b : RMat6} {R s : ℝ} (ha : frob a ≤ R) (hb : frob b ≤ R) (hs0 : 0 ≤ s) (hs1 : s ≤ 1) :
    frob ((1 - s) • a + s • b) ≤ R := by
  refine (frob_add_le _ _).trans ?_
  rw [frob_smul, frob_smul, abs_of_nonneg (by linarith), abs_of_nonneg hs0]
  nlinarith

/-- **The graph property (G).** -/
theorem graph_unique {P : RMat6} {T : Fin 4 → RMat6} {σ R : ℝ}
    (hσ : ∀ ν, IsHorizontal ν → (∀ k, ∑ a, ∑ c, T k a c * ν a c = 0) → σ * frob ν ≤ outNorm (Jac P ν))
    (hRσ : 2 * Real.sqrt 3 * R < σ) {δ₁ δ₂ : RMat6}
    (h₁ : Hadamard6.IsHadamard (phaseMat (P + δ₁))) (h₂ : Hadamard6.IsHadamard (phaseMat (P + δ₂)))
    (hR₁ : frob δ₁ ≤ R) (hR₂ : frob δ₂ ≤ R) (hvh : IsHorizontal (δ₁ - δ₂))
    (hvT : ∀ k, ∑ a, ∑ c, T k a c * (δ₁ - δ₂) a c = 0) : δ₁ = δ₂ := by
  set v := δ₁ - δ₂
  set s := frob v
  have hs0 : 0 ≤ s := frob_nonneg v
  have h3 : 0 < Real.sqrt 3 := by positivity
  -- the bound for every number of steps
  have key : ∀ n : ℕ, 0 < n → σ * s ≤ Real.sqrt 3 * s ^ 2 / n + 2 * Real.sqrt 3 * R * s := by
    intro n hn
    have hn' : (0 : ℝ) < n := Nat.cast_pos.mpr hn
    set h : RMat6 := (1 / (n : ℝ)) • v
    have hfh : frob h = s / n := by
      rw [frob_smul, abs_of_pos (by positivity)]; field_simp; rfl
    set x : ℕ → RMat6 := fun k => (1 - (k : ℝ) / n) • δ₂ + ((k : ℝ) / n) • δ₁
    have hx0 : x 0 = δ₂ := by simp [x]
    have hxn : x n = δ₁ := by simp [x, div_self hn'.ne']
    have hstep : ∀ k, x (k + 1) - x k = h := by
      intro k; ext a b
      simp only [x, h, v, Matrix.sub_apply, Matrix.add_apply, Matrix.smul_apply, smul_eq_mul]
      push_cast; field_simp; ring
    have hxR : ∀ k ∈ Finset.range n, frob (x k) ≤ R := by
      intro k hk
      have hk' : (k : ℝ) ≤ n := by exact_mod_cast (Finset.mem_range.mp hk).le
      exact frob_convex_le hR₂ hR₁ (by positivity) ((div_le_one hn').mpr hk')
    have hterm : ∀ k ∈ Finset.range n,
        outNorm (Phi P (x (k + 1)) - Phi P (x k) - Jac P h) ≤ Real.sqrt 3 * frob h ^ 2 + 2 * Real.sqrt 3 * R * frob h := by
      intro k hk
      have e1 := outNorm_phi_sub_jac_le P (x k) (x k) (x (k + 1))
      have e2 := outNorm_jac_sub_le P (x k) h
      rw [hstep, sub_self] at e1
      have hf0 : frob (0 : RMat6) = 0 := by rw [frob_eq_sqrt]; simp [sumsq]
      rw [hf0] at e1
      have split : Phi P (x (k + 1)) - Phi P (x k) - Jac P h =
          (Phi P (x (k + 1)) - Phi P (x k) - Jac (P + x k) h) + (Jac (P + x k) h - Jac P h) := by abel
      rw [split]
      refine (outNorm_add_le _ _).trans ?_
      have hfh0 : 0 ≤ frob h := frob_nonneg h
      have : 2 * Real.sqrt 3 * frob (x k) * frob h ≤ 2 * Real.sqrt 3 * R * frob h :=
        mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left (hxR k hk) (by positivity)) hfh0
      nlinarith
    have hsum : ∑ k ∈ Finset.range n, (Phi P (x (k + 1)) - Phi P (x k) - Jac P h) = -((n : ℝ) : ℂ) • Jac P h := by
      rw [Finset.sum_sub_distrib, Finset.sum_range_sub (fun k => Phi P (x k)), hxn, hx0,
        phi_eq_zero_of_isHadamard h₁, phi_eq_zero_of_isHadamard h₂, Finset.sum_const, Finset.card_range]
      rw [sub_self, zero_sub, neg_smul, Complex.ofReal_natCast, Nat.cast_smul_eq_nsmul]
    have hJ : outNorm (Jac P v) = n * outNorm (Jac P h) := by
      have : v = (n : ℝ) • h := by simp only [h, smul_smul]; rw [mul_one_div_cancel hn'.ne', one_smul]
      rw [this, jac_smul, outNorm_smul_real, abs_of_pos hn']
    have hbound : (n : ℝ) * outNorm (Jac P h) ≤ n * (Real.sqrt 3 * frob h ^ 2 + 2 * Real.sqrt 3 * R * frob h) := by
      have := (outNorm_sum_le _ _).trans (Finset.sum_le_sum hterm)
      rw [hsum, neg_smul, outNorm_neg, outNorm_smul_real, abs_of_pos hn', Finset.sum_const, Finset.card_range,
        nsmul_eq_mul] at this
      exact this
    have hσv := hσ v hvh hvT
    rw [hJ] at hσv
    have : (n : ℝ) * (Real.sqrt 3 * frob h ^ 2 + 2 * Real.sqrt 3 * R * frob h) =
        Real.sqrt 3 * s ^ 2 / n + 2 * Real.sqrt 3 * R * s := by
      rw [hfh]; field_simp
    linarith
  -- so `‖v‖ = 0`
  have hzero : s = 0 := by
    by_contra hne
    have hpos : 0 < s := lt_of_le_of_ne hs0 (Ne.symm hne)
    have hgap : 0 < σ - 2 * Real.sqrt 3 * R := by linarith
    obtain ⟨n, hn⟩ := exists_nat_gt (Real.sqrt 3 * s / (σ - 2 * Real.sqrt 3 * R))
    have hn0 : 0 < n := by
      have : (0 : ℝ) < n := lt_of_le_of_lt (by positivity) hn
      exact_mod_cast this
    have hn' : (0 : ℝ) < n := Nat.cast_pos.mpr hn0
    have k := key n hn0
    have h1 : Real.sqrt 3 * s < n * (σ - 2 * Real.sqrt 3 * R) := (div_lt_iff₀ hgap).mp hn
    have h2 : (σ - 2 * Real.sqrt 3 * R) * s ≤ Real.sqrt 3 * s ^ 2 / n := by linarith
    rw [le_div_iff₀ hn'] at h2
    nlinarith
  exact sub_eq_zero.mp (frob_eq_zero hzero)

end NoFourMUBs.SeedAtlas
