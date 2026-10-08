import CriticalZeroLightRaw_p1_p2
import CriticalZeroLightQuadratic_p1_p2
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace CriticalZeroMoment20261003
open CriticalZeroLight20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]
def value_p1_p2 (X Y z r : K) : K :=
  CriticalZeroQuadratic20261003.reducedNumerator_p1_p2 X Y z r /
    CriticalZeroQuadratic20261003.reducedDenominator_p1_p2 X Y z r
theorem moment_p1_p2 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    newton_p1_p2 (zeroSide X Y z r 1)+newton_p1_p2 (zeroSide X Y z r (-1)) =
      value_p1_p2 X Y z r := by
  rw [raw_p1_p2 X Y z r hX hz hDx hDy hDz]
  exact CriticalZeroQuadratic20261003.quadratic_p1_p2 X Y z r hX hY hz hDx hDy hDz hq
end
#print axioms moment_p1_p2
end CriticalZeroMoment20261003
