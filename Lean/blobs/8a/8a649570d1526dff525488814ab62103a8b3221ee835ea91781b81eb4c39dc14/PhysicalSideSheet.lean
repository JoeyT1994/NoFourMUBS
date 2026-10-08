import PhysicalSideForward

/-! The sheet attached to an existing invertible phase side. -/

namespace FourierPhysicalSide

open FourierSeedBinding
noncomputable section

def orientationPhase (x0 x1 x2 y0 y1 y2 : ℂ) : ℂ :=
  -(rowProduct x0 x1 x2) * rowProduct y0 y1 y2 *
    star (determinant x0 x1 x2 y0 y1 y2) / determinant x0 x1 x2 y0 y1 y2

def physicalSheet (x0 x1 x2 y0 y1 y2 : ℂ) : ℂ :=
  permanent x0 x1 x2 y0 y1 y2 / orientationPhase x0 x1 x2 y0 y1 y2

theorem rowProduct_phase (x0 x1 x2 : ℂ)
    (hx0 : IsPhase x0) (hx1 : IsPhase x1) (hx2 : IsPhase x2) :
    IsPhase (rowProduct x0 x1 x2) := by
  simp only [IsPhase, rowProduct, Complex.normSq_mul]
  rw [hx0, hx1, hx2]
  norm_num

theorem orientationPhase_phase (x0 x1 x2 y0 y1 y2 : ℂ)
    (hx0 : IsPhase x0) (hx1 : IsPhase x1) (hx2 : IsPhase x2)
    (hy0 : IsPhase y0) (hy1 : IsPhase y1) (hy2 : IsPhase y2)
    (hD : determinant x0 x1 x2 y0 y1 y2 ≠ 0) :
    IsPhase (orientationPhase x0 x1 x2 y0 y1 y2) := by
  have hU := rowProduct_phase x0 x1 x2 hx0 hx1 hx2
  have hV := rowProduct_phase y0 y1 y2 hy0 hy1 hy2
  simp only [IsPhase, orientationPhase, Complex.normSq_div, Complex.normSq_mul,
    Complex.normSq_neg, Complex.star_def, Complex.normSq_conj]
  rw [hU, hV, one_mul, one_mul]
  exact div_self (fun hz => hD (Complex.normSq_eq_zero.mp hz))

theorem g_orientationPhase (x0 x1 x2 y0 y1 y2 : ℂ)
    (hx0 : IsPhase x0) (hx1 : IsPhase x1) (hx2 : IsPhase x2)
    (hy0 : IsPhase y0) (hy1 : IsPhase y1) (hy2 : IsPhase y2)
    (hD : determinant x0 x1 x2 y0 y1 y2 ≠ 0) :
    (FourierGramNumerators.g (s x0 x1 x2) (t y0 y1 y2) (r x0 x1 x2 y0 y1 y2) : ℂ) *
      orientationPhase x0 x1 x2 y0 y1 y2 =
        -rowProduct x0 x1 x2 * rowProduct y0 y1 y2 *
          (star (determinant x0 x1 x2 y0 y1 y2))^2 := by
  rw [g_determinant x0 x1 x2 y0 y1 y2 hx0 hx1 hx2 hy0 hy1 hy2,
    orientationPhase, Complex.normSq_eq_conj_mul_self, ← mul_div_assoc]
  apply (div_eq_iff hD).2
  simp only [Complex.star_def]
  ring

theorem physicalSheet_normSq (x0 x1 x2 y0 y1 y2 : ℂ)
    (hx0 : IsPhase x0) (hx1 : IsPhase x1) (hx2 : IsPhase x2)
    (hy0 : IsPhase y0) (hy1 : IsPhase y1) (hy2 : IsPhase y2)
    (hD : determinant x0 x1 x2 y0 y1 y2 ≠ 0) :
    Complex.normSq (physicalSheet x0 x1 x2 y0 y1 y2) =
      FourierGramNumerators.eta (s x0 x1 x2) (t y0 y1 y2) (r x0 x1 x2 y0 y1 y2) := by
  rw [physicalSheet, Complex.normSq_div,
    orientationPhase_phase x0 x1 x2 y0 y1 y2 hx0 hx1 hx2 hy0 hy1 hy2 hD,
    div_one, eta_permanent x0 x1 x2 y0 y1 y2 hx0 hx1 hx2 hy0 hy1 hy2]

theorem physical_numerator0_factor (x0 x1 x2 y0 y1 y2 : ℂ)
    (hx0 : IsPhase x0) (hx1 : IsPhase x1) (hx2 : IsPhase x2)
    (hy0 : IsPhase y0) (hy1 : IsPhase y1) (hy2 : IsPhase y2)
    (hD : determinant x0 x1 x2 y0 y1 y2 ≠ 0) :
    FourierGramNumerators.numerator
      (s x0 x1 x2) (t y0 y1 y2) (r x0 x1 x2 y0 y1 y2) 0 =
      ((FourierGramNumerators.g (s x0 x1 x2) (t y0 y1 y2) (r x0 x1 x2 y0 y1 y2) : ℂ) +
        physicalSheet x0 x1 x2 y0 y1 y2 *
          (FourierGramNumerators.q (s x0 x1 x2) (t y0 y1 y2) (r x0 x1 x2 y0 y1 y2) 0 : ℂ)) *
        orientationPhase x0 x1 x2 y0 y1 y2 := by
  have hL := phase_ne_zero
    (orientationPhase_phase x0 x1 x2 y0 y1 y2 hx0 hx1 hx2 hy0 hy1 hy2 hD)
  have hz : physicalSheet x0 x1 x2 y0 y1 y2 * orientationPhase x0 x1 x2 y0 y1 y2 =
      permanent x0 x1 x2 y0 y1 y2 := by
    exact div_mul_cancel₀ _ hL
  rw [numerator0_binding x0 x1 x2 y0 y1 y2 hx0 hx1 hx2 hy0 hy1 hy2,
    add_mul]
  rw [g_orientationPhase x0 x1 x2 y0 y1 y2 hx0 hx1 hx2 hy0 hy1 hy2 hD]
  rw [mul_right_comm (physicalSheet x0 x1 x2 y0 y1 y2), hz]
  ring

theorem real_sheet_equation_of_norm (g chi eta q : ℝ) (z L P : ℂ)
    (hL : IsPhase L) (hP : P = ((g : ℂ) + z * (q : ℂ)) * L)
    (hn : Complex.normSq P = FourierRadicalGuards.guard g chi eta q)
    (hz : Complex.normSq z = eta) (hq : q ≠ 0) : 2*g*z.re = chi := by
  have hex : Complex.normSq ((g : ℂ) + z * (q : ℂ)) =
      g^2 + (2*g*z.re)*q + Complex.normSq z*q^2 := by
    simp only [Complex.normSq_apply, Complex.add_re, Complex.add_im,
      Complex.mul_re, Complex.mul_im, Complex.ofReal_re, Complex.ofReal_im,
      mul_zero, zero_mul, sub_zero, add_zero, zero_add]
    ring
  rw [hP, Complex.normSq_mul, hL, mul_one, hex, hz,
    FourierRadicalGuards.guard] at hn
  have he : q * (2*g*z.re-chi) = 0 := by linear_combination hn
  exact sub_eq_zero.mp ((mul_eq_zero.mp he).resolve_left hq)

#print axioms rowProduct_phase
#print axioms orientationPhase_phase
#print axioms g_orientationPhase
#print axioms physicalSheet_normSq
#print axioms physical_numerator0_factor
#print axioms real_sheet_equation_of_norm

end
end FourierPhysicalSide
