import NoFourMUBs.NormalBound

/-!
# The normal tube: the analytic lemmas behind the record → seed transfer T1′

FORMAT.md §6 encloses, over an η-box of a full-matrix record `(P, T, n)`, every normal component `ν ∈ N` of the record's
Hadamards `e^{i(P + Tη + ν)}` (`ν` horizontal, `⟂` every `T_k`, `‖ν‖ ≤ n`): `ν = N_b x`,
`F(x) = Y Φ_P(Tη + N_b x)`, and the iteration `r ← b_F + q(r) r` with
`q(r) = ε₀ + ‖Y‖ · 2√3 · ‖N_b‖ · (s_u + ‖N_b‖ r)` (piece A's `seedcert.nu_enclosure`, A1–A3; piece C's
`normal_tube.jl`).  It is an exclusion argument: no existence, uniqueness or contraction is used.

**Conventions** (those of `NormalBound.lean`).  `Φ_P(δ) = e^{i(P+δ)} e^{i(P+δ)}ᴴ − 6`, `J_P v = Jac P v` (the derivative
of `Φ_P` at `0`; the derivative at `δ` is `Jac (P + δ)`), outputs measured by `outNorm` (the Euclidean norm of the 15
entries `a < b`, i.e. of the certifiers' 30 real coordinates, for Hermitian zero-diagonal outputs), displacements
by `frob`.  Coordinates `x ∈ ℝ^m` (`Fin m → ℝ`) are measured by `xnorm x = √(Σ x_k²)`.

**Encoding.**
* `N_b`: a family `B : Fin m → RMat6` (the columns of the `36 × m` matrix), `nbMap B x = Σ_k x_k B_k`.
* `Y`: two families `Yre Yim : Fin m → RMat6`, `(yMap Yre Yim w)_k = Σ_{a,b} Yre_k,ab Re w_ab + Yim_k,ab Im w_ab`.
  The certifiers' `21 × 30` matrix is the case `Yre_k`, `Yim_k` supported on the strict upper triangle (Re and Im of
  pair `(a < b)`); their row order of the 30 coordinates is immaterial.
* The abstract theorems (§3) take any additive `N_b : ℝ^m →+ RMat6`, `Y : Mat6 →+ ℝ^m` and operator-norm bounds as
  hypotheses; §4–§5 discharge those from rational data.

**Main results.**
1. `outNorm_jac_sub_le`: `‖J_{P+d} v − J_P v‖ ≤ 2√3 ‖d‖ ‖v‖` for all real `d, v` (not only horizontal).
2. `outNorm_phi_sub_jac_le` (mean-value form, calculus-free):
   `‖Φ_P(δ₁) − Φ_P(δ₀) − J_{P+c}(δ₁ − δ₀)‖ ≤ √3 ‖δ₁ − δ₀‖ (2‖δ₀ − c‖ + ‖δ₁ − δ₀‖)`.
3. `tube_implicit`, `tube_step_h`, `tube_step`, `tube_iter`, `tube_start`: if `Φ_P(u + N_b x*) = 0`, then with
   `e = x* − x̃`: `‖e‖ ≤ b_F + (ε₀ + y_N √3 n_N (2 s_u + n_N ‖e‖)) ‖e‖`; hence `‖e‖ ≤ r ⇒ ‖e‖ ≤ b_F + q(r) r`
   (and the sharper `q_h(r) = ε₀ + y_N L n_N (s_u + n_N r/2)`), and every iterate `r_{k+1} ≥ b_F + q(r_k) r_k` is an
   enclosure radius.  `L ≥ 2√3` is any real with `12 ≤ L²` (rational in a kernel check).
4. Rational discharges: `frob_nbMap_le` / `frob_nbMap_le_of_gram` (`‖N_b‖`), `xnorm_yMap_le` /
   `xnorm_yMap_le_of_gram` (`‖Y‖` on Hermitian inputs), `heps_of_epsMat` (`ε₀`), `xnorm_le_of_gram` (`c_N`),
   `gershgorin`, `gershgorin_upper`, `abs_nbMap_apply_le` (per-entry remainder `‖N_b[e,:]‖ r`).
5. `exists_nbMap_eq`: if `T` is horizontal and injective and `B_1..B_21 ∈ N` with `N_b` injective, every `ν ∈ N` is
   `N_b x` (`dim N ≤ 21`).  Both certifiers assume this implicitly (`ν = N_b x*`).
6. `tube_enclosure`, `tube_entry`, `normal_tube`: the assembled statements for a kernel check.
-/

open Matrix Hadamard6

noncomputable section

namespace NoFourMUBs.SeedAtlas.Method

open NoFourMUBs

/-! ### 1. The Jacobian's Lipschitz bound -/

/-- Entry formula: `(J_{P+d} v − J_P v)_{ab} = Σ_c Z_ac Z̄_bc (e^{i(d_ac − d_bc)} − 1) · i(v_ac − v_bc)`. -/
lemma jac_sub_apply (P d v : RMat6) (a b : I6) :
    (Jac (P + d) v - Jac P v) a b = ∑ c, phaseMat P a c * star (phaseMat P b c) *
      ((Complex.exp (((d a c - d b c : ℝ) : ℂ) * Complex.I) - 1) * (((v a c - v b c : ℝ) : ℂ) * Complex.I)) := by
  simp only [Jac, Matrix.sub_apply, of_apply, ← Finset.sum_sub_distrib]
  refine Finset.sum_congr rfl fun c _ => ?_
  simp only [phaseMat, of_apply, Matrix.add_apply, star_exp_mul_I]
  have key : Complex.exp (((P a c + d a c : ℝ) : ℂ) * Complex.I) *
      Complex.exp (((-(P b c + d b c) : ℝ) : ℂ) * Complex.I) =
      Complex.exp (((P a c : ℝ) : ℂ) * Complex.I) * Complex.exp (((-P b c : ℝ) : ℂ) * Complex.I) *
        Complex.exp (((d a c - d b c : ℝ) : ℂ) * Complex.I) := by
    rw [← Complex.exp_add, ← Complex.exp_add, ← Complex.exp_add]
    congr 1; push_cast; ring
  rw [key]; ring

lemma norm_exp_sub_one_le (y : ℝ) : ‖Complex.exp ((y : ℂ) * Complex.I) - 1‖ ≤ |y| := by
  have h := Real.norm_exp_I_mul_ofReal_sub_one_le (x := y)
  rw [mul_comm] at h
  simpa [Real.norm_eq_abs] using h

lemma norm_jac_sub_le (P d v : RMat6) (a b : I6) :
    ‖(Jac (P + d) v - Jac P v) a b‖ ≤ ∑ c, |d a c - d b c| * |v a c - v b c| := by
  rw [jac_sub_apply]
  refine (norm_sum_le _ _).trans (Finset.sum_le_sum fun c _ => ?_)
  rw [norm_mul, norm_mul, norm_star, norm_phaseMat, norm_phaseMat, one_mul, one_mul, norm_mul, norm_mul,
    Complex.norm_I, mul_one, Complex.norm_real, Real.norm_eq_abs]
  exact mul_le_mul_of_nonneg_right (norm_exp_sub_one_le _) (abs_nonneg _)

/-- Cauchy–Schwarz on one entry: `(Σ_c |x_c| |y_c|)² ≤ rowDist d · rowDist v`. -/
lemma sq_sum_abs_mul_le (d v : RMat6) (a b : I6) :
    (∑ c, |d a c - d b c| * |v a c - v b c|) ^ 2 ≤ rowDist d a b * rowDist v a b := by
  have h := Finset.sum_mul_sq_le_sq_mul_sq Finset.univ (fun c => |d a c - d b c|) (fun c => |v a c - v b c|)
  simpa only [sq_abs, rowDist] using h

/-- The aggregation step shared by the Lipschitz bound: entrywise `‖w_ab‖² ≤ rowDist d · rowDist v` gives
`‖w‖ ≤ 2√3 ‖d‖ ‖v‖` (`rowDist d ≤ 2‖d‖²`, `Σ_{a,b} rowDist v ≤ 12‖v‖²`). -/
lemma outNorm_le_of_entry_sq {w : Mat6} {d v : RMat6}
    (h : ∀ a b, ‖w a b‖ ^ 2 ≤ rowDist d a b * rowDist v a b) :
    outNorm w ≤ 2 * Real.sqrt 3 * frob d * frob v := by
  have hd : frob d ^ 2 = sumsq d := by rw [frob_eq_sqrt, Real.sq_sqrt (sumsq_nonneg d)]
  have hv : frob v ^ 2 = sumsq v := by rw [frob_eq_sqrt, Real.sq_sqrt (sumsq_nonneg v)]
  have hd0 : 0 ≤ frob d := by rw [frob_eq_sqrt]; exact Real.sqrt_nonneg _
  have hv0 : 0 ≤ frob v := by rw [frob_eq_sqrt]; exact Real.sqrt_nonneg _
  refine outNorm_le_of_sq_le (by positivity) ?_
  have hB : (2 * Real.sqrt 3 * frob d * frob v) ^ 2 = 12 * sumsq d * sumsq v := by
    rw [mul_pow, mul_pow, mul_pow, Real.sq_sqrt (by norm_num : (0:ℝ) ≤ 3), hd, hv]; ring
  rw [hB]
  have h1 : ∑ a, ∑ b, ‖w a b‖ ^ 2 ≤ ∑ a, ∑ b, 2 * sumsq d * rowDist v a b := by
    refine Finset.sum_le_sum fun a _ => Finset.sum_le_sum fun b _ => (h a b).trans ?_
    exact mul_le_mul_of_nonneg_right (rowDist_le d a b) (rowDist_nonneg v a b)
  have h2 : ∑ a, ∑ b, 2 * sumsq d * rowDist v a b = 2 * sumsq d * ∑ a, ∑ b, rowDist v a b := by
    simp_rw [Finset.mul_sum]
  have h3 := sum_rowDist_le v
  have h4 : 0 ≤ sumsq d := sumsq_nonneg d
  rw [h2] at h1
  nlinarith

/-- **The Jacobian's Lipschitz bound.**  `‖J_{P+d} v − J_P v‖ ≤ 2√3 ‖d‖ ‖v‖` for every centre `P` and all real `d`,
`v` (not only horizontal ones); `‖·‖` is `outNorm` on outputs and `frob` on displacements. -/
theorem outNorm_jac_sub_le (P d v : RMat6) :
    outNorm (Jac (P + d) v - Jac P v) ≤ 2 * Real.sqrt 3 * frob d * frob v := by
  refine outNorm_le_of_entry_sq fun a b => ?_
  have h1 := norm_jac_sub_le P d v a b
  exact (pow_le_pow_left₀ (norm_nonneg _) h1 2).trans (sq_sum_abs_mul_le d v a b)

