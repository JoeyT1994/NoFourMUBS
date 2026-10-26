import NoFourMUBs.SeedAtlas.Method.WholeBallFourier

/-!
# Bounds for sums of quadratic-phase Fourier terms

The low jets are bounded after summing all terms. Only the final derivative
remainder uses a sum of term norms, as required in Z §3.
-/

open Complex Set
open scoped ContDiff

namespace NoFourMUBs.SeedAtlas.Method.WholeBall

variable {ι F : Type*} [Fintype ι] [NormedAddCommGroup F] [NormedSpace ℝ F]

noncomputable def fourierRay (K : ι → ℂ →L[ℝ] F) (a b : ι → ℝ) (t : ℝ) : F :=
  ∑ i, K i (chirp (a i) (b i) t)

noncomputable def fourierRayJet (K : ι → ℂ →L[ℝ] F) (a b : ι → ℝ) (n : ℕ) (t : ℝ) : F :=
  ∑ i, K i (chirp (a i) (b i) t * chirpPoly n (chirpSlope (a i) (b i) t) ((b i : ℂ) * I))

lemma contDiff_chirp (a b : ℝ) : ContDiff ℝ ω (chirp a b) := by
  have hR : ContDiff ℝ ω (Complex.ofReal) := Complex.ofRealCLM.contDiff
  unfold chirp
  fun_prop

lemma contDiff_fourierRay (K : ι → ℂ →L[ℝ] F) (a b : ι → ℝ) :
    ContDiff ℝ ω (fourierRay K a b) := by
  apply ContDiff.sum
  intro i _
  exact (K i).contDiff.comp (contDiff_chirp (a i) (b i))

lemma hasDerivAt_fourierRayJet (K : ι → ℂ →L[ℝ] F) (a b : ι → ℝ) (t : ℝ)
    {n : ℕ} (hn : n < 5) :
    HasDerivAt (fourierRayJet K a b n) (fourierRayJet K a b (n + 1) t) t := by
  apply HasDerivAt.fun_sum
  intro i _
  exact (K i).hasFDerivAt.comp_hasDerivAt t (hasDerivAt_chirpPoly (a i) (b i) t hn)

theorem iteratedDeriv_fourierRay (K : ι → ℂ →L[ℝ] F) (a b : ι → ℝ)
    {n : ℕ} (hn : n ≤ 5) : iteratedDeriv n (fourierRay K a b) = fourierRayJet K a b n := by
  induction n with
  | zero => ext t; simp [fourierRay, fourierRayJet, chirpPoly]
  | succ n ih =>
    rw [iteratedDeriv_succ, ih (by omega)]
    funext t
    exact (hasDerivAt_fourierRayJet K a b t (by omega)).deriv

lemma fourierRayJet_eq (K : ι → ℂ →L[ℝ] F) (a b : ι → ℝ) (t : ℝ)
    {n : ℕ} (hn : n ≤ 5) :
    fourierRayJet K a b n t = ∑ i, K i (iteratedDeriv n (chirp (a i) (b i)) t) := by
  simp only [fourierRayJet, iteratedDeriv_chirp _ _ hn]

/-- The fifth derivative of the actual summed Fourier ray. -/
theorem norm_fourierRay_fifth (K : ι → ℂ →L[ℝ] F) (a b cn c d : ι → ℝ) (t : ℝ)
    (hK : ∀ i, ‖K i‖ ≤ cn i) (hc : ∀ i, |a i + b i * t| ≤ c i)
    (hd : ∀ i, |b i| ≤ d i) :
    ‖iteratedDeriv 5 (fourierRay K a b) t‖ ≤
      ∑ i, cn i * ((c i) ^ 5 + 10 * d i * (c i) ^ 3 + 15 * (d i) ^ 2 * c i) := by
  rw [iteratedDeriv_fourierRay _ _ _ (by omega), fourierRayJet_eq _ _ _ _ (by omega)]
  apply (norm_sum_le _ _).trans
  apply Finset.sum_le_sum
  intro i _
  exact ((K i).le_opNorm _).trans (mul_le_mul (hK i) (norm_chirp_fifth _ _ _ (hc i) (hd i))
    (norm_nonneg _) ((norm_nonneg _).trans (hK i)))

