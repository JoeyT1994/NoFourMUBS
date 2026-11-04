import NoFourMUBs.StageC.Single

/-!
# Stage C, C2(b): the linearised single-vector test

With `c_i = (|S_i|² − 1)/(4π)` and `J_{ij} = −Im(S̄_i q_{ji})`, the exact expansion

  `(|S′_i|² − 1)/(4π) = c_i + Σ_j J_{ij}(x_j − δ_{ji}) + |Δ_i|²/(4π) + Re(S̄_i ρ_i)/(2π)`

holds, where `Δ_i = S′_i − S_i` and `ρ_i = Σ_j q_{ji}(e(t_j) − 1 − 2πi t_j)`, `t_j = x_j − δ_{ji}` (`expansion`).
When `|S′_i| = 1` the left side vanishes; weighting by any `y ∈ ℝ⁶` and bounding each remainder term gives the
inequality of `STAGEC.md` C2(b) (`linear_test`).
-/

open Matrix Hadamard6

namespace NoFourMUBs.StageC

noncomputable def cc (P : RMat6) (u : I6 → ℝ) (i : I6) : ℝ := (‖S P u i‖ ^ 2 - 1) / (4 * Real.pi)

noncomputable def Jm (P : RMat6) (u : I6 → ℝ) (i j : I6) : ℝ := -(star (S P u i) * q P u j i).im

/-- Second-order remainder `ρ_i`. -/
noncomputable def rho (P δ : RMat6) (u x : I6 → ℝ) (i : I6) : ℂ :=
  ∑ j, q P u j i * (e (x j - δ j i) - 1 - ((2 * Real.pi * (x j - δ j i) : ℝ) : ℂ) * Complex.I)

lemma re_star_mul_I_mul (z w : ℂ) (t : ℝ) :
    (star z * (w * ((t : ℂ) * Complex.I))).re = -t * (star z * w).im := by
  simp [Complex.mul_re, Complex.mul_im]; ring

