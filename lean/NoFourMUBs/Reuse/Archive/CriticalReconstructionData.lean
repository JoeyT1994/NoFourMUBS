import NoFourMUBs.Reuse.Archive.CriticalNewtonCore

set_option autoImplicit false
namespace CriticalNewtonGauge20261003
open CriticalNewton20261003
noncomputable section

/-- The eighteen external side fields. The six lambda/reciprocal inputs are
explicit; no reciprocal or conjugacy relation is built into this definition. -/
def reconstructionData (s S t T r Q z l0 l1 l2 b0 b1 b2 : ℂ) : Data where
  s := s
  S := S
  t := t
  T := T
  r := r
  Q := Q
  u := l0*b1
  v := l0*b2
  w := l2*b1
  U := l1*b0
  V := l2*b0
  W := l1*b2
  pi := l0*z
  PI := b0*z
  up := b1*z
  vp := b2*z
  UP := l1*z
  VP := l2*z

/-- Lightweight exact copy of the already checked 66-term Newton polynomial.
Its equality to the physical definition is checked in the binding module. -/
def pureNewtonPolynomial66 (L R : CriticalNewton20261003.Data) : ℂ :=
  (1728 : ℂ) +
  (-1 : ℂ) * (newton_m4_p2 L+newton_m4_p2 R) * (newton_p2_m4 L+newton_p2_m4 R) * (newton_p2_p2 L+newton_p2_p2 R) +
  (2 : ℂ) * (newton_m4_p2 L+newton_m4_p2 R) * (newton_p2_m3 L+newton_p2_m3 R) * (newton_p2_p1 L+newton_p2_p1 R) +
  (1 : ℂ) * (newton_m4_p2 L+newton_m4_p2 R) * (newton_p2_m2 L+newton_p2_m2 R) * (newton_p2_p0 L+newton_p2_p0 R) +
  (-2 : ℂ) * (newton_m4_p2 L+newton_m4_p2 R) * (newton_p2_m1 L+newton_p2_m1 R) * (newton_p2_m1 L+newton_p2_m1 R) +
  (-2 : ℂ) * (newton_m3_p0 L+newton_m3_p0 R) * (newton_p0_p2 L+newton_p0_p2 R) * (newton_p3_m2 L+newton_p3_m2 R) +
  (2 : ℂ) * (newton_m3_p0 L+newton_m3_p0 R) * (newton_p0_p3 L+newton_p0_p3 R) * (newton_p3_m3 L+newton_p3_m3 R) +
  (2 : ℂ) * (newton_m3_p0 L+newton_m3_p0 R) * (newton_p1_p1 L+newton_p1_p1 R) * (newton_p2_m1 L+newton_p2_m1 R) +
  (-2 : ℂ) * (newton_m3_p0 L+newton_m3_p0 R) * (newton_p1_p2 L+newton_p1_p2 R) * (newton_p2_m2 L+newton_p2_m2 R) +
  (12 : ℂ) * (newton_m3_p0 L+newton_m3_p0 R) * (newton_p3_p0 L+newton_p3_p0 R) +
  (-2 : ℂ) * (newton_m3_p1 L+newton_m3_p1 R) * (newton_p0_p2 L+newton_p0_p2 R) * (newton_p3_m3 L+newton_p3_m3 R) +
  (2 : ℂ) * (newton_m3_p1 L+newton_m3_p1 R) * (newton_p1_m3 L+newton_p1_m3 R) * (newton_p2_p2 L+newton_p2_p2 R) +
  (-2 : ℂ) * (newton_m3_p1 L+newton_m3_p1 R) * (newton_p1_m2 L+newton_p1_m2 R) * (newton_p2_p1 L+newton_p2_p1 R) +
  (12 : ℂ) * (newton_m3_p1 L+newton_m3_p1 R) * (newton_p3_m1 L+newton_p3_m1 R) +
  (-2 : ℂ) * (newton_m3_p2 L+newton_m3_p2 R) * (newton_p0_m2 L+newton_p0_m2 R) * (newton_p3_p0 L+newton_p3_p0 R) +
  (-2 : ℂ) * (newton_m3_p2 L+newton_m3_p2 R) * (newton_p1_p1 L+newton_p1_p1 R) * (newton_p2_m3 L+newton_p2_m3 R) +
  (2 : ℂ) * (newton_m3_p2 L+newton_m3_p2 R) * (newton_p1_p2 L+newton_p1_p2 R) * (newton_p2_m4 L+newton_p2_m4 R) +
  (12 : ℂ) * (newton_m3_p2 L+newton_m3_p2 R) * (newton_p3_m2 L+newton_p3_m2 R) +
  (2 : ℂ) * (newton_m3_p3 L+newton_m3_p3 R) * (newton_p0_m3 L+newton_p0_m3 R) * (newton_p3_p0 L+newton_p3_p0 R) +
  (-2 : ℂ) * (newton_m3_p3 L+newton_m3_p3 R) * (newton_p0_m2 L+newton_p0_m2 R) * (newton_p3_m1 L+newton_p3_m1 R) +
  (-2 : ℂ) * (newton_m3_p3 L+newton_m3_p3 R) * (newton_p1_m3 L+newton_p1_m3 R) * (newton_p2_p0 L+newton_p2_p0 R) +
  (2 : ℂ) * (newton_m3_p3 L+newton_m3_p3 R) * (newton_p1_m2 L+newton_p1_m2 R) * (newton_p2_m1 L+newton_p2_m1 R) +
  (12 : ℂ) * (newton_m3_p3 L+newton_m3_p3 R) * (newton_p3_m3 L+newton_p3_m3 R) +
  (-1 : ℂ) * (newton_m2_m2 L+newton_m2_m2 R) * (newton_m2_p4 L+newton_m2_p4 R) * (newton_p4_m2 L+newton_p4_m2 R) +
  (2 : ℂ) * (newton_m2_m2 L+newton_m2_m2 R) * (newton_m1_p3 L+newton_m1_p3 R) * (newton_p3_m1 L+newton_p3_m1 R) +
  (1 : ℂ) * (newton_m2_m2 L+newton_m2_m2 R) * (newton_p0_p2 L+newton_p0_p2 R) * (newton_p2_p0 L+newton_p2_p0 R) +
  (-2 : ℂ) * (newton_m2_m2 L+newton_m2_m2 R) * (newton_p1_p1 L+newton_p1_p1 R) * (newton_p1_p1 L+newton_p1_p1 R) +
  (2 : ℂ) * (newton_m2_m1 L+newton_m2_m1 R) * (newton_m2_p3 L+newton_m2_p3 R) * (newton_p4_m2 L+newton_p4_m2 R) +
  (-2 : ℂ) * (newton_m2_m1 L+newton_m2_m1 R) * (newton_m1_p2 L+newton_m1_p2 R) * (newton_p3_m1 L+newton_p3_m1 R) +
  (-2 : ℂ) * (newton_m2_m1 L+newton_m2_m1 R) * (newton_p0_p3 L+newton_p0_p3 R) * (newton_p2_m2 L+newton_p2_m2 R) +
  (12 : ℂ) * (newton_m2_m1 L+newton_m2_m1 R) * (newton_p2_p1 L+newton_p2_p1 R) +
  (1 : ℂ) * (newton_m2_p0 L+newton_m2_p0 R) * (newton_m2_p2 L+newton_m2_p2 R) * (newton_p4_m2 L+newton_p4_m2 R) +
  (-2 : ℂ) * (newton_m2_p0 L+newton_m2_p0 R) * (newton_m1_p3 L+newton_m1_p3 R) * (newton_p3_m3 L+newton_p3_m3 R) +
  (1 : ℂ) * (newton_m2_p0 L+newton_m2_p0 R) * (newton_p0_m2 L+newton_p0_m2 R) * (newton_p2_p2 L+newton_p2_p2 R) +
  (6 : ℂ) * (newton_m2_p0 L+newton_m2_p0 R) * (newton_p0_p2 L+newton_p0_p2 R) * (newton_p2_m2 L+newton_p2_m2 R) +
  (-2 : ℂ) * (newton_m2_p0 L+newton_m2_p0 R) * (newton_p0_p3 L+newton_p0_p3 R) * (newton_p2_m3 L+newton_p2_m3 R) +
  (-48 : ℂ) * (newton_m2_p0 L+newton_m2_p0 R) * (newton_p2_p0 L+newton_p2_p0 R) +
  (-2 : ℂ) * (newton_m2_p1 L+newton_m2_p1 R) * (newton_m2_p1 L+newton_m2_p1 R) * (newton_p4_m2 L+newton_p4_m2 R) +
  (2 : ℂ) * (newton_m2_p1 L+newton_m2_p1 R) * (newton_m1_m1 L+newton_m1_m1 R) * (newton_p3_p0 L+newton_p3_p0 R) +
  (2 : ℂ) * (newton_m2_p1 L+newton_m2_p1 R) * (newton_m1_p2 L+newton_m1_p2 R) * (newton_p3_m3 L+newton_p3_m3 R) +
  (-2 : ℂ) * (newton_m2_p1 L+newton_m2_p1 R) * (newton_p1_m3 L+newton_p1_m3 R) * (newton_p1_p2 L+newton_p1_p2 R) +
  (-2 : ℂ) * (newton_m2_p1 L+newton_m2_p1 R) * (newton_p1_m2 L+newton_p1_m2 R) * (newton_p1_p1 L+newton_p1_p1 R) +
  (-24 : ℂ) * (newton_m2_p1 L+newton_m2_p1 R) * (newton_p2_m1 L+newton_p2_m1 R) +
  (-2 : ℂ) * (newton_m2_p2 L+newton_m2_p2 R) * (newton_m1_m2 L+newton_m1_m2 R) * (newton_p3_p0 L+newton_p3_p0 R) +
  (-2 : ℂ) * (newton_m2_p2 L+newton_m2_p2 R) * (newton_p0_m3 L+newton_p0_m3 R) * (newton_p2_p1 L+newton_p2_p1 R) +
  (6 : ℂ) * (newton_m2_p2 L+newton_m2_p2 R) * (newton_p0_m2 L+newton_p0_m2 R) * (newton_p2_p0 L+newton_p2_p0 R) +
  (1 : ℂ) * (newton_m2_p2 L+newton_m2_p2 R) * (newton_p0_p2 L+newton_p0_p2 R) * (newton_p2_m4 L+newton_p2_m4 R) +
  (-48 : ℂ) * (newton_m2_p2 L+newton_m2_p2 R) * (newton_p2_m2 L+newton_p2_m2 R) +
  (-2 : ℂ) * (newton_m2_p3 L+newton_m2_p3 R) * (newton_m1_m1 L+newton_m1_m1 R) * (newton_p3_m2 L+newton_p3_m2 R) +
  (-2 : ℂ) * (newton_m2_p3 L+newton_m2_p3 R) * (newton_p0_m3 L+newton_p0_m3 R) * (newton_p2_p0 L+newton_p2_p0 R) +
  (12 : ℂ) * (newton_m2_p3 L+newton_m2_p3 R) * (newton_p2_m3 L+newton_p2_m3 R) +
  (2 : ℂ) * (newton_m2_p4 L+newton_m2_p4 R) * (newton_m1_m2 L+newton_m1_m2 R) * (newton_p3_m2 L+newton_p3_m2 R) +
  (1 : ℂ) * (newton_m2_p4 L+newton_m2_p4 R) * (newton_p0_m2 L+newton_p0_m2 R) * (newton_p2_m2 L+newton_p2_m2 R) +
  (-2 : ℂ) * (newton_m2_p4 L+newton_m2_p4 R) * (newton_p1_m2 L+newton_p1_m2 R) * (newton_p1_m2 L+newton_p1_m2 R) +
  (-2 : ℂ) * (newton_m1_m2 L+newton_m1_m2 R) * (newton_m1_p3 L+newton_m1_p3 R) * (newton_p2_m1 L+newton_p2_m1 R) +
  (12 : ℂ) * (newton_m1_m2 L+newton_m1_m2 R) * (newton_p1_p2 L+newton_p1_p2 R) +
  (-2 : ℂ) * (newton_m1_m1 L+newton_m1_m1 R) * (newton_m1_m1 L+newton_m1_m1 R) * (newton_p2_p2 L+newton_p2_p2 R) +
  (-2 : ℂ) * (newton_m1_m1 L+newton_m1_m1 R) * (newton_m1_p2 L+newton_m1_p2 R) * (newton_p2_m1 L+newton_p2_m1 R) +
  (2 : ℂ) * (newton_m1_m1 L+newton_m1_m1 R) * (newton_p0_p3 L+newton_p0_p3 R) * (newton_p1_m2 L+newton_p1_m2 R) +
  (-24 : ℂ) * (newton_m1_m1 L+newton_m1_m1 R) * (newton_p1_p1 L+newton_p1_p1 R) +
  (-2 : ℂ) * (newton_m1_p2 L+newton_m1_p2 R) * (newton_m1_p2 L+newton_m1_p2 R) * (newton_p2_m4 L+newton_p2_m4 R) +
  (2 : ℂ) * (newton_m1_p2 L+newton_m1_p2 R) * (newton_p0_m3 L+newton_p0_m3 R) * (newton_p1_p1 L+newton_p1_p1 R) +
  (-24 : ℂ) * (newton_m1_p2 L+newton_m1_p2 R) * (newton_p1_m2 L+newton_p1_m2 R) +
  (12 : ℂ) * (newton_m1_p3 L+newton_m1_p3 R) * (newton_p1_m3 L+newton_p1_m3 R) +
  (12 : ℂ) * (newton_p0_m3 L+newton_p0_m3 R) * (newton_p0_p3 L+newton_p0_p3 R) +
  (-48 : ℂ) * (newton_p0_m2 L+newton_p0_m2 R) * (newton_p0_p2 L+newton_p0_p2 R)

end
end CriticalNewtonGauge20261003
