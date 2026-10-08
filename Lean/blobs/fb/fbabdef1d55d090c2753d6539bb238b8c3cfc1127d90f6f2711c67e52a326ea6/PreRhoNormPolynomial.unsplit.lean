import PreRhoAlignmentPolynomial

/-! Finite polynomial certificate for the squared-discriminant identity before rho. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace StrictReconstruction20261007.PreRhoNorm
noncomputable section

structure Data where
  a : PreRhoAlignment.Data
  p0 : ℂ
  p1bar : ℂ
  s : ℂ
  S : ℂ

def gramData (s S t T r Q : ℂ) : Data :=
  { a := PreRhoAlignment.gramData s S t T r Q
    p0 := r * s ^ 2 + Q * t ^ 2 + (3 - r * Q) * s * t
    p1bar := T * s ^ 2 + Q ^ 2 * t + (3 - t * T) * Q * s
    s := s
    S := S }

def m0 (d : Data) : ℂ :=
  d.a.b0 * d.a.b0bar + d.a.b1 * d.a.b1bar + d.a.c2 ^ 2 * d.a.eta -
    d.a.g * (27 - 18 * d.s * d.S - (d.s * d.S) ^ 2)
def mu (d : Data) : ℂ := d.a.b1 * d.a.b0bar - 4 * d.a.g * d.S ^ 3
def mubar (d : Data) : ℂ := d.a.b0 * d.a.b1bar - 4 * d.a.g * d.s ^ 3

def f0 (d : Data) : ℂ :=
  m0 d * d.a.g * d.a.p0bar * d.p0 * d.p1bar * d.a.p1 +
    (d.a.g ^ 2 + d.a.c0 * d.a.chi) * d.a.g * mu d * d.p0 * d.p1bar +
    d.a.g * (d.a.g ^ 2 + d.a.c1 * d.a.chi) * mubar d * d.a.p0bar * d.a.p1 -
    d.a.g * d.a.c2 * d.a.chi * d.a.b0 * d.a.p0bar * d.p1bar * d.a.p1 -
    d.a.g * d.a.c2 * d.a.chi * d.a.b1 * d.a.p0bar * d.p0 * d.p1bar

def f1 (d : Data) : ℂ :=
  ((d.a.g ^ 2 + d.a.c0 * d.a.chi) * d.a.c1 - d.a.c0 * d.a.g ^ 2) *
      mu d * d.p0 * d.p1bar +
    (d.a.c0 * (d.a.g ^ 2 + d.a.c1 * d.a.chi) - d.a.c1 * d.a.g ^ 2) *
      mubar d * d.a.p0bar * d.a.p1 -
    (d.a.g ^ 2 + d.a.c0 * d.a.chi) * d.a.c2 * d.a.b0bar * d.p0 * d.p1bar * d.a.p1 -
    (d.a.c0 * d.a.chi - d.a.g ^ 2) * d.a.c2 * d.a.b0 * d.a.p0bar * d.p1bar * d.a.p1 -
    (d.a.c1 * d.a.chi - d.a.g ^ 2) * d.a.c2 * d.a.b1 * d.a.p0bar * d.p0 * d.p1bar -
    (d.a.g ^ 2 + d.a.c1 * d.a.chi) * d.a.c2 * d.a.b1bar * d.a.p0bar * d.p0 * d.a.p1

def f2 (d : Data) : ℂ :=
  -d.a.c0 * d.a.g * d.a.c1 * mu d * d.p0 * d.p1bar -
    d.a.c0 * d.a.c1 * d.a.g * mubar d * d.a.p0bar * d.a.p1 +
    d.a.c0 * d.a.g * d.a.c2 * d.a.b0bar * d.p0 * d.p1bar * d.a.p1 +
    d.a.c0 * d.a.g * d.a.c2 * d.a.b0 * d.a.p0bar * d.p1bar * d.a.p1 +
    d.a.c1 * d.a.g * d.a.c2 * d.a.b1 * d.a.p0bar * d.p0 * d.p1bar +
    d.a.c1 * d.a.g * d.a.c2 * d.a.b1bar * d.a.p0bar * d.p0 * d.a.p1

def remainder0 (d : Data) : ℂ := d.a.g * f0 d - d.a.g * d.a.eta * f2 d
def remainder1 (d : Data) : ℂ := d.a.g * f1 d + d.a.chi * f2 d

theorem remainder0_zero (s S t T r Q : ℂ) :
    remainder0 (gramData s S t T r Q) = 0 := by
  simp only [remainder0, f0, f2, m0, mu, mubar, gramData, PreRhoAlignment.gramData]
  ring

