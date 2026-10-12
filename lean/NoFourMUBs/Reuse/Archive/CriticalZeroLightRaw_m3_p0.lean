import NoFourMUBs.Reuse.Archive.CriticalZeroLightData
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring
set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 10000
namespace CriticalZeroLight20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]

def numerator_m3_p0 (X Y z r : K) : K := (-6)*(r)*(Y)*(X - 1)*(X^3*Y - 2*X^3 + X^2*Y^2 + X^2*Y*z^2 - 10*X^2*Y - 3*X^2*z^2 + 18*X^2 + X*Y*r^2 - Y^2*r^2)
def denominator_m3_p0 (X Y z r : K) : K := (1)*(Y - 3*z - 9)*(X + Y + z^2 + 3*z)*(z)^2

/-- Exact rational normalization before any quadratic or splitting relation.
All denominators are guarded explicitly. -/
theorem raw_m3_p0 (X Y z r : K)
    (hX : X≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0) :
    newton_m3_p0 (zeroSide X Y z r 1)+newton_m3_p0 (zeroSide X Y z r (-1)) =
      numerator_m3_p0 X Y z r / denominator_m3_p0 X Y z r := by
  dsimp only [zeroSide,reconstructionData,newton_m3_p0,numerator_m3_p0,denominator_m3_p0]
  field_simp [hX,hz,hDx,hDy,hDz]
  <;> ring
end
#print axioms raw_m3_p0
end CriticalZeroLight20261003
