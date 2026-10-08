import CriticalZeroRationalData
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring
set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 10000
namespace CriticalZeroRational20261003
open CriticalNewton20261003 CriticalNewtonGauge20261003
noncomputable section

def numerator_m1_p2 (X Y z r : ℂ) : ℂ := (-6)*(((1 : ℂ)*r))*((((1 : ℂ)*z)+(2 : ℂ)))
def denominator_m1_p2 (X Y z r : ℂ) : ℂ := (1)*(X - 3*z - 9)

/-- Exact rational normalization before any quadratic or splitting relation.
All denominators are guarded explicitly. -/
theorem raw_m1_p2 (X Y z r : ℂ)
    (hX : X≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0) :
    newton_m1_p2 (zeroSide X Y z r 1)+newton_m1_p2 (zeroSide X Y z r (-1)) =
      numerator_m1_p2 X Y z r / denominator_m1_p2 X Y z r := by
  dsimp only [zeroSide,reconstructionData,newton_m1_p2,numerator_m1_p2,denominator_m1_p2]
  field_simp [hX,hz,hDx,hDy,hDz]
  <;> ring
end
#print axioms raw_m1_p2
end CriticalZeroRational20261003
