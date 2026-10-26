import NoFourMUBs.SeedAtlas.Method.WholeBallFourierBounds
import NoFourMUBs.SeedAtlas.Method.WholeBallJetBounds
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds

/-!
# The finite projected equation

A term of Z's projected equation is a real-linear image of a complex
exponential. The phase is quadratic in the parameter and linear in the normal
coordinate. This file relates that representation to the actual partial
Fréchet derivative used by the contraction theorem.
-/

open Complex
open scoped ContDiff

namespace NoFourMUBs.SeedAtlas.Method.WholeBall

variable {ι E F : Type*} [Fintype ι]
  [NormedAddCommGroup E] [NormedSpace ℝ E]
  [NormedAddCommGroup F] [NormedSpace ℝ F]

structure FourierModel (ι E F : Type*) [NormedAddCommGroup E] [NormedSpace ℝ E]
    [NormedAddCommGroup F] [NormedSpace ℝ F] where
  coeff : ι → ℂ →L[ℝ] F
  linear : ι → E →L[ℝ] ℝ
  quadratic : ι → E →L[ℝ] E →L[ℝ] ℝ
  normal : ι → F →L[ℝ] ℝ

noncomputable def FourierModel.phase (M : FourierModel ι E F) (i : ι) (p : E × F) : ℝ :=
  M.linear i p.1 + M.quadratic i p.1 p.1 / 2 + M.normal i p.2

noncomputable def FourierModel.equation (M : FourierModel ι E F) (p : E × F) : F :=
  ∑ i, M.coeff i (Complex.exp ((M.phase i p : ℂ) * I))

omit [Fintype ι] in
lemma FourierModel.contDiff_phase (M : FourierModel ι E F) (i : ι) :
    ContDiff ℝ ω (M.phase i) := by
  unfold FourierModel.phase
  fun_prop

lemma FourierModel.contDiff_equation (M : FourierModel ι E F) :
    ContDiff ℝ ω M.equation := by
  have hR : ContDiff ℝ ω Complex.ofReal := Complex.ofRealCLM.contDiff
  have hp := M.contDiff_phase
  unfold FourierModel.equation
  fun_prop

noncomputable def FourierModel.normalMap (M : FourierModel ι E F) (w : E) (z : F) : F →L[ℝ] F :=
  ∑ i, (M.normal i).smulRight
    (M.coeff i (Complex.exp ((M.phase i (w, z) : ℂ) * I) * I))

lemma FourierModel.hasFDerivAt_normal (M : FourierModel ι E F) (w : E) (z : F) :
    HasFDerivAt (fun z => M.equation (w, z)) (M.normalMap w z) z := by
  apply HasFDerivAt.fun_sum
  intro i _
  have hp : HasFDerivAt (fun z => M.phase i (w, z)) (M.normal i) z := by
    exact (M.normal i).hasFDerivAt.const_add (M.linear i w + M.quadratic i w w / 2)
  have he : HasDerivAt (fun t : ℝ => Complex.exp ((t : ℂ) * I))
      (Complex.exp ((M.phase i (w, z) : ℂ) * I) * I) (M.phase i (w, z)) := by
    convert! (((hasDerivAt_id _).ofReal_comp.mul_const I).cexp) using 1
    simp
  have hh := (M.coeff i).hasFDerivAt.comp z (he.hasFDerivAt.comp z hp)
  convert! hh using 1
  ext v
  simp only [ContinuousLinearMap.comp_apply, ContinuousLinearMap.smulRight_apply,
    ContinuousLinearMap.toSpanSingleton_apply, map_smul]

theorem FourierModel.normalDerivative_eq (M : FourierModel ι E F) (w : E) (z : F) :
    normalDerivative M.equation w z = M.normalMap w z := by
  have hh := (M.contDiff_equation.differentiable (by simp) (w, z)).hasFDerivAt
  have hc := hh.comp z ((hasFDerivAt_const (c := w) z).prodMk (hasFDerivAt_id z))
  have hmap : (0 : F →L[ℝ] E).prod (ContinuousLinearMap.id ℝ F) =
      ContinuousLinearMap.inr ℝ E F := by ext v <;> simp
  rw [hmap] at hc
  exact hc.unique (M.hasFDerivAt_normal w z)