theorem remainder1_zero (s S t T r Q : ℂ) :
    remainder1 (gramData s S t T r Q) = 0 := by
  simp only [remainder1, f1, f2, m0, mu, mubar, gramData, PreRhoAlignment.gramData]
  ring

def cleared (d : Data) (z Z : ℂ) : ℂ :=
  m0 d * d.a.p0bar * d.p0 * d.p1bar * d.a.p1 +
    (d.a.g + d.a.c0 * Z) * (d.a.g + d.a.c1 * z) * mu d * d.p0 * d.p1bar +
    (d.a.g + d.a.c0 * z) * (d.a.g + d.a.c1 * Z) * mubar d * d.a.p0bar * d.a.p1 -
    (d.a.g + d.a.c0 * Z) * d.a.c2 * z * d.a.b0bar * d.p0 * d.p1bar * d.a.p1 -
    (d.a.g + d.a.c0 * z) * d.a.c2 * Z * d.a.b0 * d.a.p0bar * d.p1bar * d.a.p1 -
    (d.a.g + d.a.c1 * z) * d.a.c2 * Z * d.a.b1 * d.a.p0bar * d.p0 * d.p1bar -
    (d.a.g + d.a.c1 * Z) * d.a.c2 * z * d.a.b1bar * d.a.p0bar * d.p0 * d.a.p1

def correction (d : Data) (z : ℂ) : ℂ :=
  d.a.c0 * (d.a.g + d.a.c1 * z) * mu d * d.p0 * d.p1bar +
    (d.a.g + d.a.c0 * z) * d.a.c1 * mubar d * d.a.p0bar * d.a.p1 -
    d.a.c0 * d.a.c2 * z * d.a.b0bar * d.p0 * d.p1bar * d.a.p1 -
    (d.a.g + d.a.c0 * z) * d.a.c2 * d.a.b0 * d.a.p0bar * d.p1bar * d.a.p1 -
    (d.a.g + d.a.c1 * z) * d.a.c2 * d.a.b1 * d.a.p0bar * d.p0 * d.p1bar -
    d.a.c1 * d.a.c2 * z * d.a.b1bar * d.a.p0bar * d.p0 * d.a.p1

theorem cleared_coefficient_identity (d : Data) (z Z : ℂ) :
    d.a.g * cleared d z Z = f0 d + f1 d * z + f2 d * z ^ 2 +
      (d.a.g * (z + Z) - d.a.chi) * correction d z := by
  simp only [cleared, correction, f0, f1, f2]
  ring

theorem quadratic_reduction_identity (d : Data) (z : ℂ) :
    d.a.g * (f0 d + f1 d * z + f2 d * z ^ 2) =
      (d.a.g * z ^ 2 - d.a.chi * z + d.a.g * d.a.eta) * f2 d +
        remainder0 d + remainder1 d * z := by
  simp only [remainder0, remainder1]
  ring

theorem cleared_eq_zero (s S t T r Q z Z : ℂ)
    (hg : (gramData s S t T r Q).a.g ≠ 0)
    (hsum : (gramData s S t T r Q).a.g * (z + Z) = (gramData s S t T r Q).a.chi)
    (hprod : z * Z = (gramData s S t T r Q).a.eta) :
    cleared (gramData s S t T r Q) z Z = 0 := by
  let d := gramData s S t T r Q
  change d.a.g ≠ 0 at hg
  change d.a.g * (z + Z) = d.a.chi at hsum
  change z * Z = d.a.eta at hprod
  change cleared d z Z = 0
  have hquadratic : d.a.g * z ^ 2 - d.a.chi * z + d.a.g * d.a.eta = 0 := by
    linear_combination z * hsum - d.a.g * hprod
  have hrem0 : remainder0 d = 0 := remainder0_zero s S t T r Q
  have hrem1 : remainder1 d = 0 := remainder1_zero s S t T r Q
  have hz : d.a.g * (d.a.g * cleared d z Z) = 0 := by
    rw [cleared_coefficient_identity, hsum]
    simp only [sub_self, zero_mul, add_zero]
    rw [quadratic_reduction_identity, hquadratic, hrem0, hrem1]
    ring
  exact (mul_eq_zero.mp ((mul_eq_zero.mp hz).resolve_left hg)).resolve_left hg

end
end StrictReconstruction20261007.PreRhoNorm

#print axioms StrictReconstruction20261007.PreRhoNorm.remainder0_zero
#print axioms StrictReconstruction20261007.PreRhoNorm.remainder1_zero
#print axioms StrictReconstruction20261007.PreRhoNorm.cleared_eq_zero
