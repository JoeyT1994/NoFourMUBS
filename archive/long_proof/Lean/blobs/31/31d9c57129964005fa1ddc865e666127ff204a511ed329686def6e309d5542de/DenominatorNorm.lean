import Mathlib.Data.Complex.Basic
import Mathlib.Tactic.Ring

/-!
Scoped scalar identity for the denominators in the Fourier-radical note.
The real-part and norm identities are explicit hypotheses. This module does
not prove those hypotheses for the physical seed construction, classification
coverage, the radical constructor, or any MUB exclusion.
-/
namespace FourierRadicalCertification

theorem denominator_normSq
    (g q chi eta : ℝ) (z : ℂ)
    (hreal : 2 * g * z.re = chi)
    (hnorm : Complex.normSq z = eta) :
    Complex.normSq ((g : ℂ) + z * (q : ℂ)) =
      g ^ 2 + chi * q + eta * q ^ 2 := by
  calc
    Complex.normSq ((g : ℂ) + z * (q : ℂ)) =
        g ^ 2 + (2 * g * z.re) * q + Complex.normSq z * q ^ 2 := by
      simp only [Complex.normSq_apply, Complex.add_re, Complex.add_im,
        Complex.mul_re, Complex.mul_im, Complex.ofReal_re, Complex.ofReal_im,
        mul_zero, zero_mul, sub_zero, add_zero, zero_add]
      ring
    _ = g ^ 2 + chi * q + eta * q ^ 2 := by rw [hreal, hnorm]

theorem denominator_normSq_conjugate
    (g q : ℝ) (z : ℂ) :
    Complex.normSq ((g : ℂ) + star z * (q : ℂ)) =
      Complex.normSq ((g : ℂ) + z * (q : ℂ)) := by
  simp only [Complex.normSq_apply, Complex.add_re, Complex.add_im,
    Complex.mul_re, Complex.mul_im, Complex.ofReal_re, Complex.ofReal_im,
    Complex.star_def, Complex.conj_re, Complex.conj_im,
    mul_zero, zero_mul, sub_zero, add_zero, zero_add]
  ring

theorem denominator_ne_zero_of_positive
    (g q chi eta : ℝ) (z : ℂ)
    (hreal : 2 * g * z.re = chi)
    (hnorm : Complex.normSq z = eta)
    (hpositive : 0 < g ^ 2 + chi * q + eta * q ^ 2) :
    (g : ℂ) + z * (q : ℂ) ≠ 0 := by
  intro hzero
  have h := denominator_normSq g q chi eta z hreal hnorm
  rw [hzero] at h
  have hsum : g ^ 2 + chi * q + eta * q ^ 2 = 0 := by
    simpa using h.symm
  rw [hsum] at hpositive
  exact (lt_irrefl (0 : ℝ)) hpositive

#print axioms denominator_normSq
#print axioms denominator_normSq_conjugate
#print axioms denominator_ne_zero_of_positive

end FourierRadicalCertification
