import Mathlib.Tactic.Ring

/-! Universal finite polynomial definitions. No complex/analytic dependency. -/

set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace StrictReconstruction20261007.PreRhoAlignment

universe u

structure Data (K : Type u) where
  g : K
  eta : K
  chi : K
  c0 : K
  c1 : K
  c2 : K
  p0bar : K
  p1 : K
  p2 : K
  b0 : K
  b1 : K
  b0bar : K
  b1bar : K

variable {K : Type u} [CommRing K]

def gramData (s S t T r Q : K) : Data K :=
  let X := s * S
  let Y := t * T
  let Z := r * Q
  let p := X + Y + Z
  let J := s * r * T + S * Q * t
  let W := X * Y + X * Z + Y * Z - X * Y * Z
  { g := 27 - 3 * p + J
    eta := 9 - p + J
    chi := W - (p - 9) * (p - 18) + (p - 15) * J
    c0 := 9 - Z
    c1 := 9 - Y
    c2 := 9 - X
    p0bar := Q * S ^ 2 + r * T ^ 2 + (3 - Z) * S * T
    p1 := t * S ^ 2 + r ^ 2 * T + (3 - Y) * r * S
    p2 := s * T ^ 2 + Q ^ 2 * S + (3 - X) * Q * T
    b0 := 6 * s * t - 2 * r * s ^ 2
    b1 := 6 * r * S - 2 * t * S ^ 2
    b0bar := 6 * S * T - 2 * Q * S ^ 2
    b1bar := 6 * Q * s - 2 * T * s ^ 2 }

def f0 (d : Data K) : K :=
  d.b0 * d.g * d.p0bar * d.p1 * d.p2 +
    (d.g ^ 2 + d.c0 * d.chi) * d.g * d.b1 * d.p2 -
    (d.g ^ 2 + d.c0 * d.chi) * d.g ^ 2 * d.b0bar -
    d.g ^ 2 * d.b1bar * d.p0bar * d.p1 +
    d.g ^ 2 * d.c2 * d.chi * d.p0bar

def f1 (d : Data K) : K :=
  ((d.g ^ 2 + d.c0 * d.chi) * d.c1 - d.c0 * d.g ^ 2) * d.b1 * d.p2 -
    (d.g ^ 2 + d.c0 * d.chi) * d.c2 * d.p1 * d.p2 -
    ((d.g ^ 2 + d.c0 * d.chi) * d.g * (d.c1 + d.c2) - d.c0 * d.g ^ 3) * d.b0bar -
    d.g * d.c2 * d.b1bar * d.p0bar * d.p1 +
    (d.g * (d.c1 + d.c2) * d.chi - d.g ^ 3) * d.c2 * d.p0bar

def f2 (d : Data K) : K :=
  -d.c0 * d.g * d.c1 * d.b1 * d.p2 +
    d.c0 * d.g * d.c2 * d.p1 * d.p2 -
    ((d.g ^ 2 + d.c0 * d.chi) * d.c1 * d.c2 -
      d.c0 * d.g ^ 2 * (d.c1 + d.c2)) * d.b0bar +
    (d.c1 * d.c2 * d.chi - d.g ^ 2 * (d.c1 + d.c2)) * d.c2 * d.p0bar

def f3 (d : Data K) : K :=
  d.c0 * d.g * d.c1 * d.c2 * d.b0bar - d.g * d.c1 * d.c2 ^ 2 * d.p0bar

def remainder0 (d : Data K) : K :=
  d.g ^ 2 * f0 d - d.g ^ 2 * d.eta * f2 d - d.g * d.eta * d.chi * f3 d
def remainder1 (d : Data K) : K :=
  d.g ^ 2 * f1 d - d.g ^ 2 * d.eta * f3 d +
    d.chi * d.g * f2 d + d.chi ^ 2 * f3 d

/-- Cancel the universal cubic factor before expanding the six correlations. -/
def residual0 (d : Data K) : K :=
  d.b0 * d.p0bar * d.p1 * d.p2 +
    (d.g ^ 2 + d.c0 * d.chi + d.eta * d.c0 * d.c1) * d.b1 * d.p2 -
    d.eta * d.c0 * d.c2 * d.p1 * d.p2 +
    d.g * (-d.g ^ 2 - d.c0 * d.chi + d.eta * d.c1 * d.c2 -
      d.eta * d.c0 * (d.c1 + d.c2)) * d.b0bar -
    d.g * d.b1bar * d.p0bar * d.p1 +
    d.g * d.c2 * (d.chi + d.eta * (d.c1 + d.c2)) * d.p0bar

def residual1 (d : Data K) : K :=
  d.g * (d.c1 - d.c0) * d.b1 * d.p2 -
    d.g * d.c2 * d.p1 * d.p2 +
    (d.g ^ 2 * (d.c0 - d.c1 - d.c2) - d.chi * d.c1 * d.c2 -
      d.eta * d.c0 * d.c1 * d.c2) * d.b0bar -
    d.c2 * d.b1bar * d.p0bar * d.p1 +
    (-d.g ^ 2 * d.c2 + d.eta * d.c1 * d.c2 ^ 2) * d.p0bar

theorem remainder0_factor (d : Data K) :
    remainder0 d = d.g ^ 3 * residual0 d := by
  simp only [remainder0, f0, f2, f3, residual0]
  ring

theorem remainder1_factor (d : Data K) :
    remainder1 d = d.g ^ 3 * residual1 d := by
  simp only [remainder1, f1, f2, f3, residual1]
  ring

def cleared (d : Data K) (z Z : K) : K :=
  d.b0 * d.p0bar * d.p1 * d.p2 +
    (d.g + d.c0 * Z) * (d.g + d.c1 * z) * d.b1 * d.p2 -
    (d.g + d.c0 * Z) * d.c2 * z * d.p1 * d.p2 -
    (d.g + d.c0 * Z) * (d.g + d.c1 * z) * (d.g + d.c2 * z) * d.b0bar -
    (d.g + d.c2 * z) * d.b1bar * d.p0bar * d.p1 +
    (d.g + d.c1 * z) * (d.g + d.c2 * z) * d.c2 * Z * d.p0bar

def correction (d : Data K) (z : K) : K :=
  d.c0 * (d.g + d.c1 * z) * d.b1 * d.p2 -
    d.c0 * d.c2 * z * d.p1 * d.p2 -
    d.c0 * (d.g + d.c1 * z) * (d.g + d.c2 * z) * d.b0bar +
    (d.g + d.c1 * z) * (d.g + d.c2 * z) * d.c2 * d.p0bar

theorem cleared_coefficient_identity (d : Data K) (z Z : K) :
    d.g * cleared d z Z =
      f0 d + f1 d * z + f2 d * z ^ 2 + f3 d * z ^ 3 +
        (d.g * (z + Z) - d.chi) * correction d z := by
  simp only [cleared, correction, f0, f1, f2, f3]
  ring

theorem quadratic_reduction_identity (d : Data K) (z : K) :
    d.g ^ 2 * (f0 d + f1 d * z + f2 d * z ^ 2 + f3 d * z ^ 3) =
      (d.g * z ^ 2 - d.chi * z + d.g * d.eta) *
        (d.g * f3 d * z + d.g * f2 d + d.chi * f3 d) +
      remainder0 d + remainder1 d * z := by
  simp only [remainder0, remainder1]
  ring

end StrictReconstruction20261007.PreRhoAlignment

#print axioms StrictReconstruction20261007.PreRhoAlignment.remainder0_factor
#print axioms StrictReconstruction20261007.PreRhoAlignment.remainder1_factor