/-- The third derivative used for the normal-derivative remainder. -/
theorem norm_fourierRay_third (K : ι → ℂ →L[ℝ] F) (a b cn c d : ι → ℝ) (t : ℝ)
    (hK : ∀ i, ‖K i‖ ≤ cn i) (hc : ∀ i, |a i + b i * t| ≤ c i)
    (hd : ∀ i, |b i| ≤ d i) :
    ‖iteratedDeriv 3 (fourierRay K a b) t‖ ≤
      ∑ i, cn i * ((c i) ^ 3 + 3 * d i * c i) := by
  rw [iteratedDeriv_fourierRay _ _ _ (by omega), fourierRayJet_eq _ _ _ _ (by omega)]
  apply (norm_sum_le _ _).trans
  apply Finset.sum_le_sum
  intro i _
  exact ((K i).le_opNorm _).trans (mul_le_mul (hK i) (norm_chirp_third _ _ _ (hc i) (hd i))
    (norm_nonneg _) ((norm_nonneg _).trans (hK i)))

lemma chirp_segment_slope {a b sn tn r t : ℝ} (ht : t ∈ Icc (0 : ℝ) 1)
    (ha : |a| ≤ sn * r) (hb : |b| ≤ tn * r ^ 2) :
    |a + b * t| ≤ (sn + r * tn) * r := by
  calc
    _ ≤ |a| + |b| * |t| := by simpa only [abs_mul] using abs_add_le a (b * t)
    _ ≤ sn * r + tn * r ^ 2 := by
      rw [abs_of_nonneg ht.1]
      apply add_le_add ha
      calc
        |b| * t ≤ |b| * 1 := mul_le_mul_of_nonneg_left ht.2 (abs_nonneg _)
        _ ≤ tn * r ^ 2 := by simpa using hb
    _ = _ := by ring

variable [CompleteSpace F]

/-- Z's predictor residual bound for a finite Fourier representation of the
ray `w ↦ t w`, with centre jets supplied *after summation*. -/
theorem fourier_predictor_bound (K : ι → ℂ →L[ℝ] F) (a b cn sn tn : ι → ℝ)
    {r t3 t4 L5 : ℝ} (hr : 0 ≤ r) (ht3 : 0 ≤ t3) (ht4 : 0 ≤ t4) (hL5 : 0 ≤ L5)
    (hK : ∀ i, ‖K i‖ ≤ cn i) (ha : ∀ i, |a i| ≤ sn i * r) (hb : ∀ i, |b i| ≤ tn i * r ^ 2)
    (hL : (∑ i, cn i * ((sn i + r * tn i) ^ 5 + 10 * tn i * (sn i + r * tn i) ^ 3 +
      15 * (tn i) ^ 2 * (sn i + r * tn i))) ≤ L5)
    (h0 : fourierRay K a b 0 = 0) (h1 : fourierRayJet K a b 1 0 = 0)
    (h2 : fourierRayJet K a b 2 0 = 0)
    (h3 : ‖fourierRayJet K a b 3 0‖ ≤ t3 * r ^ 3)
    (h4 : ‖fourierRayJet K a b 4 0‖ ≤ t4 * r ^ 4) :
    ‖fourierRay K a b 1‖ ≤ t3 * r ^ 3 / 6 + t4 * r ^ 4 / 24 + L5 * r ^ 5 / 120 := by
  have hder {n : ℕ} (hn : n ≤ 5) (t : ℝ) :
      ‖iteratedFDeriv ℝ n (fourierRay K a b) t‖ = ‖fourierRayJet K a b n t‖ := by
    rw [norm_iteratedFDeriv_eq_norm_iteratedDeriv, iteratedDeriv_fourierRay _ _ _ hn]
  have h5 (t : ℝ) (ht : t ∈ Icc (0 : ℝ) 1) :
      ‖iteratedFDeriv ℝ 5 (fourierRay K a b) t‖ ≤ L5 * r ^ 5 := by
    rw [norm_iteratedFDeriv_eq_norm_iteratedDeriv]
    have hh := norm_fourierRay_fifth K a b cn (fun i => (sn i + r * tn i) * r)
      (fun i => tn i * r ^ 2) t hK (fun i => chirp_segment_slope ht (ha i) (hb i)) hb
    apply hh.trans
    calc
      _ = (∑ i, cn i * ((sn i + r * tn i) ^ 5 + 10 * tn i * (sn i + r * tn i) ^ 3 +
          15 * (tn i) ^ 2 * (sn i + r * tn i))) * r ^ 5 := by
        rw [Finset.sum_mul]
        apply Finset.sum_congr rfl
        intro i _
        ring
      _ ≤ _ := mul_le_mul_of_nonneg_right hL (pow_nonneg hr _)
  have hh := predictor_residual_bound (f := fourierRay K a b) (y := (1 : ℝ)) (r := 1)
    (t3 := t3 * r ^ 3) (t4 := t4 * r ^ 4) (L5 := L5 * r ^ 5)
    (by simp) (by positivity) (by positivity) (by positivity)
    (fun t ht => (contDiff_fourierRay K a b).contDiffAt.of_le (by simp)) h0
    (norm_eq_zero.mp (by rw [hder (by omega), h1, norm_zero]))
    (norm_eq_zero.mp (by rw [hder (by omega), h2, norm_zero]))
    (by rw [hder (by omega)]; exact h3) (by rw [hder (by omega)]; exact h4)
    (by intro t ht; simpa using h5 t ht)
  simpa using hh

