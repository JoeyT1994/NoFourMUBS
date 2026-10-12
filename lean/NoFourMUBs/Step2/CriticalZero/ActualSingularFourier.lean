import NoFourMUBs.Step2.CriticalZero.ActualFixedFourier
import NoFourMUBs.Reuse.Archive.CriticalSingularBoundary

/-! Compose the reused singular-minor classification with the checked
all-critical Fourier classification in the main theorem's representative. -/

set_option autoImplicit false
noncomputable section
namespace NoFourMUBs.Step2.Critical
open Hadamard6 CriticalPhysical20261003

theorem allCritical_singular_standard {H : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H) (rows cols : Fin 3 ↪ Fin 6)
    (hdet : (H.submatrix rows cols).det = 0) :
    Equivalent (FourierBridge.fromOAI H) fourierHadamard.1 :=
  allCritical_fourier_standard hH
    (CriticalFourierRouting20261003.phaseHadamard_singular_minor_fourier
      hH.1.1 rows cols hdet)

theorem allCritical_p9_standard {H : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H) (c : Fin 20)
    (hp : sideP (stripCorner H c) = 9) :
    Equivalent (FourierBridge.fromOAI H) fourierHadamard.1 :=
  allCritical_fourier_standard hH
    (CriticalSingularBoundary20261003.normalized_strip_p9_fourier hH.1 c hp)

#print axioms allCritical_singular_standard
#print axioms allCritical_p9_standard
end NoFourMUBs.Step2.Critical
