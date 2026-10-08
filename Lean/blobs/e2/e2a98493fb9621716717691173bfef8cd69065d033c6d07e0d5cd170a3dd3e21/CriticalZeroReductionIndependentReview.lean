import CriticalZeroSplitReduction
set_option autoImplicit false
namespace CriticalZeroReductionIndependentReview20261003
open CriticalZeroSplitReduction20261003

theorem identities_over_any_ring {R : Type*} [CommRing R] (X Y z K : R)
    (hy : fy X Y z K=0) (hx : fx X z K=0) :
    rawNumerator X Y z =
      -3888*z^13*(z+2)^2*(z+3)^2*(K+(z-1)*(z+3)^3)*(A z K)^2*(B z K)^2 ∧
    rawDenominator X Y z = z^12*(A z K)^5 :=
  ⟨raw_numerator_split X Y z K hy hx,raw_denominator_split X Y z K hy hx⟩

theorem fraction_zero_iff_cleared {F : Type*} [Field F] (X Y z K : F)
    (hy : fy X Y z K=0) (hx : fx X z K=0) (hz : z≠0) (hA : A z K≠0) :
    (rawNumerator X Y z / rawDenominator X Y z=0 ↔
      -3888*z*(z+2)^2*(z+3)^2*(K+(z-1)*(z+3)^3)*(B z K)^2=0) := by
  rw [raw_fraction_split X Y z K hy hx hz hA]
  have hd : (A z K)^3≠0 := pow_ne_zero 3 hA
  simp [div_eq_zero_iff,hd]

#print axioms identities_over_any_ring
#print axioms fraction_zero_iff_cleared
end CriticalZeroReductionIndependentReview20261003
