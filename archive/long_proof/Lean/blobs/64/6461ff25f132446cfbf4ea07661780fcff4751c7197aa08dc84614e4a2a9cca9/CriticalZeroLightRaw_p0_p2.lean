import CriticalZeroLightData
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring
set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 10000
namespace CriticalZeroLight20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]

def numerator_p0_p2 (X Y z r : K) : K := (2)*((((((((((2 : K)*Y)+((1 : K)*z^2))*X)+(((((2 : K)*Y)+(((3 : K)*z^2)+(-12 : K)))*Y)+((((1 : K)*z^2)+(-9 : K))*z^2)))*X)+((((((4 : K)*r^2)*Y)+(((((-3 : K)*z)+(((2 : K)*r^2)+(-9 : K)))*z^2)+((-6 : K)*r^2)))*Y)+((((((-3 : K)*z)+(-18 : K))*z)+(-27 : K))*z^3)))*X)+(((-6 : K)*r^2)*Y^2)))
def denominator_p0_p2 (X Y z r : K) : K := (1)*(X)*(X - 3*z - 9)*(X + Y + z^2 + 3*z)*(z)^2

/-- Exact rational normalization before any quadratic or splitting relation.
All denominators are guarded explicitly. -/
theorem raw_p0_p2 (X Y z r : K)
    (hX : X≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0) :
    newton_p0_p2 (zeroSide X Y z r 1)+newton_p0_p2 (zeroSide X Y z r (-1)) =
      numerator_p0_p2 X Y z r / denominator_p0_p2 X Y z r := by
  dsimp only [zeroSide,reconstructionData,newton_p0_p2,numerator_p0_p2,denominator_p0_p2]
  field_simp [hX,hz,hDx,hDy,hDz]
  <;> ring
end
#print axioms raw_p0_p2
end CriticalZeroLight20261003