/-! ### 2. The mean-value form -/

lemma phi_shift (P δ₀ h : RMat6) : Phi (P + δ₀) h = Phi P (δ₀ + h) := by
  unfold Phi; rw [add_assoc]

/-- **Mean-value form.**  For every centre `P`, linearisation point `c` and displacements `δ₀, δ₁`,
`‖Φ_P(δ₁) − Φ_P(δ₀) − J_{P+c}(δ₁ − δ₀)‖ ≤ √3 ‖δ₁ − δ₀‖ (2‖δ₀ − c‖ + ‖δ₁ − δ₀‖)`
`= 2√3 ‖δ₁ − δ₀‖ (‖δ₀ − c‖ + ‖δ₁ − δ₀‖/2)`.
Calculus-free: the remainder bound `outNorm_rem_le` at the centre `P + δ₀` plus the Lipschitz bound. -/
theorem outNorm_phi_sub_jac_le (P c δ₀ δ₁ : RMat6) :
    outNorm (Phi P δ₁ - Phi P δ₀ - Jac (P + c) (δ₁ - δ₀)) ≤
      Real.sqrt 3 * frob (δ₁ - δ₀) * (2 * frob (δ₀ - c) + frob (δ₁ - δ₀)) := by
  set h := δ₁ - δ₀
  have e1 : Phi P δ₁ = Phi (P + δ₀) h := by rw [phi_shift]; congr 1; simp [h]
  have e0 : Phi P δ₀ = Phi (P + δ₀) 0 := by rw [phi_shift, add_zero]
  have ec : P + δ₀ = (P + c) + (δ₀ - c) := by abel
  have split : Phi P δ₁ - Phi P δ₀ - Jac (P + c) h =
      (Phi (P + δ₀) h - Phi (P + δ₀) 0 - Jac (P + δ₀) h) + (Jac ((P + c) + (δ₀ - c)) h - Jac (P + c) h) := by
    rw [e1, e0, ← ec]; abel
  rw [split]
  refine (outNorm_add_le _ _).trans ?_
  have h1 := outNorm_rem_le (P + δ₀) h
  have h2 := outNorm_jac_sub_le (P + c) (δ₀ - c) h
  nlinarith

/-! ### Hermitian outputs -/

lemma phi_herm (P δ : RMat6) : (Phi P δ)ᴴ = Phi P δ := by
  unfold Phi
  rw [conjTranspose_sub, conjTranspose_mul, conjTranspose_conjTranspose, conjTranspose_smul, conjTranspose_one]
  congr 2
  simp

