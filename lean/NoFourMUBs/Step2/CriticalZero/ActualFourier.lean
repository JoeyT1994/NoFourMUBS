import NoFourMUBs.Step2.CriticalZero.ActualGeometry
import NoFourMUBs.Reuse.Archive.GeometricFourierComplete

/-! The regular zero-J physical branch reaches the existing Fourier family. -/

set_option autoImplicit false
noncomputable section
namespace NoFourMUBs.Step2.Critical
open CriticalPhysical20261003 CriticalStripMoments20261003
open CriticalFourierRouting20261003 GeometricNormalization20261003

theorem allCritical_regular_zero_fourier {H : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H) (z : ℝ)
    (hzlo : -3 ≤ z) (hz0 : z ≠ 0) (hz3 : z ≠ -3) (hz2 : z ≠ -2)
    (hp : sideP (stripLeftBlock H) = 9-z^2)
    (hj : sideJ (stripLeftBlock H) = 0)
    (hw : sideW (stripLeftBlock H) = z^2*(z+3)^2) :
    FourierOrTranspose H := by
  obtain ⟨K, hK, he, hg⟩ :=
    allCritical_regular_zero_geometric hH z hzlo hz0 hz3 hz2 hp hj hw
  let ρ : Fin 3 ↪ Fin 6 := ⟨front, front_injective⟩
  exact fourier_of_monomial he
    (geometric_rows_fourier hK.1.1 ρ (K 1) hK.1.2.1 (fun _ => rfl) hg)

#print axioms allCritical_regular_zero_fourier
end NoFourMUBs.Step2.Critical
