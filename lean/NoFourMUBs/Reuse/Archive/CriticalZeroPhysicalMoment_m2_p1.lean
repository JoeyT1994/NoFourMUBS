import NoFourMUBs.Reuse.Archive.CriticalZeroRationalData
import NoFourMUBs.Reuse.Archive.CriticalZeroLightMoment_m2_p1
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace CriticalZeroPhysicalMoment20261003
open CriticalNewton20261003 CriticalZeroRational20261003
noncomputable section
/-- Complete paired actual-constructor moment; the coefficient expressions have
one generic definition, specialized here without duplicate polynomial literals. -/
theorem moment_m2_p1 (X Y z r : ℂ)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    newton_m2_p1 (zeroSide X Y z r 1)+newton_m2_p1 (zeroSide X Y z r (-1)) =
      CriticalZeroMoment20261003.value_m2_p1 X Y z r := by
  exact CriticalZeroMoment20261003.moment_m2_p1 (K := ℂ) X Y z r hX hY hz hDx hDy hDz hq
end
#print axioms moment_m2_p1
end CriticalZeroPhysicalMoment20261003
