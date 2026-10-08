import PreRhoNormDefs

/-! One reduced norm residual, independently checked over CommRing. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace StrictReconstruction20261007.PreRhoNorm

universe u
variable {K : Type u} [CommRing K]

theorem residual0_zero (s S t T r Q : K) :
    residual0 (gramData s S t T r Q) = 0 := by
  simp only [residual0, m0, mu, mubar, gramData, PreRhoAlignment.gramData]
  ring

end StrictReconstruction20261007.PreRhoNorm

#print axioms StrictReconstruction20261007.PreRhoNorm.residual0_zero
