import KernelAtlas.WholeBall.CentreHessian
import KernelAtlas.WholeBall.PhaseResidual

/-! The Fourier coefficients and frequencies represent the actual phase
residual, rather than an auxiliary equation with an assumed interpretation. -/

open Matrix Complex Hadamard6 NoFourMUBs.SeedAtlas

namespace NoFourMUBs.KernelAtlas.WholeBall

lemma ratCastIte (p : Prop) [Decidable p] (a b : ℚ) :
    ((if p then a else b : ℚ) : ℝ) = if p then (a : ℝ) else (b : ℝ) := by
  split_ifs <;> rfl

lemma frequency_apply (V : NoFourMUBs.RMat6) (t : Fin 90) :
    (realMatrix phaseFrequencies *ᵥ flatPhase V) t =
      V (phaseIndex (gramPair (termPair t)).1) (phaseIndex (termColumn t)) -
      V (phaseIndex (gramPair (termPair t)).2) (phaseIndex (termColumn t)) := by
  change (∑ b : Fin 36, ((phaseFrequencies t b : ℚ) : ℝ) *
    V (phaseIndex (phaseRow b)) (phaseIndex (phaseCol b))) = _
  simp only [phaseFrequencies, ratCastIte, Rat.cast_sub, Rat.cast_one, Rat.cast_zero]
  rw [sum_phase_grid (fun i k =>
    (if k = termColumn t then
      (if i = (gramPair (termPair t)).1 then (1 : ℝ) else 0) -
      (if i = (gramPair (termPair t)).2 then 1 else 0) else 0) *
        V (phaseIndex i) (phaseIndex k)), Finset.sum_comm]
  simp only [ite_mul, zero_mul, Finset.sum_ite_eq', sub_mul, one_mul, Finset.sum_sub_distrib]
  simp

lemma phaseGram_add (Q V : NoFourMUBs.RMat6) (p : Fin 15) :
    phaseGram (Q + V) p =
      ∑ k : Fin 6, (NoFourMUBs.phaseMat Q (phaseIndex (gramPair p).1) (phaseIndex k) *
        star (NoFourMUBs.phaseMat Q (phaseIndex (gramPair p).2) (phaseIndex k))) *
        Complex.exp (((V (phaseIndex (gramPair p).1) (phaseIndex k) -
          V (phaseIndex (gramPair p).2) (phaseIndex k) : ℝ) : ℂ) * I) := by
  unfold phaseGram
  apply Finset.sum_congr rfl
  intro k _
  rw [← phaseGram_entry, ← Complex.exp_add]
  congr 1
  simp only [Matrix.add_apply]
  push_cast
  ring

lemma centreJacobian_factor (H : Mat6) :
    centreJacobian H = imaginaryCoefficients H * realMatrix phaseFrequencies := by
  ext a b
  change (jacSign a b : ℝ) * (if a.val < 15 then
    (I * (H (phaseIndex (gramPair (jacPair a)).1) (phaseIndex (phaseCol b)) *
      star (H (phaseIndex (gramPair (jacPair a)).2) (phaseIndex (phaseCol b))))).re
    else (I * (H (phaseIndex (gramPair (jacPair a)).1) (phaseIndex (phaseCol b)) *
      star (H (phaseIndex (gramPair (jacPair a)).2) (phaseIndex (phaseCol b))))).im) =
      ∑ t, imaginaryCoefficients H a t * ((phaseFrequencies t b : ℚ) : ℝ)
  simp only [imaginaryCoefficients, phaseFrequencies, gramCoefficient,
    ratCastIte, Rat.cast_sub, Rat.cast_one, Rat.cast_zero]
  rw [sum_terms (fun p k =>
    (if jacPair a = p then if a.val < 15 then
      (I * (H (phaseIndex (gramPair p).1) (phaseIndex k) *
        star (H (phaseIndex (gramPair p).2) (phaseIndex k)))).re
      else (I * (H (phaseIndex (gramPair p).1) (phaseIndex k) *
        star (H (phaseIndex (gramPair p).2) (phaseIndex k)))).im else 0) *
      (if phaseCol b = k then
        (if phaseRow b = (gramPair p).1 then (1 : ℝ) else 0) -
        (if phaseRow b = (gramPair p).2 then 1 else 0) else 0))]
  simp only [ite_mul, mul_ite, zero_mul, mul_zero, Finset.sum_ite_eq,
    Finset.sum_ite_irrel, Finset.sum_const_zero, Finset.mem_univ, if_true]
  simp only [jacSign, Int.cast_sub, Int.cast_ite, Int.cast_one, Int.cast_zero]
  split_ifs <;> ring

theorem phaseResidual_add (Q V : NoFourMUBs.RMat6) (a : Fin 30) :
    phaseResidual (Q + V) a = ∑ t : Fin 90,
      (realCoefficients (NoFourMUBs.phaseMat Q) a t *
        (Complex.exp (((realMatrix phaseFrequencies *ᵥ flatPhase V) t : ℂ) * I)).re +
      imaginaryCoefficients (NoFourMUBs.phaseMat Q) a t *
        (Complex.exp (((realMatrix phaseFrequencies *ᵥ flatPhase V) t : ℂ) * I)).im) := by
  simp only [frequency_apply, realCoefficients, imaginaryCoefficients, gramCoefficient]
  rw [sum_terms (fun p k =>
    (if jacPair a = p then
      if a.val < 15 then
        (NoFourMUBs.phaseMat Q (phaseIndex (gramPair p).1) (phaseIndex k) *
          star (NoFourMUBs.phaseMat Q (phaseIndex (gramPair p).2) (phaseIndex k))).re
      else (NoFourMUBs.phaseMat Q (phaseIndex (gramPair p).1) (phaseIndex k) *
          star (NoFourMUBs.phaseMat Q (phaseIndex (gramPair p).2) (phaseIndex k))).im
    else 0) *
      (Complex.exp (((V (phaseIndex (gramPair p).1) (phaseIndex k) -
        V (phaseIndex (gramPair p).2) (phaseIndex k) : ℝ) : ℂ) * I)).re +
    (if jacPair a = p then
      if a.val < 15 then
        (I * (NoFourMUBs.phaseMat Q (phaseIndex (gramPair p).1) (phaseIndex k) *
          star (NoFourMUBs.phaseMat Q (phaseIndex (gramPair p).2) (phaseIndex k)))).re
      else (I * (NoFourMUBs.phaseMat Q (phaseIndex (gramPair p).1) (phaseIndex k) *
          star (NoFourMUBs.phaseMat Q (phaseIndex (gramPair p).2) (phaseIndex k)))).im
    else 0) *
      (Complex.exp (((V (phaseIndex (gramPair p).1) (phaseIndex k) -
        V (phaseIndex (gramPair p).2) (phaseIndex k) : ℝ) : ℂ) * I)).im)]
  simp only [ite_mul, zero_mul, Finset.sum_add_distrib, Finset.sum_ite_irrel,
    Finset.sum_const_zero, Finset.sum_ite_eq, Finset.mem_univ, if_true]
  unfold phaseResidual
  rw [phaseGram_add]
  split_ifs with ha
  · rw [Complex.re_sum, ← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro k _
    simp [ha, Complex.mul_re, Complex.mul_im]
    ring
  · rw [Complex.im_sum, ← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro k _
    simp [ha, Complex.mul_re, Complex.mul_im]
    ring

end NoFourMUBs.KernelAtlas.WholeBall