/-- Z's normal-derivative expansion (7), retaining cancellation in its first
and second centre jets. For the normal derivative, `cn` includes `‖d_a‖`. -/
theorem fourier_normal_base_bound (K : ι → ℂ →L[ℝ] F) (a b cn sn tn : ι → ℝ)
    {r c a2 L3a : ℝ} (hr : 0 ≤ r) (hc : 0 ≤ c) (ha2 : 0 ≤ a2) (hL3a : 0 ≤ L3a)
    (hK : ∀ i, ‖K i‖ ≤ cn i) (ha : ∀ i, |a i| ≤ sn i * r) (hb : ∀ i, |b i| ≤ tn i * r ^ 2)
    (hL : (∑ i, cn i * ((sn i + r * tn i) ^ 3 + 3 * tn i * (sn i + r * tn i))) ≤ L3a)
    (h1 : ‖fourierRayJet K a b 1 0‖ ≤ c * r)
    (h2 : ‖fourierRayJet K a b 2 0‖ ≤ a2 * r ^ 2) :
    ‖fourierRay K a b 1 - fourierRay K a b 0‖ ≤ c * r + a2 * r ^ 2 / 2 + L3a * r ^ 3 / 6 := by
  have hder {n : ℕ} (hn : n ≤ 5) (t : ℝ) :
      ‖iteratedFDeriv ℝ n (fourierRay K a b) t‖ = ‖fourierRayJet K a b n t‖ := by
    rw [norm_iteratedFDeriv_eq_norm_iteratedDeriv, iteratedDeriv_fourierRay _ _ _ hn]
  have h3 (t : ℝ) (ht : t ∈ Icc (0 : ℝ) 1) :
      ‖iteratedFDeriv ℝ 3 (fourierRay K a b) t‖ ≤ L3a * r ^ 3 := by
    rw [norm_iteratedFDeriv_eq_norm_iteratedDeriv]
    have hh := norm_fourierRay_third K a b cn (fun i => (sn i + r * tn i) * r)
      (fun i => tn i * r ^ 2) t hK (fun i => chirp_segment_slope ht (ha i) (hb i)) hb
    apply hh.trans
    calc
      _ = (∑ i, cn i * ((sn i + r * tn i) ^ 3 + 3 * tn i * (sn i + r * tn i))) * r ^ 3 := by
        rw [Finset.sum_mul]
        apply Finset.sum_congr rfl
        intro i _
        ring
      _ ≤ _ := mul_le_mul_of_nonneg_right hL (pow_nonneg hr _)
  have hh := norm_sub_le_cubic (f := fourierRay K a b) (y := (1 : ℝ)) (r := 1)
    (a := c * r) (b := a2 * r ^ 2) (C := L3a * r ^ 3)
    (by simp) (by positivity) (by positivity) (by positivity)
    (fun t ht => (contDiff_fourierRay K a b).contDiffAt.of_le (by simp))
    (by rw [hder (by omega)]; exact h1) (by rw [hder (by omega)]; exact h2)
    (by intro t ht; simpa using h3 t ht)
  simpa using hh

