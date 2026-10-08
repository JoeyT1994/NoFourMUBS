import OrthogonalMixBound
import ProjectorAmplitude

/-! Sharp orthogonality compatibility for actual unit vectors in projector
balls of radius 5/27. The proof uses orthogonal residuals and a real polynomial
inequality, avoiding projective-angle conventions. -/
set_option autoImplicit false
namespace Seed0024ClusterTube20261007
open Seed0024ProjectorMetric20261007
noncomputable section
variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]

theorem orthogonal_ball_compatibility (a b x y : E)
    (ha : ‖a‖=1) (hb : ‖b‖=1) (hx : ‖x‖=1) (hy : ‖y‖=1)
    (hxy : inner ℂ x y=0)
    (hax : ‖projector a-projector x‖≤(5:ℝ)/27)
    (hby : ‖projector b-projector y‖≤(5:ℝ)/27) :
    ‖inner ℂ a b‖^2≤4*((5:ℝ)/27)^2*(1-((5:ℝ)/27)^2) := by
  let c : ℝ := Real.sqrt (1-((5:ℝ)/27)^2)
  have hc : 0≤c := Real.sqrt_nonneg _
  have hc2 : c^2+((5:ℝ)/27)^2=1 := by
    dsimp [c]
    rw [Real.sq_sqrt (by norm_num : (0:ℝ)≤1-(5/27)^2)]
    ring
  have ht : ‖a-inner ℂ x a • x‖≤(5:ℝ)/27 := by
    rw [residual_norm_eq_projector_distance x a hx ha,norm_sub_rev]
    exact hax
  have hs : ‖inner ℂ x b‖≤(5:ℝ)/27 := by
    have he : inner ℂ x (b-inner ℂ y b • y)=inner ℂ x b := by
      simp only [inner_sub_right,inner_smul_right,hxy,mul_zero,sub_zero]
    calc
      _ = ‖inner ℂ x (b-inner ℂ y b • y)‖ := congrArg norm he.symm
      _ ≤ ‖x‖*‖b-inner ℂ y b • y‖ := norm_inner_le_norm (𝕜 := ℂ) _ _
      _ = ‖projector y-projector b‖ := by
        rw [hx,one_mul,residual_norm_eq_projector_distance y b hy hb]
      _ ≤ _ := by simpa only [norm_sub_rev] using hby
  have ha2 : ‖inner ℂ x a‖^2+‖a-inner ℂ x a • x‖^2=1 := by
    rw [unit_residual_norm_sq x a hx,ha]
    ring
  have hb2 : ‖b-inner ℂ x b • x‖^2+‖inner ℂ x b‖^2=1 := by
    rw [unit_residual_norm_sq x b hx,hb]
    ring
  have hm := orthogonal_circle_mix_bound ‖inner ℂ x a‖
    ‖b-inner ℂ x b • x‖ c ‖inner ℂ x b‖ ‖a-inner ℂ x a • x‖
    (norm_nonneg _) (norm_nonneg _) hc (norm_nonneg _) (norm_nonneg _)
    hs ht ha2 hb2 hc2
  have hr := amplitude_residual_bound x a b hx ha
  rw [←residual_norm_eq_projector_distance x a hx ha] at hr
  have hu : ‖inner ℂ a b‖≤(10:ℝ)/27*c := by
    have h := le_of_abs_le hr
    linarith
  calc
    _ ≤ ((10:ℝ)/27*c)^2 := pow_le_pow_left₀ (norm_nonneg _) hu 2
    _ = _ := by nlinarith [hc2]

end
end Seed0024ClusterTube20261007
#print axioms Seed0024ClusterTube20261007.orthogonal_ball_compatibility
