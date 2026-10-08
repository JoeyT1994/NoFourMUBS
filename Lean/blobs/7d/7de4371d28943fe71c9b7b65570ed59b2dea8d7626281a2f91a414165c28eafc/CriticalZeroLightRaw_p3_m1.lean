import CriticalZeroLightData
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring
set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 10000
namespace CriticalZeroLight20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]

def numerator_p3_m1 (X Y z r : K) : K := (-2)*(((1 : K)*Y))*((((((((((((1 : K)*Y)+((-1 : K)*z^2))*X)+(((((((1 : K)*r^2)+(1 : K))*Y)+(((-2 : K)*r^2)+(-6 : K)))*Y)+((((-1 : K)*z)+(-3 : K))*z^3)))*X)+(((((((1 : K)*r^2)*Y)+((((1 : K)*r^2)*z^2)+((-8 : K)*r^2)))*Y)+((((-4 : K)*r^2)*z^2)+((15 : K)*r^2)))*Y))*X)+(((((((1 : K)*r^2)+(-3 : K))*r^2)*Y)+(((((-1 : K)*r^2)*z)+((-3 : K)*r^2))*z^3))*Y))*X)+(((-1 : K)*r^4)*Y^3)))
def denominator_p3_m1 (X Y z r : K) : K := (1)*(Y - 3*z - 9)*(X + Y + z^2 + 3*z)*(z)^2*(X)^3

/-- Exact rational normalization before any quadratic or splitting relation.
All denominators are guarded explicitly. -/
theorem raw_p3_m1 (X Y z r : K)
    (hX : X≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0) :
    newton_p3_m1 (zeroSide X Y z r 1)+newton_p3_m1 (zeroSide X Y z r (-1)) =
      numerator_p3_m1 X Y z r / denominator_p3_m1 X Y z r := by
  dsimp only [zeroSide,reconstructionData,newton_p3_m1,numerator_p3_m1,denominator_p3_m1]
  field_simp [hX,hz,hDx,hDy,hDz]
  <;> ring
end
#print axioms raw_p3_m1
end CriticalZeroLight20261003
