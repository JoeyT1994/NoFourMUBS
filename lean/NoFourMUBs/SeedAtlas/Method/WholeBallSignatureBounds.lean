import NoFourMUBs.SeedAtlas.Method.WholeBallSignature

/-! Z §6: the actual side signature satisfies the Taylor variation estimate
with constant 36. The gradient is summed before any norm is taken. -/

open Complex Matrix Hadamard6 NoFourMUBs.Step2

namespace NoFourMUBs.SeedAtlas.Method.WholeBall

noncomputable def signatureDot (i : Fin 24) (v : Fin 9 → ℝ) : ℝ :=
  ∑ j, (signatureFrequency i j : ℝ) * v j

noncomputable def signatureRayCoeff (q : Fin 9 → ℝ) (i : Fin 24) : ℂ →L[ℝ] ℝ :=
  ((signatureCoefficient i : ℝ) • Complex.imCLM) ∘L
    ContinuousLinearMap.mul ℝ ℂ (Complex.exp (signatureDot i q * I))

lemma signatureRayCoeff_norm (q : Fin 9 → ℝ) (i : Fin 24) :
    ‖signatureRayCoeff q i‖ ≤ 1 := by
  apply ContinuousLinearMap.opNorm_le_bound _ (by norm_num)
  intro c
  change ‖(signatureCoefficient i : ℝ) * (Complex.exp (signatureDot i q * I) * c).im‖ ≤ _
  rw [Real.norm_eq_abs, abs_mul, signature_coefficient_abs, one_mul, one_mul]
  exact (Complex.abs_im_le_norm _).trans_eq (by rw [norm_mul, Complex.norm_exp_ofReal_mul_I, one_mul])

lemma signature_ray (q v : Fin 9 → ℝ) (t : ℝ) :
    (psi (signaturePhaseBlock (q + t • v))).im =
      fourierRay (signatureRayCoeff q) (fun i => signatureDot i v) 0 t := by
  rw [signature_fourier]
  unfold fourierRay
  apply Finset.sum_congr rfl
  intro i _
  change _ = (signatureCoefficient i : ℝ) * (Complex.exp (signatureDot i q * I) *
    chirp (signatureDot i v) 0 t).im
  congr 2
  unfold chirp signatureDot
  rw [← Complex.exp_add]
  congr 1
  simp only [Pi.add_apply, Pi.smul_apply, smul_eq_mul, mul_add, Finset.sum_add_distrib,
    zero_mul, zero_div, add_zero]
  push_cast
  simp only [add_mul, Finset.sum_mul]
  congr 1
  apply Finset.sum_congr rfl
  intro j _
  ring

noncomputable def signatureGradient (q : Fin 9 → ℝ) (j : Fin 9) : ℝ :=
  ∑ i, (signatureCoefficient i : ℝ) * (signatureFrequency i j : ℝ) *
    (Complex.exp (signatureDot i q * I)).re

lemma signature_ray_jet (q v : Fin 9 → ℝ) :
    fourierRayJet (signatureRayCoeff q) (fun i => signatureDot i v) 0 1 0 =
      ∑ j, signatureGradient q j * v j := by
  unfold fourierRayJet signatureGradient
  simp only [Finset.sum_mul]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro i _
  change (signatureCoefficient i : ℝ) *
    (Complex.exp (signatureDot i q * I) *
      (chirp (signatureDot i v) 0 0 * chirpPoly 1 (chirpSlope (signatureDot i v) 0 0) (0 * I))).im = _
  simp only [chirp, chirpPoly, chirpSlope, zero_mul, mul_zero, zero_div, add_zero,
    Complex.ofReal_zero, Complex.exp_zero, one_mul, Complex.mul_im, Complex.mul_re, sub_zero,
    Complex.ofReal_re, Complex.ofReal_im, Complex.I_re, Complex.I_im, mul_one]
  unfold signatureDot
  simp only [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro j _
  ring

/-- The coefficient 36 is half the certified frequency Gram bound 72. -/
theorem signature_variation (q v : Fin 9 → ℝ) :
    |(psi (signaturePhaseBlock (q + v))).im - (psi (signaturePhaseBlock q)).im| ≤
      |∑ j, signatureGradient q j * v j| + 36 * ∑ j, (v j) ^ 2 := by
  have hh := fourier_linear_variation (signatureRayCoeff q) (fun i => signatureDot i v)
    (g := |∑ j, signatureGradient q j * v j|) (C := 72 * ∑ j, (v j) ^ 2)
    (abs_nonneg _) (by positivity) (signatureRayCoeff_norm q) (signature_frequency_bound v)
    (by rw [signature_ray_jet, Real.norm_eq_abs])
  rw [← signature_ray q v 1, ← signature_ray q v 0] at hh
  simp only [one_smul, zero_smul, add_zero, Real.norm_eq_abs] at hh
  convert! hh using 1
  ring

end NoFourMUBs.SeedAtlas.Method.WholeBall
