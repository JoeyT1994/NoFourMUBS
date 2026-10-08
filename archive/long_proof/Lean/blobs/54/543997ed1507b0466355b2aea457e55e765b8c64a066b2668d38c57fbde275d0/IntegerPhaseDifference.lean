import IntegerPhaseArithmetic

/-! Exact integer endpoint-minus-midpoint differences. -/
set_option autoImplicit false
namespace Seed0024ClusterTube20261007

def integerPairSub (p q : ℤ × ℤ) : ℤ × ℤ := (p.1-q.1,p.2-q.2)

theorem integerPairSub_complex (p q : ℤ × ℤ) :
    integerPairComplex (integerPairSub p q)=integerPairComplex p-integerPairComplex q := by
  apply Complex.ext <;> simp [integerPairComplex,integerPairSub,integerComplex]

theorem integerPairSub_floor_error (p q : ℤ × ℤ) :
    |(integerPairNormFloor (integerPairSub p q) : ℝ)-
      ‖integerPairComplex p-integerPairComplex q‖|<1 := by
  rw [←integerPairSub_complex]
  exact integerPairNormFloor_error _

#print axioms integerPairSub_complex
#print axioms integerPairSub_floor_error
end Seed0024ClusterTube20261007
