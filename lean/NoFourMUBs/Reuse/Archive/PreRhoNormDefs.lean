import NoFourMUBs.Reuse.Archive.PreRhoAlignmentDefs

/-! Universal finite norm-certificate definitions, with common g factors removed. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace StrictReconstruction20261007.PreRhoNorm

universe u

structure Data (K : Type u) where
  a : PreRhoAlignment.Data K
  p0 : K
  p1bar : K
  s : K
  S : K

variable {K : Type u} [CommRing K]

def gramData (s S t T r Q : K) : Data K :=
  { a := PreRhoAlignment.gramData s S t T r Q
    p0 := r * s ^ 2 + Q * t ^ 2 + (3 - r * Q) * s * t
    p1bar := T * s ^ 2 + Q ^ 2 * t + (3 - t * T) * Q * s
    s := s
    S := S }

def m0 (d : Data K) : K :=
  d.a.b0 * d.a.b0bar + d.a.b1 * d.a.b1bar + d.a.c2 ^ 2 * d.a.eta -
    d.a.g * (27 - 18 * d.s * d.S - (d.s * d.S) ^ 2)
def mu (d : Data K) : K := d.a.b1 * d.a.b0bar - 4 * d.a.g * d.S ^ 3
def mubar (d : Data K) : K := d.a.b0 * d.a.b1bar - 4 * d.a.g * d.s ^ 3

def f0 (d : Data K) : K :=
  m0 d * d.a.g * d.a.p0bar * d.p0 * d.p1bar * d.a.p1 +
    (d.a.g ^ 2 + d.a.c0 * d.a.chi) * d.a.g * mu d * d.p0 * d.p1bar +
    d.a.g * (d.a.g ^ 2 + d.a.c1 * d.a.chi) * mubar d * d.a.p0bar * d.a.p1 -
    d.a.g * d.a.c2 * d.a.chi * d.a.b0 * d.a.p0bar * d.p1bar * d.a.p1 -
    d.a.g * d.a.c2 * d.a.chi * d.a.b1 * d.a.p0bar * d.p0 * d.p1bar

def f1 (d : Data K) : K :=
  ((d.a.g ^ 2 + d.a.c0 * d.a.chi) * d.a.c1 - d.a.c0 * d.a.g ^ 2) *
      mu d * d.p0 * d.p1bar +
    (d.a.c0 * (d.a.g ^ 2 + d.a.c1 * d.a.chi) - d.a.c1 * d.a.g ^ 2) *
      mubar d * d.a.p0bar * d.a.p1 -
    (d.a.g ^ 2 + d.a.c0 * d.a.chi) * d.a.c2 * d.a.b0bar * d.p0 * d.p1bar * d.a.p1 -
    (d.a.c0 * d.a.chi - d.a.g ^ 2) * d.a.c2 * d.a.b0 * d.a.p0bar * d.p1bar * d.a.p1 -
    (d.a.c1 * d.a.chi - d.a.g ^ 2) * d.a.c2 * d.a.b1 * d.a.p0bar * d.p0 * d.p1bar -
    (d.a.g ^ 2 + d.a.c1 * d.a.chi) * d.a.c2 * d.a.b1bar * d.a.p0bar * d.p0 * d.a.p1

def f2 (d : Data K) : K :=
  -d.a.c0 * d.a.g * d.a.c1 * mu d * d.p0 * d.p1bar -
    d.a.c0 * d.a.c1 * d.a.g * mubar d * d.a.p0bar * d.a.p1 +
    d.a.c0 * d.a.g * d.a.c2 * d.a.b0bar * d.p0 * d.p1bar * d.a.p1 +
    d.a.c0 * d.a.g * d.a.c2 * d.a.b0 * d.a.p0bar * d.p1bar * d.a.p1 +
    d.a.c1 * d.a.g * d.a.c2 * d.a.b1 * d.a.p0bar * d.p0 * d.p1bar +
    d.a.c1 * d.a.g * d.a.c2 * d.a.b1bar * d.a.p0bar * d.p0 * d.a.p1

def remainder0 (d : Data K) : K := d.a.g * f0 d - d.a.g * d.a.eta * f2 d
def remainder1 (d : Data K) : K := d.a.g * f1 d + d.a.chi * f2 d

