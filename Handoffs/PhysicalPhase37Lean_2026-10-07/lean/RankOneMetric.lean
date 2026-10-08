import Mathlib.Analysis.InnerProductSpace.LinearMap
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/- The norm below is the continuous-linear-map operator norm.  The vectors
need not be linearly independent; equal projectors are included. -/
noncomputable section
open ComplexConjugate
open InnerProductSpace

namespace Seed0024ProjectorMetric20261007

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]

def projector (u : E) : E →L[ℂ] E := rankOne ℂ u u

theorem projector_apply (u x : E) : projector u x = inner ℂ u x • u := rfl

theorem unit_residual_norm_sq (u x : E) (hu : ‖u‖ = 1) :
    ‖x - inner ℂ u x • u‖ ^ 2 = ‖x‖ ^ 2 - ‖inner ℂ u x‖ ^ 2 := by
  have hp : (inner ℂ u x * inner ℂ x u).re = ‖inner ℂ u x‖ ^ 2 := by
    rw [← inner_conj_symm x u, Complex.mul_conj, Complex.ofReal_re,
      Complex.normSq_eq_norm_sq]
  rw [norm_sub_sq (𝕜 := ℂ), norm_smul, hu, inner_smul_right]
  change ‖x‖ ^ 2 - 2 * (inner ℂ u x * inner ℂ x u).re +
    (‖inner ℂ u x‖ * 1) ^ 2 = _
  rw [hp]
  ring

theorem unit_residual_inner (v u x : E) (hv : ‖v‖ = 1) :
    inner ℂ (u - inner ℂ v u • v) (x - inner ℂ v x • v) =
      inner ℂ u x - inner ℂ u v * inner ℂ v x := by
  simp only [inner_sub_left, inner_sub_right, inner_smul_left, inner_smul_right,
    inner_self_eq_norm_sq_to_K, hv]
  rw [inner_conj_symm]
  norm_num

theorem scalar_residual_identity (a b c : ℂ) :
    ‖a - c*b‖ ^ 2 + (1-‖c‖ ^ 2)*‖b‖ ^ 2 =
      ‖a‖ ^ 2 + ‖b‖ ^ 2 - 2*(conj a*b*c).re := by
  simp only [Complex.sq_norm, Complex.normSq_apply, Complex.sub_re,
    Complex.sub_im, Complex.mul_re, Complex.mul_im, Complex.conj_re,
    Complex.conj_im]
  ring

theorem projector_sub_apply_norm_sq (u v x : E) (hu : ‖u‖ = 1) (hv : ‖v‖ = 1) :
    ‖(projector u - projector v) x‖ ^ 2 =
      ‖inner ℂ u x - inner ℂ u v * inner ℂ v x‖ ^ 2 +
        (1-‖inner ℂ u v‖ ^ 2)*‖inner ℂ v x‖ ^ 2 := by
  rw [scalar_residual_identity]
  simp only [ContinuousLinearMap.sub_apply, projector_apply]
  rw [norm_sub_sq (𝕜 := ℂ), norm_smul, norm_smul, hu, hv,
    inner_smul_left, inner_smul_right]
  simp only [mul_one]
  change ‖inner ℂ u x‖ ^ 2 - 2*(conj (inner ℂ u x)*
    (inner ℂ v x*inner ℂ u v)).re + ‖inner ℂ v x‖ ^ 2 = _
  rw [← mul_assoc]
  ring

theorem projector_sub_apply_bound_sq (u v x : E) (hu : ‖u‖ = 1) (hv : ‖v‖ = 1) :
    ‖(projector u - projector v) x‖ ^ 2 ≤
      (1-‖inner ℂ u v‖ ^ 2)*‖x‖ ^ 2 := by
  have hc := norm_inner_le_norm (𝕜 := ℂ)
    (u - inner ℂ v u • v) (x - inner ℂ v x • v)
  have hs := (sq_le_sq₀ (norm_nonneg _) (mul_nonneg (norm_nonneg _) (norm_nonneg _))).2 hc
  rw [mul_pow, unit_residual_inner v u x hv, unit_residual_norm_sq v u hv,
    unit_residual_norm_sq v x hv, hu, norm_inner_symm v u] at hs
  rw [projector_sub_apply_norm_sq u v x hu hv]
  nlinarith