lemma jac_herm (P v : RMat6) : (Jac P v)ᴴ = Jac P v := by
  ext a b
  simp only [conjTranspose_apply, Jac, of_apply, star_sum, star_mul', star_star]
  refine Finset.sum_congr rfl fun c _ => ?_
  have h1 : star (((v b c - v a c : ℝ) : ℂ)) = ((v b c - v a c : ℝ) : ℂ) := Complex.conj_ofReal _
  have h2 : star Complex.I = -Complex.I := Complex.conj_I
  rw [h1, h2]; push_cast; ring


/-! ### 3. The normal-tube enclosure -/

section Tube

variable {m : ℕ}

private lemma frob_nonneg' (Y : RMat6) : 0 ≤ frob Y := by rw [frob_eq_sqrt]; exact Real.sqrt_nonneg _

/-- The Euclidean norm on `ℝ^m`. -/
def xnorm (x : Fin m → ℝ) : ℝ := Real.sqrt (∑ k, x k ^ 2)

lemma xnorm_nonneg (x : Fin m → ℝ) : 0 ≤ xnorm x := Real.sqrt_nonneg _

lemma xnorm_sq (x : Fin m → ℝ) : xnorm x ^ 2 = ∑ k, x k ^ 2 :=
  Real.sq_sqrt (Finset.sum_nonneg fun _ _ => sq_nonneg _)

lemma xnorm_le_of_sq_le {x : Fin m → ℝ} {B : ℝ} (hB : 0 ≤ B) (h : ∑ k, x k ^ 2 ≤ B ^ 2) : xnorm x ≤ B :=
  (Real.sqrt_le_sqrt h).trans_eq (Real.sqrt_sq hB)

lemma xnorm_add_le (x y : Fin m → ℝ) : xnorm (x + y) ≤ xnorm x + xnorm y := by
  have cs : ∑ k, x k * y k ≤ xnorm x * xnorm y := Real.sum_mul_le_sqrt_mul_sqrt Finset.univ x y
  refine xnorm_le_of_sq_le (add_nonneg (xnorm_nonneg x) (xnorm_nonneg y)) ?_
  have e : ∀ k, (x + y) k ^ 2 = x k ^ 2 + 2 * (x k * y k) + y k ^ 2 := fun k => by rw [Pi.add_apply]; ring
  simp only [e, Finset.sum_add_distrib, ← Finset.mul_sum]
  rw [add_sq, xnorm_sq, xnorm_sq]
  linarith

lemma xnorm_neg (x : Fin m → ℝ) : xnorm (-x) = xnorm x := by simp [xnorm]

lemma xnorm_sub_le (x y : Fin m → ℝ) : xnorm (x - y) ≤ xnorm x + xnorm y := by
  rw [sub_eq_add_neg, ← xnorm_neg y]; exact xnorm_add_le _ _

/-- **The normal-tube inequality.**  Let `x ↦ N_b x` and `w ↦ Y w` be additive (in practice linear) with
`‖N_b x‖ ≤ n_N ‖x‖`, `‖Y w‖ ≤ y_N ‖w‖` on Hermitian `w`, `‖x − Y J_{P+c} N_b x‖ ≤ ε₀ ‖x‖`,
`‖Y Φ_P(u + N_b x̃)‖ ≤ b_F` and `‖u + N_b x̃ − c‖ ≤ s_u`.  Then every zero `x*` of `x ↦ Φ_P(u + N_b x)` satisfies,
with `e = x* − x̃`,
`‖e‖ ≤ b_F + (ε₀ + y_N √3 n_N (2 s_u + n_N ‖e‖)) ‖e‖`.
No existence, uniqueness or contraction is assumed or claimed. -/
theorem tube_implicit {P u c : RMat6} (Nb : (Fin m → ℝ) →+ RMat6) (Y : Mat6 →+ (Fin m → ℝ))
    {xt xs : Fin m → ℝ} {bF eps0 yN nN su : ℝ}
    (hyN : 0 ≤ yN) (hN : ∀ x, frob (Nb x) ≤ nN * xnorm x)
    (hY : ∀ w : Mat6, wᴴ = w → xnorm (Y w) ≤ yN * outNorm w)
    (heps : ∀ x, xnorm (x - Y (Jac (P + c) (Nb x))) ≤ eps0 * xnorm x)
    (hb : xnorm (Y (Phi P (u + Nb xt))) ≤ bF)
    (hs : frob (u + Nb xt - c) ≤ su)
    (hzero : Phi P (u + Nb xs) = 0) :
    xnorm (xs - xt) ≤
      bF + (eps0 + yN * Real.sqrt 3 * nN * (2 * su + nN * xnorm (xs - xt))) * xnorm (xs - xt) := by
  set e := xs - xt with he
  set δt := u + Nb xt with hδt
  have hδ : (u + Nb xs) - δt = Nb e := by rw [hδt, he, map_sub]; abel
  set R := Phi P (u + Nb xs) - Phi P δt - Jac (P + c) (Nb e) with hR
  have hRherm : Rᴴ = R := by rw [hR, conjTranspose_sub, conjTranspose_sub, phi_herm, phi_herm, jac_herm]
  have hRb : outNorm R ≤ Real.sqrt 3 * frob (Nb e) * (2 * frob (δt - c) + frob (Nb e)) := by
    have h := outNorm_phi_sub_jac_le P c δt (u + Nb xs)
    rwa [hδ] at h
  have hYid : e = (e - Y (Jac (P + c) (Nb e))) - Y (Phi P δt) - Y R := by
    have h0 : Y (Phi P (u + Nb xs)) = 0 := by rw [hzero, map_zero]
    have hsplit : Phi P (u + Nb xs) = Phi P δt + Jac (P + c) (Nb e) + R := by rw [hR]; abel
    rw [hsplit, map_add, map_add] at h0
    calc e = e - (Y (Phi P δt) + Y (Jac (P + c) (Nb e)) + Y R) := by rw [h0, sub_zero]
      _ = _ := by abel
  have h1 : xnorm e ≤ eps0 * xnorm e + bF + yN * outNorm R := by
    have t1 := xnorm_sub_le ((e - Y (Jac (P + c) (Nb e))) - Y (Phi P δt)) (Y R)
    have t2 := xnorm_sub_le (e - Y (Jac (P + c) (Nb e))) (Y (Phi P δt))
    rw [← hYid] at t1
    linarith [heps e, hY R hRherm]
  have hNe := hN e
  have h3 : 0 ≤ Real.sqrt 3 := Real.sqrt_nonneg 3
  have hR2 : outNorm R ≤ Real.sqrt 3 * (nN * xnorm e) * (2 * su + nN * xnorm e) := by
    refine hRb.trans (mul_le_mul (mul_le_mul_of_nonneg_left hNe h3) (by linarith) ?_ ?_)
    · linarith [frob_nonneg' (δt - c), frob_nonneg' (Nb e)]
    · exact (mul_nonneg h3 (frob_nonneg' _)).trans (mul_le_mul_of_nonneg_left hNe h3)
  have h4 := mul_le_mul_of_nonneg_left hR2 hyN
  calc xnorm e ≤ eps0 * xnorm e + bF + yN * outNorm R := h1
    _ ≤ eps0 * xnorm e + bF + yN * (Real.sqrt 3 * (nN * xnorm e) * (2 * su + nN * xnorm e)) := by linarith
    _ = _ := by ring

/-- The certifiers' radius map (pieces A and C): `q(r) = ε₀ + y_N · L · n_N · (s_u + n_N r)`, with `L ≥ 2√3`. -/
def tubeQ (L eps0 yN nN su r : ℝ) : ℝ := eps0 + yN * L * nN * (su + nN * r)

/-- The sharper radius map that `tube_implicit` gives: `ε₀ + y_N · L · n_N · (s_u + n_N r / 2)`. -/
def tubeQh (L eps0 yN nN su r : ℝ) : ℝ := eps0 + yN * L * nN * (su + nN * r / 2)

lemma two_sqrt_three_le {L : ℝ} (h0 : 0 ≤ L) (h : 12 ≤ L ^ 2) : 2 * Real.sqrt 3 ≤ L := by
  have h3 : Real.sqrt 3 ^ 2 = 3 := Real.sq_sqrt (by norm_num)
  nlinarith [Real.sqrt_nonneg 3]

lemma tubeQh_le_tubeQ {L eps0 yN nN su r : ℝ} (hL : 0 ≤ L) (hyN : 0 ≤ yN) (hnN : 0 ≤ nN) (hr : 0 ≤ r) :
    tubeQh L eps0 yN nN su r ≤ tubeQ L eps0 yN nN su r := by
  unfold tubeQh tubeQ
  have : 0 ≤ yN * L * nN := by positivity
  nlinarith [mul_nonneg hnN hr]

/-- **One step of the normal-tube iteration (sharp form).**  If `‖x* − x̃‖ ≤ r`, then
`‖x* − x̃‖ ≤ b_F + q_h(r) r` with `q_h(r) = ε₀ + y_N L n_N (s_u + n_N r/2)`, `L ≥ 2√3`. -/
theorem tube_step_h {P u c : RMat6} (Nb : (Fin m → ℝ) →+ RMat6) (Y : Mat6 →+ (Fin m → ℝ))
    {xt xs : Fin m → ℝ} {L bF eps0 yN nN su r : ℝ}
    (hL : 2 * Real.sqrt 3 ≤ L) (hyN : 0 ≤ yN) (hnN : 0 ≤ nN) (heps0 : 0 ≤ eps0)
    (hN : ∀ x, frob (Nb x) ≤ nN * xnorm x)
    (hY : ∀ w : Mat6, wᴴ = w → xnorm (Y w) ≤ yN * outNorm w)
    (heps : ∀ x, xnorm (x - Y (Jac (P + c) (Nb x))) ≤ eps0 * xnorm x)
    (hb : xnorm (Y (Phi P (u + Nb xt))) ≤ bF)
    (hs : frob (u + Nb xt - c) ≤ su)
    (hzero : Phi P (u + Nb xs) = 0) (hr : xnorm (xs - xt) ≤ r) :
    xnorm (xs - xt) ≤ bF + tubeQh L eps0 yN nN su r * r := by
  have h := tube_implicit Nb Y hyN hN hY heps hb hs hzero
  set t := xnorm (xs - xt)
  have ht : 0 ≤ t := xnorm_nonneg _
  have hsu : 0 ≤ su := (frob_nonneg' _).trans hs
  have h3 : 0 ≤ Real.sqrt 3 := Real.sqrt_nonneg 3
  have hA : eps0 + yN * Real.sqrt 3 * nN * (2 * su + nN * t) ≤ tubeQh L eps0 yN nN su r := by
    unfold tubeQh
    have e : yN * Real.sqrt 3 * nN * (2 * su + nN * t) = (yN * nN) * (2 * Real.sqrt 3) * (su + nN * t / 2) := by
      ring
    have hyn : 0 ≤ yN * nN := mul_nonneg hyN hnN
    have h5 : su + nN * t / 2 ≤ su + nN * r / 2 := by nlinarith
    have h6 : (yN * nN) * (2 * Real.sqrt 3) * (su + nN * t / 2) ≤ (yN * nN) * L * (su + nN * r / 2) :=
      mul_le_mul (mul_le_mul_of_nonneg_left hL hyn) h5 (by positivity) (by nlinarith)
    nlinarith
  have hA0 : 0 ≤ eps0 + yN * Real.sqrt 3 * nN * (2 * su + nN * t) := by positivity
  have := mul_le_mul hA hr ht (hA0.trans hA)
  linarith

/-- **One step of the normal-tube iteration, the certifiers' form** (piece A's `nu_enclosure`, piece C's
`normal_tube`): if `‖x* − x̃‖ ≤ r`, then `‖x* − x̃‖ ≤ b_F + q(r) r`, `q(r) = ε₀ + y_N L n_N (s_u + n_N r)`. -/
theorem tube_step {P u c : RMat6} (Nb : (Fin m → ℝ) →+ RMat6) (Y : Mat6 →+ (Fin m → ℝ))
    {xt xs : Fin m → ℝ} {L bF eps0 yN nN su r : ℝ}
    (hL : 2 * Real.sqrt 3 ≤ L) (hyN : 0 ≤ yN) (hnN : 0 ≤ nN) (heps0 : 0 ≤ eps0)
    (hN : ∀ x, frob (Nb x) ≤ nN * xnorm x)
    (hY : ∀ w : Mat6, wᴴ = w → xnorm (Y w) ≤ yN * outNorm w)
    (heps : ∀ x, xnorm (x - Y (Jac (P + c) (Nb x))) ≤ eps0 * xnorm x)
    (hb : xnorm (Y (Phi P (u + Nb xt))) ≤ bF)
    (hs : frob (u + Nb xt - c) ≤ su)
    (hzero : Phi P (u + Nb xs) = 0) (hr : xnorm (xs - xt) ≤ r) :
    xnorm (xs - xt) ≤ bF + tubeQ L eps0 yN nN su r * r := by
  have h := tube_step_h Nb Y hL hyN hnN heps0 hN hY heps hb hs hzero hr
  have hr0 : 0 ≤ r := (xnorm_nonneg _).trans hr
  have hL0 : 0 ≤ L := (mul_nonneg (by norm_num) (Real.sqrt_nonneg 3)).trans hL
  have := mul_le_mul_of_nonneg_right (tubeQh_le_tubeQ (eps0 := eps0) (su := su) hL0 hyN hnN hr0) hr0
  linarith

/-- **The iteration.**  If `‖x* − x̃‖ ≤ r₀` and `r_{k+1} ≥ b_F + q(r_k) r_k` for `k < K`, then `‖x* − x̃‖ ≤ r_K`.
Nothing requires `r_{k+1} ≤ r_k`: every `r_k` is a valid enclosure radius (an exclusion argument). -/
theorem tube_iter {P u c : RMat6} (Nb : (Fin m → ℝ) →+ RMat6) (Y : Mat6 →+ (Fin m → ℝ))
    {xt xs : Fin m → ℝ} {L bF eps0 yN nN su : ℝ}
    (hL : 2 * Real.sqrt 3 ≤ L) (hyN : 0 ≤ yN) (hnN : 0 ≤ nN) (heps0 : 0 ≤ eps0)
    (hN : ∀ x, frob (Nb x) ≤ nN * xnorm x)
    (hY : ∀ w : Mat6, wᴴ = w → xnorm (Y w) ≤ yN * outNorm w)
    (heps : ∀ x, xnorm (x - Y (Jac (P + c) (Nb x))) ≤ eps0 * xnorm x)
    (hb : xnorm (Y (Phi P (u + Nb xt))) ≤ bF)
    (hs : frob (u + Nb xt - c) ≤ su)
    (hzero : Phi P (u + Nb xs) = 0) (rs : ℕ → ℝ) (K : ℕ) (h0 : xnorm (xs - xt) ≤ rs 0)
    (hstep : ∀ k < K, bF + tubeQ L eps0 yN nN su (rs k) * rs k ≤ rs (k + 1)) :
    xnorm (xs - xt) ≤ rs K := by
  induction K with
  | zero => exact h0
  | succ K ih =>
    have hK := ih fun k hk => hstep k (by omega)
    exact (tube_step Nb Y hL hyN hnN heps0 hN hY heps hb hs hzero hK).trans (hstep K (by omega))

/-- **The start ball** (piece A's `r₀ = c_N n₀ + sup‖x̃‖`): if `‖x‖ ≤ c_N ‖N_b x‖` for all `x`,
`‖N_b x*‖ ≤ n₀` and `‖x̃‖ ≤ s_x`, then `‖x* − x̃‖ ≤ c_N n₀ + s_x`. -/
theorem tube_start (Nb : (Fin m → ℝ) →+ RMat6) {xt xs : Fin m → ℝ} {cN n0 sx : ℝ} (hcN0 : 0 ≤ cN)
    (hcN : ∀ x, xnorm x ≤ cN * frob (Nb x)) (hν : frob (Nb xs) ≤ n0) (hxt : xnorm xt ≤ sx) :
    xnorm (xs - xt) ≤ cN * n0 + sx := by
  have h1 := xnorm_sub_le xs xt
  have h2 := (hcN xs).trans (mul_le_mul_of_nonneg_left hν hcN0)
  linarith

end Tube

/-! ### 4. Concrete encodings: `N_b` as `m` matrices, `Y` as two real coefficient families -/

section Concrete

variable {m : ℕ}

/-- `N_b x = Σ_k x_k B_k`: the `36 × m` matrix `N_b` given column by column as real `6 × 6` matrices. -/
def nbMap (B : Fin m → RMat6) : (Fin m → ℝ) →+ RMat6 where
  toFun x := ∑ k, x k • B k
  map_zero' := by simp
  map_add' x y := by simp [add_smul, Finset.sum_add_distrib]

lemma nbMap_apply (B : Fin m → RMat6) (x : Fin m → ℝ) (a c : I6) : nbMap B x a c = ∑ k, x k * B k a c := by
  simp [nbMap, Matrix.sum_apply]

lemma sumsq_nbMap_le (B : Fin m → RMat6) (x : Fin m → ℝ) :
    sumsq (nbMap B x) ≤ (∑ k, x k ^ 2) * ∑ k, sumsq (B k) := by
  have h : ∀ a c, (nbMap B x a c) ^ 2 ≤ (∑ k, x k ^ 2) * ∑ k, B k a c ^ 2 := fun a c => by
    rw [nbMap_apply]; exact Finset.sum_mul_sq_le_sq_mul_sq _ _ _
  calc sumsq (nbMap B x) ≤ ∑ a, ∑ c, (∑ k, x k ^ 2) * ∑ k, B k a c ^ 2 :=
        Finset.sum_le_sum fun a _ => Finset.sum_le_sum fun c _ => h a c
    _ = (∑ k, x k ^ 2) * ∑ a, ∑ c, ∑ k, B k a c ^ 2 := by simp only [Finset.mul_sum]
    _ = (∑ k, x k ^ 2) * ∑ k, sumsq (B k) := by
        congr 1
        calc ∑ a, ∑ c, ∑ k, B k a c ^ 2 = ∑ a, ∑ k, ∑ c, B k a c ^ 2 :=
              Finset.sum_congr rfl fun a _ => Finset.sum_comm
          _ = ∑ k, sumsq (B k) := Finset.sum_comm

/-- `‖N_b‖₂ ≤ ‖N_b‖_F ≤ n_N`: the kernel supplies a rational `n_N` with `Σ_k ‖B_k‖_F² ≤ n_N²`. -/
theorem frob_nbMap_le {B : Fin m → RMat6} {nN : ℝ} (hnN : 0 ≤ nN) (h : ∑ k, sumsq (B k) ≤ nN ^ 2)
    (x : Fin m → ℝ) : frob (nbMap B x) ≤ nN * xnorm x := by
  rw [frob_eq_sqrt]
  have h1 : sumsq (nbMap B x) ≤ (nN * xnorm x) ^ 2 := by
    rw [mul_pow, xnorm_sq]
    exact (sumsq_nbMap_le B x).trans (by
      rw [mul_comm]; exact mul_le_mul_of_nonneg_right h (Finset.sum_nonneg fun _ _ => sq_nonneg _))
  exact (Real.sqrt_le_sqrt h1).trans_eq (Real.sqrt_sq (mul_nonneg hnN (xnorm_nonneg x)))

/-- **The per-entry phase remainder** `|(N_b e)_{ac}| ≤ ‖N_b[(a,c),:]‖₂ ‖e‖`, with a rational row bound `ρ`. -/
theorem abs_nbMap_apply_le {B : Fin m → RMat6} {a c : I6} {ρ : ℝ} (hρ : 0 ≤ ρ) (h : ∑ k, B k a c ^ 2 ≤ ρ ^ 2)
    (x : Fin m → ℝ) : |nbMap B x a c| ≤ ρ * xnorm x := by
  rw [nbMap_apply]
  have cs := Finset.sum_mul_sq_le_sq_mul_sq Finset.univ x (fun k => B k a c)
  have h2 : (∑ k, x k * B k a c) ^ 2 ≤ (ρ * xnorm x) ^ 2 := by
    rw [mul_pow, xnorm_sq, mul_comm (ρ ^ 2)]
    exact cs.trans (mul_le_mul_of_nonneg_left h (Finset.sum_nonneg fun _ _ => sq_nonneg _))
  exact abs_le_of_sq_le_sq' h2 (mul_nonneg hρ (xnorm_nonneg x)) |> fun h => abs_le.mpr h

/-- `Y w = (Σ_{a,b} Yre_k,ab Re w_ab + Yim_k,ab Im w_ab)_k`.  Piece A's and C's `21 × 30` matrix (rows `2p−1`, `2p`:
`Re`, `Im` of pair `p = (i < j)`) is the case where `Yre_k`, `Yim_k` vanish off the strict upper triangle. -/
def yMap (Yre Yim : Fin m → RMat6) : Mat6 →+ (Fin m → ℝ) where
  toFun w k := ∑ a, ∑ b, (Yre k a b * (w a b).re + Yim k a b * (w a b).im)
  map_zero' := by ext k; simp
  map_add' v w := by
    ext k
    simp only [Matrix.add_apply, Complex.add_re, Complex.add_im, Pi.add_apply, ← Finset.sum_add_distrib]
    exact Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => by ring

lemma yMap_apply (Yre Yim : Fin m → RMat6) (w : Mat6) (k : Fin m) :
    yMap Yre Yim w k = ∑ a, ∑ b, (Yre k a b * (w a b).re + Yim k a b * (w a b).im) := rfl

/-- The bound for `‖Y‖₂` on Hermitian inputs: `½ Σ_k Σ_{a,b} ((Yre + Yreᵀ)² + (Yim − Yimᵀ)²)`.  For coefficients
supported on the strict upper triangle this is `‖Y‖_F²` of the `m × 30` matrix. -/
def yBound (Yre Yim : Fin m → RMat6) : ℝ :=
  ∑ k, ∑ a, ∑ b, ((Yre k a b + Yre k b a) ^ 2 + (Yim k a b - Yim k b a) ^ 2) / 2

/-- On Hermitian `w`, `Y` only sees the Hermitian-symmetrised coefficients. -/
lemma yMap_herm (Yre Yim : Fin m → RMat6) {w : Mat6} (hw : wᴴ = w) (k : Fin m) :
    2 * yMap Yre Yim w k = ∑ a, ∑ b, ((Yre k a b + Yre k b a) * (w a b).re + (Yim k a b - Yim k b a) * (w a b).im) := by
  have hw' : ∀ a b, w b a = star (w a b) := fun a b => by
    have h := congrFun (congrFun hw b) a
    rw [conjTranspose_apply] at h
    exact h.symm
  have hre : ∀ a b, (w b a).re = (w a b).re := fun a b => by rw [hw' a b]; rfl
  have him : ∀ a b, (w b a).im = -(w a b).im := fun a b => by rw [hw' a b]; rfl
  have s1 : ∑ a, ∑ b, Yre k b a * (w a b).re = ∑ a, ∑ b, Yre k a b * (w a b).re := by
    rw [Finset.sum_comm]
    exact Finset.sum_congr rfl fun x _ => Finset.sum_congr rfl fun y _ => by rw [hre]
  have s2 : ∑ a, ∑ b, Yim k b a * (w a b).im = -∑ a, ∑ b, Yim k a b * (w a b).im := by
    rw [Finset.sum_comm, ← Finset.sum_neg_distrib]
    refine Finset.sum_congr rfl fun x _ => ?_
    rw [← Finset.sum_neg_distrib]
    exact Finset.sum_congr rfl fun y _ => by rw [him]; ring
  have e : ∀ a b, (Yre k a b + Yre k b a) * (w a b).re + (Yim k a b - Yim k b a) * (w a b).im =
      (Yre k a b * (w a b).re + Yim k a b * (w a b).im) + Yre k b a * (w a b).re
        - Yim k b a * (w a b).im := fun a b => by ring
  simp only [e, Finset.sum_add_distrib, Finset.sum_sub_distrib, s1, s2, yMap_apply]
  ring

/-- **`‖Y w‖ ≤ y_N ‖w‖` on Hermitian `w`**, from the rational check `yBound ≤ y_N²`. -/
theorem xnorm_yMap_le {Yre Yim : Fin m → RMat6} {yN : ℝ} (hyN : 0 ≤ yN) (h : yBound Yre Yim ≤ yN ^ 2)
    (w : Mat6) (hw : wᴴ = w) : xnorm (yMap Yre Yim w) ≤ yN * outNorm w := by
  have hW : ∑ a, ∑ b, ((w a b).re ^ 2 + (w a b).im ^ 2) = 2 * outNorm w ^ 2 := by
    rw [outNorm_sq]
    have : ∀ a b, ‖w a b‖ ^ 2 = (w a b).re ^ 2 + (w a b).im ^ 2 := fun a b => by
      rw [Complex.sq_norm, Complex.normSq_apply]; ring
    simp only [this]; ring
  have hk : ∀ k, (yMap Yre Yim w k) ^ 2 ≤
      (∑ a, ∑ b, ((Yre k a b + Yre k b a) ^ 2 + (Yim k a b - Yim k b a) ^ 2) / 2) * outNorm w ^ 2 := by
    intro k
    have h2 := yMap_herm Yre Yim hw k
    let f : (I6 × I6) ⊕ (I6 × I6) → ℝ :=
      Sum.elim (fun p => Yre k p.1 p.2 + Yre k p.2 p.1) (fun p => Yim k p.1 p.2 - Yim k p.2 p.1)
    let g : (I6 × I6) ⊕ (I6 × I6) → ℝ := Sum.elim (fun p => (w p.1 p.2).re) (fun p => (w p.1 p.2).im)
    have cs := Finset.sum_mul_sq_le_sq_mul_sq Finset.univ f g
    simp only [f, g, Fintype.sum_sum_type, Sum.elim_inl, Sum.elim_inr] at cs
    simp only [Fintype.sum_prod_type] at cs
    simp only [← Finset.sum_add_distrib] at cs
    rw [← h2, hW] at cs
    have e2 : ∑ a, ∑ b, ((Yre k a b + Yre k b a) ^ 2 + (Yim k a b - Yim k b a) ^ 2) / 2 =
        (∑ a, ∑ b, ((Yre k a b + Yre k b a) ^ 2 + (Yim k a b - Yim k b a) ^ 2)) / 2 := by
      simp only [Finset.sum_div]
    rw [e2]
    linarith
  refine xnorm_le_of_sq_le (mul_nonneg hyN (outNorm_nonneg w)) ?_
  calc ∑ k, (yMap Yre Yim w k) ^ 2
      ≤ ∑ k, (∑ a, ∑ b, ((Yre k a b + Yre k b a) ^ 2 + (Yim k a b - Yim k b a) ^ 2) / 2) * outNorm w ^ 2 :=
        Finset.sum_le_sum fun k _ => hk k
    _ = yBound Yre Yim * outNorm w ^ 2 := by rw [yBound, Finset.sum_mul]
    _ ≤ yN ^ 2 * outNorm w ^ 2 := mul_le_mul_of_nonneg_right h (sq_nonneg _)
    _ = (yN * outNorm w) ^ 2 := by ring

lemma jac_nbMap_apply (Q : RMat6) (B : Fin m → RMat6) (x : Fin m → ℝ) (a b : I6) :
    Jac Q (nbMap B x) a b = ∑ j, (x j : ℂ) * Jac Q (B j) a b := by
  simp only [Jac, of_apply, nbMap_apply, Finset.mul_sum]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun c _ => ?_
  rw [← Finset.sum_sub_distrib]
  push_cast
  rw [Finset.sum_mul, Finset.mul_sum]
  exact Finset.sum_congr rfl fun k _ => by ring

/-- `Y` commutes with real linear combinations given entrywise. -/
lemma yMap_lincomb (Yre Yim : Fin m → RMat6) {W : Mat6} (Ws : Fin m → Mat6) (x : Fin m → ℝ)
    (hW : ∀ a b, W a b = ∑ j, (x j : ℂ) * Ws j a b) (k : Fin m) :
    yMap Yre Yim W k = ∑ j, x j * yMap Yre Yim (Ws j) k := by
  simp only [yMap_apply, hW, Complex.re_sum, Complex.im_sum, Complex.re_ofReal_mul, Complex.im_ofReal_mul,
    Finset.mul_sum, ← Finset.sum_add_distrib]
  conv_lhs => arg 2; ext a; rw [Finset.sum_comm]
  conv_lhs => rw [Finset.sum_comm]
  exact Finset.sum_congr rfl fun j _ => Finset.sum_congr rfl fun a _ =>
    Finset.sum_congr rfl fun b _ => by ring

/-- The `m × m` matrix `A = I − Y J_{P+c} N_b`: entry `(k, j)` is `δ_kj − (Y J_{P+c} B_j)_k`. -/
def epsMat (P c : RMat6) (B Yre Yim : Fin m → RMat6) (k j : Fin m) : ℝ :=
  (if k = j then 1 else 0) - yMap Yre Yim (Jac (P + c) (B j)) k

lemma sub_yMap_jac_nbMap (P c : RMat6) (B Yre Yim : Fin m → RMat6) (x : Fin m → ℝ) :
    x - yMap Yre Yim (Jac (P + c) (nbMap B x)) = fun k => ∑ j, epsMat P c B Yre Yim k j * x j := by
  ext k
  rw [Pi.sub_apply, yMap_lincomb Yre Yim (fun j => Jac (P + c) (B j)) x (jac_nbMap_apply (P + c) B x)]
  simp only [epsMat, sub_mul, Finset.sum_sub_distrib, ite_mul, one_mul, zero_mul, Finset.sum_ite_eq,
    Finset.mem_univ, if_true]
  congr 1
  exact Finset.sum_congr rfl fun j _ => by ring

/-- `‖A x‖ ≤ e ‖x‖` from an entrywise bound `|A_kj| ≤ Ā_kj` and the rational check `Σ Ā_kj² ≤ e²`. -/
theorem xnorm_mulVec_le {A Abar : Fin m → Fin m → ℝ} (hA : ∀ k j, |A k j| ≤ Abar k j) {e : ℝ} (he : 0 ≤ e)
    (h : ∑ k, ∑ j, Abar k j ^ 2 ≤ e ^ 2) (x : Fin m → ℝ) :
    xnorm (fun k => ∑ j, A k j * x j) ≤ e * xnorm x := by
  refine xnorm_le_of_sq_le (mul_nonneg he (xnorm_nonneg x)) ?_
  have hk : ∀ k, (∑ j, A k j * x j) ^ 2 ≤ (∑ j, Abar k j ^ 2) * ∑ j, x j ^ 2 := fun k =>
    (Finset.sum_mul_sq_le_sq_mul_sq _ _ _).trans (mul_le_mul_of_nonneg_right
      (Finset.sum_le_sum fun j _ => by
        have := hA k j
        nlinarith [abs_nonneg (A k j), sq_abs (A k j)])
      (Finset.sum_nonneg fun _ _ => sq_nonneg _))
  calc ∑ k, (∑ j, A k j * x j) ^ 2 ≤ ∑ k, (∑ j, Abar k j ^ 2) * ∑ j, x j ^ 2 := Finset.sum_le_sum fun k _ => hk k
    _ = (∑ k, ∑ j, Abar k j ^ 2) * ∑ j, x j ^ 2 := by rw [Finset.sum_mul]
    _ ≤ e ^ 2 * ∑ j, x j ^ 2 := mul_le_mul_of_nonneg_right h (Finset.sum_nonneg fun _ _ => sq_nonneg _)
    _ = (e * xnorm x) ^ 2 := by rw [mul_pow, xnorm_sq]

/-- **(A2)** `‖x − Y J_{P+c} N_b x‖ ≤ ε₀ ‖x‖` from an entrywise enclosure `|A_kj| ≤ Ā_kj` of `A = I − Y J_{P+c} N_b`
and `Σ Ā_kj² ≤ ε₀²` (piece A's `ε₀ ≥ ‖I − Y J(c) N_b‖_F`). -/
theorem heps_of_epsMat {P c : RMat6} {B Yre Yim : Fin m → RMat6} {Abar : Fin m → Fin m → ℝ} {eps0 : ℝ}
    (heps0 : 0 ≤ eps0) (hA : ∀ k j, |epsMat P c B Yre Yim k j| ≤ Abar k j)
    (h : ∑ k, ∑ j, Abar k j ^ 2 ≤ eps0 ^ 2) (x : Fin m → ℝ) :
    xnorm (x - yMap Yre Yim (Jac (P + c) (nbMap B x))) ≤ eps0 * xnorm x := by
  rw [sub_yMap_jac_nbMap]
  exact xnorm_mulVec_le hA heps0 h x

end Concrete

/-! ### 5. The start ball: `c_N ≥ 1/σ_min(N_b)` by Gershgorin on the Gram matrix -/

section Start

variable {m : ℕ}

/-- The Gram matrix `G_jk = ⟨B_j, B_k⟩` of the columns of `N_b`. -/
def nbGram (B : Fin m → RMat6) (j k : Fin m) : ℝ := ∑ a, ∑ c, B j a c * B k a c

lemma sumsq_nbMap (B : Fin m → RMat6) (x : Fin m → ℝ) :
    sumsq (nbMap B x) = ∑ j, ∑ k, x j * x k * nbGram B j k := by
  have lhs : sumsq (nbMap B x) = ∑ a, ∑ c, ∑ j, ∑ k, x j * B j a c * (x k * B k a c) := by
    simp only [sumsq, nbMap_apply, sq, Finset.sum_mul_sum]
  rw [lhs]
  simp only [nbGram, Finset.mul_sum]
  calc ∑ a, ∑ c, ∑ j, ∑ k, x j * B j a c * (x k * B k a c)
      = ∑ a, ∑ j, ∑ c, ∑ k, x j * B j a c * (x k * B k a c) :=
        Finset.sum_congr rfl fun a _ => Finset.sum_comm
    _ = ∑ j, ∑ a, ∑ c, ∑ k, x j * B j a c * (x k * B k a c) := Finset.sum_comm
    _ = ∑ j, ∑ a, ∑ k, ∑ c, x j * B j a c * (x k * B k a c) :=
        Finset.sum_congr rfl fun j _ => Finset.sum_congr rfl fun a _ => Finset.sum_comm
    _ = ∑ j, ∑ k, ∑ a, ∑ c, x j * B j a c * (x k * B k a c) :=
        Finset.sum_congr rfl fun j _ => Finset.sum_comm
    _ = _ := Finset.sum_congr rfl fun j _ => Finset.sum_congr rfl fun k _ =>
        Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun c _ => by ring

/-- `Σ_{j,k} |G_jk| (x_j² + x_k²)/2 = Σ_j x_j² Σ_k |G_jk|` for symmetric `G`. -/
lemma sum_abs_sym {G : Fin m → Fin m → ℝ} (hsym : ∀ j k, G j k = G k j) (x : Fin m → ℝ) :
    ∑ j, ∑ k, |G j k| * (x j ^ 2 + x k ^ 2) / 2 = ∑ j, x j ^ 2 * ∑ k, |G j k| := by
  have e1 : ∑ j, ∑ k, |G j k| * (x j ^ 2 + x k ^ 2) / 2 =
      (∑ j, ∑ k, |G j k| * x j ^ 2 + ∑ j, ∑ k, |G j k| * x k ^ 2) / 2 := by
    rw [← Finset.sum_add_distrib, Finset.sum_div]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [← Finset.sum_add_distrib, Finset.sum_div]
    exact Finset.sum_congr rfl fun k _ => by ring
  have e2 : ∑ j, ∑ k, |G j k| * x k ^ 2 = ∑ j, ∑ k, |G j k| * x j ^ 2 := by
    rw [Finset.sum_comm]
    exact Finset.sum_congr rfl fun j _ => Finset.sum_congr rfl fun k _ => by rw [hsym]
  rw [e1, e2]
  simp only [Finset.mul_sum]
  rw [← two_mul, mul_div_cancel_left₀ _ (two_ne_zero)]
  exact Finset.sum_congr rfl fun j _ => Finset.sum_congr rfl fun k _ => by ring

lemma abs_quad_term_le (G : Fin m → Fin m → ℝ) (x : Fin m → ℝ) (j k : Fin m) :
    |x j * x k * G j k| ≤ |G j k| * (x j ^ 2 + x k ^ 2) / 2 := by
  have h1 : |x j * x k| ≤ (x j ^ 2 + x k ^ 2) / 2 := by
    rw [abs_mul]; nlinarith [sq_nonneg (|x j| - |x k|), sq_abs (x j), sq_abs (x k)]
  rw [abs_mul, mul_comm (|x j * x k|)]
  have := mul_le_mul_of_nonneg_left h1 (abs_nonneg (G j k))
  linarith

/-- **Gershgorin** for a symmetric `G`: if `λ ≤ 2 G_jj − Σ_k |G_jk|` for every `j` (that is,
`λ ≤ G_jj − Σ_{k≠j} |G_jk|` when `G_jj ≥ 0`), then `λ ‖x‖² ≤ xᵀ G x`. -/
theorem gershgorin {G : Fin m → Fin m → ℝ} (hsym : ∀ j k, G j k = G k j) {lam : ℝ}
    (h : ∀ j, lam ≤ 2 * G j j - ∑ k, |G j k|) (x : Fin m → ℝ) :
    lam * ∑ j, x j ^ 2 ≤ ∑ j, ∑ k, x j * x k * G j k := by
  set b : Fin m → Fin m → ℝ := fun j k => x j * x k * G j k + |G j k| * (x j ^ 2 + x k ^ 2) / 2 with hb
  have hb0 : ∀ j k, 0 ≤ b j k := fun j k => by
    have := abs_quad_term_le G x j k
    have := neg_abs_le (x j * x k * G j k)
    simp only [hb]
    linarith
  have hdiag : ∀ j, 2 * G j j * x j ^ 2 ≤ b j j := fun j => by
    simp only [hb]
    nlinarith [le_abs_self (G j j), sq_nonneg (x j)]
  have hsum : ∑ j, 2 * G j j * x j ^ 2 ≤ ∑ j, ∑ k, b j k :=
    Finset.sum_le_sum fun j _ => (hdiag j).trans
      (Finset.single_le_sum (f := fun k => b j k) (fun k _ => hb0 j k) (Finset.mem_univ j))
  have hsplit : ∑ j, ∑ k, b j k = ∑ j, ∑ k, x j * x k * G j k + ∑ j, x j ^ 2 * ∑ k, |G j k| := by
    simp only [hb, Finset.sum_add_distrib]
    rw [sum_abs_sym hsym x]
  have hlam : lam * ∑ j, x j ^ 2 ≤ ∑ j, x j ^ 2 * (2 * G j j - ∑ k, |G j k|) := by
    rw [Finset.mul_sum]
    exact Finset.sum_le_sum fun j _ => by
      rw [mul_comm]; exact mul_le_mul_of_nonneg_left (h j) (sq_nonneg _)
  have e3 : ∑ j, x j ^ 2 * (2 * G j j - ∑ k, |G j k|) =
      ∑ j, 2 * G j j * x j ^ 2 - ∑ j, x j ^ 2 * ∑ k, |G j k| := by
    rw [← Finset.sum_sub_distrib]
    exact Finset.sum_congr rfl fun j _ => by ring
  linarith

lemma nbGram_symm (B : Fin m → RMat6) (j k : Fin m) : nbGram B j k = nbGram B k j := by
  simp only [nbGram, mul_comm]

/-- **`‖x‖ ≤ c_N ‖N_b x‖`** from Gershgorin on the Gram matrix of `N_b` and `1 ≤ c_N² λ` (rational checks). -/
theorem xnorm_le_of_gram {B : Fin m → RMat6} {lam cN : ℝ} (hcN : 0 ≤ cN) (hc : 1 ≤ cN ^ 2 * lam)
    (h : ∀ j, lam ≤ 2 * nbGram B j j - ∑ k, |nbGram B j k|) (x : Fin m → ℝ) :
    xnorm x ≤ cN * frob (nbMap B x) := by
  have hg := gershgorin (nbGram_symm B) h x
  rw [← sumsq_nbMap] at hg
  have hx0 : 0 ≤ ∑ j, x j ^ 2 := Finset.sum_nonneg fun _ _ => sq_nonneg _
  have h1 : xnorm x ^ 2 ≤ (cN * frob (nbMap B x)) ^ 2 := by
    rw [xnorm_sq, mul_pow, frob_eq_sqrt, Real.sq_sqrt (sumsq_nonneg _)]
    nlinarith [mul_le_mul_of_nonneg_left hg (sq_nonneg cN)]
  exact (pow_le_pow_iff_left₀ (xnorm_nonneg x) (mul_nonneg hcN (frob_nonneg' _)) two_ne_zero).mp h1

/-- **Upper Gershgorin** for a symmetric `G`: `xᵀ G x ≤ Λ ‖x‖²` when every absolute row sum is `≤ Λ`. -/
theorem gershgorin_upper {G : Fin m → Fin m → ℝ} (hsym : ∀ j k, G j k = G k j) {Λ : ℝ}
    (h : ∀ j, ∑ k, |G j k| ≤ Λ) (x : Fin m → ℝ) :
    ∑ j, ∑ k, x j * x k * G j k ≤ Λ * ∑ j, x j ^ 2 := by
  calc ∑ j, ∑ k, x j * x k * G j k ≤ ∑ j, ∑ k, |G j k| * (x j ^ 2 + x k ^ 2) / 2 :=
        Finset.sum_le_sum fun j _ => Finset.sum_le_sum fun k _ =>
          (le_abs_self _).trans (abs_quad_term_le G x j k)
    _ = ∑ j, x j ^ 2 * ∑ k, |G j k| := sum_abs_sym hsym x
    _ ≤ ∑ j, x j ^ 2 * Λ := Finset.sum_le_sum fun j _ => mul_le_mul_of_nonneg_left (h j) (sq_nonneg _)
    _ = Λ * ∑ j, x j ^ 2 := by rw [Finset.mul_sum]; exact Finset.sum_congr rfl fun j _ => by ring

/-- **`‖N_b‖₂ ≤ n_N` from the Gram matrix**: if `xᵀ G x ≤ n_N² ‖x‖²` (e.g. by `gershgorin_upper`), then
`‖N_b x‖ ≤ n_N ‖x‖`.  For a near-orthonormal basis this gives `n_N ≈ 1`, where the Frobenius route of
`frob_nbMap_le` gives `n_N ≈ √21`. -/
theorem frob_nbMap_le_of_gram {B : Fin m → RMat6} {nN : ℝ} (hnN : 0 ≤ nN)
    (h : ∀ x : Fin m → ℝ, ∑ j, ∑ k, x j * x k * nbGram B j k ≤ nN ^ 2 * ∑ j, x j ^ 2) (x : Fin m → ℝ) :
    frob (nbMap B x) ≤ nN * xnorm x := by
  have h1 : frob (nbMap B x) ^ 2 ≤ (nN * xnorm x) ^ 2 := by
    rw [frob_eq_sqrt, Real.sq_sqrt (sumsq_nonneg _), sumsq_nbMap, mul_pow, xnorm_sq]
    exact h x
  exact (pow_le_pow_iff_left₀ (frob_nonneg' _) (mul_nonneg hnN (xnorm_nonneg x)) two_ne_zero).mp h1

/-- The Gram matrix of the (Hermitian-symmetrised) rows of `Y`; for coefficients supported on the strict upper
triangle it is `Y Yᵀ` of the `m × 30` matrix. -/
def yGram (Yre Yim : Fin m → RMat6) (k l : Fin m) : ℝ :=
  ∑ a, ∑ b, ((Yre k a b + Yre k b a) * (Yre l a b + Yre l b a) +
    (Yim k a b - Yim k b a) * (Yim l a b - Yim l b a)) / 2

lemma yGram_symm (Yre Yim : Fin m → RMat6) (k l : Fin m) : yGram Yre Yim k l = yGram Yre Yim l k := by
  simp only [yGram]
  exact Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => by ring

/-- `Σ_{a,b} (Σ_k c_k F_k,ab)² = Σ_{k,l} c_k c_l Σ_{a,b} F_k,ab F_l,ab`. -/
lemma sum_sq_lincomb (F : Fin m → I6 → I6 → ℝ) (c : Fin m → ℝ) :
    ∑ a, ∑ b, (∑ k, c k * F k a b) ^ 2 = ∑ k, ∑ l, c k * c l * ∑ a, ∑ b, F k a b * F l a b := by
  have lhs : ∑ a, ∑ b, (∑ k, c k * F k a b) ^ 2 = ∑ a, ∑ b, ∑ k, ∑ l, c k * F k a b * (c l * F l a b) := by
    simp only [sq, Finset.sum_mul_sum]
  rw [lhs]
  simp only [Finset.mul_sum]
  calc ∑ a, ∑ b, ∑ k, ∑ l, c k * F k a b * (c l * F l a b)
      = ∑ a, ∑ k, ∑ b, ∑ l, c k * F k a b * (c l * F l a b) :=
        Finset.sum_congr rfl fun a _ => Finset.sum_comm
    _ = ∑ k, ∑ a, ∑ b, ∑ l, c k * F k a b * (c l * F l a b) := Finset.sum_comm
    _ = ∑ k, ∑ a, ∑ l, ∑ b, c k * F k a b * (c l * F l a b) :=
        Finset.sum_congr rfl fun k _ => Finset.sum_congr rfl fun a _ => Finset.sum_comm
    _ = ∑ k, ∑ l, ∑ a, ∑ b, c k * F k a b * (c l * F l a b) :=
        Finset.sum_congr rfl fun k _ => Finset.sum_comm
    _ = _ := Finset.sum_congr rfl fun k _ => Finset.sum_congr rfl fun l _ =>
        Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => by ring

/-- **`‖Y w‖ ≤ y_N ‖w‖` on Hermitian `w` from the Gram matrix of `Y`**: if `cᵀ (Y Yᵀ) c ≤ y_N² ‖c‖²` (e.g. by
`gershgorin_upper` on `yGram`), the operator 2-norm bound the certifiers use. -/
theorem xnorm_yMap_le_of_gram {Yre Yim : Fin m → RMat6} {yN : ℝ} (hyN : 0 ≤ yN)
    (h : ∀ c : Fin m → ℝ, ∑ k, ∑ l, c k * c l * yGram Yre Yim k l ≤ yN ^ 2 * ∑ k, c k ^ 2)
    (w : Mat6) (hw : wᴴ = w) : xnorm (yMap Yre Yim w) ≤ yN * outNorm w := by
  set c := yMap Yre Yim w with hc
  set S : Fin m → I6 → I6 → ℝ := fun k a b => Yre k a b + Yre k b a
  set A : Fin m → I6 → I6 → ℝ := fun k a b => Yim k a b - Yim k b a
  set X := ∑ k, c k ^ 2
  have hX0 : 0 ≤ X := Finset.sum_nonneg fun _ _ => sq_nonneg _
  have hW : ∑ a, ∑ b, ((w a b).re ^ 2 + (w a b).im ^ 2) = 2 * outNorm w ^ 2 := by
    rw [outNorm_sq]
    have : ∀ a b, ‖w a b‖ ^ 2 = (w a b).re ^ 2 + (w a b).im ^ 2 := fun a b => by
      rw [Complex.sq_norm, Complex.normSq_apply]; ring
    simp only [this]; ring
  -- `2X = Σ_ab (F1 Re w + F2 Im w)` with `F1 = Σ_k c_k S_k`, `F2 = Σ_k c_k A_k`
  have h2X : 2 * X = ∑ a, ∑ b, ((∑ k, c k * S k a b) * (w a b).re + (∑ k, c k * A k a b) * (w a b).im) := by
    have e : 2 * X = ∑ k, c k * (2 * c k) := by
      simp only [X, Finset.mul_sum]; exact Finset.sum_congr rfl fun k _ => by ring
    rw [e]
    simp only [hc, yMap_herm Yre Yim hw, Finset.mul_sum, Finset.sum_mul]
    calc ∑ k, ∑ a, ∑ b, yMap Yre Yim w k * ((Yre k a b + Yre k b a) * (w a b).re +
          (Yim k a b - Yim k b a) * (w a b).im)
        = ∑ a, ∑ k, ∑ b, yMap Yre Yim w k * ((Yre k a b + Yre k b a) * (w a b).re +
          (Yim k a b - Yim k b a) * (w a b).im) := Finset.sum_comm
      _ = ∑ a, ∑ b, ∑ k, yMap Yre Yim w k * ((Yre k a b + Yre k b a) * (w a b).re +
          (Yim k a b - Yim k b a) * (w a b).im) := Finset.sum_congr rfl fun a _ => Finset.sum_comm
      _ = _ := by
        refine Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => ?_
        rw [← Finset.sum_add_distrib]
        exact Finset.sum_congr rfl fun k _ => by simp only [S, A]; ring
  -- Cauchy–Schwarz over `(I6 × I6) ⊕ (I6 × I6)`
  have cs : (2 * X) ^ 2 ≤ (∑ a, ∑ b, ((∑ k, c k * S k a b) ^ 2 + (∑ k, c k * A k a b) ^ 2)) *
      (2 * outNorm w ^ 2) := by
    let f : (I6 × I6) ⊕ (I6 × I6) → ℝ :=
      Sum.elim (fun p => ∑ k, c k * S k p.1 p.2) (fun p => ∑ k, c k * A k p.1 p.2)
    let g : (I6 × I6) ⊕ (I6 × I6) → ℝ := Sum.elim (fun p => (w p.1 p.2).re) (fun p => (w p.1 p.2).im)
    have h := Finset.sum_mul_sq_le_sq_mul_sq Finset.univ f g
    simp only [f, g, Fintype.sum_sum_type, Sum.elim_inl, Sum.elim_inr] at h
    simp only [Fintype.sum_prod_type] at h
    simp only [← Finset.sum_add_distrib] at h
    rw [← h2X, hW] at h
    exact h
  have hG : ∑ a, ∑ b, ((∑ k, c k * S k a b) ^ 2 + (∑ k, c k * A k a b) ^ 2) =
      2 * ∑ k, ∑ l, c k * c l * yGram Yre Yim k l := by
    simp only [Finset.sum_add_distrib, sum_sq_lincomb, yGram, Finset.mul_sum, ← Finset.sum_div]
    rw [← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl fun k _ => ?_
    rw [← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl fun l _ => ?_
    simp only [← Finset.mul_sum, S, A]
    ring
  rw [hG] at cs
  have hq := h c
  -- `4X² ≤ 4 y_N² X ‖w‖²`, so `X ≤ y_N² ‖w‖²`
  have hXle : X ≤ (yN * outNorm w) ^ 2 := by
    rcases hX0.eq_or_lt with h0 | hpos
    · rw [← h0]; exact sq_nonneg _
    · have : X * X ≤ X * (yN ^ 2 * outNorm w ^ 2) := by nlinarith [sq_nonneg (outNorm w)]
      rw [mul_pow]
      exact le_of_mul_le_mul_left this hpos
  exact xnorm_le_of_sq_le (mul_nonneg hyN (outNorm_nonneg w)) hXle

end Start

/-! ### 6. The kernel interface -/

section Kernel

variable {m : ℕ}

/-- **The normal-tube enclosure in the concrete encoding** (FORMAT §6; piece A's A1–A3, piece C's
`normal_tube`).

Data at one point `η` of an η-box: the record's centre `P`, `u = Tη`, the linearisation point `c`, the basis
`B_1..B_m` of `N` (`ν = N_b x = Σ_k x_k B_k`), `Y` (coefficients `Yre`, `Yim`), the predictor `x̃ = xt`.
Hypotheses and how a kernel check discharges them with rational data:
* `L ≥ 2√3`: `12 ≤ L²`;
* `hN` (`‖N_b‖₂ ≤ n_N`): `frob_nbMap_le` (`Σ_k ‖B_k‖_F² ≤ n_N²`) or `frob_nbMap_le_of_gram` with
  `gershgorin_upper` on `nbGram B` (absolute row sums `≤ n_N²`);
* `hY` (`‖Y‖₂ ≤ y_N` on Hermitian inputs): `xnorm_yMap_le` (`yBound ≤ y_N²`) or `xnorm_yMap_le_of_gram` with
  `gershgorin_upper` on `yGram`;
* `heps` (A2, `‖I − Y J_{P+c} N_b‖₂ ≤ ε₀`): `heps_of_epsMat` (`|epsMat| ≤ Ā` entrywise, `Σ Ā² ≤ ε₀²`);
* `hb` (A1): `‖Y Φ_P(u + N_b x̃)‖ ≤ b_F`;  `hs`: `‖u + N_b x̃ − c‖_F ≤ s_u`;
* radii (A3): `r₀ ≥ ‖x* − x̃‖` (`tube_start`), `r_{k+1} ≥ b_F + q(r_k) r_k`.
Conclusion: every `x*` with `e^{i(P + u + N_b x*)}` Hadamard has `‖x* − x̃‖ ≤ r_K`. -/
theorem tube_enclosure {P u c : RMat6} {B Yre Yim : Fin m → RMat6}
    {xt xs : Fin m → ℝ} {L bF eps0 yN nN su : ℝ}
    (hL0 : 0 ≤ L) (hL : 12 ≤ L ^ 2) (hyN : 0 ≤ yN) (hnN : 0 ≤ nN) (heps0 : 0 ≤ eps0)
    (hN : ∀ x, frob (nbMap B x) ≤ nN * xnorm x)
    (hY : ∀ w : Mat6, wᴴ = w → xnorm (yMap Yre Yim w) ≤ yN * outNorm w)
    (heps : ∀ x, xnorm (x - yMap Yre Yim (Jac (P + c) (nbMap B x))) ≤ eps0 * xnorm x)
    (hb : xnorm (yMap Yre Yim (Phi P (u + nbMap B xt))) ≤ bF)
    (hs : frob (u + nbMap B xt - c) ≤ su)
    (hH : Hadamard6.IsHadamard (phaseMat (P + u + nbMap B xs)))
    (rs : ℕ → ℝ) (K : ℕ) (h0 : xnorm (xs - xt) ≤ rs 0)
    (hstep : ∀ k < K, bF + tubeQ L eps0 yN nN su (rs k) * rs k ≤ rs (k + 1)) :
    xnorm (xs - xt) ≤ rs K := by
  have hzero : Phi P (u + nbMap B xs) = 0 := phi_eq_zero_of_isHadamard (by rwa [← add_assoc])
  exact tube_iter (nbMap B) (yMap Yre Yim) (two_sqrt_three_le hL0 hL) hyN hnN heps0 hN hY heps hb hs hzero
    rs K h0 hstep

/-- **The per-entry phase remainder** for the subsequent T1 test: if `‖x* − x̃‖ ≤ r` then
`|ν*_ac − (N_b x̃)_ac| ≤ ρ_ac r` whenever `Σ_k (B_k)_ac² ≤ ρ_ac²` (`ρ_ac ≥ ‖N_b[(a,c),:]‖₂`). -/
theorem tube_entry {B : Fin m → RMat6} {xt xs : Fin m → ℝ} {r : ℝ} (hr : xnorm (xs - xt) ≤ r)
    {a c' : I6} {ρ : ℝ} (hρ : 0 ≤ ρ) (hrow : ∑ k, B k a c' ^ 2 ≤ ρ ^ 2) :
    |nbMap B xs a c' - nbMap B xt a c'| ≤ ρ * r := by
  have e : nbMap B xs a c' - nbMap B xt a c' = nbMap B (xs - xt) a c' := by
    rw [map_sub, Matrix.sub_apply]
  rw [e]
  exact (abs_nbMap_apply_le hρ hrow _).trans (mul_le_mul_of_nonneg_left hr hρ)

end Kernel

/-! ### 7. Every normal displacement is `N_b x` (`dim N ≤ 21`) -/

section Span

/-- The normal space `N` of a frame `T`: horizontal and Frobenius-orthogonal to every `T_k`. -/
def normalSpace (T : Fin 4 → RMat6) : Submodule ℝ RMat6 where
  carrier := {ν | IsHorizontal ν ∧ ∀ k, ∑ a, ∑ c, T k a c * ν a c = 0}
  zero_mem' := ⟨⟨fun i => by simp, fun j => by simp⟩, fun k => by simp⟩
  add_mem' := by
    rintro x y ⟨⟨hxr, hxc⟩, hxT⟩ ⟨⟨hyr, hyc⟩, hyT⟩
    refine ⟨⟨fun i => ?_, fun j => ?_⟩, fun k => ?_⟩
    · simp [Matrix.add_apply, Finset.sum_add_distrib, hxr i, hyr i]
    · simp [Matrix.add_apply, Finset.sum_add_distrib, hxc j, hyc j]
    · simp only [Matrix.add_apply, mul_add, Finset.sum_add_distrib, hxT k, hyT k, add_zero]
  smul_mem' := by
    rintro r x ⟨⟨hxr, hxc⟩, hxT⟩
    refine ⟨⟨fun i => ?_, fun j => ?_⟩, fun k => ?_⟩
    · simp [Matrix.smul_apply, ← Finset.mul_sum, hxr i]
    · simp [Matrix.smul_apply, ← Finset.mul_sum, hxc j]
    · have e : ∀ a c, T k a c * (r • x) a c = r * (T k a c * x a c) := fun a c => by
        rw [Matrix.smul_apply, smul_eq_mul]; ring
      simp only [e, ← Finset.mul_sum, hxT k, mul_zero]

/-- The five indices other than `inr 2`. -/
def e5 : Fin 5 → I6 := ![Sum.inl 0, Sum.inl 1, Sum.inl 2, Sum.inr 0, Sum.inr 1]

lemma sum_I6_split (f : I6 → ℝ) : ∑ j, f j = ∑ q, f (e5 q) + f (Sum.inr 2) := by
  simp [Fintype.sum_sum_type, Fin.sum_univ_three, Fin.sum_univ_five, e5]; ring

lemma I6_cover (i : I6) : i = Sum.inr 2 ∨ ∃ p, e5 p = i := by
  revert i; decide

/-- A horizontal matrix vanishes if its `5 × 5` block away from `inr 2` does. -/
lemma horizontal_eq_zero {Y : RMat6} (hY : IsHorizontal Y) (h : ∀ p q, Y (e5 p) (e5 q) = 0) : Y = 0 := by
  have hrow : ∀ i, Y i (Sum.inr 2) = -∑ q, Y i (e5 q) := fun i => by
    have := hY.1 i; rw [sum_I6_split] at this; linarith
  have hcol : ∀ j, Y (Sum.inr 2) j = -∑ p, Y (e5 p) j := fun j => by
    have := hY.2 j; rw [sum_I6_split (fun i => Y i j)] at this; linarith
  have h2 : ∀ p, Y (e5 p) (Sum.inr 2) = 0 := fun p => by rw [hrow]; simp [h]
  have h3 : ∀ q, Y (Sum.inr 2) (e5 q) = 0 := fun q => by rw [hcol]; simp [h]
  have h4 : Y (Sum.inr 2) (Sum.inr 2) = 0 := by rw [hcol]; simp [h2]
  ext i j
  rcases I6_cover i with rfl | ⟨p, rfl⟩ <;> rcases I6_cover j with rfl | ⟨q, rfl⟩
  · exact h4
  · exact h3 q
  · exact h2 p
  · exact h p q

/-- The restriction to the `5 × 5` block. -/
def restrict5 : RMat6 →ₗ[ℝ] Matrix (Fin 5) (Fin 5) ℝ where
  toFun Y := Matrix.of fun p q => Y (e5 p) (e5 q)
  map_add' _ _ := by ext; simp
  map_smul' _ _ := by ext; simp

/-- `η ↦ Σ_k η_k T_k` as a linear map. -/
def frameLin {m : ℕ} (T : Fin m → RMat6) : (Fin m → ℝ) →ₗ[ℝ] RMat6 where
  toFun η := ∑ k, η k • T k
  map_add' x y := by simp [add_smul, Finset.sum_add_distrib]
  map_smul' r x := by simp [Finset.smul_sum, smul_smul]

lemma frameLin_apply {m : ℕ} (T : Fin m → RMat6) (η : Fin m → ℝ) : frameLin T η = ∑ k, η k • T k := rfl

lemma nbMap_eq_frameLin {m : ℕ} (B : Fin m → RMat6) (x : Fin m → ℝ) : nbMap B x = frameLin B x := rfl

lemma isHorizontal_frameLin {m : ℕ} {T : Fin m → RMat6} (hT : ∀ k, IsHorizontal (T k)) (η : Fin m → ℝ) :
    IsHorizontal (frameLin T η) := by
  refine ⟨fun i => ?_, fun j => ?_⟩
  · simp only [frameLin_apply, Matrix.sum_apply, Matrix.smul_apply, smul_eq_mul]
    rw [Finset.sum_comm]; simp [← Finset.mul_sum, (hT _).1 i]
  · simp only [frameLin_apply, Matrix.sum_apply, Matrix.smul_apply, smul_eq_mul]
    rw [Finset.sum_comm]; simp [← Finset.mul_sum, (hT _).2 j]

/-- `dim N ≤ 21` when the frame is injective: `(ν, η) ↦ ν + Tη` embeds `N × ℝ⁴` in the horizontal space,
which embeds in the `5 × 5` block. -/
theorem finrank_normalSpace_le {T : Fin 4 → RMat6} (hThor : ∀ k, IsHorizontal (T k))
    (hT : ∀ η : Fin 4 → ℝ, (∑ k, η k • T k) = 0 → η = 0) :
    Module.finrank ℝ (normalSpace T) ≤ 21 := by
  let Ψ : (normalSpace T × (Fin 4 → ℝ)) →ₗ[ℝ] Matrix (Fin 5) (Fin 5) ℝ :=
    restrict5.comp ((normalSpace T).subtype.coprod (frameLin T))
  have hinj : Function.Injective Ψ := by
    rw [← LinearMap.ker_eq_bot, LinearMap.ker_eq_bot']
    rintro ⟨⟨ν, ⟨hνh, hνT⟩⟩, η⟩ h0
    have hM : (ν + frameLin T η) = 0 := by
      refine horizontal_eq_zero ?_ fun p q => ?_
      · obtain ⟨⟨r1, c1⟩⟩ := (⟨hνh⟩ : Nonempty (IsHorizontal ν))
        obtain ⟨r2, c2⟩ := isHorizontal_frameLin hThor η
        exact ⟨fun i => by simp [Matrix.add_apply, Finset.sum_add_distrib, r1 i, r2 i],
          fun j => by simp [Matrix.add_apply, Finset.sum_add_distrib, c1 j, c2 j]⟩
      · have := congrFun (congrFun h0 p) q
        simpa [Ψ, restrict5, LinearMap.coprod_apply] using this
    -- `⟨Tη, ν⟩ = 0`, so `‖Tη‖² = ⟨Tη, ν + Tη⟩ = 0`
    have horth : ∑ a, ∑ c, frameLin T η a c * ν a c = 0 := by
      simp only [frameLin_apply, Matrix.sum_apply, Matrix.smul_apply, smul_eq_mul, Finset.sum_mul]
      conv_lhs => arg 2; ext a; rw [Finset.sum_comm]
      rw [Finset.sum_comm]
      refine Finset.sum_eq_zero fun k _ => ?_
      have e : ∀ a c, η k * T k a c * ν a c = η k * (T k a c * ν a c) := fun a c => by ring
      simp only [e, ← Finset.mul_sum, hνT k, mul_zero]
    have hν : ν = -frameLin T η := eq_neg_of_add_eq_zero_left hM
    have hss : sumsq (frameLin T η) = 0 := by
      have : sumsq (frameLin T η) = -∑ a, ∑ c, frameLin T η a c * ν a c := by
        rw [hν]; simp only [sumsq, sq, Matrix.neg_apply, mul_neg, Finset.sum_neg_distrib, neg_neg]
      rw [this, horth, neg_zero]
    have hT0 : frameLin T η = 0 := by
      ext a c
      have h1 : ∀ a, ∑ c, frameLin T η a c ^ 2 = 0 :=
        (Finset.sum_eq_zero_iff_of_nonneg fun _ _ => Finset.sum_nonneg fun _ _ => sq_nonneg _).mp hss
          |> fun h a => h a (Finset.mem_univ a)
      have h2 := (Finset.sum_eq_zero_iff_of_nonneg fun _ _ => sq_nonneg _).mp (h1 a) c (Finset.mem_univ c)
      simpa using h2
    have hη : η = 0 := hT η hT0
    subst hη
    have : ν = 0 := by rw [hν, hT0, neg_zero]
    subst this
    rfl
  have hle := LinearMap.finrank_le_finrank_of_injective hinj
  rw [Module.finrank_prod, Module.finrank_fin_fun, Module.finrank_matrix] at hle
  simp at hle
  omega

/-- **Every normal displacement is `N_b x`.**  If the frame `T` is horizontal and injective, `B_1..B_21` lie in `N`
and `N_b` is injective (e.g. by `xnorm_le_of_gram`), then every `ν ∈ N` is `N_b x` for some `x ∈ ℝ²¹`. -/
theorem exists_nbMap_eq {T : Fin 4 → RMat6} {B : Fin 21 → RMat6} (hThor : ∀ k, IsHorizontal (T k))
    (hT : ∀ η : Fin 4 → ℝ, (∑ k, η k • T k) = 0 → η = 0) (hB : ∀ j, B j ∈ normalSpace T)
    (hBinj : ∀ x, nbMap B x = 0 → x = 0) {ν : RMat6} (hν : ν ∈ normalSpace T) : ∃ x, nbMap B x = ν := by
  have hmem : ∀ x, frameLin B x ∈ normalSpace T := fun x => by
    rw [frameLin_apply]; exact Submodule.sum_mem _ fun j _ => Submodule.smul_mem _ _ (hB j)
  let Φ : (Fin 21 → ℝ) →ₗ[ℝ] normalSpace T := LinearMap.codRestrict (normalSpace T) (frameLin B) hmem
  have hinj : Function.Injective Φ := by
    rw [← LinearMap.ker_eq_bot, LinearMap.ker_eq_bot']
    intro x hx
    exact hBinj x (by simpa [Φ, nbMap_eq_frameLin] using congrArg Subtype.val hx)
  have hle := LinearMap.finrank_le_finrank_of_injective hinj
  rw [Module.finrank_fin_fun] at hle
  have hdim : Module.finrank ℝ (Fin 21 → ℝ) = Module.finrank ℝ (normalSpace T) := by
    rw [Module.finrank_fin_fun]; have := finrank_normalSpace_le hThor hT; omega
  obtain ⟨x, hx⟩ := (LinearMap.injective_iff_surjective_of_finrank_eq_finrank hdim).mp hinj ⟨ν, hν⟩
  exact ⟨x, by simpa [Φ, nbMap_eq_frameLin] using congrArg Subtype.val hx⟩

/-- Injectivity of `N_b` from the start-ball constant: `‖x‖ ≤ c_N ‖N_b x‖`. -/
lemma nbMap_injective_of {m : ℕ} {B : Fin m → RMat6} {cN : ℝ} (h : ∀ x, xnorm x ≤ cN * frob (nbMap B x))
    (x : Fin m → ℝ) (hx : nbMap B x = 0) : x = 0 := by
  have h1 := h x
  have hf : frob (nbMap B x) = 0 := by rw [hx, frob_eq_sqrt]; simp [sumsq]
  rw [hf, mul_zero] at h1
  have h2 : ∑ k, x k ^ 2 = 0 := by
    have := xnorm_sq x
    rw [le_antisymm h1 (xnorm_nonneg x)] at this
    simpa using this.symm
  funext k
  have := (Finset.sum_eq_zero_iff_of_nonneg fun _ _ => sq_nonneg _).mp h2 k (Finset.mem_univ k)
  simpa using this

end Span

/-! ### 8. The normal tube for T1′, assembled -/

/-- **The normal tube of a record over one point `η` (T1′).**  Let the frame `T` be horizontal and injective,
`B_1..B_21 ∈ N` with `‖x‖ ≤ c_N ‖N_b x‖` (`xnorm_le_of_gram`: Gershgorin `λ ≤ 2G_jj − Σ_k |G_jk|` on their Gram
matrix and `1 ≤ c_N² λ`), let the bounds of `tube_enclosure` hold at `η`, and let the start radius be
`r₀ ≥ c_N n₀ + s_x` (`‖x̃‖ ≤ s_x`).
Then every `ν ∈ N` with `‖ν‖ ≤ n₀` and `e^{i(P + Tη + ν)}` Hadamard is `ν = N_b x*` with `‖x* − x̃‖ ≤ r_K`, and
`|ν_ac − (N_b x̃)_ac| ≤ ρ_ac r_K` for every entry with `Σ_k (B_k)_ac² ≤ ρ_ac²`.

(`Tη` is written `∑ k, η k • T k`, which is `SeedAtlas.tang T η` by definition.) -/
theorem normal_tube {T : Fin 4 → RMat6} {B Yre Yim : Fin 21 → RMat6}
    {P c : RMat6} {η : Fin 4 → ℝ} {xt : Fin 21 → ℝ} {L bF eps0 yN nN su cN n0 sx : ℝ}
    {ρ : I6 → I6 → ℝ}
    (hThor : ∀ k, IsHorizontal (T k)) (hT : ∀ η' : Fin 4 → ℝ, (∑ k, η' k • T k) = 0 → η' = 0)
    (hB : ∀ j, B j ∈ normalSpace T) (hcN0 : 0 ≤ cN) (hcN : ∀ x, xnorm x ≤ cN * frob (nbMap B x))
    (hL0 : 0 ≤ L) (hL : 12 ≤ L ^ 2) (hyN : 0 ≤ yN) (hnN : 0 ≤ nN) (heps0 : 0 ≤ eps0)
    (hN : ∀ x, frob (nbMap B x) ≤ nN * xnorm x)
    (hY : ∀ w : Mat6, wᴴ = w → xnorm (yMap Yre Yim w) ≤ yN * outNorm w)
    (heps : ∀ x, xnorm (x - yMap Yre Yim (Jac (P + c) (nbMap B x))) ≤ eps0 * xnorm x)
    (hb : xnorm (yMap Yre Yim (Phi P ((∑ k, η k • T k) + nbMap B xt))) ≤ bF)
    (hs : frob ((∑ k, η k • T k) + nbMap B xt - c) ≤ su)
    (hρ0 : ∀ a c', 0 ≤ ρ a c') (hρ : ∀ a c', ∑ k, B k a c' ^ 2 ≤ ρ a c' ^ 2)
    (hxt : xnorm xt ≤ sx) (rs : ℕ → ℝ) (K : ℕ) (h0 : cN * n0 + sx ≤ rs 0)
    (hstep : ∀ k < K, bF + tubeQ L eps0 yN nN su (rs k) * rs k ≤ rs (k + 1))
    {ν : RMat6} (hνh : IsHorizontal ν) (hνT : ∀ k, ∑ a, ∑ c, T k a c * ν a c = 0) (hν : frob ν ≤ n0)
    (hH : Hadamard6.IsHadamard (phaseMat (P + (∑ k, η k • T k) + ν))) :
    ∃ x, ν = nbMap B x ∧ xnorm (x - xt) ≤ rs K ∧ ∀ a c', |ν a c' - nbMap B xt a c'| ≤ ρ a c' * rs K := by
  obtain ⟨x, rfl⟩ := exists_nbMap_eq hThor hT hB (nbMap_injective_of hcN) ⟨hνh, hνT⟩
  have hK := tube_enclosure hL0 hL hyN hnN heps0 hN hY heps hb hs hH rs K
    ((tube_start (nbMap B) hcN0 hcN hν hxt).trans h0) hstep
  exact ⟨x, rfl, hK, fun a c' => tube_entry hK (hρ0 a c') (hρ a c')⟩

end NoFourMUBs.SeedAtlas.Method
