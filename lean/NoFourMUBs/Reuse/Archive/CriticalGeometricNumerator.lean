import NoFourMUBs.Reuse.Archive.CriticalMomentBinding
import NoFourMUBs.Reuse.Archive.GramNumerators

set_option autoImplicit false
namespace CriticalGeometricBinding20261003
open CriticalPhysical20261003
noncomputable section

/-- J=0 is the full complex cancellation of a number and its conjugate. -/
theorem zero_J_conjugate_sum (s t r : ℂ) (hj : momentJ s t r=0) :
    r*s*star t+star (r*s*star t)=0 := by
  have hr : (r*s*star t).re=0 := by unfold momentJ at hj; linarith
  apply Complex.ext
  · change (r*s*star t).re+(r*s*star t).re=0
    simp only [hr,add_zero]
  · change (r*s*star t).im+ -(r*s*star t).im=0
    exact add_neg_cancel _

/-- Equal nonzero squared moduli turn the zero-J equation into the exact
cross-term cancellation in the physical zeroth numerator. -/
theorem equal_moduli_cross_zero (s t r : ℂ) (a : ℝ) (ha : a≠0)
    (hs : Complex.normSq s=a) (ht : Complex.normSq t=a)
    (hj : momentJ s t r=0) : r*s^2+star r*t^2=0 := by
  have hsc : s*star s=(a:ℂ) := by
    simpa only [Complex.star_def,hs] using Complex.mul_conj s
  have htc : t*star t=(a:ℂ) := by
    simpa only [Complex.star_def,ht] using Complex.mul_conj t
  have hsum := zero_J_conjugate_sum s t r hj
  have he : (a:ℂ)*(r*s^2+star r*t^2)=s*t*(r*s*star t+star (r*s*star t)) := by
    calc
      _ = r*s*s*(t*star t)+star r*t*t*(s*star s) := by rw [hsc,htc]; ring
      _ = _ := by simp only [star_mul,star_star]; ring
  have hz : (a:ℂ)*(r*s^2+star r*t^2)=0 := by rw [he,hsum,mul_zero]
  exact (mul_eq_zero.mp hz).resolve_left (Complex.ofReal_ne_zero.mpr ha)

/-- The complete allocation, not merely equality of two norms, is used. -/
theorem allocated_numerator0 (s t r : ℂ) (z : ℝ) (hz3 : z≠ -3)
    (hs : Complex.normSq s=z+3) (ht : Complex.normSq t=z+3)
    (hr : Complex.normSq r=(1-z)*(z+3)) (hj : momentJ s t r=0) :
    FourierGramNumerators.numerator s t r 0=s*t*(z:ℂ)*(z+2) := by
  have ha : z+3≠0 := by intro h; apply hz3; linarith
  have hc := equal_moduli_cross_zero s t r (z+3) ha hs ht hj
  change r*s^2+star r*t^2+(3-(Complex.normSq r:ℂ))*s*t=_
  rw [hc,zero_add,hr]
  push_cast
  ring

theorem allocated_invariants (s t r : ℂ) (z : ℝ)
    (hs : Complex.normSq s=z+3) (ht : Complex.normSq t=z+3)
    (hr : Complex.normSq r=(1-z)*(z+3)) (hj : momentJ s t r=0) :
    momentP s t r=9-z^2 ∧ momentW s t r=z^2*(z+3)^2 ∧
    FourierGramNumerators.g s t r=3*z^2 := by
  have hjr : 2*(r*s*star t).re=0 := hj
  refine ⟨?_,?_,?_⟩
  · unfold momentP; rw [hs,ht,hr]; ring
  · unfold momentW; rw [hs,ht,hr]; ring
  · unfold FourierGramNumerators.g; rw [hs,ht,hr,hjr]; ring

theorem allocated_denominator0 (z : ℝ) :
    3*z^2+z*(9-(1-z)*(z+3))=z*(z+2)*(z+3) := by ring

/-- The common phase is determined by the original unscaled correlations. -/
theorem correlation_product_phase (s t : ℂ) (a : ℝ) (ha : a≠0)
    (hs : Complex.normSq s=a) (ht : Complex.normSq t=a) :
    Complex.normSq (s*t/(a:ℂ))=1 := by
  rw [Complex.normSq_div,Complex.normSq_mul,hs,ht]
  simp only [Complex.normSq_ofReal]
  field_simp [ha]

/-- Complementing the strip negates both sums and keeps their common phase. -/
theorem correlation_product_phase_neg (s t : ℂ) (a : ℝ) :
    (-s)*(-t)/(a:ℂ)=s*t/(a:ℂ) := by ring

end
#print axioms zero_J_conjugate_sum
#print axioms equal_moduli_cross_zero
#print axioms allocated_numerator0
#print axioms allocated_invariants
#print axioms allocated_denominator0
#print axioms correlation_product_phase
#print axioms correlation_product_phase_neg
end CriticalGeometricBinding20261003