def residual0 (d : Data K) : K :=
  m0 d * d.a.p0bar * d.p0 * d.p1bar * d.a.p1 +
    (d.a.g ^ 2 + d.a.c0 * d.a.chi + d.a.eta * d.a.c0 * d.a.c1) *
      mu d * d.p0 * d.p1bar +
    (d.a.g ^ 2 + d.a.c1 * d.a.chi + d.a.eta * d.a.c0 * d.a.c1) *
      mubar d * d.a.p0bar * d.a.p1 -
    d.a.c2 * (d.a.chi + d.a.eta * d.a.c0) * d.a.b0 *
      d.a.p0bar * d.p1bar * d.a.p1 -
    d.a.c2 * (d.a.chi + d.a.eta * d.a.c1) * d.a.b1 *
      d.a.p0bar * d.p0 * d.p1bar -
    d.a.eta * d.a.c0 * d.a.c2 * d.a.b0bar * d.p0 * d.p1bar * d.a.p1 -
    d.a.eta * d.a.c1 * d.a.c2 * d.a.b1bar * d.a.p0bar * d.p0 * d.a.p1

def residual1 (d : Data K) : K :=
  (d.a.c1 - d.a.c0) * mu d * d.p0 * d.p1bar +
    (d.a.c0 - d.a.c1) * mubar d * d.a.p0bar * d.a.p1 -
    d.a.c2 * d.a.b0bar * d.p0 * d.p1bar * d.a.p1 +
    d.a.c2 * d.a.b0 * d.a.p0bar * d.p1bar * d.a.p1 +
    d.a.c2 * d.a.b1 * d.a.p0bar * d.p0 * d.p1bar -
    d.a.c2 * d.a.b1bar * d.a.p0bar * d.p0 * d.a.p1

theorem remainder0_factor (d : Data K) :
    remainder0 d = d.a.g ^ 2 * residual0 d := by
  simp only [remainder0, f0, f2, residual0]
  ring

theorem remainder1_factor (d : Data K) :
    remainder1 d = d.a.g ^ 3 * residual1 d := by
  simp only [remainder1, f1, f2, residual1]
  ring

def cleared (d : Data K) (z Z : K) : K :=
  m0 d * d.a.p0bar * d.p0 * d.p1bar * d.a.p1 +
    (d.a.g + d.a.c0 * Z) * (d.a.g + d.a.c1 * z) * mu d * d.p0 * d.p1bar +
    (d.a.g + d.a.c0 * z) * (d.a.g + d.a.c1 * Z) * mubar d * d.a.p0bar * d.a.p1 -
    (d.a.g + d.a.c0 * Z) * d.a.c2 * z * d.a.b0bar * d.p0 * d.p1bar * d.a.p1 -
    (d.a.g + d.a.c0 * z) * d.a.c2 * Z * d.a.b0 * d.a.p0bar * d.p1bar * d.a.p1 -
    (d.a.g + d.a.c1 * z) * d.a.c2 * Z * d.a.b1 * d.a.p0bar * d.p0 * d.p1bar -
    (d.a.g + d.a.c1 * Z) * d.a.c2 * z * d.a.b1bar * d.a.p0bar * d.p0 * d.a.p1

def correction (d : Data K) (z : K) : K :=
  d.a.c0 * (d.a.g + d.a.c1 * z) * mu d * d.p0 * d.p1bar +
    (d.a.g + d.a.c0 * z) * d.a.c1 * mubar d * d.a.p0bar * d.a.p1 -
    d.a.c0 * d.a.c2 * z * d.a.b0bar * d.p0 * d.p1bar * d.a.p1 -
    (d.a.g + d.a.c0 * z) * d.a.c2 * d.a.b0 * d.a.p0bar * d.p1bar * d.a.p1 -
    (d.a.g + d.a.c1 * z) * d.a.c2 * d.a.b1 * d.a.p0bar * d.p0 * d.p1bar -
    d.a.c1 * d.a.c2 * z * d.a.b1bar * d.a.p0bar * d.p0 * d.a.p1

theorem cleared_coefficient_identity (d : Data K) (z Z : K) :
    d.a.g * cleared d z Z = f0 d + f1 d * z + f2 d * z ^ 2 +
      (d.a.g * (z + Z) - d.a.chi) * correction d z := by
  simp only [cleared, correction, f0, f1, f2]
  ring

theorem quadratic_reduction_identity (d : Data K) (z : K) :
    d.a.g * (f0 d + f1 d * z + f2 d * z ^ 2) =
      (d.a.g * z ^ 2 - d.a.chi * z + d.a.g * d.a.eta) * f2 d +
        remainder0 d + remainder1 d * z := by
  simp only [remainder0, remainder1]
  ring

end StrictReconstruction20261007.PreRhoNorm

#print axioms StrictReconstruction20261007.PreRhoNorm.remainder0_factor
#print axioms StrictReconstruction20261007.PreRhoNorm.remainder1_factor
