import NoFourMUBs.Reuse.Archive.CriticalModulusMatrixDomain
import NoFourMUBs.Reuse.Archive.CriticalNonzeroAllCritical

set_option autoImplicit false
namespace CriticalModulusDomain20261003
open NoFourMUBs.Step2.Critical
noncomputable section

/-- Every actual all-critical carrier with nonzero original J has the signed
parameter and the necessary K intervals. No assumed parameterization, trace
inequality, nonzero correlation, or pole guard is added to this endpoint. -/
theorem allCritical_nonzero_allowed {H : OAI.MUB6.CMatrix}
    (hH : NoFourMUBs.Step2.Critical.AllCriticalCarrier H)
    (hj : CriticalPhysical20261003.sideJ (CriticalStripMoments20261003.stripLeftBlock H)≠0) :
    ∃ k : ℝ, k≠0 ∧
      CriticalPhysical20261003.sideP (CriticalStripMoments20261003.stripLeftBlock H)=CriticalRationalParam20261003.p k ∧
      CriticalPhysical20261003.sideJ (CriticalStripMoments20261003.stripLeftBlock H)=CriticalRationalParam20261003.j k ∧
      CriticalPhysical20261003.sideW (CriticalStripMoments20261003.stripLeftBlock H)=CriticalRationalParam20261003.w k ∧
      Allowed |k| (Complex.normSq (NoFourMUBs.Step2.Critical.sideS (CriticalStripMoments20261003.stripLeftBlock H))*
        Complex.normSq (NoFourMUBs.Step2.Critical.sideT (CriticalStripMoments20261003.stripLeftBlock H))*
        Complex.normSq (NoFourMUBs.Step2.Critical.sideR (CriticalStripMoments20261003.stripLeftBlock H))) := by
  obtain ⟨k,hk,hp,hj',hw⟩ :=
    CriticalNonzeroPhysicalBinding20261003.allCritical_signed_parameter hH hj
  exact ⟨k,hk,hp,hj',hw,actual_block_allowed_abs (CriticalStripMoments20261003.stripLeftBlock H) k hk hp hj' hw⟩

end
#print axioms allCritical_nonzero_allowed
end CriticalModulusDomain20261003
