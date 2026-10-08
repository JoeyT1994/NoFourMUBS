import CriticalAllocatedWholeStrip
import GeometricFourierComplete

set_option autoImplicit false
namespace CriticalGeometricStrip20261003
open Mub6 Mub6.Numerical Mub6.Classification
open CompactCover GoodMinor FourierSeedBinding FourPhase FourPhaseWorker CanonicalCorners
open GlobalCornerDomain CriticalPhysical20261003 CriticalRowSum20261003
open CriticalFourierRouting20261003 GeometricNormalization20261003
noncomputable section

/-- The exact ordered allocation in one literal strip is enough to route the
whole normalized physical matrix into the existing continuous Fourier class. -/
theorem normalized_allocated_fourier {H : CompactCover.Mat6}
    (hH : NormalizedCarrier H) (c : Fin 20) (z : ℝ)
    (hz0 : z≠0) (hz3 : z≠ -3) (hz2 : z≠ -2)
    (hs : Complex.normSq (sideS (stripCorner H c))=z+3)
    (ht : Complex.normSq (sideT (stripCorner H c))=z+3)
    (hr : Complex.normSq (sideR (stripCorner H c))=(1-z)*(z+3))
    (hj : sideJ (stripCorner H c)=0) : FourierOrTranspose H := by
  have hg := normalized_allocated_rows hH c z hz0 hz3 hz2 hs ht hr hj
  let ρ : Fin 3 ↪ Fin 6 := ⟨front,fun a b h =>
    Fin.ext (congrArg (fun x : Fin 6 => x.val) h)⟩
  exact geometric_rows_fourier hH.1 ρ (H 1) hH.2.1 (fun _ => rfl) hg

end
#print axioms normalized_allocated_fourier
end CriticalGeometricStrip20261003
