import Mathlib.Analysis.Complex.Basic
import ConvexDerivPort
import Mathlib.Analysis.Convex.Jensen
import TrigonometricDerivPort
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-! The actual endpoint-maximization step behind the scalar rejection test.
The small-variation hypothesis is explicit; a later phase-cell theorem must
establish it on the whole interval. -/
set_option autoImplicit false
namespace Seed0024ClusterTube20261007
noncomputable section

def circlePoint (t : ℝ) : ℂ := ⟨Real.cos t,Real.sin t⟩

def circleEnergy (u : ℂ) (t : ℝ) : ℝ :=
  Complex.normSq u+1+2*(u.re*Real.cos t+u.im*Real.sin t)

theorem circleEnergy_eq_norm_sq (u : ℂ) (t : ℝ) :
    circleEnergy u t=‖u+circlePoint t‖^2 := by
  rw [Complex.sq_norm,Complex.normSq_apply]
  simp only [circleEnergy,circlePoint,Complex.add_re,Complex.add_im]
  rw [Complex.normSq_apply]
  nlinarith [Real.sin_sq_add_cos_sq t]

theorem circleEnergy_hasDerivAt (u : ℂ) (t : ℝ) :
    HasDerivAt (circleEnergy u)
      (2*((-u.re)*Real.sin t+u.im*Real.cos t)) t := by
  convert (hasDerivAt_const t (Complex.normSq u+1)).add
    ((((Real.hasDerivAt_cos t).const_mul u.re).add
      ((Real.hasDerivAt_sin t).const_mul u.im)).const_mul 2) using 1 <;>
    simp only [circleEnergy] <;> ring

theorem circleEnergy_derivative_hasDerivAt (u : ℂ) (t : ℝ) :
    HasDerivAt (fun x => 2*((-u.re)*Real.sin x+u.im*Real.cos x))
      (2*((-u.re)*Real.cos t+(-u.im)*Real.sin t)) t := by
  convert (((Real.hasDerivAt_sin t).const_mul (-u.re)).add
    ((Real.hasDerivAt_cos t).const_mul u.im)).const_mul 2 using 1 <;> ring

theorem circleEnergy_convexOn (u : ℂ) (a b : ℝ)
    (hsmall : ∀ t∈Set.Icc a b,‖u+circlePoint t‖≤1) :
    ConvexOn ℝ (Set.Icc a b) (circleEnergy u) := by
  apply convexOn_of_hasDerivWithinAt2_nonneg (convex_Icc a b)
    (f' := fun t => 2*((-u.re)*Real.sin t+u.im*Real.cos t))
    (f'' := fun t => 2*((-u.re)*Real.cos t+(-u.im)*Real.sin t))
  · exact (fun t => (circleEnergy_hasDerivAt u t).continuousAt).continuous.continuousOn
  · intro t _
    exact (circleEnergy_hasDerivAt u t).hasDerivWithinAt
  · intro t _
    exact (circleEnergy_derivative_hasDerivAt u t).hasDerivWithinAt
  · intro t ht
    have hn := hsmall t (Set.interior_subset ht)
    have hn2 := pow_le_pow_left₀ (norm_nonneg (u+circlePoint t)) hn 2
    rw [←circleEnergy_eq_norm_sq] at hn2
    unfold circleEnergy at hn2
    nlinarith [Complex.normSq_nonneg u]

theorem circle_norm_endpoint_bound (u : ℂ) (a b t : ℝ)
    (ht : t∈Set.Icc a b)
    (hsmall : ∀ x∈Set.Icc a b,‖u+circlePoint x‖≤1) :
    ‖u+circlePoint t‖≤‖u+circlePoint a‖ ∨
      ‖u+circlePoint t‖≤‖u+circlePoint b‖ := by
  have hab : a≤b := ht.1.trans ht.2
  have hc := circleEnergy_convexOn u a b hsmall
  have he := hc.le_max_of_mem_Icc (show a∈Set.Icc a b from ⟨le_rfl,hab⟩)
    (show b∈Set.Icc a b from ⟨hab,le_rfl⟩) ht
  simp only [circleEnergy_eq_norm_sq] at he
  rcases le_max_iff.mp he with h | h
  · exact Or.inl ((sq_le_sq₀ (norm_nonneg _) (norm_nonneg _)).1 h)
  · exact Or.inr ((sq_le_sq₀ (norm_nonneg _) (norm_nonneg _)).1 h)

end
end Seed0024ClusterTube20261007
#print axioms Seed0024ClusterTube20261007.circleEnergy_eq_norm_sq
#print axioms Seed0024ClusterTube20261007.circleEnergy_hasDerivAt
#print axioms Seed0024ClusterTube20261007.circleEnergy_derivative_hasDerivAt
#print axioms Seed0024ClusterTube20261007.circleEnergy_convexOn
#print axioms Seed0024ClusterTube20261007.circle_norm_endpoint_bound
