import NoFourMUBs.Reuse.Archive.PreRhoAlignmentDefs

/-! One independent reduced residual, over an arbitrary commutative ring. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace StrictReconstruction20261007.PreRhoAlignment

universe u
variable {K : Type u} [CommRing K]

theorem residual0_zero (s S t T r Q : K) :
    residual0 (gramData s S t T r Q) = 0 := by
  simp only [residual0, gramData]
  ring

end StrictReconstruction20261007.PreRhoAlignment

#print axioms StrictReconstruction20261007.PreRhoAlignment.residual0_zero
