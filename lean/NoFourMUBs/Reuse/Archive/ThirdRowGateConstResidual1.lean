import NoFourMUBs.Reuse.Archive.ThirdRowGateDefs

/-! One universal finite remainder, checked independently of the analytic frontend. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.ThirdRowGate
universe u
variable {K : Type u} [CommRing K]

theorem constResidual1_gram_zero (s S t T r Q : K) :
    constResidual1 (PreRhoAlignment.gramData s S t T r Q) (coefficients s S t T r Q) = 0 := by
  simp only [constResidual1, coefficients, PreRhoAlignment.gramData]
  ring

#print axioms constResidual1_gram_zero
end StrictReconstruction20261007.ThirdRowGate

