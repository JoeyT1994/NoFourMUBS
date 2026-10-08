import SeedSixGuards

/-! Polynomial side numerators for a Hermitian matrix with diagonal three.
No side block is assumed or constructed. -/

namespace FourierGramNumerators

open Matrix
noncomputable section

def gram (s t r : ℂ) : Matrix (Fin 3) (Fin 3) ℂ :=
  ![![3, star s, star t], ![s, 3, star r], ![t, r, 3]]

def q (s t r : ℂ) : Fin 3 → ℝ :=
  ![9 - Complex.normSq r, 9 - Complex.normSq t, 9 - Complex.normSq s]

def g (s t r : ℂ) : ℝ :=
  27 - 3 * (Complex.normSq s + Complex.normSq t + Complex.normSq r) +
    2 * (r * s * star t).re

def sigma (s t r : ℂ) : ℝ := q s t r 0 + q s t r 1 + q s t r 2

def eta (s t r : ℂ) : ℝ := g s t r + 36 - 2 * sigma s t r

def chi (s t r : ℂ) : ℝ :=
  (q s t r 0 - 8) * (q s t r 1 - 8) * (q s t r 2 - 8) +
    2 * (sigma s t r - 16)^2 + (12 - sigma s t r) * g s t r

def numerator (s t r : ℂ) : Fin 3 → ℂ :=
  ![r*s^2 + star r*t^2 + (3 - (Complex.normSq r : ℂ))*s*t,
    t*(star s)^2 + r^2*star t + (3 - (Complex.normSq t : ℂ))*r*star s,
    s*(star t)^2 + (star r)^2*star s +
      (3 - (Complex.normSq s : ℂ))*star r*star t]

theorem gram_det (s t r : ℂ) : (gram s t r).det = (g s t r : ℂ) := by
  apply Complex.ext <;>
    simp [gram, g, Matrix.det_fin_three, Complex.normSq_apply,
      Complex.mul_re, Complex.mul_im, Complex.star_def] <;> ring

theorem gram_adjugate_diag (s t r : ℂ) (i : Fin 3) :
    (gram s t r).adjugate i i = (q s t r i : ℂ) := by
  fin_cases i <;> apply Complex.ext <;>
    simp [gram, q, Matrix.adjugate_fin_three, Complex.normSq_apply,
      Complex.mul_re, Complex.mul_im, Complex.star_def] <;> ring

set_option maxHeartbeats 0 in
theorem numerator_normSq (s t r : ℂ) (i : Fin 3) :
    Complex.normSq (numerator s t r i) =
      FourierRadicalGuards.guard (g s t r) (chi s t r) (eta s t r) (q s t r i) := by
  fin_cases i <;>
    simp [numerator, FourierRadicalGuards.guard, g, chi, eta, sigma, q,
      Complex.normSq_apply, pow_two, Complex.mul_re, Complex.mul_im,
      Complex.star_def] <;> ring

#print axioms gram_det
#print axioms gram_adjugate_diag
#print axioms numerator_normSq

end
end FourierGramNumerators
