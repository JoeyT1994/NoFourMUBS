import NoFourMUBs.StageC.Cert

/-!
# A certified ball Record (Lemmas 3.1 and 3.2 together)

A `RecordCert` holds the data that `certify.py` checks for one Record:
* the centre `P` and radius `R` (radians);
* a horizontal tangent frame `T` and the constants `σ, e₀, j₁, λ, g, t`;
* the facts these constants certify:
  - horizontal `δ` splits as `Tη + ν`, with `ν ⟂ T` and `‖η‖ ≤ g‖δ‖`;
  - `σ‖ν‖ ≤ ‖Jν‖` on the normal space;
  - `‖Φ(0)‖ ≤ e₀`;
  - `‖J T η‖ ≤ j₁‖η‖`;
  - `‖Tη‖² ≤ λ‖η‖²`;
  - columns `‖(Tη)_{:,i}‖ ≤ t‖η‖`;
  - `2√3 R < σ`;
* a Stage C certificate (`StageCCert`) in cycle units, with the constants of `PROOF.md` Lemma 3.2:
  `r_H = gR`, `n = (σ − √(σ² − 4√3 b))/(2√3)`, `b = e₀ + j₁ r_H + √3 λ r_H²`, `r = t r_H + n`,
  `r_F = min(R, √λ r_H + n)`.

`RecordCert.excludes`: no Hadamard `e^{i(P+δ)}` with `δ` horizontal and `‖δ‖ ≤ R` is a quartet edge.
-/

open Matrix Hadamard6

namespace NoFourMUBs

open StageC

/-- The normal-bound root `(σ − √(σ² − 4√3 b))/(2√3)` of Lemma 3.1. -/
noncomputable def nroot (σ b : ℝ) : ℝ :=
  (σ - Real.sqrt (σ ^ 2 - 2 * (2 * Real.sqrt 3) * b)) / (2 * Real.sqrt 3)

lemma nroot_mono {σ b b' : ℝ} (h : b ≤ b') : nroot σ b ≤ nroot σ b' := by
  unfold nroot
  have h3 : 0 < 2 * Real.sqrt 3 := by positivity
  apply div_le_div_of_nonneg_right _ h3.le
  have : σ ^ 2 - 2 * (2 * Real.sqrt 3) * b' ≤ σ ^ 2 - 2 * (2 * Real.sqrt 3) * b := by nlinarith
  linarith [Real.sqrt_le_sqrt this]

/-! ### Scaling and column norms -/

lemma sumsq_smul (c : ℝ) (Y : RMat6) : sumsq (c • Y) = c ^ 2 * sumsq Y := by
  simp only [sumsq, Matrix.smul_apply, smul_eq_mul, mul_pow, ← Finset.mul_sum]

lemma frob_smul (c : ℝ) (Y : RMat6) : frob (c • Y) = |c| * frob Y := by
  rw [frob_eq_sqrt, frob_eq_sqrt, sumsq_smul, Real.sqrt_mul (sq_nonneg c), Real.sqrt_sq_eq_abs]

lemma colnorm_smul (c : ℝ) (Y : RMat6) (i : I6) : colnorm (c • Y) i = |c| * colnorm Y i := by
  unfold colnorm vnorm
  simp only [Matrix.smul_apply, smul_eq_mul, mul_pow, ← Finset.mul_sum]
  rw [Real.sqrt_mul (sq_nonneg c), Real.sqrt_sq_eq_abs]

lemma colnorm_add_le (Y Z : RMat6) (i : I6) : colnorm (Y + Z) i ≤ colnorm Y i + colnorm Z i := by
  unfold colnorm; exact vnorm_add_le (fun j => Y j i) (fun j => Z j i)

lemma colnorm_le_frob (Y : RMat6) (i : I6) : colnorm Y i ≤ frob Y := by
  rw [← vnorm_colnorm]
  apply Real.le_sqrt_of_sq_le
  exact Finset.single_le_sum (f := fun k => colnorm Y k ^ 2) (fun _ _ => sq_nonneg _) (Finset.mem_univ i)

lemma frob_nonneg (Y : RMat6) : 0 ≤ frob Y := by rw [frob_eq_sqrt]; exact Real.sqrt_nonneg _

/-- `e^{iY} = E(Y/2π)`. -/
lemma phaseMat_eq_E (Y : RMat6) : phaseMat Y = E ((1 / (2 * Real.pi)) • Y) := by
  ext j i
  simp only [phaseMat, E, of_apply, Matrix.smul_apply, smul_eq_mul, StageC.e]
  congr 2
  have : (2 * Real.pi) * (1 / (2 * Real.pi) * Y j i) = Y j i := by field_simp
  rw [this]

/-! ### The certificate -/

