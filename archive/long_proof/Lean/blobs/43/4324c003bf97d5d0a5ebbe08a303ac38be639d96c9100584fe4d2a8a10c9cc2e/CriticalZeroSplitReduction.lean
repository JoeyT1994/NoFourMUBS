import CriticalZeroCompactAssemblyV2
import CriticalZeroReducedFactors

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]

/-- Exact numerator reduction in an arbitrary commutative ring. All dependence
on X and Y is removed only under the two displayed splitting equations. -/
theorem raw_numerator_split (X Y z K : R)
    (hy : fy X Y z K=0) (hx : fx X z K=0) :
    rawNumerator X Y z =
      -3888*z^13*(z+2)^2*(z+3)^2*(K+(z-1)*(z+3)^3)*(A z K)^2*(B z K)^2 :=
  (raw_numerator_reduced X Y z K hy hx).trans (reduced_numerator_factors X Y z K)

theorem raw_denominator_split (X Y z K : R)
    (hy : fy X Y z K=0) (hx : fx X z K=0) :
    rawDenominator X Y z = z^12*(A z K)^5 :=
  (raw_denominator_reduced X Y z K hy hx).trans (reduced_denominator_factors X Y z K)

section Field
variable {F : Type*} [Field F]

theorem raw_denominator_ne_zero (X Y z K : F)
    (hy : fy X Y z K=0) (hx : fx X z K=0) (hz : z≠0) (hA : A z K≠0) :
    rawDenominator X Y z≠0 := by
  rw [raw_denominator_split X Y z K hy hx]
  exact mul_ne_zero (pow_ne_zero _ hz) (pow_ne_zero _ hA)

/-- Cancellation of the raw rational expression is separated from the ring
identities and requires the exact regular-stratum denominator guards. -/
theorem raw_fraction_split (X Y z K : F)
    (hy : fy X Y z K=0) (hx : fx X z K=0) (hz : z≠0) (hA : A z K≠0) :
    rawNumerator X Y z / rawDenominator X Y z =
      -3888*z*(z+2)^2*(z+3)^2*(K+(z-1)*(z+3)^3)*(B z K)^2/(A z K)^3 := by
  rw [raw_numerator_split X Y z K hy hx,raw_denominator_split X Y z K hy hx]
  field_simp [hz,hA]
  ring

end Field
#print axioms raw_numerator_split
#print axioms raw_denominator_split
#print axioms raw_denominator_ne_zero
#print axioms raw_fraction_split
end
end CriticalZeroSplitReduction20261003
