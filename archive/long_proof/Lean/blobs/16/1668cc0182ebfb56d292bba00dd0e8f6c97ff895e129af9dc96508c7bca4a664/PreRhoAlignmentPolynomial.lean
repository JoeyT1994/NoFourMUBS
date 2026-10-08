import Mathlib.Data.Complex.Basic
import Mathlib.Tactic.Ring
import Mathlib.Tactic.LinearCombination

/-!
Finite polynomial certificate for the pre-rho phase-alignment identity.
The six correlations and formal conjugates are independent variables here.
No density, specialization, numerical sampling or polynomial identity is
assumed. The remainder identities are discharged by Lean's ring tactic.
An actual-conjugate/formula binding is a separate explicit consumer.
-/

set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace StrictReconstruction20261007.PreRhoAlignment
noncomputable section

structure Data where
  g : ℂ
  eta : ℂ
  chi : ℂ
  c0 : ℂ
  c1 : ℂ
  c2 : ℂ
  p0bar : ℂ
  p1 : ℂ
  p2 : ℂ
  b0 : ℂ
  b1 : ℂ
  b0bar : ℂ
  b1bar : ℂ

def gramData (s S t T r Q : ℂ) : Data :=
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

def f0 (d : Data) : ℂ :=
  d.b0 * d.g * d.p0bar * d.p1 * d.p2 +
    (d.g ^ 2 + d.c0 * d.chi) * d.g * d.b1 * d.p2 -
    (d.g ^ 2 + d.c0 * d.chi) * d.g ^ 2 * d.b0bar -
    d.g ^ 2 * d.b1bar * d.p0bar * d.p1 +
    d.g ^ 2 * d.c2 * d.chi * d.p0bar

def f1 (d : Data) : ℂ :=
  ((d.g ^ 2 + d.c0 * d.chi) * d.c1 - d.c0 * d.g ^ 2) * d.b1 * d.p2 -
    (d.g ^ 2 + d.c0 * d.chi) * d.c2 * d.p1 * d.p2 -
    ((d.g ^ 2 + d.c0 * d.chi) * d.g * (d.c1 + d.c2) - d.c0 * d.g ^ 3) * d.b0bar -
    d.g * d.c2 * d.b1bar * d.p0bar * d.p1 +
    (d.g * (d.c1 + d.c2) * d.chi - d.g ^ 3) * d.c2 * d.p0bar

def f2 (d : Data) : ℂ :=
  -d.c0 * d.g * d.c1 * d.b1 * d.p2 +
    d.c0 * d.g * d.c2 * d.p1 * d.p2 -
    ((d.g ^ 2 + d.c0 * d.chi) * d.c1 * d.c2 -
      d.c0 * d.g ^ 2 * (d.c1 + d.c2)) * d.b0bar +
    (d.c1 * d.c2 * d.chi - d.g ^ 2 * (d.c1 + d.c2)) * d.c2 * d.p0bar

def f3 (d : Data) : ℂ :=
  d.c0 * d.g * d.c1 * d.c2 * d.b0bar - d.g * d.c1 * d.c2 ^ 2 * d.p0bar

def remainder0 (d : Data) : ℂ :=
  d.g ^ 2 * f0 d - d.g ^ 2 * d.eta * f2 d - d.g * d.eta * d.chi * f3 d
def remainder1 (d : Data) : ℂ :=
  d.g ^ 2 * f1 d - d.g ^ 2 * d.eta * f3 d +
    d.chi * d.g * f2 d + d.chi ^ 2 * f3 d

theorem remainder0_zero (s S t T r Q : ℂ) :
    remainder0 (gramData s S t T r Q) = 0 := by
  simp only [remainder0, f0, f2, f3, gramData]
  ring

theorem remainder1_zero (s S t T r Q : ℂ) :
    remainder1 (gramData s S t T r Q) = 0 := by
  simp only [remainder1, f1, f2, f3, gramData]
  ring

def cleared (d : Data) (z Z : ℂ) : ℂ :=
  d.b0 * d.p0bar * d.p1 * d.p2 +
    (d.g + d.c0 * Z) * (d.g + d.c1 * z) * d.b1 * d.p2 -
    (d.g + d.c0 * Z) * d.c2 * z * d.p1 * d.p2 -
    (d.g + d.c0 * Z) * (d.g + d.c1 * z) * (d.g + d.c2 * z) * d.b0bar -
    (d.g + d.c2 * z) * d.b1bar * d.p0bar * d.p1 +
    (d.g + d.c1 * z) * (d.g + d.c2 * z) * d.c2 * Z * d.p0bar

def correction (d : Data) (z : ℂ) : ℂ :=
  d.c0 * (d.g + d.c1 * z) * d.b1 * d.p2 -
    d.c0 * d.c2 * z * d.p1 * d.p2 -
    d.c0 * (d.g + d.c1 * z) * (d.g + d.c2 * z) * d.b0bar +
    (d.g + d.c1 * z) * (d.g + d.c2 * z) * d.c2 * d.p0bar

theorem cleared_coefficient_identity (d : Data) (z Z : ℂ) :
    d.g * cleared d z Z =
      f0 d + f1 d * z + f2 d * z ^ 2 + f3 d * z ^ 3 +
        (d.g * (z + Z) - d.chi) * correction d z := by
  simp only [cleared, correction, f0, f1, f2, f3]
  ring

theorem quadratic_reduction_identity (d : Data) (z : ℂ) :
    d.g ^ 2 * (f0 d + f1 d * z + f2 d * z ^ 2 + f3 d * z ^ 3) =
      (d.g * z ^ 2 - d.chi * z + d.g * d.eta) *
        (d.g * f3 d * z + d.g * f2 d + d.chi * f3 d) +
      remainder0 d + remainder1 d * z := by
  simp only [remainder0, remainder1]
  ring

/-- Complete finite polynomial certificate, before binding conjugates and lambdas. -/
theorem cleared_eq_zero (s S t T r Q z Z : ℂ)
    (hg : (gramData s S t T r Q).g ≠ 0)
    (hsum : (gramData s S t T r Q).g * (z + Z) = (gramData s S t T r Q).chi)
    (hprod : z * Z = (gramData s S t T r Q).eta) :
    cleared (gramData s S t T r Q) z Z = 0 := by
  let d := gramData s S t T r Q
  change d.g ≠ 0 at hg
  change d.g * (z + Z) = d.chi at hsum
  change z * Z = d.eta at hprod
  change cleared d z Z = 0
  have hquadratic : d.g * z ^ 2 - d.chi * z + d.g * d.eta = 0 := by
    linear_combination z * hsum - d.g * hprod
  have hrem0 : remainder0 d = 0 := remainder0_zero s S t T r Q
  have hrem1 : remainder1 d = 0 := remainder1_zero s S t T r Q
  have hz : d.g ^ 2 * (d.g * cleared d z Z) = 0 := by
    rw [cleared_coefficient_identity, hsum]
    simp only [sub_self, zero_mul, add_zero]
    rw [quadratic_reduction_identity, hquadratic, hrem0, hrem1]
    ring
  have hz' : d.g * cleared d z Z = 0 :=
    (mul_eq_zero.mp hz).resolve_left (pow_ne_zero 2 hg)
  exact (mul_eq_zero.mp hz').resolve_left hg

end
end StrictReconstruction20261007.PreRhoAlignment

#print axioms StrictReconstruction20261007.PreRhoAlignment.remainder0_zero
#print axioms StrictReconstruction20261007.PreRhoAlignment.remainder1_zero
#print axioms StrictReconstruction20261007.PreRhoAlignment.cleared_eq_zero
