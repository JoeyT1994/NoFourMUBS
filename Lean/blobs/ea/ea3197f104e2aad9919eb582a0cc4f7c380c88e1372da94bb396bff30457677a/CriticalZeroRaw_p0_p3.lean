import CriticalZeroRationalData
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring
set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 10000
namespace CriticalZeroRational20261003
open CriticalNewton20261003 CriticalNewtonGauge20261003
noncomputable section

def numerator_p0_p3 (X Y z r : ℂ) : ℂ := (-6)*(((1 : ℂ)*r))*((((1 : ℂ)*Y)+(-1 : ℂ)))*((((((((1 : ℂ)*X)+(((1 : ℂ)*Y)+(((1 : ℂ)*z^2)+(-10 : ℂ))))*X)+(((-2 : ℂ)*Y)+(((-3 : ℂ)*z^2)+(((-1 : ℂ)*r^2)+(18 : ℂ)))))*X)+(((1 : ℂ)*r^2)*Y)))
def denominator_p0_p3 (X Y z r : ℂ) : ℂ := (1)*(X)*(X - 3*z - 9)*(X + Y + z^2 + 3*z)*(z)^2

/-- Exact rational normalization before any quadratic or splitting relation.
All denominators are guarded explicitly. -/
theorem raw_p0_p3 (X Y z r : ℂ)
    (hX : X≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0) :
    newton_p0_p3 (zeroSide X Y z r 1)+newton_p0_p3 (zeroSide X Y z r (-1)) =
      numerator_p0_p3 X Y z r / denominator_p0_p3 X Y z r := by
  dsimp only [zeroSide,reconstructionData,newton_p0_p3,numerator_p0_p3,denominator_p0_p3]
  field_simp [hX,hz,hDx,hDy,hDz]
  <;> ring
end
#print axioms raw_p0_p3
end CriticalZeroRational20261003
