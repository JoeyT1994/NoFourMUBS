import CriticalZeroRationalData
import CriticalZeroLightRaw_p2_p1
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring
set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 10000
namespace CriticalZeroRational20261003
open CriticalNewton20261003 CriticalNewtonGauge20261003
noncomputable section

def numerator_p2_p1 (X Y z r : ℂ) : ℂ := (2)*(((1 : ℂ)*r))*(((((((((((1 : ℂ)*Y)+(-3 : ℂ))*Y)*X)+(((((((1 : ℂ)*Y)+(((1 : ℂ)*z^2)+(-11 : ℂ)))*Y)+(((-5 : ℂ)*z^2)+(24 : ℂ)))*Y)+((((3 : ℂ)*z)+(9 : ℂ))*z^2)))*X)+((((((1 : ℂ)*z^2)+((-1 : ℂ)*r^2))*Y)+(((((-3 : ℂ)*z)+(-9 : ℂ))*z^2)+((3 : ℂ)*r^2)))*Y))*X)+(((((-1 : ℂ)*r^2)*Y)+((((-1 : ℂ)*r^2)*z^2)+((3 : ℂ)*r^2)))*Y^2)))
def denominator_p2_p1 (X Y z r : ℂ) : ℂ := (1)*(Y - 3*z - 9)*(X + Y + z^2 + 3*z)*(z)^2*(X)^2

/-- Exact rational normalization before any quadratic or splitting relation.
All denominators are guarded explicitly. -/
theorem raw_p2_p1 (X Y z r : ℂ)
    (hX : X≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0) :
    newton_p2_p1 (zeroSide X Y z r 1)+newton_p2_p1 (zeroSide X Y z r (-1)) =
      numerator_p2_p1 X Y z r / denominator_p2_p1 X Y z r := by
  exact CriticalZeroLight20261003.raw_p2_p1 (K := ℂ) X Y z r hX hz hDx hDy hDz
end
#print axioms raw_p2_p1
end CriticalZeroRational20261003