/-- A certified ball Record. -/
structure RecordCert where
  P : RMat6
  R : ℝ
  T : Fin 4 → RMat6
  σ : ℝ
  e0 : ℝ
  j1 : ℝ
  lam : ℝ
  g : ℝ
  t : ℝ
  hj0 : 0 ≤ j1
  hlam0 : 0 ≤ lam
  hg0 : 0 ≤ g
  ht0 : 0 ≤ t
  hproj : ∀ δ, IsHorizontal δ → ∃ η : Fin 4 → ℝ, ∃ ν : RMat6, δ = (∑ k, η k • T k) + ν ∧ IsHorizontal ν ∧
    (∀ k, ∑ a, ∑ c, T k a c * ν a c = 0) ∧ Real.sqrt (∑ k, η k ^ 2) ≤ g * frob δ
  hσ : ∀ ν, IsHorizontal ν → (∀ k, ∑ a, ∑ c, T k a c * ν a c = 0) → σ * frob ν ≤ outNorm (Jac P ν)
  he : outNorm (Phi P 0) ≤ e0
  hj : ∀ η : Fin 4 → ℝ, outNorm (Jac P (∑ k, η k • T k)) ≤ j1 * Real.sqrt (∑ k, η k ^ 2)
  hlam : ∀ η : Fin 4 → ℝ, sumsq (∑ k, η k • T k) ≤ lam * Real.sqrt (∑ k, η k ^ 2) ^ 2
  hcol : ∀ (η : Fin 4 → ℝ) (i : I6), colnorm (∑ k, η k • T k) i ≤ t * Real.sqrt (∑ k, η k ^ 2)
  hLR : 2 * Real.sqrt 3 * R < σ
  stageC : StageCCert ((1 / (2 * Real.pi)) • P) T (g * R / (2 * Real.pi))
    (nroot σ (e0 + j1 * (g * R) + Real.sqrt 3 * lam * (g * R) ^ 2) / (2 * Real.pi))
    ((t * (g * R) + nroot σ (e0 + j1 * (g * R) + Real.sqrt 3 * lam * (g * R) ^ 2)) / (2 * Real.pi))
    (min R (Real.sqrt lam * (g * R) + nroot σ (e0 + j1 * (g * R) + Real.sqrt 3 * lam * (g * R) ^ 2)) / (2 * Real.pi))

/-- Lemma 3.1 inside a certified Record: `δ = Tη + ν`, `‖η‖ ≤ gR`, `‖ν‖ ≤ n`, `‖δ‖² = ‖Tη‖² + ‖ν‖²`. -/
theorem RecordCert.decomp (C : RecordCert) {δ : RMat6} (hδh : IsHorizontal δ) (hR : frob δ ≤ C.R)
    (hH : Hadamard6.IsHadamard (phaseMat (C.P + δ))) :
    ∃ η : Fin 4 → ℝ, ∃ ν : RMat6, δ = (∑ k, η k • C.T k) + ν ∧ Real.sqrt (∑ k, η k ^ 2) ≤ C.g * C.R ∧
      frob ν ≤ nroot C.σ (C.e0 + C.j1 * (C.g * C.R) + Real.sqrt 3 * C.lam * (C.g * C.R) ^ 2) ∧
      sumsq δ = sumsq (∑ k, η k • C.T k) + sumsq ν := by
  obtain ⟨η, ν, hδ, hνh, horthk, hηb⟩ := C.hproj δ hδh
  set u := ∑ k, η k • C.T k
  set s := Real.sqrt (∑ k, η k ^ 2)
  set rH := C.g * C.R
  have hs0 : 0 ≤ s := Real.sqrt_nonneg _
  have hsr : s ≤ rH := hηb.trans (mul_le_mul_of_nonneg_left hR C.hg0)
  have horth : ∑ a, ∑ c, u a c * ν a c = 0 := by
    have : ∑ a, ∑ c, u a c * ν a c = ∑ k, η k * ∑ a, ∑ c, C.T k a c * ν a c := by
      simp only [u, Matrix.sum_apply, Matrix.smul_apply, smul_eq_mul, Finset.sum_mul, Finset.mul_sum]
      symm; rw [Finset.sum_comm]
      refine Finset.sum_congr rfl fun a _ => ?_
      rw [Finset.sum_comm]
      exact Finset.sum_congr rfl fun c _ => Finset.sum_congr rfl fun k _ => by ring
    rw [this]; simp only [horthk, mul_zero, Finset.sum_const_zero]
  have hsplit : sumsq δ = sumsq u + sumsq ν := by rw [hδ]; exact sumsq_add_of_orth horth
  have hνδ : frob ν ≤ frob δ := frob_le_of_sumsq_le (by rw [hsplit]; linarith [sumsq_nonneg u])
  have hH' : Hadamard6.IsHadamard (phaseMat (C.P + (u + ν))) := by rwa [← hδ]
  have hn0 := normal_bound_root (j1 := C.j1) (s := s) (lam := C.lam) (R := C.R) hH' horth (C.hσ ν hνh horthk) C.he
    (C.hj η) (C.hlam η) (hνδ.trans hR) C.hLR
  refine ⟨η, ν, hδ, hsr, hn0.trans (nroot_mono ?_), hsplit⟩
  have h1 : C.j1 * s ≤ C.j1 * rH := mul_le_mul_of_nonneg_left hsr C.hj0
  have h2 : s ^ 2 ≤ rH ^ 2 := pow_le_pow_left₀ hs0 hsr 2
  have h3 : Real.sqrt 3 * C.lam * s ^ 2 ≤ Real.sqrt 3 * C.lam * rH ^ 2 :=
    mul_le_mul_of_nonneg_left h2 (by have := C.hlam0; positivity)
  linarith

