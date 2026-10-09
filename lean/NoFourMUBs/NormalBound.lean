import NoFourMUBs.Transfer
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds
import Mathlib.Analysis.Calculus.MeanValue

/-!
# Lemma 3.1: the normal bound

`PROOF.md` Step 3.  Fix a real phase centre `P` and write `Z = exp(iP)` entrywise.  For a real `6 × 6`
displacement `δ` put

  `Φ_P(δ) = e^{i(P+δ)} e^{i(P+δ)}ᴴ − 6`,   `J_P(δ)_{ab} = Σ_c Z_ac Z̄_bc · i(δ_ac − δ_bc)`.

`e^{i(P+δ)}` is Hadamard iff `Φ_P(δ) = 0`.  Outputs are measured by `outNorm w = (½ Σ_{a,b} |w_ab|²)^{1/2}`,
which for the Hermitian, zero-diagonal outputs of `Φ` and `J` is the Euclidean norm of the 15 entries `a < b`
(30 real coordinates), the convention of the certificate.

**Remainder bound (calculus-free).**  `‖Φ_P(δ) − Φ_P(0) − J_P δ‖ ≤ √3 ‖δ‖²` for every real `δ` and every `P`.
Only the scalar fact `|e^{iy} − 1 − iy| ≤ y²/2` and Cauchy–Schwarz-type sums enter.

**Lemma 3.1.**  If `e^{i(P+δ)}` is Hadamard, `δ = u + ν` with `u ⟂ ν`, `σ‖ν‖ ≤ ‖Jν‖`, `‖Φ_P(0)‖ ≤ e₀`,
`‖J u‖ ≤ j₁ s` and `‖u‖² ≤ λ s²`, then `σ‖ν‖ − √3‖ν‖² ≤ e₀ + j₁ s + √3 λ s²`; with `‖ν‖ ≤ R` and `2√3 R < σ`
this gives `‖ν‖ ≤ (σ − √(σ² − 4√3 b))/(2√3)`.  In the atlas `u = Tη`, `s = ‖η‖`, `λ = λ_max(TᵀT)`.

**Isolation.**  If `Φ_P(0) = 0` and `σ‖δ‖ ≤ ‖Jδ‖` for all horizontal `δ`, every other Hadamard
`e^{i(P+δ)}` with `δ` horizontal has `‖δ‖ ≥ σ/√3` (Remark 3.3 for S₆, where `σ = 3/√2`).
-/

open Matrix Hadamard6

namespace NoFourMUBs

/-! ### The scalar estimate `|e^{iy} − 1 − iy| ≤ y²/2` -/