/-- The exact expansion of `(|S′_i|² − 1)/(4π)`. -/
theorem expansion (P δ : RMat6) (u x : I6 → ℝ) (i : I6) :
    (‖S' P δ u x i‖ ^ 2 - 1) / (4 * Real.pi) =
      cc P u i + ∑ j, Jm P u i j * (x j - δ j i) + ‖S' P δ u x i - S P u i‖ ^ 2 / (4 * Real.pi) +
        (star (S P u i) * rho P δ u x i).re / (2 * Real.pi) := by
  have hpi : 0 < Real.pi := Real.pi_pos
  set Sv := S P u i
  set D := S' P δ u x i - Sv
  have hD : D = ∑ j, q P u j i * (((2 * Real.pi * (x j - δ j i) : ℝ) : ℂ) * Complex.I) + rho P δ u x i := by
    simp only [D, Sv, S'_sub_S, rho, ← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl fun j _ => ?_
    ring
  have hlin : (star Sv * ∑ j, q P u j i * (((2 * Real.pi * (x j - δ j i) : ℝ) : ℂ) * Complex.I)).re =
      2 * Real.pi * ∑ j, Jm P u i j * (x j - δ j i) := by
    rw [Finset.mul_sum, Complex.re_sum, Finset.mul_sum]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [re_star_mul_I_mul]; simp only [Jm, Sv]; ring
  have hsq : ‖S' P δ u x i‖ ^ 2 = ‖Sv‖ ^ 2 + 2 * (star Sv * D).re + ‖D‖ ^ 2 := by
    have : S' P δ u x i = Sv + D := by simp [D]
    rw [this, ← Complex.normSq_eq_norm_sq, ← Complex.normSq_eq_norm_sq, ← Complex.normSq_eq_norm_sq,
      Complex.normSq_add]
    simp only [Complex.mul_re, Complex.star_def, Complex.conj_re, Complex.conj_im]; ring
  have hre : (star Sv * D).re = 2 * Real.pi * ∑ j, Jm P u i j * (x j - δ j i) +
      (star Sv * rho P δ u x i).re := by
    rw [hD, mul_add, Complex.add_re, hlin]
  rw [hsq, hre, cc]
  field_simp
  ring

/-! ### Cauchy–Schwarz and the row sums of `J` -/

lemma abs_sum_mul_le {ι : Type*} [Fintype ι] (f g : ι → ℝ) :
    |∑ k, f k * g k| ≤ Real.sqrt (∑ k, f k ^ 2) * Real.sqrt (∑ k, g k ^ 2) := by
  rw [← Real.sqrt_mul (Finset.sum_nonneg fun _ _ => sq_nonneg _)]
  exact Real.abs_le_sqrt (Finset.sum_mul_sq_le_sq_mul_sq _ _ _)

lemma sum_Jm_row (P : RMat6) (u : I6 → ℝ) (i : I6) : ∑ j, Jm P u i j = 0 := by
  have h : ∑ j, (star (S P u i) * q P u j i).im = (star (S P u i) * S P u i).im := by
    rw [← Complex.im_sum, ← Finset.mul_sum]; rfl
  rw [show ∑ j, Jm P u i j = -∑ j, (star (S P u i) * q P u j i).im by
    simp only [Jm, Finset.sum_neg_distrib], h, Complex.star_def, Complex.conj_mul']
  rw [← Complex.ofReal_pow, Complex.ofReal_im, neg_zero]

/-- `Jᵀy`. -/
noncomputable def Jty (P : RMat6) (u y : I6 → ℝ) (j : I6) : ℝ := ∑ i, y i * Jm P u i j

lemma sum_Jty (P : RMat6) (u y : I6 → ℝ) : ∑ j, Jty P u y j = 0 := by
  simp only [Jty]; rw [Finset.sum_comm]
  simp only [← Finset.mul_sum, sum_Jm_row, mul_zero, Finset.sum_const_zero]

/-- **x-term.**  `|Σ_i y_i Σ_j J_{ij} x_j| ≤ a Σ_{j ≠ 0} |(Jᵀy)_j|` for `x = centre d`, `d₀ = 0`, `|d_j| ≤ a`. -/
lemma xterm_le {P : RMat6} {u y d : I6 → ℝ} {a : ℝ} (hd0 : d j0 = 0) (hd : ∀ j, |d j| ≤ a) :
    |∑ i, y i * ∑ j, Jm P u i j * centre d j| ≤ a * ∑ j ∈ Finset.univ.erase j0, |Jty P u y j| := by
  have h1 : ∑ i, y i * ∑ j, Jm P u i j * centre d j = ∑ j, Jty P u y j * d j := by
    have : ∑ i, y i * ∑ j, Jm P u i j * centre d j = ∑ j, Jty P u y j * centre d j := by
      simp only [Jty, Finset.mul_sum, Finset.sum_mul]; rw [Finset.sum_comm]
      exact Finset.sum_congr rfl fun j _ => Finset.sum_congr rfl fun i _ => by ring
    rw [this]; simp only [centre, mul_sub, Finset.sum_sub_distrib, ← Finset.sum_mul, sum_Jty, zero_mul,
      sub_zero]
  rw [h1, ← Finset.sum_erase Finset.univ (f := fun j => Jty P u y j * d j) (a := j0) (by simp [hd0]),
    Finset.mul_sum]
  refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun j _ => ?_)
  rw [abs_mul, mul_comm a]
  exact mul_le_mul_of_nonneg_left (hd j) (abs_nonneg _)

/-! ### δ-term -/

/-- `(Bᵀy)_k = Σ_i y_i Σ_j J_{ij} (T_k)_{ji}`. -/
noncomputable def Bty (P : RMat6) (u y : I6 → ℝ) (T : Fin 4 → RMat6) (k : Fin 4) : ℝ :=
  ∑ i, y i * ∑ j, Jm P u i j * T k j i

lemma deltaterm_split (P : RMat6) (u y : I6 → ℝ) (T : Fin 4 → RMat6) (η : Fin 4 → ℝ) (ν : RMat6) :
    ∑ i, y i * ∑ j, Jm P u i j * ((∑ k, η k • T k) + ν) j i =
      ∑ k, η k * Bty P u y T k + ∑ p : I6 × I6, (y p.1 * Jm P u p.1 p.2) * ν p.2 p.1 := by
  have e1 : ∀ i j, ((∑ k, η k • T k) + ν) j i = ∑ k, η k * T k j i + ν j i := by
    intro i j; simp [Matrix.sum_apply]
  have hA : ∑ i, y i * ∑ j, Jm P u i j * (∑ k, η k * T k j i) = ∑ k, η k * Bty P u y T k := by
    simp only [Bty, Finset.mul_sum]
    symm; rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [Finset.sum_comm]
    exact Finset.sum_congr rfl fun j _ => Finset.sum_congr rfl fun k _ => by ring
  have hB : ∑ i, y i * ∑ j, Jm P u i j * ν j i = ∑ p : I6 × I6, (y p.1 * Jm P u p.1 p.2) * ν p.2 p.1 := by
    rw [Fintype.sum_prod_type]; simp only [Finset.mul_sum]
    exact Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => by ring
  rw [← hA, ← hB, ← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [← mul_add, ← Finset.sum_add_distrib]
  congr 1
  exact Finset.sum_congr rfl fun j _ => by rw [e1, mul_add]

lemma nuterm_le (P : RMat6) (u y : I6 → ℝ) (ν : RMat6) :
    |∑ p : I6 × I6, (y p.1 * Jm P u p.1 p.2) * ν p.2 p.1| ≤
      frob ν * Real.sqrt (∑ i, ∑ j, (y i * Jm P u i j) ^ 2) := by
  refine (abs_sum_mul_le _ _).trans (le_of_eq ?_)
  rw [mul_comm, frob_eq_sqrt, sumsq, Fintype.sum_prod_type, Fintype.sum_prod_type]
  congr 2
  rw [Finset.sum_comm]

/-! ### The squared-increment term -/

lemma min_scale {c A B : ℝ} (hc : 0 ≤ c) : min (c * A) (c * B) = c * min A B := (mul_min_of_nonneg _ _ hc).symm

/-- **Δ-term.**  `|Σ_i y_i |Δ_i|²|/(4π) ≤ π min(‖y‖_∞(KX + r_F)², ‖y‖₁(KX + r)²)`. -/
lemma Dterm_le {P δ : RMat6} {u x y : I6 → ℝ} {K X r rF Yinf Y1 : ℝ} (hK0 : 0 ≤ K)
    (hK : ∀ z, cnorm (Qop P z) ≤ K * cnorm z) (hX : vnorm x ≤ X) (hr : ∀ i, colnorm δ i ≤ r)
    (hrF : frob δ ≤ rF) (hYinf : ∀ i, |y i| ≤ Yinf) (hY1 : ∑ i, |y i| ≤ Y1) :
    |∑ i, y i * ‖S' P δ u x i - S P u i‖ ^ 2| / (4 * Real.pi) ≤
      Real.pi * min (Yinf * (K * X + rF) ^ 2) (Y1 * (K * X + r) ^ 2) := by
  have hpi := Real.pi_pos
  set D : I6 → ℝ := fun i => ‖S' P δ u x i - S P u i‖
  have habs : |∑ i, y i * D i ^ 2| ≤ ∑ i, |y i| * D i ^ 2 := by
    refine (Finset.abs_sum_le_sum_abs _ _).trans (le_of_eq (Finset.sum_congr rfl fun i _ => ?_))
    rw [abs_mul, abs_of_nonneg (sq_nonneg (D i))]
  have hY0 : 0 ≤ Yinf := (abs_nonneg _).trans (hYinf j0)
  have hx0 : 0 ≤ vnorm x := vnorm_nonneg x
  have hKX : K * vnorm x ≤ K * X := mul_le_mul_of_nonneg_left hX hK0
  have ha : |∑ i, y i * D i ^ 2| ≤ 4 * Real.pi ^ 2 * (Yinf * (K * X + rF) ^ 2) := by
    have hc := cnorm_S'_sub_S_le (δ := δ) (u := u) (x := x) hK0 hK
    have hsum : ∑ i, D i ^ 2 = cnorm (fun i => S' P δ u x i - S P u i) ^ 2 := by
      rw [cnorm, vnorm, Real.sq_sqrt (Finset.sum_nonneg fun _ _ => sq_nonneg _)]
    have h1 : ∑ i, |y i| * D i ^ 2 ≤ Yinf * ∑ i, D i ^ 2 := by
      rw [Finset.mul_sum]; exact Finset.sum_le_sum fun i _ =>
        mul_le_mul_of_nonneg_right (hYinf i) (sq_nonneg _)
    have hc0 : 0 ≤ cnorm (fun i => S' P δ u x i - S P u i) := vnorm_nonneg _
    have hfr : 0 ≤ frob δ := by rw [frob_eq_sqrt]; exact Real.sqrt_nonneg _
    have h2 : cnorm (fun i => S' P δ u x i - S P u i) ^ 2 ≤ (2 * Real.pi * (K * X + rF)) ^ 2 := by
      have : 2 * Real.pi * (K * vnorm x + frob δ) ≤ 2 * Real.pi * (K * X + rF) := by gcongr
      exact pow_le_pow_left₀ hc0 (hc.trans this) 2
    rw [hsum] at h1
    nlinarith
  have hb : |∑ i, y i * D i ^ 2| ≤ 4 * Real.pi ^ 2 * (Y1 * (K * X + r) ^ 2) := by
    have h1 : ∀ i, D i ^ 2 ≤ (2 * Real.pi * (K * X + r)) ^ 2 := fun i => by
      have h := norm_S'_sub_S_le_K (δ := δ) (u := u) (x := x) hK0 hK i
      have : 2 * Real.pi * (K * vnorm x + colnorm δ i) ≤ 2 * Real.pi * (K * X + r) := by
        have := hr i; gcongr
      exact pow_le_pow_left₀ (norm_nonneg _) (h.trans this) 2
    have h2 : ∑ i, |y i| * D i ^ 2 ≤ (∑ i, |y i|) * (2 * Real.pi * (K * X + r)) ^ 2 := by
      rw [Finset.sum_mul]; exact Finset.sum_le_sum fun i _ => mul_le_mul_of_nonneg_left (h1 i) (abs_nonneg _)
    have h3 : (∑ i, |y i|) * (2 * Real.pi * (K * X + r)) ^ 2 ≤ Y1 * (2 * Real.pi * (K * X + r)) ^ 2 :=
      mul_le_mul_of_nonneg_right hY1 (sq_nonneg _)
    nlinarith
  rw [div_le_iff₀ (by positivity)]
  have := le_min ha hb
  rw [min_scale (by positivity)] at this
  nlinarith

/-! ### The second-order remainder ρ -/

noncomputable def rx (x : I6 → ℝ) (j : I6) : ℂ := e (x j) - 1 - ((2 * Real.pi * x j : ℝ) : ℂ) * Complex.I
noncomputable def rd (δ : RMat6) (j i : I6) : ℂ :=
  e (-δ j i) - 1 - ((2 * Real.pi * (-δ j i) : ℝ) : ℂ) * Complex.I
noncomputable def rc (δ : RMat6) (x : I6 → ℝ) (j i : I6) : ℂ := (e (x j) - 1) * (e (-δ j i) - 1)

lemma rho_split (P δ : RMat6) (u x : I6 → ℝ) (i : I6) :
    rho P δ u x i = ∑ j, q P u j i * rx x j + ∑ j, q P u j i * rc δ x j i + ∑ j, q P u j i * rd δ j i := by
  simp only [rho, ← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [show x j - δ j i = x j + -δ j i by ring, e_add]
  simp only [rx, rc, rd]; push_cast; ring

/-- Weighted sums `Σ_i y_i S̄_i w_i`. -/
noncomputable def wsum (P : RMat6) (u y : I6 → ℝ) (w : I6 → ℂ) : ℂ := ∑ i, (y i : ℂ) * star (S P u i) * w i

lemma norm_wsum_le (P : RMat6) (u y : I6 → ℝ) (w : I6 → ℂ) {b : I6 → ℝ} (hb : ∀ i, ‖w i‖ ≤ b i) :
    ‖wsum P u y w‖ ≤ ∑ i, |y i| * ‖S P u i‖ * b i := by
  refine (norm_sum_le _ _).trans (Finset.sum_le_sum fun i _ => ?_)
  rw [norm_mul, norm_mul, norm_star, Complex.norm_real, Real.norm_eq_abs]
  exact mul_le_mul_of_nonneg_left (hb i) (by positivity)

lemma sum_a_colnorm_le (a : I6 → ℝ) (δ : RMat6) :
    ∑ i, a i * colnorm δ i ≤ vnorm a * frob δ := by
  rw [← vnorm_colnorm]; exact (le_abs_self _).trans (abs_sum_mul_le _ _)

lemma sum_a_colnorm_sq_le {a : I6 → ℝ} {A : ℝ} (ha : ∀ i, a i ≤ A) (δ : RMat6) :
    ∑ i, a i * colnorm δ i ^ 2 ≤ A * frob δ ^ 2 := by
  have : frob δ ^ 2 = ∑ i, colnorm δ i ^ 2 := by
    rw [← vnorm_colnorm, vnorm, Real.sq_sqrt (Finset.sum_nonneg fun _ _ => sq_nonneg _)]
  rw [this, Finset.mul_sum]
  exact Finset.sum_le_sum fun i _ => mul_le_mul_of_nonneg_right (ha i) (sq_nonneg _)

lemma colnorm_sq (δ : RMat6) (i : I6) : colnorm δ i ^ 2 = ∑ j, δ j i ^ 2 := by
  rw [colnorm, vnorm, Real.sq_sqrt (Finset.sum_nonneg fun _ _ => sq_nonneg _)]

/-- Pure-x part, first form: `‖Σ_j g_j ρx_j‖ ≤ 2π² G X²`. -/
lemma Wx_le_G {P : RMat6} {u x y : I6 → ℝ} {G X : ℝ}
    (hG : ∀ j, ‖∑ i, (y i : ℂ) * star (S P u i) * q P u j i‖ ≤ G) (hX : vnorm x ≤ X) :
    ‖wsum P u y (fun i => ∑ j, q P u j i * rx x j)‖ ≤ 2 * Real.pi ^ 2 * (G * X ^ 2) := by
  have hG0 : 0 ≤ G := (norm_nonneg _).trans (hG j0)
  have e1 : wsum P u y (fun i => ∑ j, q P u j i * rx x j) =
      ∑ j, (∑ i, (y i : ℂ) * star (S P u i) * q P u j i) * rx x j := by
    simp only [wsum, Finset.mul_sum, Finset.sum_mul]; rw [Finset.sum_comm]
    exact Finset.sum_congr rfl fun j _ => Finset.sum_congr rfl fun i _ => by ring
  rw [e1]
  have hx2 : ∑ j, x j ^ 2 ≤ X ^ 2 := by
    have h0 := vnorm_nonneg x
    have : vnorm x ^ 2 = ∑ j, x j ^ 2 := Real.sq_sqrt (Finset.sum_nonneg fun _ _ => sq_nonneg _)
    nlinarith
  calc _ ≤ ∑ j, G * (2 * Real.pi ^ 2 * x j ^ 2) := by
        refine (norm_sum_le _ _).trans (Finset.sum_le_sum fun j _ => ?_)
        rw [norm_mul]
        exact mul_le_mul (hG j) (norm_e_sub_lin_le (x j)) (norm_nonneg _) hG0
    _ = 2 * Real.pi ^ 2 * (G * ∑ j, x j ^ 2) := by
        rw [Finset.mul_sum, Finset.mul_sum]; exact Finset.sum_congr rfl fun j _ => by ring
    _ ≤ _ := by gcongr

/-- Pure-x part, second form: `≤ 2π² K ‖S∘y‖ I X`. -/
lemma Wx_le_K {P : RMat6} {u x y : I6 → ℝ} {K X I SY2 : ℝ} (hK0 : 0 ≤ K)
    (hK : ∀ z, cnorm (Qop P z) ≤ K * cnorm z) (hX : vnorm x ≤ X) (hI : ∀ j, |x j| ≤ I)
    (hSY2 : vnorm (fun i => |y i| * ‖S P u i‖) ≤ SY2) :
    ‖wsum P u y (fun i => ∑ j, q P u j i * rx x j)‖ ≤ 2 * Real.pi ^ 2 * (K * SY2 * I * X) := by
  have hI0 : 0 ≤ I := (abs_nonneg _).trans (hI j0)
  set z : I6 → ℂ := fun j => e (u j) * rx x j
  have hQ : ∀ i, ∑ j, q P u j i * rx x j = Qop P z i := fun i => by
    simp only [Qop, z, q]; refine Finset.sum_congr rfl fun j _ => ?_
    rw [show u j - P j i = u j + -P j i by ring, e_add]; ring
  have hz : cnorm z ≤ 2 * Real.pi ^ 2 * I * vnorm x := by
    rw [← vnorm_abs x, show 2 * Real.pi ^ 2 * I * vnorm (fun j => |x j|) =
      vnorm (fun j => 2 * Real.pi ^ 2 * I * |x j|) by rw [vnorm_smul (by positivity)]]
    refine cnorm_le_of_norm_le fun j => ?_
    simp only [z, norm_mul, norm_e, one_mul]
    refine (norm_e_sub_lin_le (x j)).trans ?_
    have := hI j
    have : x j ^ 2 ≤ I * |x j| := by nlinarith [sq_abs (x j), abs_nonneg (x j)]
    nlinarith [Real.pi_pos]
  have ha : ∀ i, 0 ≤ |y i| * ‖S P u i‖ := fun i => by positivity
  have h1 := norm_wsum_le P u y (fun i => ∑ j, q P u j i * rx x j) (b := fun i => ‖Qop P z i‖)
    (fun i => by rw [hQ])
  have h2 : ∑ i, |y i| * ‖S P u i‖ * ‖Qop P z i‖ ≤ SY2 * cnorm (Qop P z) := by
    refine ((le_abs_self _).trans (abs_sum_mul_le (fun i => |y i| * ‖S P u i‖) _)).trans ?_
    have hc : Real.sqrt (∑ i, ‖Qop P z i‖ ^ 2) = cnorm (Qop P z) := rfl
    rw [hc]
    exact mul_le_mul_of_nonneg_right hSY2 (vnorm_nonneg _)
  have hSY0 : 0 ≤ SY2 := (vnorm_nonneg _).trans hSY2
  have h3 : cnorm (Qop P z) ≤ K * (2 * Real.pi ^ 2 * I * X) :=
    (hK z).trans (mul_le_mul_of_nonneg_left (hz.trans (by gcongr)) hK0)
  calc _ ≤ SY2 * cnorm (Qop P z) := h1.trans h2
    _ ≤ SY2 * (K * (2 * Real.pi ^ 2 * I * X)) := mul_le_mul_of_nonneg_left h3 hSY0
    _ = _ := by ring

lemma norm_q_mul_le (P : RMat6) (u : I6 → ℝ) (j i : I6) (w : ℂ) {b : ℝ} (hw : ‖w‖ ≤ b) :
    ‖q P u j i * w‖ ≤ b / Real.sqrt 6 := by
  rw [norm_mul, norm_q, one_div, inv_mul_eq_div]; exact div_le_div_of_nonneg_right hw sqrt6_pos.le

/-- Cross part: `≤ (4π²/√6) X min(‖S∘y‖₂ r_F, ‖S∘y‖₁ r)`. -/
lemma Wc_le {P δ : RMat6} {u x y : I6 → ℝ} {X r rF SY2 SY1 : ℝ} (hX : vnorm x ≤ X)
    (hr : ∀ i, colnorm δ i ≤ r) (hrF : frob δ ≤ rF)
    (hSY2 : vnorm (fun i => |y i| * ‖S P u i‖) ≤ SY2) (hSY1 : ∑ i, |y i| * ‖S P u i‖ ≤ SY1) :
    ‖wsum P u y (fun i => ∑ j, q P u j i * rc δ x j i)‖ ≤
      4 * Real.pi ^ 2 / Real.sqrt 6 * X * min (SY2 * rF) (SY1 * r) := by
  have h6 := sqrt6_pos
  set a : I6 → ℝ := fun i => |y i| * ‖S P u i‖
  have ha : ∀ i, 0 ≤ a i := fun i => by positivity
  have hX0 : 0 ≤ X := (vnorm_nonneg x).trans hX
  have hcol : ∀ i, ‖∑ j, q P u j i * rc δ x j i‖ ≤ 4 * Real.pi ^ 2 / Real.sqrt 6 * X * colnorm δ i := by
    intro i
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
      _ ≤ 4 * Real.pi ^ 2 / Real.sqrt 6 * (X * colnorm δ i) := by
          gcongr
          exact hcs.trans (mul_le_mul_of_nonneg_right hX (vnorm_nonneg _))
      _ = _ := by ring
  have h1 := norm_wsum_le P u y _ hcol
  have hsum : ∑ i, a i * (4 * Real.pi ^ 2 / Real.sqrt 6 * X * colnorm δ i) =
      4 * Real.pi ^ 2 / Real.sqrt 6 * X * ∑ i, a i * colnorm δ i := by
    rw [Finset.mul_sum]; exact Finset.sum_congr rfl fun i _ => by ring
  have hfr : 0 ≤ frob δ := by rw [frob_eq_sqrt]; exact Real.sqrt_nonneg _
  have hm1 : ∑ i, a i * colnorm δ i ≤ SY2 * rF :=
    (sum_a_colnorm_le a δ).trans (mul_le_mul hSY2 hrF hfr ((vnorm_nonneg _).trans hSY2))
  have hm2 : ∑ i, a i * colnorm δ i ≤ SY1 * r := by
    calc _ ≤ ∑ i, a i * r := Finset.sum_le_sum fun i _ => mul_le_mul_of_nonneg_left (hr i) (ha i)
      _ = (∑ i, a i) * r := by rw [Finset.sum_mul]
      _ ≤ SY1 * r := mul_le_mul_of_nonneg_right hSY1 ((vnorm_nonneg _).trans (hr j0))
  calc _ ≤ ∑ i, a i * (4 * Real.pi ^ 2 / Real.sqrt 6 * X * colnorm δ i) := h1
    _ = _ := hsum
    _ ≤ _ := by gcongr; exact le_min hm1 hm2

/-- Pure-δ part: `≤ (2π²/√6) min(‖S∘y‖_∞ r_F², ‖S∘y‖₁ r²)`. -/
lemma Wd_le {P δ : RMat6} {u y : I6 → ℝ} {r rF SYinf SY1 : ℝ}
    (hr : ∀ i, colnorm δ i ≤ r) (hrF : frob δ ≤ rF)
    (hSYinf : ∀ i, |y i| * ‖S P u i‖ ≤ SYinf) (hSY1 : ∑ i, |y i| * ‖S P u i‖ ≤ SY1) :
    ‖wsum P u y (fun i => ∑ j, q P u j i * rd δ j i)‖ ≤
      2 * Real.pi ^ 2 / Real.sqrt 6 * min (SYinf * rF ^ 2) (SY1 * r ^ 2) := by
  set a : I6 → ℝ := fun i => |y i| * ‖S P u i‖
  have ha : ∀ i, 0 ≤ a i := fun i => by positivity
  have hcol : ∀ i, ‖∑ j, q P u j i * rd δ j i‖ ≤ 2 * Real.pi ^ 2 / Real.sqrt 6 * colnorm δ i ^ 2 := by
    intro i
    calc _ ≤ ∑ j, 2 * Real.pi ^ 2 * δ j i ^ 2 / Real.sqrt 6 :=
          (norm_sum_le _ _).trans (Finset.sum_le_sum fun j _ => norm_q_mul_le _ _ _ _ _ (by
            have := norm_e_sub_lin_le (-δ j i); rwa [neg_sq] at this))
      _ = _ := by rw [colnorm_sq, Finset.mul_sum]; exact Finset.sum_congr rfl fun j _ => by ring
  have h1 := norm_wsum_le P u y _ hcol
  have hsum : ∑ i, a i * (2 * Real.pi ^ 2 / Real.sqrt 6 * colnorm δ i ^ 2) =
      2 * Real.pi ^ 2 / Real.sqrt 6 * ∑ i, a i * colnorm δ i ^ 2 := by
    rw [Finset.mul_sum]; exact Finset.sum_congr rfl fun i _ => by ring
  have hfr : 0 ≤ frob δ := by rw [frob_eq_sqrt]; exact Real.sqrt_nonneg _
  have hS0 : 0 ≤ SYinf := (ha j0).trans (hSYinf j0)
  have hm1 : ∑ i, a i * colnorm δ i ^ 2 ≤ SYinf * rF ^ 2 :=
    (sum_a_colnorm_sq_le hSYinf δ).trans (mul_le_mul_of_nonneg_left (pow_le_pow_left₀ hfr hrF 2) hS0)
  have hm2 : ∑ i, a i * colnorm δ i ^ 2 ≤ SY1 * r ^ 2 := by
    calc _ ≤ ∑ i, a i * r ^ 2 := Finset.sum_le_sum fun i _ =>
          mul_le_mul_of_nonneg_left (pow_le_pow_left₀ (vnorm_nonneg _) (hr i) 2) (ha i)
      _ = (∑ i, a i) * r ^ 2 := by rw [Finset.sum_mul]
      _ ≤ SY1 * r ^ 2 := mul_le_mul_of_nonneg_right hSY1 (sq_nonneg _)
  calc _ ≤ ∑ i, a i * (2 * Real.pi ^ 2 / Real.sqrt 6 * colnorm δ i ^ 2) := h1
    _ = _ := hsum
    _ ≤ _ := by gcongr; exact le_min hm1 hm2

/-! ### C2(b) soundness -/

lemma wsum_add3 (P : RMat6) (u y : I6 → ℝ) (A B C : I6 → ℂ) :
    wsum P u y (fun i => A i + B i + C i) = wsum P u y A + wsum P u y B + wsum P u y C := by
  simp only [wsum, mul_add, Finset.sum_add_distrib]

lemma sum_re_eq_wsum (P δ : RMat6) (u x y : I6 → ℝ) :
    ∑ i, y i * (star (S P u i) * rho P δ u x i).re = (wsum P u y (rho P δ u x)).re := by
  rw [wsum, Complex.re_sum]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [mul_assoc, Complex.re_ofReal_mul]

/-- **The core bound.**  If `e(u + x)` is unbiased to every column of `E(P + δ)`, `δ = Σ_k η_k T_k + ν`, then for
every `y ∈ ℝ⁶` everything except the two linear parts `(Jᵀy)·x` and `η·(Bᵀy)` is bounded by `𝓔(y)`:

  `|y·c + (Jᵀy)·x − η·(Bᵀy)| ≤ n N_y + π[min(‖y‖_∞(KX + r_F)², ‖y‖₁(KX + r)²) + min(G X², K‖S∘y‖ I X)
                                  + (2/√6) X min(‖S∘y‖₂ r_F, ‖S∘y‖₁ r) + (1/√6) min(‖S∘y‖_∞ r_F², ‖S∘y‖₁ r²)]`. -/
theorem core_bound {P δ : RMat6} {u y x : I6 → ℝ} {T : Fin 4 → RMat6} {η : Fin 4 → ℝ} {ν : RMat6}
    {n K X I r rF Yinf Y1 G SY2 SY1 SYinf N : ℝ}
    (hδ : δ = (∑ k, η k • T k) + ν) (hν : frob ν ≤ n)
    (hr : ∀ i, colnorm δ i ≤ r) (hrF : frob δ ≤ rF)
    (hK0 : 0 ≤ K) (hK : ∀ z, cnorm (Qop P z) ≤ K * cnorm z)
    (hX : vnorm x ≤ X) (hI : ∀ j, |x j| ≤ I)
    (hYinf : ∀ i, |y i| ≤ Yinf) (hY1 : ∑ i, |y i| ≤ Y1)
    (hG : ∀ j, ‖∑ i, (y i : ℂ) * star (S P u i) * q P u j i‖ ≤ G)
    (hSY2 : vnorm (fun i => |y i| * ‖S P u i‖) ≤ SY2) (hSY1 : ∑ i, |y i| * ‖S P u i‖ ≤ SY1)
    (hSYinf : ∀ i, |y i| * ‖S P u i‖ ≤ SYinf)
    (hN : Real.sqrt (∑ i, ∑ j, (y i * Jm P u i j) ^ 2) ≤ N)
    (hcol : ColUnb (E (P + δ)) (fun j => e (u j + x j))) :
    |∑ i, y i * cc P u i + ∑ j, Jty P u y j * x j - ∑ k, η k * Bty P u y T k| ≤ n * N +
      Real.pi * (min (Yinf * (K * X + rF) ^ 2) (Y1 * (K * X + r) ^ 2) + min (G * X ^ 2) (K * SY2 * I * X) +
        2 / Real.sqrt 6 * X * min (SY2 * rF) (SY1 * r) + 1 / Real.sqrt 6 * min (SYinf * rF ^ 2) (SY1 * r ^ 2)) := by
  have hpi := Real.pi_pos
  have h6 := sqrt6_pos
  have hS' := (colUnb_iff P δ u x).mp hcol
  have hid : ∀ i, cc P u i = -(∑ j, Jm P u i j * x j) + ∑ j, Jm P u i j * δ j i -
      ‖S' P δ u x i - S P u i‖ ^ 2 / (4 * Real.pi) - (star (S P u i) * rho P δ u x i).re / (2 * Real.pi) := by
    intro i
    have h := expansion P δ u x i
    rw [hS' i] at h
    simp only [one_pow, sub_self, zero_div] at h
    have : ∑ j, Jm P u i j * (x j - δ j i) = ∑ j, Jm P u i j * x j - ∑ j, Jm P u i j * δ j i := by
      rw [← Finset.sum_sub_distrib]; exact Finset.sum_congr rfl fun j _ => by ring
    linarith
  have hX1 : ∑ i, y i * ∑ j, Jm P u i j * x j = ∑ j, Jty P u y j * x j := by
    simp only [Jty, Finset.mul_sum, Finset.sum_mul]; rw [Finset.sum_comm]
    exact Finset.sum_congr rfl fun j _ => Finset.sum_congr rfl fun i _ => by ring
  set Xν := ∑ p : I6 × I6, (y p.1 * Jm P u p.1 p.2) * ν p.2 p.1
  have hX2 : ∑ i, y i * ∑ j, Jm P u i j * δ j i = ∑ k, η k * Bty P u y T k + Xν := by
    rw [hδ]; exact deltaterm_split P u y T η ν
  set X3 := (∑ i, y i * ‖S' P δ u x i - S P u i‖ ^ 2) / (4 * Real.pi)
  set X4 := (∑ i, y i * (star (S P u i) * rho P δ u x i).re) / (2 * Real.pi)
  have hsum : ∑ i, y i * cc P u i + ∑ j, Jty P u y j * x j - ∑ k, η k * Bty P u y T k = Xν - X3 - X4 := by
    rw [← hX1]
    have : ∑ i, y i * cc P u i = -(∑ i, y i * ∑ j, Jm P u i j * x j) + (∑ i, y i * ∑ j, Jm P u i j * δ j i) - X3 - X4 := by
      simp only [X3, X4, hid, mul_sub, mul_add, mul_neg, Finset.sum_sub_distrib, Finset.sum_add_distrib,
        Finset.sum_neg_distrib, Finset.sum_div, mul_div_assoc]
    rw [this, hX2]; ring
  have bν : |Xν| ≤ n * N := by
    have hν0 : 0 ≤ frob ν := by rw [frob_eq_sqrt]; exact Real.sqrt_nonneg _
    have hN0 : 0 ≤ Real.sqrt (∑ i, ∑ j, (y i * Jm P u i j) ^ 2) := Real.sqrt_nonneg _
    exact (nuterm_le P u y ν).trans (mul_le_mul hν hN hN0 (hν0.trans hν))
  have b3 : |X3| ≤ Real.pi * min (Yinf * (K * X + rF) ^ 2) (Y1 * (K * X + r) ^ 2) := by
    rw [abs_div, abs_of_pos (by positivity : (0:ℝ) < 4 * Real.pi)]
    exact Dterm_le hK0 hK hX hr hrF hYinf hY1
  have b4 : |X4| ≤ Real.pi * (min (G * X ^ 2) (K * SY2 * I * X) + 2 / Real.sqrt 6 * X * min (SY2 * rF) (SY1 * r) +
      1 / Real.sqrt 6 * min (SYinf * rF ^ 2) (SY1 * r ^ 2)) := by
    rw [abs_div, abs_of_pos (by positivity : (0:ℝ) < 2 * Real.pi), sum_re_eq_wsum, div_le_iff₀ (by positivity)]
    have hsplit : wsum P u y (rho P δ u x) = wsum P u y (fun i => ∑ j, q P u j i * rx x j) +
        wsum P u y (fun i => ∑ j, q P u j i * rc δ x j i) + wsum P u y (fun i => ∑ j, q P u j i * rd δ j i) := by
      rw [← wsum_add3]; congr 1; funext i; exact rho_split P δ u x i
    have hx1 := le_min (Wx_le_G (u := u) (x := x) hG hX) (Wx_le_K (u := u) hK0 hK hX hI hSY2)
    rw [min_scale (by positivity)] at hx1
    have hc := Wc_le (δ := δ) (u := u) (x := x) hX hr hrF hSY2 hSY1
    have hdd := Wd_le (δ := δ) (u := u) hr hrF hSYinf hSY1
    calc |(wsum P u y (rho P δ u x)).re| ≤ ‖wsum P u y (rho P δ u x)‖ := Complex.abs_re_le_norm _
      _ ≤ ‖wsum P u y (fun i => ∑ j, q P u j i * rx x j)‖ + ‖wsum P u y (fun i => ∑ j, q P u j i * rc δ x j i)‖ +
          ‖wsum P u y (fun i => ∑ j, q P u j i * rd δ j i)‖ := by
          rw [hsplit]; exact (norm_add_le _ _).trans (add_le_add (norm_add_le _ _) le_rfl)
      _ ≤ 2 * Real.pi ^ 2 * min (G * X ^ 2) (K * SY2 * I * X) +
          4 * Real.pi ^ 2 / Real.sqrt 6 * X * min (SY2 * rF) (SY1 * r) +
          2 * Real.pi ^ 2 / Real.sqrt 6 * min (SYinf * rF ^ 2) (SY1 * r ^ 2) := by linarith
      _ = _ := by field_simp; ring
  rw [hsum, abs_le]
  constructor <;>
  linarith [le_abs_self Xν, neg_abs_le Xν, le_abs_self X3, neg_abs_le X3, le_abs_self X4, neg_abs_le X4]

/-- **Linearised test (C2b).**  If `e(u + centre d)` is unbiased to every column of `E(P + δ)`, with
`δ = Σ_k η_k T_k + ν`, then for every `y ∈ ℝ⁶`

  `|y·c| ≤ a Σ_{j≠0}|(Jᵀy)_j| + r_H‖Bᵀy‖ + 𝓔(y)`,

with `𝓔(y)` the right side of `core_bound`.  Every bound is a parameter with a hypothesis that it bounds the true
quantity. -/
theorem linear_test {P δ : RMat6} {u y d : I6 → ℝ} {T : Fin 4 → RMat6} {η : Fin 4 → ℝ} {ν : RMat6}
    {a rH n K X I r rF Yinf Y1 G SY2 SY1 SYinf Bn N : ℝ}
    (hd0 : d j0 = 0) (hd : ∀ j, |d j| ≤ a)
    (hδ : δ = (∑ k, η k • T k) + ν) (hη : Real.sqrt (∑ k, η k ^ 2) ≤ rH) (hν : frob ν ≤ n)
    (hr : ∀ i, colnorm δ i ≤ r) (hrF : frob δ ≤ rF)
    (hK0 : 0 ≤ K) (hK : ∀ z, cnorm (Qop P z) ≤ K * cnorm z)
    (hX : vnorm (centre d) ≤ X) (hI : ∀ j, |centre d j| ≤ I)
    (hYinf : ∀ i, |y i| ≤ Yinf) (hY1 : ∑ i, |y i| ≤ Y1)
    (hG : ∀ j, ‖∑ i, (y i : ℂ) * star (S P u i) * q P u j i‖ ≤ G)
    (hSY2 : vnorm (fun i => |y i| * ‖S P u i‖) ≤ SY2) (hSY1 : ∑ i, |y i| * ‖S P u i‖ ≤ SY1)
    (hSYinf : ∀ i, |y i| * ‖S P u i‖ ≤ SYinf)
    (hBn : Real.sqrt (∑ k, Bty P u y T k ^ 2) ≤ Bn)
    (hN : Real.sqrt (∑ i, ∑ j, (y i * Jm P u i j) ^ 2) ≤ N)
    (hcol : ColUnb (E (P + δ)) (fun j => e (u j + centre d j))) :
    |∑ i, y i * cc P u i| ≤ a * ∑ j ∈ Finset.univ.erase j0, |Jty P u y j| + rH * Bn + n * N +
      Real.pi * (min (Yinf * (K * X + rF) ^ 2) (Y1 * (K * X + r) ^ 2) + min (G * X ^ 2) (K * SY2 * I * X) +
        2 / Real.sqrt 6 * X * min (SY2 * rF) (SY1 * r) + 1 / Real.sqrt 6 * min (SYinf * rF ^ 2) (SY1 * r ^ 2)) := by
  have hc := core_bound hδ hν hr hrF hK0 hK hX hI hYinf hY1 hG hSY2 hSY1 hSYinf hN hcol
  have hx : |∑ j, Jty P u y j * centre d j| ≤ a * ∑ j ∈ Finset.univ.erase j0, |Jty P u y j| := by
    have h := xterm_le (P := P) (u := u) (y := y) hd0 hd
    have e1 : ∑ i, y i * ∑ j, Jm P u i j * centre d j = ∑ j, Jty P u y j * centre d j := by
      simp only [Jty, Finset.mul_sum, Finset.sum_mul]; rw [Finset.sum_comm]
      exact Finset.sum_congr rfl fun j _ => Finset.sum_congr rfl fun i _ => by ring
    rwa [e1] at h
  have hη' : |∑ k, η k * Bty P u y T k| ≤ rH * Bn := by
    have hB0 : 0 ≤ Real.sqrt (∑ k, Bty P u y T k ^ 2) := Real.sqrt_nonneg _
    exact (abs_sum_mul_le _ _).trans (mul_le_mul hη hBn hB0 ((Real.sqrt_nonneg _).trans hη))
  set C := ∑ i, y i * cc P u i
  set A := ∑ j, Jty P u y j * centre d j
  set B := ∑ k, η k * Bty P u y T k
  rw [abs_le] at hc ⊢
  constructor <;> linarith [le_abs_self A, neg_abs_le A, le_abs_self B, neg_abs_le B, hc.1, hc.2]

end NoFourMUBs.StageC