/-- **A certified Record contains no quartet edge.** -/
theorem RecordCert.excludes (C : RecordCert) {δ : RMat6} (hδh : IsHorizontal δ) (hR : frob δ ≤ C.R)
    (hH : Hadamard6.IsHadamard (phaseMat (C.P + δ))) : ¬ QuartetEdge (phaseMat (C.P + δ)) := by
  obtain ⟨η, ν, hδ, hsr, hν, _⟩ := C.decomp hδh hR hH
  set u := ∑ k, η k • C.T k
  set s := Real.sqrt (∑ k, η k ^ 2)
  set rH := C.g * C.R
  set b := C.e0 + C.j1 * rH + Real.sqrt 3 * C.lam * rH ^ 2
  set n := nroot C.σ b
  have hpi := Real.pi_pos
  have hs0 : 0 ≤ s := Real.sqrt_nonneg _
  -- cycle units
  set c := 1 / (2 * Real.pi)
  have hc0 : 0 < c := by positivity
  have hcabs : |c| = c := abs_of_pos hc0
  have hu : frob u ≤ Real.sqrt C.lam * s := by
    rw [frob_eq_sqrt, ← Real.sqrt_sq hs0, ← Real.sqrt_mul C.hlam0]
    exact Real.sqrt_le_sqrt (C.hlam η)
  have hadm : Admissible C.T (rH / (2 * Real.pi)) (n / (2 * Real.pi)) ((C.t * rH + n) / (2 * Real.pi))
      (min C.R (Real.sqrt C.lam * rH + n) / (2 * Real.pi)) (c • δ) := by
    refine ⟨⟨fun k => c * η k, c • ν, ?_, ?_, ?_⟩, fun i => ?_, ?_⟩
    · rw [hδ, smul_add, Finset.smul_sum]; congr 1
      exact Finset.sum_congr rfl fun k _ => by rw [smul_smul]
    · have : Real.sqrt (∑ k, (c * η k) ^ 2) = c * s := by
        simp only [mul_pow, ← Finset.mul_sum]
        rw [Real.sqrt_mul (sq_nonneg c), Real.sqrt_sq hc0.le]
      rw [this, div_eq_mul_one_div, mul_comm rH]
      exact mul_le_mul_of_nonneg_left hsr hc0.le
    · rw [frob_smul, hcabs, div_eq_mul_one_div, mul_comm n]
      exact mul_le_mul_of_nonneg_left hν hc0.le
    · rw [colnorm_smul, hcabs, div_eq_mul_one_div, mul_comm _ (1 / (2 * Real.pi))]
      refine mul_le_mul_of_nonneg_left ?_ hc0.le
      rw [hδ]
      calc colnorm (u + ν) i ≤ colnorm u i + colnorm ν i := colnorm_add_le _ _ _
        _ ≤ C.t * s + frob ν := add_le_add (C.hcol η i) (colnorm_le_frob _ _)
        _ ≤ C.t * rH + n := add_le_add (mul_le_mul_of_nonneg_left hsr C.ht0) hν
    · rw [frob_smul, hcabs, div_eq_mul_one_div, mul_comm _ (1 / (2 * Real.pi))]
      refine mul_le_mul_of_nonneg_left (le_min hR ?_) hc0.le
      have hfr : frob δ ≤ frob u + frob ν := by rw [hδ]; exact frob_add_le u ν
      have : Real.sqrt C.lam * s ≤ Real.sqrt C.lam * rH := mul_le_mul_of_nonneg_left hsr (Real.sqrt_nonneg _)
      linarith
  have hE : phaseMat (C.P + δ) = E ((1 / (2 * Real.pi)) • C.P + c • δ) := by
    rw [phaseMat_eq_E, smul_add]
  rw [hE]
  exact C.stageC.excludes hadm

end NoFourMUBs
