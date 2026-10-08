import CriticalMomentBinding

set_option autoImplicit false
namespace CriticalCorrelationChart20261003
open CriticalPhysical20261003
noncomputable section

/-- A nonzero W forbids two vanishing original correlations. -/
theorem nonzero_W_two_correlations (s t r : ℂ) (hw : momentW s t r≠0) :
    (s≠0 ∧ t≠0) ∨ (s≠0 ∧ r≠0) ∨ (t≠0 ∧ r≠0) := by
  by_cases hs : s=0
  · have ht : t≠0 := by intro ht; exact hw (by simp [momentW,hs,ht])
    have hr : r≠0 := by intro hr; exact hw (by simp [momentW,hs,hr])
    exact Or.inr (Or.inr ⟨ht,hr⟩)
  · by_cases ht : t=0
    · have hr : r≠0 := by intro hr; exact hw (by simp [momentW,ht,hr])
      exact Or.inr (Or.inl ⟨hs,hr⟩)
    · exact Or.inl ⟨hs,ht⟩

theorem regular_zero_W_nonzero {z : ℝ} (hz0 : z≠0) (hz3 : z≠ -3) :
    z^2*(z+3)^2≠0 := by
  exact mul_ne_zero (pow_ne_zero 2 hz0)
    (pow_ne_zero 2 (by intro h; apply hz3; linarith))

theorem regular_zero_two_correlations (s t r : ℂ) (z : ℝ)
    (hz0 : z≠0) (hz3 : z≠ -3) (hw : momentW s t r=z^2*(z+3)^2) :
    (s≠0 ∧ t≠0) ∨ (s≠0 ∧ r≠0) ∨ (t≠0 ∧ r≠0) := by
  apply nonzero_W_two_correlations
  rw [hw]
  exact regular_zero_W_nonzero hz0 hz3

/-- The nonzero-J branch has no zero-correlation chart exception. -/
theorem nonzero_J_all_correlations (s t r : ℂ) (hj : momentJ s t r≠0) :
    s≠0 ∧ t≠0 ∧ r≠0 := by
  refine ⟨?_,?_,?_⟩
  · intro h; exact hj (by simp [momentJ,h])
  · intro h; exact hj (by simp [momentJ,h])
  · intro h; exact hj (by simp [momentJ,h])

theorem star_nonzero {s : ℂ} (hs : s≠0) : star s≠0 := by
  intro h
  apply hs
  simpa only [star_star,star_zero] using congrArg star h

/-- Swap rows zero and one, then divide each column by its new first entry.
The correlation triple is (conj s,r,t), including its orientations. -/
theorem moments_swap01 (s t r : ℂ) :
    momentP (star s) r t=momentP s t r ∧
    momentJ (star s) r t=momentJ s t r ∧
    momentW (star s) r t=momentW s t r ∧
    Complex.normSq (star s)*Complex.normSq r*Complex.normSq t=
      Complex.normSq s*Complex.normSq t*Complex.normSq r := by
  have he : t*star s*star r=star (r*s*star t) := by
    simp only [star_mul,star_star]
    ring
  refine ⟨?_,?_,?_,?_⟩
  · simp only [momentP,Complex.star_def,Complex.normSq_conj]; ring
  · unfold momentJ
    rw [he]
    simp only [Complex.star_def,Complex.conj_re]
  · simp only [momentW,Complex.star_def,Complex.normSq_conj]; ring
  · simp only [Complex.star_def,Complex.normSq_conj]; ring

/-- Swapping rows zero and two gives (conj r,conj t,conj s). -/
theorem moments_swap02 (s t r : ℂ) :
    momentP (star r) (star t) (star s)=momentP s t r ∧
    momentJ (star r) (star t) (star s)=momentJ s t r ∧
    momentW (star r) (star t) (star s)=momentW s t r ∧
    Complex.normSq (star r)*Complex.normSq (star t)*Complex.normSq (star s)=
      Complex.normSq s*Complex.normSq t*Complex.normSq r := by
  have he : star s*star r*star (star t)=star (r*s*star t) := by
    simp only [star_mul,star_star]
    ring
  refine ⟨?_,?_,?_,?_⟩
  · simp only [momentP,Complex.star_def,Complex.normSq_conj]; ring
  · unfold momentJ
    rw [he]
    simp only [Complex.star_def,Complex.conj_re]
  · simp only [momentW,Complex.star_def,Complex.normSq_conj]; ring
  · simp only [Complex.star_def,Complex.normSq_conj]; ring

end
#print axioms nonzero_W_two_correlations
#print axioms regular_zero_W_nonzero
#print axioms regular_zero_two_correlations
#print axioms nonzero_J_all_correlations
#print axioms star_nonzero
#print axioms moments_swap01
#print axioms moments_swap02
end CriticalCorrelationChart20261003
