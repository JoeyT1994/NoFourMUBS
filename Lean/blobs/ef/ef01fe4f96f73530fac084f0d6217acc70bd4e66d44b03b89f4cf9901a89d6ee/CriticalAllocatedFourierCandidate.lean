import CriticalAllocatedFourier
import CriticalAllocatedChart

set_option autoImplicit false
namespace CriticalGeometricStrip20261003
open Mub6 Mub6.Numerical Mub6.Classification
open CompactCover GoodMinor FourierSeedBinding FourPhase FourPhaseWorker CanonicalCorners
open GlobalCornerDomain CriticalPhysical20261003 CriticalRowSum20261003
open CriticalFourierRouting20261003
noncomputable section

/-- Every one of the three exact allocations reaches the continuous Fourier
family or its transpose through the checked physical row operation. -/
theorem allCritical_allocated_fourier {H : CompactCover.Mat6}
    (hH : AllCritical H) (c : Fin 20) (z : ℝ)
    (hz0 : z≠0) (hz3 : z≠ -3) (hz2 : z≠ -2)
    (hj : sideJ (stripCorner H c)=0) (ha : Allocated (stripCorner H c) z) :
    FourierOrTranspose H := by
  obtain ⟨p,_,hK,he,hs,ht,hr,hjK⟩ := allCritical_allocated_chart hH (triples c) z hj ha
  exact fourier_of_monomial he (normalized_allocated_fourier hK.1 c z hz0 hz3 hz2 hs ht hr hjK)

end
#print axioms allCritical_allocated_fourier
end CriticalGeometricStrip20261003
