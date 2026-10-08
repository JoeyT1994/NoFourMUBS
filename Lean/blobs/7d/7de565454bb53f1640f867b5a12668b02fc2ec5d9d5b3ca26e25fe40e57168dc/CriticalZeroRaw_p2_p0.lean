import CriticalZeroRationalData
import CriticalZeroLightRaw_p2_p0
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring
set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 10000
namespace CriticalZeroRational20261003
open CriticalNewton20261003 CriticalNewtonGauge20261003
noncomputable section

def numerator_p2_p0 (X Y z r : ℂ) : ℂ := (2)*(((((((((2 : ℂ)*Y)*X)+(((((2 : ℂ)*Y)+(((3 : ℂ)*z^2)+(-12 : ℂ)))*Y)+((((-3 : ℂ)*z)+(-9 : ℂ))*z^2)))*X)+(((((((1 : ℂ)*z^2)+((4 : ℂ)*r^2))*Y)+(((((1 : ℂ)*z^2)+(-9 : ℂ))*z^2)+((-6 : ℂ)*r^2)))*Y)+((((((-3 : ℂ)*z)+(-18 : ℂ))*z)+(-27 : ℂ))*z^3)))*X)+(((((2 : ℂ)*r^2)*z^2)+((-6 : ℂ)*r^2))*Y^2)))
def denominator_p2_p0 (X Y z r : ℂ) : ℂ := (1)*(Y - 3*z - 9)*(X)*(X + Y + z^2 + 3*z)*(z)^2

/-- Exact rational normalization before any quadratic or splitting relation.
All denominators are guarded explicitly. -/
theorem raw_p2_p0 (X Y z r : ℂ)
    (hX : X≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0) :
    newton_p2_p0 (zeroSide X Y z r 1)+newton_p2_p0 (zeroSide X Y z r (-1)) =
      numerator_p2_p0 X Y z r / denominator_p2_p0 X Y z r := by
  exact CriticalZeroLight20261003.raw_p2_p0 (K := ℂ) X Y z r hX hz hDx hDy hDz
end
#print axioms raw_p2_p0
end CriticalZeroRational20261003