theorem FourierModel.parameter_ray (M : FourierModel ι E F) (w : E) (t : ℝ) :
    M.equation (t • w, 0) =
      fourierRay M.coeff (fun i => M.linear i w) (fun i => M.quadratic i w w) t := by
  unfold FourierModel.equation fourierRay
  apply Finset.sum_congr rfl
  intro i _
  congr 2
  unfold FourierModel.phase
  simp only [map_smul, smul_apply, map_zero, add_zero, smul_eq_mul]
  congr 2
  ring

noncomputable def FourierModel.normalCoeff (M : FourierModel ι E F) (i : ι) :
    ℂ →L[ℝ] F →L[ℝ] F :=
  (ContinuousLinearMap.smulRightL ℝ F F (M.normal i)) ∘L
    M.coeff i ∘L ContinuousLinearMap.mul ℝ ℂ I

omit [Fintype ι] in
lemma FourierModel.normalCoeff_apply (M : FourierModel ι E F) (i : ι) (c : ℂ) :
    M.normalCoeff i c = (M.normal i).smulRight (M.coeff i (c * I)) := by
  simp only [FourierModel.normalCoeff, ContinuousLinearMap.comp_apply,
    ContinuousLinearMap.mul_apply', mul_comm I]
  rfl

theorem FourierModel.norm_normalCoeff (M : FourierModel ι E F) (i : ι) :
    ‖M.normalCoeff i‖ ≤ ‖M.coeff i‖ * ‖M.normal i‖ := by
  apply ContinuousLinearMap.opNorm_le_bound _ (mul_nonneg (norm_nonneg _) (norm_nonneg _))
  intro c
  rw [M.normalCoeff_apply, ContinuousLinearMap.norm_smulRight_apply]
  calc
    _ ≤ ‖M.normal i‖ * (‖M.coeff i‖ * ‖c * I‖) :=
      mul_le_mul_of_nonneg_left ((M.coeff i).le_opNorm _) (norm_nonneg _)
    _ = _ := by rw [norm_mul, Complex.norm_I]; ring

theorem FourierModel.normal_parameter_ray (M : FourierModel ι E F) (w : E) (t : ℝ) :
    normalDerivative M.equation (t • w) 0 =
      fourierRay M.normalCoeff (fun i => M.linear i w) (fun i => M.quadratic i w w) t := by
  rw [M.normalDerivative_eq]
  unfold FourierModel.normalMap fourierRay
  apply Finset.sum_congr rfl
  intro i _
  rw [M.normalCoeff_apply]
  congr 3
  unfold FourierModel.phase chirp
  congr 2
  simp only [map_smul, smul_apply, map_zero, add_zero, smul_eq_mul]
  congr 1
  ring

noncomputable def FourierModel.normalTubeCoeff (M : FourierModel ι E F) (w : E) (i : ι) :
    ℂ →L[ℝ] F →L[ℝ] F :=
  M.normalCoeff i ∘L ContinuousLinearMap.mul ℝ ℂ (Complex.exp ((M.phase i (w, 0) : ℂ) * I))

omit [Fintype ι] in
lemma FourierModel.norm_normalTubeCoeff (M : FourierModel ι E F) (w : E) (i : ι) :
    ‖M.normalTubeCoeff w i‖ ≤ ‖M.normalCoeff i‖ := by
  refine (M.normalTubeCoeff w i).opNorm_le_bound (by positivity) ?_
  intro c
  change ‖M.normalCoeff i (Complex.exp ((M.phase i (w, 0) : ℂ) * I) * c)‖ ≤ _
  simpa only [norm_mul, Complex.norm_exp_ofReal_mul_I, one_mul] using
    (M.normalCoeff i).le_opNorm (Complex.exp ((M.phase i (w, 0) : ℂ) * I) * c)

theorem FourierModel.normal_tube_ray (M : FourierModel ι E F) (w : E) (z : F) (t : ℝ) :
    normalDerivative M.equation w (t • z) =
      fourierRay (M.normalTubeCoeff w) (fun i => M.normal i z) 0 t := by
  rw [M.normalDerivative_eq]
  unfold FourierModel.normalMap fourierRay
  apply Finset.sum_congr rfl
  intro i _
  change _ = M.normalCoeff i (Complex.exp ((M.phase i (w, 0) : ℂ) * I) * chirp (M.normal i z) 0 t)
  rw [M.normalCoeff_apply]
  congr 3
  unfold chirp
  rw [← Complex.exp_add]
  congr 1
  simp only [FourierModel.phase, map_smul, map_zero, add_zero, zero_mul, zero_div, smul_eq_mul]
  push_cast
  ring

noncomputable def FourierModel.tubeJet (M : FourierModel ι E F) (w : E) (z : F) : F →L[ℝ] F :=
  ∑ i, M.normalCoeff i
    (Complex.exp ((M.phase i (w, 0) : ℂ) * I) * ((M.normal i z : ℂ) * I))

lemma FourierModel.tubeJet_eq (M : FourierModel ι E F) (w : E) (z : F) :
    fourierRayJet (M.normalTubeCoeff w) (fun i => M.normal i z) 0 1 0 = M.tubeJet w z := by
  simp only [fourierRayJet, chirp, chirpPoly, chirpSlope, mul_zero, zero_pow (by omega : 2 ≠ 0),
    zero_div, add_zero, Complex.ofReal_zero, zero_mul, Complex.exp_zero, one_mul,
    FourierModel.normalTubeCoeff, ContinuousLinearMap.comp_apply, ContinuousLinearMap.mul_apply',
    FourierModel.tubeJet, Pi.zero_apply]

theorem FourierModel.tubeJet_variation (M : FourierModel ι E F) (w : E) (z : F)
    (cn dn p : ι → ℝ) (hcn : ∀ i, 0 ≤ cn i) (hdn : ∀ i, 0 ≤ dn i)
    (hK : ∀ i, ‖M.normalCoeff i‖ ≤ cn i * dn i)
    (hd : ∀ i, ‖M.normal i‖ ≤ dn i) (hp : ∀ i, |M.phase i (w, 0)| ≤ p i) :
    ‖M.tubeJet w z - M.tubeJet 0 z‖ ≤ (∑ i, cn i * (dn i) ^ 2 * p i) * ‖z‖ := by
  unfold FourierModel.tubeJet
  rw [← Finset.sum_sub_distrib, Finset.sum_mul]
  apply (norm_sum_le _ _).trans
  apply Finset.sum_le_sum
  intro i _
  have hp0 : 0 ≤ p i := (abs_nonneg _).trans (hp i)
  have hci := hcn i
  have hdi := hdn i
  have hphase : M.phase i (0, 0) = 0 := by simp [FourierModel.phase]
  rw [hphase, Complex.ofReal_zero, zero_mul, Complex.exp_zero, one_mul, ← map_sub]
  rw [show Complex.exp ((M.phase i (w, 0) : ℂ) * I) * ((M.normal i z : ℂ) * I) -
      (M.normal i z : ℂ) * I = (Complex.exp ((M.phase i (w, 0) : ℂ) * I) - 1) *
      ((M.normal i z : ℂ) * I) by ring]
  have hexp : ‖Complex.exp ((M.phase i (w, 0) : ℂ) * I) - 1‖ ≤ p i := by
    have hh : ‖Complex.exp ((M.phase i (w, 0) : ℂ) * I) - 1‖ ≤ |M.phase i (w, 0)| := by
      simpa only [mul_comm I, Real.norm_eq_abs] using
        (Real.norm_exp_I_mul_ofReal_sub_one_le (x := M.phase i (w, 0)))
    exact hh.trans (hp i)
  have hz : |M.normal i z| ≤ dn i * ‖z‖ := by
    exact ((M.normal i).le_opNorm z).trans (mul_le_mul_of_nonneg_right (hd i) (norm_nonneg _))
  calc
    _ ≤ ‖M.normalCoeff i‖ * ‖(Complex.exp ((M.phase i (w, 0) : ℂ) * I) - 1) *
        ((M.normal i z : ℂ) * I)‖ := (M.normalCoeff i).le_opNorm _
    _ ≤ (cn i * dn i) * (p i * (dn i * ‖z‖)) := by
      simp only [norm_mul, Complex.norm_I, mul_one, Complex.norm_real, Real.norm_eq_abs]
      gcongr
      exact hK i
    _ = _ := by ring

variable [CompleteSpace F]

theorem FourierModel.normal_tube_bound (M : FourierModel ι E F) (w : E) (z : F)
    (cn dn p : ι → ℝ) {d : ℝ} (hd0 : 0 ≤ d)
    (hcn : ∀ i, 0 ≤ cn i) (hdn : ∀ i, 0 ≤ dn i)
    (hK : ∀ i, ‖M.normalCoeff i‖ ≤ cn i * dn i) (hd : ∀ i, ‖M.normal i‖ ≤ dn i)
    (hp : ∀ i, |M.phase i (w, 0)| ≤ p i) (hcentre : ‖M.tubeJet 0 z‖ ≤ d * ‖z‖) :
    ‖normalDerivative M.equation w z - normalDerivative M.equation w 0‖ ≤
      (d + ∑ i, cn i * (dn i) ^ 2 * p i) * ‖z‖ + (∑ i, cn i * (dn i) ^ 3) * ‖z‖ ^ 2 / 2 := by
  have hp0 i : 0 ≤ p i := (abs_nonneg _).trans (hp i)
  have hsum : 0 ≤ ∑ i, cn i * (dn i) ^ 2 * p i :=
    Finset.sum_nonneg (fun i _ => mul_nonneg (mul_nonneg (hcn i) (sq_nonneg _)) (hp0 i))
  have hsum3 : 0 ≤ ∑ i, cn i * (dn i) ^ 3 :=
    Finset.sum_nonneg (fun i _ => mul_nonneg (hcn i) (pow_nonneg (hdn i) _))
  have hfirst : ‖M.tubeJet w z‖ ≤ (d + ∑ i, cn i * (dn i) ^ 2 * p i) * ‖z‖ := by
    calc
      _ ≤ ‖M.tubeJet 0 z‖ + ‖M.tubeJet w z - M.tubeJet 0 z‖ := norm_le_insert' _ _
      _ ≤ d * ‖z‖ + (∑ i, cn i * (dn i) ^ 2 * p i) * ‖z‖ :=
        add_le_add hcentre (M.tubeJet_variation w z cn dn p hcn hdn hK hd hp)
      _ = _ := by ring
  have hfreq : (∑ i, (cn i * dn i) * (M.normal i z) ^ 2) ≤ (∑ i, cn i * (dn i) ^ 3) * ‖z‖ ^ 2 := by
    rw [Finset.sum_mul]
    apply Finset.sum_le_sum
    intro i _
    have hci := hcn i
    have hdi := hdn i
    have hz : |M.normal i z| ≤ dn i * ‖z‖ :=
      ((M.normal i).le_opNorm z).trans (mul_le_mul_of_nonneg_right (hd i) (norm_nonneg _))
    calc
      _ ≤ (cn i * dn i) * (dn i * ‖z‖) ^ 2 := by
        rw [← sq_abs (M.normal i z)]
        gcongr
      _ = _ := by ring
  have hh := fourier_linear_variation_weighted (M.normalTubeCoeff w) (fun i => M.normal i z)
    (fun i => cn i * dn i)
    (by positivity : 0 ≤ (d + ∑ i, cn i * (dn i) ^ 2 * p i) * ‖z‖)
    (by positivity : 0 ≤ (∑ i, cn i * (dn i) ^ 3) * ‖z‖ ^ 2)
    (fun i => (M.norm_normalTubeCoeff w i).trans (hK i)) hfreq
    (by rw [M.tubeJet_eq]; exact hfirst)
  simpa only [← M.normal_tube_ray, one_smul, zero_smul] using hh

end NoFourMUBs.SeedAtlas.Method.WholeBall
