import NoFourMUBs.Reuse.Archive.CriticalNonzeroData
import Mathlib.Tactic.LinearCombination

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace CriticalNonzeroRational20261003
noncomputable section

def fy (X Y k K : ℂ) : ℂ :=
  (h k)^3*(Y^2+X*Y+X^2+K)-(9*h k-4)*(h k)^2*(X+Y)+
    2*(16-32*h k+18*(h k)^2)
def fx (X k K : ℂ) : ℂ :=
  (h k)^3*(X^3+K*X-K)-(9*h k-4)*(h k)^2*X^2+
    2*(16-32*h k+18*(h k)^2)*X

theorem W_formula (k : ℂ) (hh : h k≠0) :
    W k=2*(16-32*h k+18*(h k)^2)/(h k)^3 := by
  dsimp only [W,q]
  field_simp [hh]
  <;> ring

/-- The two exact splitting polynomials used in the pinned nonzero-J
verifier. The ordering of the three moduli is unrestricted. -/
theorem splitting_relations (X Y Z k K : ℂ) (hh : h k≠0)
    (hp : X+Y+Z=p k) (hw : X*Y+X*Z+Y*Z=W k+K)
    (hk : X*Y*Z=K) : fy X Y k K=0 ∧ fx X k K=0 := by
  have hpc : (h k)^3*(X+Y+Z)=(9*h k-4)*(h k)^2 := by
    rw [hp]
    dsimp only [p,q]
    field_simp [hh]
    <;> ring
  have hwc : (h k)^3*(X*Y+X*Z+Y*Z)=
      2*(16-32*h k+18*(h k)^2)+(h k)^3*K := by
    rw [hw,W_formula k hh]
    field_simp [hh]
    <;> ring
  constructor
  · unfold fy
    linear_combination (X+Y)*hpc-hwc
  · unfold fx
    linear_combination X^2*hpc-X*hwc+(h k)^3*hk

/-- The quadratic for the common reciprocal correlation, before division.
Its trace input is the signed invariant J, not its absolute value. -/
theorem reciprocal_quadratic (X Y Z j r Q : ℂ)
    (hprod : r*Q=Z) (htrace : r*Y+Q*X=j) :
    Y*r^2-j*r+X*Z=0 := by
  linear_combination r*htrace-X*hprod

theorem reciprocal_quadratic_div (X Y Z j r Q : ℂ) (hY : Y≠0)
    (hprod : r*Q=Z) (htrace : r*Y+Q*X=j) :
    r^2=(j/Y)*r-X*Z/Y := by
  have hq := reciprocal_quadratic X Y Z j r Q hprod htrace
  rw [div_mul_eq_mul_div,← sub_div]
  apply (eq_div_iff hY).mpr
  linear_combination hq

/-- Product of all three literal reconstruction denominators. There is no
division and no generic-root argument in this identity. -/
theorem denominator_product (X Y Z P V K g z : ℂ)
    (hp : X+Y+Z=P) (hw : X*Y+X*Z+Y*Z=V+K)
    (hk : X*Y*Z=K) :
    (g+(9-X)*z)*(g+(9-Y)*z)*(g+(9-Z)*z)=
      (g+9*z)^3-(g+9*z)^2*z*P+(g+9*z)*z^2*(V+K)-z^3*K := by
  linear_combination -(g+9*z)^2*z*hp+(g+9*z)*z^2*hw-z^3*hk

end
#print axioms W_formula
#print axioms splitting_relations
#print axioms reciprocal_quadratic
#print axioms reciprocal_quadratic_div
#print axioms denominator_product
end CriticalNonzeroRational20261003
