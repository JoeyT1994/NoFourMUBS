import NoFourMUBs.NormalBound

/-!
# The remainder bound for horizontal displacements (return X §3.2)

For every centre `P` and every displacement `δ` whose columns sum to zero (in particular every horizontal `δ`),

  `‖Φ_P(δ) − Φ_P(0) − J_P δ‖ ≤ √2 ‖δ‖²`

(`outNorm_rem_le_hor`), sharper than the general `√3 ‖δ‖²` of `outNorm_rem_le`.

*Proof.*  The entry bound `‖(Φ − Φ₀ − J δ)_{ab}‖ ≤ ½ rowDist(a, b)` (`norm_rem_le`) gives
`outNorm² ≤ ⅛ Σ_{ab} rowDist(a, b)²`.  With `d_c(a, b) = (δ_ac − δ_bc)²`, `rowDist = Σ_c d_c` and by Cauchy–Schwarz
`Σ_{ab} d_c d_{c'} ≤ (Σ_{ab} d_c²)^{1/2} (Σ_{ab} d_{c'}²)^{1/2}`.  For a centred column `v` (return X eq. (11)),
`Σ_{ab} (v_a − v_b)⁴ = 12 Σ v_a⁴ + 6 ‖v‖⁴ ≤ 16 ‖v‖⁴`, using `v_a² ≤ (5/6) ‖v‖²`.  Hence
`Σ_{ab} rowDist² ≤ 16 (Σ_c ‖δ_{:,c}‖²)² = 16 ‖δ‖⁴`.
-/

open Matrix Hadamard6

namespace NoFourMUBs.X

open NoFourMUBs

lemma sum_erase_sq_le (v : I6 → ℝ) (a : I6) :
    (∑ b ∈ Finset.univ.erase a, v b) ^ 2 ≤ 5 * ∑ b ∈ Finset.univ.erase a, v b ^ 2 := by
  have h := sq_sum_le_card_mul_sum_sq (s := Finset.univ.erase a) (f := v)
  have hc : ((Finset.univ.erase a).card : ℝ) = 5 := by
    rw [Finset.card_erase_of_mem (Finset.mem_univ a), Finset.card_univ, card_I6]; norm_num
  rwa [hc] at h

/-- A centred six-vector has `v_a² ≤ (5/6) ‖v‖²`. -/
lemma sq_le_of_centred {v : I6 → ℝ} (hv : ∑ b, v b = 0) (a : I6) : 6 * v a ^ 2 ≤ 5 * ∑ b, v b ^ 2 := by
  have h1 : v a = -∑ b ∈ Finset.univ.erase a, v b := by
    rw [← Finset.add_sum_erase _ _ (Finset.mem_univ a)] at hv; linarith
  have h2 : ∑ b, v b ^ 2 = v a ^ 2 + ∑ b ∈ Finset.univ.erase a, v b ^ 2 :=
    (Finset.add_sum_erase _ _ (Finset.mem_univ a)).symm
  have h3 := sum_erase_sq_le v a
  have h4 : v a ^ 2 = (∑ b ∈ Finset.univ.erase a, v b) ^ 2 := by rw [h1, neg_sq]
  linarith

