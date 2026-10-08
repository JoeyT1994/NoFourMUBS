import CriticalModulusMatrixDomain
import CriticalCornerPhysical

set_option autoImplicit false
namespace CriticalModulusDomain20261003
open Mub6 Mub6.Numerical Mub6.Classification
open CompactCover GoodMinor FourierSeedBinding FourPhase CanonicalCorners GlobalCornerDomain
noncomputable section

/-- Every actual all-critical carrier with nonzero original J has the signed
parameter and the necessary K intervals. No assumed parameterization, trace
inequality, nonzero correlation, or pole guard is added to this endpoint. -/
theorem allCritical_nonzero_allowed {H : CompactCover.Mat6}
    (hH : AllCritical H)
    (hj : CriticalPhysical20261003.sideJ (northwest H)≠0) :
    ∃ k : ℝ, k≠0 ∧
      CriticalPhysical20261003.sideP (northwest H)=CriticalRationalParam20261003.p k ∧
      CriticalPhysical20261003.sideJ (northwest H)=CriticalRationalParam20261003.j k ∧
      CriticalPhysical20261003.sideW (northwest H)=CriticalRationalParam20261003.w k ∧
      Allowed |k| (Complex.normSq (CriticalLightSheet20261003.sideS (northwest H))*
        Complex.normSq (CriticalLightSheet20261003.sideT (northwest H))*
        Complex.normSq (CriticalLightSheet20261003.sideR (northwest H))) := by
  obtain ⟨h0,hb,hplus,hminus⟩ := CriticalPhysical20261003.allCritical_scalar_premises hH
  obtain ⟨k,hk,hp,hj',hw⟩ :=
    CriticalRationalParam20261003.nonzero_critical_parameterization h0 hb hj hplus hminus
  exact ⟨k,hk,hp,hj',hw,actual_block_allowed_abs (northwest H) k hk hp hj' hw⟩

end
#print axioms allCritical_nonzero_allowed
end CriticalModulusDomain20261003
