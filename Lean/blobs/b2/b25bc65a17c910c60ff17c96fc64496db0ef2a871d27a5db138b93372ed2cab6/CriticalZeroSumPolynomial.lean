import Mathlib.Algebra.Field.Defs
set_option autoImplicit false
namespace CriticalZeroSumAssembly20261003
noncomputable section
variable {K : Type*} [Field K]

/-- All 66 terms, including the constant, in the already checked physical polynomial.
The separate literal binding checks the coefficient and index mapping in Lean. -/
def polynomial66 (m_m1_m1 m_m1_m2 m_m1_p2 m_m1_p3 m_m2_m1 m_m2_m2 m_m2_p0 m_m2_p1 m_m2_p2 m_m2_p3 m_m2_p4 m_m3_p0 m_m3_p1 m_m3_p2 m_m3_p3 m_m4_p2 m_p0_m2 m_p0_m3 m_p0_p2 m_p0_p3 m_p1_m2 m_p1_m3 m_p1_p1 m_p1_p2 m_p2_m1 m_p2_m2 m_p2_m3 m_p2_m4 m_p2_p0 m_p2_p1 m_p2_p2 m_p3_m1 m_p3_m2 m_p3_m3 m_p3_p0 m_p4_m2 : K) : K :=
  (1728 : K) +
  (-1 : K) * m_m4_p2 * m_p2_m4 * m_p2_p2 +
  (2 : K) * m_m4_p2 * m_p2_m3 * m_p2_p1 +
  (1 : K) * m_m4_p2 * m_p2_m2 * m_p2_p0 +
  (-2 : K) * m_m4_p2 * m_p2_m1 * m_p2_m1 +
  (-2 : K) * m_m3_p0 * m_p0_p2 * m_p3_m2 +
  (2 : K) * m_m3_p0 * m_p0_p3 * m_p3_m3 +
  (2 : K) * m_m3_p0 * m_p1_p1 * m_p2_m1 +
  (-2 : K) * m_m3_p0 * m_p1_p2 * m_p2_m2 +
  (12 : K) * m_m3_p0 * m_p3_p0 +
  (-2 : K) * m_m3_p1 * m_p0_p2 * m_p3_m3 +
  (2 : K) * m_m3_p1 * m_p1_m3 * m_p2_p2 +
  (-2 : K) * m_m3_p1 * m_p1_m2 * m_p2_p1 +
  (12 : K) * m_m3_p1 * m_p3_m1 +
  (-2 : K) * m_m3_p2 * m_p0_m2 * m_p3_p0 +
  (-2 : K) * m_m3_p2 * m_p1_p1 * m_p2_m3 +
  (2 : K) * m_m3_p2 * m_p1_p2 * m_p2_m4 +
  (12 : K) * m_m3_p2 * m_p3_m2 +
  (2 : K) * m_m3_p3 * m_p0_m3 * m_p3_p0 +
  (-2 : K) * m_m3_p3 * m_p0_m2 * m_p3_m1 +
  (-2 : K) * m_m3_p3 * m_p1_m3 * m_p2_p0 +
  (2 : K) * m_m3_p3 * m_p1_m2 * m_p2_m1 +
  (12 : K) * m_m3_p3 * m_p3_m3 +
  (-1 : K) * m_m2_m2 * m_m2_p4 * m_p4_m2 +
  (2 : K) * m_m2_m2 * m_m1_p3 * m_p3_m1 +
  (1 : K) * m_m2_m2 * m_p0_p2 * m_p2_p0 +
  (-2 : K) * m_m2_m2 * m_p1_p1 * m_p1_p1 +
  (2 : K) * m_m2_m1 * m_m2_p3 * m_p4_m2 +
  (-2 : K) * m_m2_m1 * m_m1_p2 * m_p3_m1 +
  (-2 : K) * m_m2_m1 * m_p0_p3 * m_p2_m2 +
  (12 : K) * m_m2_m1 * m_p2_p1 +
  (1 : K) * m_m2_p0 * m_m2_p2 * m_p4_m2 +
  (-2 : K) * m_m2_p0 * m_m1_p3 * m_p3_m3 +
  (1 : K) * m_m2_p0 * m_p0_m2 * m_p2_p2 +
  (6 : K) * m_m2_p0 * m_p0_p2 * m_p2_m2 +
  (-2 : K) * m_m2_p0 * m_p0_p3 * m_p2_m3 +
  (-48 : K) * m_m2_p0 * m_p2_p0 +
  (-2 : K) * m_m2_p1 * m_m2_p1 * m_p4_m2 +
  (2 : K) * m_m2_p1 * m_m1_m1 * m_p3_p0 +
  (2 : K) * m_m2_p1 * m_m1_p2 * m_p3_m3 +
  (-2 : K) * m_m2_p1 * m_p1_m3 * m_p1_p2 +
  (-2 : K) * m_m2_p1 * m_p1_m2 * m_p1_p1 +
  (-24 : K) * m_m2_p1 * m_p2_m1 +
  (-2 : K) * m_m2_p2 * m_m1_m2 * m_p3_p0 +
  (-2 : K) * m_m2_p2 * m_p0_m3 * m_p2_p1 +
  (6 : K) * m_m2_p2 * m_p0_m2 * m_p2_p0 +
  (1 : K) * m_m2_p2 * m_p0_p2 * m_p2_m4 +
  (-48 : K) * m_m2_p2 * m_p2_m2 +
  (-2 : K) * m_m2_p3 * m_m1_m1 * m_p3_m2 +
  (-2 : K) * m_m2_p3 * m_p0_m3 * m_p2_p0 +
  (12 : K) * m_m2_p3 * m_p2_m3 +
  (2 : K) * m_m2_p4 * m_m1_m2 * m_p3_m2 +
  (1 : K) * m_m2_p4 * m_p0_m2 * m_p2_m2 +
  (-2 : K) * m_m2_p4 * m_p1_m2 * m_p1_m2 +
  (-2 : K) * m_m1_m2 * m_m1_p3 * m_p2_m1 +
  (12 : K) * m_m1_m2 * m_p1_p2 +
  (-2 : K) * m_m1_m1 * m_m1_m1 * m_p2_p2 +
  (-2 : K) * m_m1_m1 * m_m1_p2 * m_p2_m1 +
  (2 : K) * m_m1_m1 * m_p0_p3 * m_p1_m2 +
  (-24 : K) * m_m1_m1 * m_p1_p1 +
  (-2 : K) * m_m1_p2 * m_m1_p2 * m_p2_m4 +
  (2 : K) * m_m1_p2 * m_p0_m3 * m_p1_p1 +
  (-24 : K) * m_m1_p2 * m_p1_m2 +
  (12 : K) * m_m1_p3 * m_p1_m3 +
  (12 : K) * m_p0_m3 * m_p0_p3 +
  (-48 : K) * m_p0_m2 * m_p0_p2
end
end CriticalZeroSumAssembly20261003