/-- Return X eq. (11): `Σ_{ab} (v_a − v_b)⁴ ≤ 16 ‖v‖⁴` for a centred six-vector. -/
lemma sum_pow4_sub_le {v : I6 → ℝ} (hv : ∑ b, v b = 0) :
    ∑ a, ∑ b, (v a - v b) ^ 4 ≤ 16 * (∑ a, v a ^ 2) ^ 2 := by
  set s := ∑ a, v a ^ 2
  have e : ∀ a b, (v a - v b) ^ 4 = v a ^ 4 + v b ^ 4 + 6 * (v a ^ 2 * v b ^ 2) - 4 * (v a ^ 3 * v b) -
      4 * (v a * v b ^ 3) := fun a b => by ring
  have hsum : ∑ a, ∑ b, (v a - v b) ^ 4 = 12 * ∑ a, v a ^ 4 + 6 * s ^ 2 := by
    simp only [e, Finset.sum_add_distrib, Finset.sum_sub_distrib, ← Finset.mul_sum, ← Finset.sum_mul,
      Finset.sum_const, Finset.card_univ, card_I6, nsmul_eq_mul, hv, mul_zero, zero_mul, sub_zero]
    rw [sq s, Finset.sum_mul]
    simp only [Finset.mul_sum]
    push_cast
    have h12 : ∑ x, v x ^ 4 * 12 = (∑ x, v x ^ 4 * 6) * 2 := by
      rw [Finset.sum_mul]; exact Finset.sum_congr rfl fun _ _ => by ring
    ring_nf
    linarith [h12]
  have h4 : ∑ a, v a ^ 4 ≤ 5 / 6 * s ^ 2 := by
    have : ∀ a, v a ^ 4 ≤ v a ^ 2 * (5 / 6 * s) := fun a => by
      have := sq_le_of_centred hv a
      have h0 := sq_nonneg (v a)
      nlinarith
    calc ∑ a, v a ^ 4 ≤ ∑ a, v a ^ 2 * (5 / 6 * s) := Finset.sum_le_sum fun a _ => this a
      _ = 5 / 6 * s ^ 2 := by rw [← Finset.sum_mul]; ring
  rw [hsum]; linarith

/-- Squared column norms. -/
noncomputable def colsq (δ : RMat6) (c : I6) : ℝ := ∑ a, δ a c ^ 2

lemma colsq_nonneg (δ : RMat6) (c : I6) : 0 ≤ colsq δ c := Finset.sum_nonneg fun _ _ => sq_nonneg _

lemma sum_colsq (δ : RMat6) : ∑ c, colsq δ c = sumsq δ := by
  rw [sumsq, Finset.sum_comm]; rfl