lemma norm_exp_mul_I_sub_le_of_nonneg {y : ℝ} (hy : 0 ≤ y) :
    ‖Complex.exp (y * Complex.I) - 1 - y * Complex.I‖ ≤ y ^ 2 / 2 := by
  let f : ℝ → ℂ := fun t => Complex.exp (t * Complex.I) - 1 - t * Complex.I
  let f' : ℝ → ℂ := fun t => Complex.I * (Complex.exp (t * Complex.I) - 1)
  have hderiv : ∀ t : ℝ, HasDerivAt f (f' t) t := by
    intro t
    have h1 : HasDerivAt (fun t : ℝ => (t : ℂ) * Complex.I) Complex.I t := by
      simpa using (Complex.ofRealCLM.hasDerivAt (x := t)).mul_const Complex.I
    have h2 := h1.cexp
    have h3 : HasDerivAt f (Complex.exp (t * Complex.I) * Complex.I - Complex.I) t :=
      (h2.sub_const 1).sub h1
    exact h3.congr_deriv (by show _ = Complex.I * (Complex.exp (t * Complex.I) - 1); ring)
  have key := image_norm_le_of_norm_deriv_right_le_deriv_boundary (f := f) (f' := f') (a := 0) (b := y)
    (B := fun t => t ^ 2 / 2) (B' := fun t => t)
    (fun t _ => (hderiv t).continuousAt.continuousWithinAt)
    (fun t _ => (hderiv t).hasDerivWithinAt)
    (by simp [f])
    (fun t => by simpa using ((hasDerivAt_pow 2 t).div_const 2))
    (fun t ht => by
      have h := Real.norm_exp_I_mul_ofReal_sub_one_le (x := t)
      simp only [f', norm_mul, Complex.norm_I, one_mul]
      rw [mul_comm] at h
      calc ‖Complex.exp (t * Complex.I) - 1‖ ≤ ‖t‖ := h
        _ = t := by rw [Real.norm_eq_abs, abs_of_nonneg ht.1])
  exact key ⟨hy, le_rfl⟩

lemma norm_exp_mul_I_sub_le (y : ℝ) :
    ‖Complex.exp (y * Complex.I) - 1 - y * Complex.I‖ ≤ y ^ 2 / 2 := by
  rcases le_total 0 y with hy | hy
  · exact norm_exp_mul_I_sub_le_of_nonneg hy
  · have h := norm_exp_mul_I_sub_le_of_nonneg (neg_nonneg.mpr hy)
    have e : Complex.exp (y * Complex.I) - 1 - y * Complex.I =
        (starRingEnd ℂ) (Complex.exp ((-y : ℝ) * Complex.I) - 1 - (-y : ℝ) * Complex.I) := by
      rw [map_sub, map_sub, ← Complex.exp_conj]
      simp [Complex.conj_ofReal]
    rw [e, Complex.norm_conj]
    simpa using h

/-! ### The Gram defect, its linearisation and the remainder -/

/-- `Φ_P(δ) = e^{i(P+δ)} e^{i(P+δ)}ᴴ − 6`. -/
noncomputable def Phi (P δ : RMat6) : Mat6 := phaseMat (P + δ) * (phaseMat (P + δ))ᴴ - (6 : ℂ) • 1

/-- `J_P(δ)_{ab} = Σ_c Z_ac Z̄_bc · i(δ_ac − δ_bc)` with `Z = e^{iP}`. -/
noncomputable def Jac (P δ : RMat6) : Mat6 :=
  Matrix.of fun a b => ∑ c, phaseMat P a c * star (phaseMat P b c) * (((δ a c - δ b c : ℝ) : ℂ) * Complex.I)

lemma phi_eq_zero_of_isHadamard {P δ : RMat6} (h : Hadamard6.IsHadamard (phaseMat (P + δ))) : Phi P δ = 0 := by
  rw [Phi, h.2, sub_self]

lemma jac_add (P u v : RMat6) : Jac P (u + v) = Jac P u + Jac P v := by
  ext a b
  simp only [Jac, of_apply, Matrix.add_apply, ← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl fun c _ => ?_
  push_cast; ring

lemma star_exp_mul_I (x : ℝ) : star (Complex.exp (x * Complex.I)) = Complex.exp ((-x : ℝ) * Complex.I) := by
  rw [show star (Complex.exp (x * Complex.I)) = (starRingEnd ℂ) (Complex.exp (x * Complex.I)) from rfl,
    ← Complex.exp_conj]
  congr 1; simp [Complex.conj_ofReal]

/-- Entry formula: `(Φ_P(δ) − Φ_P(0) − J_P δ)_{ab} = Σ_c Z_ac Z̄_bc (e^{iy_c} − 1 − iy_c)`, `y_c = δ_ac − δ_bc`. -/
lemma rem_apply (P δ : RMat6) (a b : I6) :
    (Phi P δ - Phi P 0 - Jac P δ) a b = ∑ c, phaseMat P a c * star (phaseMat P b c) *
      (Complex.exp (((δ a c - δ b c : ℝ) : ℂ) * Complex.I) - 1 - ((δ a c - δ b c : ℝ) : ℂ) * Complex.I) := by
  simp only [Phi, Jac, Matrix.sub_apply, Matrix.mul_apply, conjTranspose_apply, of_apply, add_zero]
  rw [sub_sub_sub_cancel_right, ← Finset.sum_sub_distrib, ← Finset.sum_sub_distrib]
  refine Finset.sum_congr rfl fun c _ => ?_
  simp only [phaseMat, of_apply, Matrix.add_apply, star_exp_mul_I]
  rw [mul_sub, mul_sub, mul_one, ← Complex.exp_add, ← Complex.exp_add, ← Complex.exp_add]
  push_cast
  ring_nf

/-! ### The output norm -/

section
attribute [local instance] Matrix.frobeniusNormedAddCommGroup

/-- Euclidean norm of the 15 entries `a < b` of a Hermitian zero-diagonal output: `(½ Σ_{a,b} |w_ab|²)^{1/2}`. -/
noncomputable def outNorm (w : Mat6) : ℝ := ‖w‖ / Real.sqrt 2

lemma outNorm_add_le (v w : Mat6) : outNorm (v + w) ≤ outNorm v + outNorm w := by
  unfold outNorm; rw [← add_div]; exact div_le_div_of_nonneg_right (norm_add_le v w) (Real.sqrt_nonneg 2)

lemma outNorm_neg (w : Mat6) : outNorm (-w) = outNorm w := by unfold outNorm; rw [norm_neg]

@[simp] lemma outNorm_zero : outNorm 0 = 0 := by unfold outNorm; rw [norm_zero, zero_div]

lemma outNorm_nonneg (w : Mat6) : 0 ≤ outNorm w := div_nonneg (norm_nonneg _) (Real.sqrt_nonneg _)

lemma outNorm_sq (w : Mat6) : outNorm w ^ 2 = (∑ a, ∑ b, ‖w a b‖ ^ 2) / 2 := by
  rw [outNorm, div_pow, Real.sq_sqrt (by norm_num : (0:ℝ) ≤ 2), Matrix.frobenius_norm_def,
    ← Real.sqrt_eq_rpow, Real.sq_sqrt (Finset.sum_nonneg fun _ _ => Finset.sum_nonneg fun _ _ => by positivity)]
  congr 1
  refine Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => ?_
  rw [Real.rpow_two]

end

lemma outNorm_le_of_sq_le {w : Mat6} {B : ℝ} (hB : 0 ≤ B) (h : (∑ a, ∑ b, ‖w a b‖ ^ 2) / 2 ≤ B ^ 2) :
    outNorm w ≤ B := by
  rw [← outNorm_sq] at h
  exact (pow_le_pow_iff_left₀ (outNorm_nonneg w) hB two_ne_zero).mp h

/-! ### The remainder bound `‖Φ_P(δ) − Φ_P(0) − J_P δ‖ ≤ √3 ‖δ‖²` -/

/-- Squared distance between rows `a` and `b`. -/
noncomputable def rowDist (δ : RMat6) (a b : I6) : ℝ := ∑ c, (δ a c - δ b c) ^ 2

lemma rowDist_nonneg (δ : RMat6) (a b : I6) : 0 ≤ rowDist δ a b :=
  Finset.sum_nonneg fun _ _ => sq_nonneg _

lemma norm_phaseMat (P : RMat6) (a c : I6) : ‖phaseMat P a c‖ = 1 := by
  simp [phaseMat, Complex.norm_exp_ofReal_mul_I]

lemma norm_rem_le (P δ : RMat6) (a b : I6) : ‖(Phi P δ - Phi P 0 - Jac P δ) a b‖ ≤ rowDist δ a b / 2 := by
  rw [rem_apply, rowDist, Finset.sum_div]
  refine (norm_sum_le _ _).trans (Finset.sum_le_sum fun c _ => ?_)
  rw [norm_mul, norm_mul, norm_star, norm_phaseMat, norm_phaseMat, one_mul, one_mul]
  exact norm_exp_mul_I_sub_le _

lemma sum_sq_sub (x : I6 → ℝ) : ∑ a, ∑ b, (x a - x b) ^ 2 = 12 * ∑ a, x a ^ 2 - 2 * (∑ a, x a) ^ 2 := by
  have e : ∀ a b, (x a - x b) ^ 2 = (x a ^ 2 + x b ^ 2) - 2 * (x a * x b) := fun a b => by ring
  have h1 : ∑ a, x a * ∑ b, x b = (∑ a, x a) ^ 2 := by rw [sq, Finset.sum_mul]
  have h2 : ∑ a, ∑ b, x b ^ 2 = 6 * ∑ a, x a ^ 2 := sum_const_I6 _
  have h3 : ∑ a, ∑ _b : I6, x a ^ 2 = 6 * ∑ a, x a ^ 2 := by
    simp_rw [sum_const_I6]; rw [Finset.mul_sum]
  simp only [e, Finset.sum_sub_distrib, Finset.sum_add_distrib, ← Finset.mul_sum, h1, h2, h3]
  ring

lemma sum_rowDist_le (δ : RMat6) : ∑ a, ∑ b, rowDist δ a b ≤ 12 * sumsq δ := by
  have h : ∑ a, ∑ b, rowDist δ a b = ∑ c, ∑ a, ∑ b, (δ a c - δ b c) ^ 2 := by
    simp only [rowDist]
    rw [eq_comm, Finset.sum_comm]
    exact Finset.sum_congr rfl fun a _ => Finset.sum_comm
  have hs : sumsq δ = ∑ c, ∑ a, δ a c ^ 2 := by rw [sumsq, Finset.sum_comm]
  rw [h, hs, Finset.mul_sum]
  refine Finset.sum_le_sum fun c _ => ?_
  rw [sum_sq_sub (fun a => δ a c)]
  nlinarith [sq_nonneg (∑ a, δ a c)]

lemma rowDist_le (δ : RMat6) (a b : I6) : rowDist δ a b ≤ 2 * sumsq δ := by
  by_cases hab : a = b
  · subst hab; simp only [rowDist, sub_self]; simp; exact sumsq_nonneg δ
  · have h1 : rowDist δ a b ≤ 2 * (∑ c, δ a c ^ 2 + ∑ c, δ b c ^ 2) := by
      rw [rowDist, ← Finset.sum_add_distrib, Finset.mul_sum]
      exact Finset.sum_le_sum fun c _ => by nlinarith [sq_nonneg (δ a c + δ b c)]
    have h2 : ∑ c, δ a c ^ 2 + ∑ c, δ b c ^ 2 ≤ sumsq δ := by
      rw [sumsq, ← Finset.sum_pair (f := fun i => ∑ c, δ i c ^ 2) hab]
      exact Finset.sum_le_sum_of_subset_of_nonneg (Finset.subset_univ _)
        fun i _ _ => Finset.sum_nonneg fun _ _ => sq_nonneg _
    linarith

/-- **Remainder bound.** `‖Φ_P(δ) − Φ_P(0) − J_P δ‖ ≤ √3 ‖δ‖²`, for every centre `P` and every real `δ`. -/
theorem outNorm_rem_le (P δ : RMat6) : outNorm (Phi P δ - Phi P 0 - Jac P δ) ≤ Real.sqrt 3 * frob δ ^ 2 := by
  set S := sumsq δ
  have hS : frob δ ^ 2 = S := by rw [frob_eq_sqrt, Real.sq_sqrt (sumsq_nonneg δ)]
  rw [hS]
  refine outNorm_le_of_sq_le (mul_nonneg (Real.sqrt_nonneg 3) (sumsq_nonneg δ)) ?_
  rw [mul_pow, Real.sq_sqrt (by norm_num : (0:ℝ) ≤ 3)]
  have key : ∑ a, ∑ b, ‖(Phi P δ - Phi P 0 - Jac P δ) a b‖ ^ 2 ≤ ∑ a, ∑ b, S / 2 * rowDist δ a b := by
    refine Finset.sum_le_sum fun a _ => Finset.sum_le_sum fun b _ => ?_
    have h1 := norm_rem_le P δ a b
    have h2 := rowDist_le δ a b
    have h3 := rowDist_nonneg δ a b
    have h4 := norm_nonneg ((Phi P δ - Phi P 0 - Jac P δ) a b)
    nlinarith
  have hsum := sum_rowDist_le δ
  have : ∑ a, ∑ b, S / 2 * rowDist δ a b = S / 2 * ∑ a, ∑ b, rowDist δ a b := by
    simp_rw [Finset.mul_sum]
  have hS0 : 0 ≤ S := sumsq_nonneg δ
  rw [this] at key
  nlinarith

/-! ### Lemma 3.1 -/

lemma sumsq_add_of_orth {u v : RMat6} (h : ∑ a, ∑ c, u a c * v a c = 0) :
    sumsq (u + v) = sumsq u + sumsq v := by
  have e : ∀ a c, (u + v) a c ^ 2 = u a c ^ 2 + v a c ^ 2 + 2 * (u a c * v a c) := fun a c => by
    rw [Matrix.add_apply]; ring
  simp only [sumsq, e, Finset.sum_add_distrib, ← Finset.mul_sum, h, mul_zero, add_zero]

/-- **Lemma 3.1 (normal bound), the quadratic inequality.**  If `e^{i(P+δ)}` is Hadamard and `δ = u + ν` with
`u ⟂ ν` (Frobenius), `σ‖ν‖ ≤ ‖J ν‖`, `‖Φ_P(0)‖ ≤ e₀`, `‖J u‖ ≤ j₁ s` and `‖u‖² ≤ λ s²`, then
`σ‖ν‖ − √3‖ν‖² ≤ e₀ + j₁ s + √3 λ s²`. -/
theorem normal_bound {P u ν : RMat6} {σ e0 j1 s lam : ℝ}
    (hH : Hadamard6.IsHadamard (phaseMat (P + (u + ν)))) (horth : ∑ a, ∑ c, u a c * ν a c = 0)
    (hσ : σ * frob ν ≤ outNorm (Jac P ν)) (he : outNorm (Phi P 0) ≤ e0)
    (hj : outNorm (Jac P u) ≤ j1 * s) (hu : sumsq u ≤ lam * s ^ 2) :
    σ * frob ν - Real.sqrt 3 * frob ν ^ 2 ≤ e0 + j1 * s + Real.sqrt 3 * lam * s ^ 2 := by
  set Rm := Phi P (u + ν) - Phi P 0 - Jac P (u + ν)
  have h0 := phi_eq_zero_of_isHadamard hH
  have hJ : Jac P ν = -(Phi P 0 + Jac P u + Rm) := by
    simp only [Rm, h0, jac_add]; abel
  have hR := outNorm_rem_le P (u + ν)
  have hsq : frob (u + ν) ^ 2 ≤ lam * s ^ 2 + frob ν ^ 2 := by
    rw [frob_eq_sqrt, frob_eq_sqrt, Real.sq_sqrt (sumsq_nonneg _), Real.sq_sqrt (sumsq_nonneg _),
      sumsq_add_of_orth horth]
    linarith
  have hJν : outNorm (Jac P ν) ≤ e0 + j1 * s + Real.sqrt 3 * frob (u + ν) ^ 2 := by
    rw [hJ, outNorm_neg]
    calc outNorm (Phi P 0 + Jac P u + Rm) ≤ outNorm (Phi P 0 + Jac P u) + outNorm Rm := outNorm_add_le _ _
      _ ≤ outNorm (Phi P 0) + outNorm (Jac P u) + outNorm Rm := by
          linarith [outNorm_add_le (Phi P 0) (Jac P u)]
      _ ≤ e0 + j1 * s + Real.sqrt 3 * frob (u + ν) ^ 2 := by linarith
  have h3 := mul_le_mul_of_nonneg_left hsq (Real.sqrt_nonneg 3)
  nlinarith

/-- The quadratic step: if `σx − (L/2)x² ≤ b`, `x ≤ R` and `LR < σ`, then `x ≤ (σ − √(σ² − 2Lb))/L`. -/
lemma quad_root_bound {σ L b x R : ℝ} (hL : 0 < L) (hxR : x ≤ R) (hLR : L * R < σ)
    (h : σ * x - L / 2 * x ^ 2 ≤ b) : x ≤ (σ - Real.sqrt (σ ^ 2 - 2 * L * b)) / L := by
  have hxs : L * x < σ := by nlinarith
  rw [le_div_iff₀ hL]
  by_contra hlt
  rw [not_le] at hlt
  rcases le_or_gt 0 (σ ^ 2 - 2 * L * b) with hD | hD
  · set r := Real.sqrt (σ ^ 2 - 2 * L * b)
    have hr2 : r ^ 2 = σ ^ 2 - 2 * L * b := Real.sq_sqrt hD
    have hr0 : 0 ≤ r := Real.sqrt_nonneg _
    have hneg : (L * x - σ + r) * (L * x - σ - r) < 0 :=
      mul_neg_of_pos_of_neg (by linarith) (by linarith)
    nlinarith
  · rw [Real.sqrt_eq_zero_of_nonpos hD.le] at hlt
    linarith

/-- **Lemma 3.1** in the form used by the certificate, with `L = 2√3`. -/
theorem normal_bound_root {P u ν : RMat6} {σ e0 j1 s lam R : ℝ}
    (hH : Hadamard6.IsHadamard (phaseMat (P + (u + ν)))) (horth : ∑ a, ∑ c, u a c * ν a c = 0)
    (hσ : σ * frob ν ≤ outNorm (Jac P ν)) (he : outNorm (Phi P 0) ≤ e0)
    (hj : outNorm (Jac P u) ≤ j1 * s) (hu : sumsq u ≤ lam * s ^ 2)
    (hνR : frob ν ≤ R) (hLR : 2 * Real.sqrt 3 * R < σ) :
    frob ν ≤ (σ - Real.sqrt (σ ^ 2 - 2 * (2 * Real.sqrt 3) * (e0 + j1 * s + Real.sqrt 3 * lam * s ^ 2)))
      / (2 * Real.sqrt 3) := by
  have hb := normal_bound hH horth hσ he hj hu
  have h3 : (0 : ℝ) < Real.sqrt 3 := Real.sqrt_pos.mpr (by norm_num)
  refine quad_root_bound (by linarith) hνR hLR ?_
  have : 2 * Real.sqrt 3 / 2 = Real.sqrt 3 := by ring
  rw [this]; exact hb

/-! ### Isolation (Remark 3.3) -/

/-- If `e^{iP}` is Hadamard and `σ‖δ‖ ≤ ‖J_P δ‖`, then any Hadamard `e^{i(P+δ)}` has `δ = 0` or `‖δ‖ ≥ σ/√3`. -/
theorem isolation {P δ : RMat6} {σ : ℝ} (hP : Phi P 0 = 0) (hH : Hadamard6.IsHadamard (phaseMat (P + δ)))
    (hσ : σ * frob δ ≤ outNorm (Jac P δ)) : frob δ = 0 ∨ σ / Real.sqrt 3 ≤ frob δ := by
  have hH' : Hadamard6.IsHadamard (phaseMat (P + (0 + δ))) := by rwa [zero_add]
  have hb := normal_bound (u := 0) (ν := δ) (e0 := 0) (j1 := 0) (s := 0) (lam := 0) hH'
    (by simp) hσ (by rw [hP, outNorm_zero]) (by
      have : Jac P 0 = 0 := by ext a b; simp [Jac]
      rw [this, outNorm_zero]; simp) (by simp [sumsq])
  have h3 : (0 : ℝ) < Real.sqrt 3 := Real.sqrt_pos.mpr (by norm_num)
  have hx : 0 ≤ frob δ := by rw [frob_eq_sqrt]; exact Real.sqrt_nonneg _
  rcases hx.eq_or_lt with h | h
  · exact Or.inl h.symm
  · right
    rw [div_le_iff₀ h3]
    nlinarith

end NoFourMUBs