theorem projector_sub_norm_sq (u v : E) (hu : ‖u‖ = 1) (hv : ‖v‖ = 1) :
    ‖projector u - projector v‖ ^ 2 = 1-‖inner ℂ u v‖ ^ 2 := by
  have he : ‖(projector u - projector v) u‖ ^ 2 = 1-‖inner ℂ u v‖ ^ 2 := by
    simp only [ContinuousLinearMap.sub_apply, projector_apply]
    rw [inner_self_eq_norm_sq_to_K, hu]
    change ‖(1 : ℂ)^2 • u - inner ℂ v u • v‖ ^ 2 = _
    rw [one_pow, one_smul]
    rw [unit_residual_norm_sq v u hv, hu, norm_inner_symm v u]
    norm_num
  have hd : 0 ≤ 1-‖inner ℂ u v‖ ^ 2 := by rw [← he]; positivity
  have hlo := (projector u - projector v).le_opNorm u
  rw [hu, mul_one] at hlo
  have hlo2 := (sq_le_sq₀ (norm_nonneg _) (norm_nonneg _)).2 hlo
  rw [he] at hlo2
  have hup : ‖projector u - projector v‖ ≤ Real.sqrt (1-‖inner ℂ u v‖ ^ 2) := by
    apply ContinuousLinearMap.opNorm_le_bound _ (Real.sqrt_nonneg _)
    intro x
    apply (sq_le_sq₀ (norm_nonneg _) (mul_nonneg (Real.sqrt_nonneg _) (norm_nonneg _))).1
    rw [mul_pow, Real.sq_sqrt hd]
    exact projector_sub_apply_bound_sq u v x hu hv
  have hup2 := (sq_le_sq₀ (norm_nonneg _) (Real.sqrt_nonneg _)).2 hup
  rw [Real.sq_sqrt hd] at hup2
  exact le_antisymm hup2 hlo2

theorem projector_triangle (u v w : E) :
    ‖projector u-projector w‖ ≤ ‖projector u-projector v‖+‖projector v-projector w‖ := by
  simpa only [dist_eq_norm] using dist_triangle (projector u) (projector v) (projector w)

theorem projector_lipschitz (u v : E) (hu : ‖u‖ = 1) (hv : ‖v‖ = 1) :
    ‖projector u-projector v‖ ≤ ‖u-v‖ := by
  apply (sq_le_sq₀ (norm_nonneg _) (norm_nonneg _)).1
  rw [projector_sub_norm_sq u v hu hv, norm_sub_sq (𝕜 := ℂ), hu, hv]
  have h := Complex.normSq_nonneg (inner ℂ u v - 1)
  simp only [Complex.normSq_apply, Complex.sub_re, Complex.sub_im,
    Complex.one_re, Complex.one_im] at h
  simp only [Complex.sq_norm, Complex.normSq_apply]
  change 1-((inner ℂ u v).re*(inner ℂ u v).re + (inner ℂ u v).im*(inner ℂ u v).im) ≤
    1 ^ 2 - 2*(inner ℂ u v).re + 1 ^ 2
  nlinarith

end Seed0024ProjectorMetric20261007

#print axioms Seed0024ProjectorMetric20261007.projector_apply
#print axioms Seed0024ProjectorMetric20261007.unit_residual_norm_sq
#print axioms Seed0024ProjectorMetric20261007.unit_residual_inner
#print axioms Seed0024ProjectorMetric20261007.scalar_residual_identity
#print axioms Seed0024ProjectorMetric20261007.projector_sub_apply_norm_sq
#print axioms Seed0024ProjectorMetric20261007.projector_sub_apply_bound_sq
#print axioms Seed0024ProjectorMetric20261007.projector_sub_norm_sq
#print axioms Seed0024ProjectorMetric20261007.projector_triangle
#print axioms Seed0024ProjectorMetric20261007.projector_lipschitz
