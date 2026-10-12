import NoFourMUBs.Reuse.Archive.PreRhoNormResidual0
import NoFourMUBs.Reuse.Archive.PreRhoNormResidual1
import Mathlib.Tactic.LinearCombination

/-! Assembly of the finite norm certificate. Actual complex formula binding is separate. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace StrictReconstruction20261007.PreRhoNorm

universe u
variable {K : Type u} [CommRing K]

theorem remainder0_zero (s S t T r Q : K) :
    remainder0 (gramData s S t T r Q) = 0 := by
  rw [remainder0_factor, residual0_zero, mul_zero]

theorem remainder1_zero (s S t T r Q : K) :
    remainder1 (gramData s S t T r Q) = 0 := by
  rw [remainder1_factor, residual1_zero, mul_zero]

theorem cleared_eq_zero [IsDomain K] (s S t T r Q z Z : K)
    (hg : (gramData s S t T r Q).a.g ≠ 0)
    (hsum : (gramData s S t T r Q).a.g * (z + Z) = (gramData s S t T r Q).a.chi)
    (hprod : z * Z = (gramData s S t T r Q).a.eta) :
    cleared (gramData s S t T r Q) z Z = 0 := by
  let d := gramData s S t T r Q
  change d.a.g ≠ 0 at hg
  change d.a.g * (z + Z) = d.a.chi at hsum
  change z * Z = d.a.eta at hprod
  change cleared d z Z = 0
  have hquadratic : d.a.g * z ^ 2 - d.a.chi * z + d.a.g * d.a.eta = 0 := by
    linear_combination z * hsum - d.a.g * hprod
  have hrem0 : remainder0 d = 0 := remainder0_zero s S t T r Q
  have hrem1 : remainder1 d = 0 := remainder1_zero s S t T r Q
  have hz : d.a.g * (d.a.g * cleared d z Z) = 0 := by
    rw [cleared_coefficient_identity, hsum]
    simp only [sub_self, zero_mul, add_zero]
    rw [quadratic_reduction_identity, hquadratic, hrem0, hrem1]
    ring
  exact (mul_eq_zero.mp ((mul_eq_zero.mp hz).resolve_left hg)).resolve_left hg

end StrictReconstruction20261007.PreRhoNorm

#print axioms StrictReconstruction20261007.PreRhoNorm.remainder0_zero
#print axioms StrictReconstruction20261007.PreRhoNorm.remainder1_zero
#print axioms StrictReconstruction20261007.PreRhoNorm.cleared_eq_zero
