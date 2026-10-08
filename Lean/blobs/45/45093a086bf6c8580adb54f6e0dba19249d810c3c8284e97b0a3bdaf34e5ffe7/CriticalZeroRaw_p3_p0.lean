import CriticalZeroRationalData
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring
set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 10000
namespace CriticalZeroRational20261003
open CriticalNewton20261003 CriticalNewtonGauge20261003
noncomputable section

def numerator_p3_p0 (X Y z r : ℂ) : ℂ := (6)*(((1 : ℂ)*r))*(((1 : ℂ)*Y))*((((1 : ℂ)*X)+(-1 : ℂ)))*((((((((((1 : ℂ)*Y)+(-2 : ℂ))*X)+(((((1 : ℂ)*Y)+(((1 : ℂ)*z^2)+(-10 : ℂ)))*Y)+(((-3 : ℂ)*z^2)+(18 : ℂ))))*X)+(((1 : ℂ)*r^2)*Y))*X)+(((-1 : ℂ)*r^2)*Y^2)))
def denominator_p3_p0 (X Y z r : ℂ) : ℂ := (1)*(Y - 3*z - 9)*(X + Y + z^2 + 3*z)*(z)^2*(X)^3

/-- Exact rational normalization before any quadratic or splitting relation.
All denominators are guarded explicitly. -/
theorem raw_p3_p0 (X Y z r : ℂ)
    (hX : X≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0) :
    newton_p3_p0 (zeroSide X Y z r 1)+newton_p3_p0 (zeroSide X Y z r (-1)) =
      numerator_p3_p0 X Y z r / denominator_p3_p0 X Y z r := by
  dsimp only [zeroSide,reconstructionData,newton_p3_p0,numerator_p3_p0,denominator_p3_p0]
  field_simp [hX,hz,hDx,hDy,hDz]
  <;> ring
end
#print axioms raw_p3_p0
end CriticalZeroRational20261003
