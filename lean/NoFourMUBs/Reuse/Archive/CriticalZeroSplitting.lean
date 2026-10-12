import NoFourMUBs.Reuse.Archive.CriticalReconstructionData
import Mathlib.Tactic.LinearCombination
import Mathlib.Tactic.FieldSimp

set_option autoImplicit false
namespace CriticalZeroSplitting20261003
noncomputable section

def A (z K : ℂ) : ℂ := 3*z*(z+3)^4+(3*z+8)*K
def B (z K : ℂ) : ℂ := z^2*(z+3)^4+(z+2)^2*K
def fy (X Y z K : ℂ) : ℂ :=
  Y^2+(X-(9-z^2))*Y+X^2-(9-z^2)*X+z^2*(z+3)^2+K
def fx (X z K : ℂ) : ℂ :=
  X^3-(9-z^2)*X^2+(z^2*(z+3)^2+K)*X-K

/-- The two splitting polynomials vanish on the literal three moduli.
No choice of a root ordering, distinctness, or nonzero correlation is needed. -/
theorem splitting_relations (X Y Z z K : ℂ)
    (hp : X+Y+Z=9-z^2)
    (hw : X*Y+X*Z+Y*Z=z^2*(z+3)^2+K)
    (hk : X*Y*Z=K) : fy X Y z K=0 ∧ fx X z K=0 := by
  constructor
  · unfold fy
    linear_combination (X+Y)*hp-hw
  · unfold fx
    linear_combination X^2*hp-X*hw+hk

/-- The gauged reciprocal correlations obey the exact quadratic used by the
two-component algebra. This identity does not divide by Y. -/
theorem reciprocal_quadratic (X Y Z r Q : ℂ)
    (hprod : r*Q=Z) (hzero : r*Y+Q*X=0) : Y*r^2= -X*Z := by
  linear_combination r*hzero-X*hprod

theorem reciprocal_quadratic_div (X Y Z r Q : ℂ)
    (hY : Y≠0) (hprod : r*Q=Z) (hzero : r*Y+Q*X=0) : r^2= -X*Z/Y := by
  apply (eq_div_iff hY).mpr
  simpa only [mul_comm] using reciprocal_quadratic X Y Z r Q hprod hzero

/-- A is exactly the product of the three linear denominator factors. -/
theorem shifted_product (X Y Z z K : ℂ)
    (hp : X+Y+Z=9-z^2)
    (hw : X*Y+X*Z+Y*Z=z^2*(z+3)^2+K)
    (hk : X*Y*Z=K) :
    (3*z+9-X)*(3*z+9-Y)*(3*z+9-Z)=A z K := by
  unfold A
  linear_combination -(3*z+9)^2*hp+(3*z+9)*hw-hk

theorem shifted_factors_nonzero (X Y Z z K : ℂ)
    (hp : X+Y+Z=9-z^2)
    (hw : X*Y+X*Z+Y*Z=z^2*(z+3)^2+K)
    (hk : X*Y*Z=K) (hA : A z K≠0) :
    3*z+9-X≠0 ∧ 3*z+9-Y≠0 ∧ 3*z+9-Z≠0 := by
  have h := shifted_product X Y Z z K hp hw hk
  have hn : (3*z+9-X)*(3*z+9-Y)*(3*z+9-Z)≠0 := by rw [h];exact hA
  exact ⟨(mul_ne_zero_iff.mp (mul_ne_zero_iff.mp hn).1).1,
    (mul_ne_zero_iff.mp (mul_ne_zero_iff.mp hn).1).2,(mul_ne_zero_iff.mp hn).2⟩

/-- A common-denominator conversion that is valid at every stated regular
point, rather than an identity justified by generic cancellation. -/
theorem rational_common_denominator (n z a b c T : ℂ)
    (hz : z≠0) (hT : T≠0) (hprod : a*b*c=T) :
    n/(z*a)=n*b*c/(z*T) := by
  have ha : a≠0 := by intro h;apply hT;rw [← hprod,h];ring
  apply (div_eq_div_iff (mul_ne_zero hz ha) (mul_ne_zero hz hT)).mpr
  rw [← hprod]
  ring

theorem zero_side_denominators (X Y Z z : ℂ) :
    3*z^2+(9-Z)*z=z*(3*z+9-Z) ∧
    3*z^2+(9-Y)*z=z*(3*z+9-Y) ∧
    3*z^2+(9-X)*z=z*(3*z+9-X) := by
  constructor
  · ring
  · constructor <;> ring

/-- All three actual-side quotient slots can share the single explicit
denominator z*A. The coordinate order is Z,Y,X, as in the reconstruction. -/
theorem zero_side_common_denominators (X Y Z z K n0 n1 n2 : ℂ)
    (hp : X+Y+Z=9-z^2)
    (hw : X*Y+X*Z+Y*Z=z^2*(z+3)^2+K)
    (hk : X*Y*Z=K) (hz : z≠0) (hA : A z K≠0) :
    n0/(3*z^2+(9-Z)*z)=n0*(3*z+9-X)*(3*z+9-Y)/(z*A z K) ∧
    n1/(3*z^2+(9-Y)*z)=n1*(3*z+9-X)*(3*z+9-Z)/(z*A z K) ∧
    n2/(3*z^2+(9-X)*z)=n2*(3*z+9-Y)*(3*z+9-Z)/(z*A z K) := by
  obtain ⟨h0,h1,h2⟩ := zero_side_denominators X Y Z z
  rw [h0,h1,h2]
  have h := shifted_product X Y Z z K hp hw hk
  refine ⟨rational_common_denominator n0 z _ _ _ _ hz hA ?_,
    rational_common_denominator n1 z _ _ _ _ hz hA ?_,
    rational_common_denominator n2 z _ _ _ _ hz hA h⟩ <;> linear_combination h

end
#print axioms splitting_relations
#print axioms reciprocal_quadratic
#print axioms reciprocal_quadratic_div
#print axioms shifted_product
#print axioms shifted_factors_nonzero
#print axioms rational_common_denominator
#print axioms zero_side_denominators
#print axioms zero_side_common_denominators
end CriticalZeroSplitting20261003