/-- A linear-phase Fourier sum has second derivative bounded by the sum of
squared frequencies. The signature's frequency Gram identity makes this
`72 * ε²`, and therefore its Taylor remainder is `36 * ε²`. -/
theorem fourier_linear_variation_weighted (K : ι → ℂ →L[ℝ] F) (a cn : ι → ℝ)
    {g C : ℝ} (hg : 0 ≤ g) (hC : 0 ≤ C)
    (hK : ∀ i, ‖K i‖ ≤ cn i) (hfreq : ∑ i, cn i * (a i) ^ 2 ≤ C)
    (hgrad : ‖fourierRayJet K a 0 1 0‖ ≤ g) :
    ‖fourierRay K a 0 1 - fourierRay K a 0 0‖ ≤ g + C / 2 := by
  have h2 (t : ℝ) : ‖iteratedFDeriv ℝ 2 (fourierRay K a 0) t‖ ≤ C := by
    rw [norm_iteratedFDeriv_eq_norm_iteratedDeriv, iteratedDeriv_fourierRay _ _ _ (by omega),
      fourierRayJet_eq _ _ _ _ (by omega)]
    apply ((norm_sum_le _ _).trans (Finset.sum_le_sum (fun i _ => ?_))).trans hfreq
    calc
      _ ≤ ‖K i‖ * ‖iteratedDeriv 2 (chirp (a i) 0) t‖ := (K i).le_opNorm _
      _ ≤ cn i * ‖iteratedDeriv 2 (chirp (a i) 0) t‖ :=
        mul_le_mul_of_nonneg_right (hK i) (norm_nonneg _)
      _ = cn i * (a i) ^ 2 := by
        rw [iteratedDeriv_chirp _ _ (by omega), norm_mul, norm_chirp, one_mul]
        simp only [chirpPoly, Complex.ofReal_zero, zero_mul, add_zero, norm_pow,
          norm_chirpSlope, sq_abs]
  have h1 : ‖fderiv ℝ (fourierRay K a 0) 0‖ ≤ g := by
    rw [← norm_deriv_eq_norm_fderiv, ← iteratedDeriv_one,
      iteratedDeriv_fourierRay _ _ _ (by omega)]
    exact hgrad
  have hh := norm_sub_le_linear_quadratic (f := fourierRay K a 0) (x := (0 : ℝ))
    (y := 1) (r := 1) (a := g) (C := C) (by simp) hg hC
    (fun t ht => (contDiff_fourierRay K a 0).contDiffAt.of_le (by simp)) h1
    (fun t ht => h2 _)
  simpa using hh

theorem fourier_linear_variation (K : ι → ℂ →L[ℝ] F) (a : ι → ℝ)
    {g C : ℝ} (hg : 0 ≤ g) (hC : 0 ≤ C)
    (hK : ∀ i, ‖K i‖ ≤ 1) (hfreq : ∑ i, (a i) ^ 2 ≤ C)
    (hgrad : ‖fourierRayJet K a 0 1 0‖ ≤ g) :
    ‖fourierRay K a 0 1 - fourierRay K a 0 0‖ ≤ g + C / 2 := by
  exact fourier_linear_variation_weighted K a (fun _ => 1) hg hC hK
    (by simpa only [one_mul] using hfreq) hgrad

end NoFourMUBs.SeedAtlas.Method.WholeBall
