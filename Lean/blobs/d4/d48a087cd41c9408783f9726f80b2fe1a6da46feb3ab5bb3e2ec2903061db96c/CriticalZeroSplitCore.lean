import Mathlib.Tactic.LinearCombination
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000

namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]

def A (z K : R) : R := 3*z*(z+3)^4+(3*z+8)*K
def B (z K : R) : R := z^2*(z+3)^4+(z+2)^2*K
def fy (X Y z K : R) : R :=
  Y^2+(X-(9-z^2))*Y+X^2-(9-z^2)*X+z^2*(z+3)^2+K
def fx (X z K : R) : R :=
  X^3-(9-z^2)*X^2+(z^2*(z+3)^2+K)*X-K
def third (X Y z : R) : R := 9-z^2-X-Y
def D (X Y z : R) : R := (3*z+9-X)*(3*z+9-Y)*(X+Y+z^2+3*z)

/-- The two monic splitting relations recover all three symmetric identities,
without division, distinct-root assumptions, or a characteristic restriction. -/
theorem splitting_symmetric (X Y z K : R)
    (hy : fy X Y z K = 0) (hx : fx X z K = 0) :
    X+Y+third X Y z = 9-z^2 ∧
    X*Y+X*third X Y z+Y*third X Y z = z^2*(z+3)^2+K ∧
    X*Y*third X Y z = K := by
  dsimp only [fy] at hy
  dsimp only [fx] at hx
  dsimp only [third]
  refine ⟨by ring, ?_, ?_⟩
  · linear_combination -hy
  · linear_combination hx-X*hy

/-- The unexpanded raw denominator base reduces to the proposed A. -/
theorem denominator_base (X Y z K : R)
    (hy : fy X Y z K = 0) (hx : fx X z K = 0) : D X Y z = A z K := by
  obtain ⟨hp, hw, hk⟩ := splitting_symmetric X Y z K hy hx
  dsimp only [third] at hp hw hk
  dsimp only [D, A]
  linear_combination -(3*z+9)^2*hp+(3*z+9)*hw-hk

theorem denominator_power (X Y z K : R)
    (hy : fy X Y z K = 0) (hx : fx X z K = 0) :
    z^12*(D X Y z)^5 = z^12*(A z K)^5 := by
  rw [denominator_base X Y z K hy hx]

end
#print axioms splitting_symmetric
#print axioms denominator_base
#print axioms denominator_power
end CriticalZeroSplitReduction20261003