/-- The cross term: `Σ_{ab} d_c d_{c'} ≤ 16 ‖δ_{:,c}‖² ‖δ_{:,c'}‖²` for centred columns. -/
lemma cross_le {δ : RMat6} (hδ : ∀ c, ∑ a, δ a c = 0) (c c' : I6) :
    ∑ a, ∑ b, (δ a c - δ b c) ^ 2 * (δ a c' - δ b c') ^ 2 ≤ 16 * (colsq δ c * colsq δ c') := by
  set f : I6 × I6 → ℝ := fun x => (δ x.1 c - δ x.2 c) ^ 2
  set g : I6 × I6 → ℝ := fun x => (δ x.1 c' - δ x.2 c') ^ 2
  have hcs2 : (∑ x, f x * g x) ^ 2 ≤ (∑ x, f x ^ 2) * (∑ x, g x ^ 2) :=
    Finset.sum_mul_sq_le_sq_mul_sq (Finset.univ : Finset (I6 × I6)) f g
  have hf : ∑ x, f x ^ 2 ≤ 16 * colsq δ c ^ 2 := by
    have := sum_pow4_sub_le (v := fun a => δ a c) (hδ c)
    rw [Fintype.sum_prod_type]
    simpa [f, ← pow_mul, colsq] using this
  have hg : ∑ x, g x ^ 2 ≤ 16 * colsq δ c' ^ 2 := by
    have := sum_pow4_sub_le (v := fun a => δ a c') (hδ c')
    rw [Fintype.sum_prod_type]
    simpa [g, ← pow_mul, colsq] using this
  have hfg0 : 0 ≤ ∑ x, f x * g x := Finset.sum_nonneg fun x _ => mul_nonneg (sq_nonneg _) (sq_nonneg _)
  have hc0 := colsq_nonneg δ c
  have hc0' := colsq_nonneg δ c'
  have hprod : (∑ x, f x ^ 2) * (∑ x, g x ^ 2) ≤ (16 * (colsq δ c * colsq δ c')) ^ 2 := by
    calc (∑ x, f x ^ 2) * (∑ x, g x ^ 2) ≤ (16 * colsq δ c ^ 2) * (16 * colsq δ c' ^ 2) :=
          mul_le_mul hf hg (Finset.sum_nonneg fun _ _ => sq_nonneg _) (by positivity)
      _ = (16 * (colsq δ c * colsq δ c')) ^ 2 := by ring
  have hle : ∑ x, f x * g x ≤ 16 * (colsq δ c * colsq δ c') :=
    (abs_le_of_sq_le_sq' (hcs2.trans hprod) (by positivity)).2
  rw [Fintype.sum_prod_type] at hle
  exact hle

/-- `Σ_{ab} rowDist(a, b)² ≤ 16 ‖δ‖⁴` for centred columns. -/
lemma sum_rowDist_sq_le {δ : RMat6} (hδ : ∀ c, ∑ a, δ a c = 0) :
    ∑ a, ∑ b, rowDist δ a b ^ 2 ≤ 16 * sumsq δ ^ 2 := by
  have e : ∀ a b, rowDist δ a b ^ 2 = ∑ c, ∑ c', (δ a c - δ b c) ^ 2 * (δ a c' - δ b c') ^ 2 := by
    intro a b; rw [rowDist, sq, Finset.sum_mul_sum]
  have h : ∑ a, ∑ b, rowDist δ a b ^ 2 = ∑ c, ∑ c', ∑ a, ∑ b, (δ a c - δ b c) ^ 2 * (δ a c' - δ b c') ^ 2 := by
    simp only [e]
    calc ∑ a, ∑ b, ∑ c, ∑ c', (δ a c - δ b c) ^ 2 * (δ a c' - δ b c') ^ 2
        = ∑ a, ∑ c, ∑ b, ∑ c', (δ a c - δ b c) ^ 2 * (δ a c' - δ b c') ^ 2 :=
          Finset.sum_congr rfl fun a _ => Finset.sum_comm
      _ = ∑ c, ∑ a, ∑ b, ∑ c', (δ a c - δ b c) ^ 2 * (δ a c' - δ b c') ^ 2 := Finset.sum_comm
      _ = ∑ c, ∑ a, ∑ c', ∑ b, (δ a c - δ b c) ^ 2 * (δ a c' - δ b c') ^ 2 :=
          Finset.sum_congr rfl fun c _ => Finset.sum_congr rfl fun a _ => Finset.sum_comm
      _ = _ := Finset.sum_congr rfl fun c _ => Finset.sum_comm
  rw [h, ← sum_colsq, sq, Finset.sum_mul_sum, Finset.mul_sum]
  refine Finset.sum_le_sum fun c _ => ?_
  rw [Finset.mul_sum]
  exact Finset.sum_le_sum fun c' _ => cross_le hδ c c'

/-- **Remainder bound, centred columns** (return X §3.2): `‖Φ_P(δ) − Φ_P(0) − J_P δ‖ ≤ √2 ‖δ‖²`. -/
theorem outNorm_rem_le_hor (P δ : RMat6) (hδ : ∀ c, ∑ a, δ a c = 0) :
    outNorm (Phi P δ - Phi P 0 - Jac P δ) ≤ Real.sqrt 2 * frob δ ^ 2 := by
  set S := sumsq δ
  have hS : frob δ ^ 2 = S := by rw [frob_eq_sqrt, Real.sq_sqrt (sumsq_nonneg δ)]
  rw [hS]
  refine outNorm_le_of_sq_le (mul_nonneg (Real.sqrt_nonneg 2) (sumsq_nonneg δ)) ?_
  rw [mul_pow, Real.sq_sqrt (by norm_num : (0:ℝ) ≤ 2)]
  have key : ∑ a, ∑ b, ‖(Phi P δ - Phi P 0 - Jac P δ) a b‖ ^ 2 ≤ ∑ a, ∑ b, rowDist δ a b ^ 2 / 4 := by
    refine Finset.sum_le_sum fun a _ => Finset.sum_le_sum fun b _ => ?_
    have h1 := norm_rem_le P δ a b
    have h4 := norm_nonneg ((Phi P δ - Phi P 0 - Jac P δ) a b)
    nlinarith
  have hsum := sum_rowDist_sq_le hδ
  have : ∑ a, ∑ b, rowDist δ a b ^ 2 / 4 = (∑ a, ∑ b, rowDist δ a b ^ 2) / 4 := by
    simp only [Finset.sum_div]
  rw [this] at key
  linarith

end NoFourMUBs.X
