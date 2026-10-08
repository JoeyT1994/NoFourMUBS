import IntegerNormFloor
import SignedDivisionRounding

/-! Literal unbounded integer operations used by the independent phase-leaf
checks. These identities bind actual integer sums and signed product quotients
to complex values; no table or numerical leaf is assumed accepted. -/
set_option autoImplicit false
open scoped BigOperators
namespace Seed0024ClusterTube20261007

def integerPairComplex (z : ℤ × ℤ) : ℂ := integerComplex z.1 z.2

def integerFiveSum (Q : ℤ) (t : Fin 5 → ℤ × ℤ) : ℤ × ℤ :=
  (Q+∑ i,(t i).1, ∑ i,(t i).2)

def integerPairNormFloor (z : ℤ × ℤ) : ℤ := integerNormFloor z.1 z.2

def integerConjProductQuotient (Q : ℤ) (c t : ℤ × ℤ) : ℤ × ℤ :=
  ((c.1*t.1+c.2*t.2).tdiv Q, (c.1*t.2-c.2*t.1).tdiv Q)

theorem integerFiveSum_complex (Q : ℤ) (t : Fin 5 → ℤ × ℤ) :
    integerPairComplex (integerFiveSum Q t)=
      (Q : ℂ)+∑ i,integerPairComplex (t i) := by
  apply Complex.ext <;> simp [integerPairComplex,integerFiveSum,integerComplex]

theorem integerPairNormFloor_nonneg (z : ℤ × ℤ) :
    0 ≤ integerPairNormFloor z := integerNormFloor_nonneg z.1 z.2

theorem integerPairNormFloor_error (z : ℤ × ℤ) :
    |(integerPairNormFloor z : ℝ)-‖integerPairComplex z‖|<1 := by
  rw [abs_sub_comm]
  exact integerNormFloor_abs_error z.1 z.2

theorem integerFiveSum_floor_error (Q : ℤ) (t : Fin 5 → ℤ × ℤ) :
    |(integerPairNormFloor (integerFiveSum Q t) : ℝ)-
      ‖(Q : ℂ)+∑ i,integerPairComplex (t i)‖|<1 := by
  rw [←integerFiveSum_complex]
  exact integerPairNormFloor_error _

theorem integerConjProductQuotient_real_errors (Q : ℤ) (hQ : 0<Q)
    (c t : ℤ × ℤ) :
    |(integerPairComplex (integerConjProductQuotient Q c t)).re-
      ((integerPairComplex c).re*(integerPairComplex t).re+
        (integerPairComplex c).im*(integerPairComplex t).im)/(Q : ℝ)|<1 ∧
    |(integerPairComplex (integerConjProductQuotient Q c t)).im-
      ((integerPairComplex c).re*(integerPairComplex t).im-
        (integerPairComplex c).im*(integerPairComplex t).re)/(Q : ℝ)|<1 := by
  constructor
  · simpa [integerPairComplex,integerComplex,integerConjProductQuotient,
      Int.cast_add,Int.cast_mul] using signed_tdiv_error (c.1*t.1+c.2*t.2) Q hQ
  · simpa [integerPairComplex,integerComplex,integerConjProductQuotient,
      Int.cast_sub,Int.cast_mul] using signed_tdiv_error (c.1*t.2-c.2*t.1) Q hQ

#print axioms integerFiveSum_complex
#print axioms integerPairNormFloor_nonneg
#print axioms integerPairNormFloor_error
#print axioms integerFiveSum_floor_error
#print axioms integerConjProductQuotient_real_errors
end Seed0024ClusterTube20261007
