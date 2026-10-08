import EndpointConvexity

/-! Actual complex phase sums vary by at most the sum of phase displacements.
This proves the analytic smallness assumption used by endpoint convexity. -/
set_option autoImplicit false
namespace Seed0024ClusterTube20261007
open scoped BigOperators
noncomputable section

theorem circlePoint_hasDerivAt (t : ℝ) :
    HasDerivAt circlePoint (⟨-Real.sin t,Real.cos t⟩ : ℂ) t := by
  convert! ((Real.hasDerivAt_cos t).ofReal_comp).add
    (((Real.hasDerivAt_sin t).ofReal_comp).mul_const Complex.I) using 1
  · funext x
    apply Complex.ext <;> simp [circlePoint,←Complex.ofReal_cos,←Complex.ofReal_sin]
  · apply Complex.ext <;> simp [←Complex.ofReal_cos,←Complex.ofReal_sin]

theorem circlePoint_derivative_norm (t : ℝ) :
    ‖(⟨-Real.sin t,Real.cos t⟩ : ℂ)‖=1 := by
  have hn := Complex.sq_norm (⟨-Real.sin t,Real.cos t⟩ : ℂ)
  rw [Complex.normSq_apply] at hn
  nlinarith [Real.sin_sq_add_cos_sq t,norm_nonneg (⟨-Real.sin t,Real.cos t⟩ : ℂ)]

theorem circlePoint_norm_sub_le (a b : ℝ) :
    ‖circlePoint a-circlePoint b‖≤|a-b| := by
  have h := (convex_univ : Convex ℝ (Set.univ : Set ℝ)).norm_image_sub_le_of_norm_hasDerivWithin_le
    (f := circlePoint) (f' := fun t => (⟨-Real.sin t,Real.cos t⟩ : ℂ))
    (C := (1:ℝ)) (fun t _ => (circlePoint_hasDerivAt t).hasDerivWithinAt)
    (fun t _ => (circlePoint_derivative_norm t).le) (Set.mem_univ b) (Set.mem_univ a)
  simpa only [one_mul,Real.norm_eq_abs] using h

def phaseSum (x : Fin 5 → ℝ) : ℂ := 1+∑i,circlePoint (x i)

theorem phaseSum_norm_sub_le (x c : Fin 5 → ℝ) :
    ‖phaseSum x-phaseSum c‖≤∑i,|x i-c i| := by
  have he : phaseSum x-phaseSum c=∑i,(circlePoint (x i)-circlePoint (c i)) := by
    rw [Finset.sum_sub_distrib]
    unfold phaseSum
    ring
  rw [he]
  exact (norm_sum_le _ _).trans (Finset.sum_le_sum fun i _ => circlePoint_norm_sub_le _ _)

theorem phaseSum_cell_variation (x c h : Fin 5 → ℝ)
    (hx : ∀i,|x i-c i|≤h i) :
    ‖phaseSum x-phaseSum c‖≤∑i,h i :=
  (phaseSum_norm_sub_le x c).trans (Finset.sum_le_sum fun i _ => hx i)

theorem phaseSum_small_cell (x c h : Fin 5 → ℝ)
    (hx : ∀i,|x i-c i|≤h i) (hh : (∑i,h i)≤1) :
    ‖phaseSum x-phaseSum c‖≤1 :=
  (phaseSum_cell_variation x c h hx).trans hh

end
end Seed0024ClusterTube20261007
#print axioms Seed0024ClusterTube20261007.circlePoint_hasDerivAt
#print axioms Seed0024ClusterTube20261007.circlePoint_derivative_norm
#print axioms Seed0024ClusterTube20261007.circlePoint_norm_sub_le
#print axioms Seed0024ClusterTube20261007.phaseSum_norm_sub_le
#print axioms Seed0024ClusterTube20261007.phaseSum_cell_variation
#print axioms Seed0024ClusterTube20261007.phaseSum_small_cell
