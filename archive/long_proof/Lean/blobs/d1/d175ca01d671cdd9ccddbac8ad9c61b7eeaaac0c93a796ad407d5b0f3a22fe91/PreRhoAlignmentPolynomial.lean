import PreRhoAlignmentResidual0
import PreRhoAlignmentResidual1
import Mathlib.Tactic.LinearCombination

/-! Assembly of the finite alignment certificate from its two independently
checked universal residuals. Actual conjugate/lambda binding is separate. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace StrictReconstruction20261007.PreRhoAlignment

universe u
variable {K : Type u} [CommRing K]

theorem remainder0_zero (s S t T r Q : K) :
    remainder0 (gramData s S t T r Q) = 0 := by
  rw [remainder0_factor, residual0_zero, mul_zero]

theorem remainder1_zero (s S t T r Q : K) :
    remainder1 (gramData s S t T r Q) = 0 := by
  rw [remainder1_factor, residual1_zero, mul_zero]

/-- Complete finite polynomial certificate, before binding conjugates and lambdas. -/
theorem cleared_eq_zero [IsDomain K] (s S t T r Q z Z : K)
    (hg : (gramData s S t T r Q).g ≠ 0)
    (hsum : (gramData s S t T r Q).g * (z + Z) = (gramData s S t T r Q).chi)
    (hprod : z * Z = (gramData s S t T r Q).eta) :
    cleared (gramData s S t T r Q) z Z = 0 := by
  let d := gramData s S t T r Q
  change d.g ≠ 0 at hg
  change d.g * (z + Z) = d.chi at hsum
  change z * Z = d.eta at hprod
  change cleared d z Z = 0
  have hquadratic : d.g * z ^ 2 - d.chi * z + d.g * d.eta = 0 := by
    linear_combination z * hsum - d.g * hprod
  have hrem0 : remainder0 d = 0 := remainder0_zero s S t T r Q
  have hrem1 : remainder1 d = 0 := remainder1_zero s S t T r Q
  have hz : d.g ^ 2 * (d.g * cleared d z Z) = 0 := by
    rw [cleared_coefficient_identity, hsum]
    simp only [sub_self, zero_mul, add_zero]
    rw [quadratic_reduction_identity, hquadratic, hrem0, hrem1]
    ring
  have hz' : d.g * cleared d z Z = 0 :=
    (mul_eq_zero.mp hz).resolve_left (pow_ne_zero 2 hg)
  exact (mul_eq_zero.mp hz').resolve_left hg

end StrictReconstruction20261007.PreRhoAlignment

#print axioms StrictReconstruction20261007.PreRhoAlignment.remainder0_zero
#print axioms StrictReconstruction20261007.PreRhoAlignment.remainder1_zero
#print axioms StrictReconstruction20261007.PreRhoAlignment.cleared_eq_zero
