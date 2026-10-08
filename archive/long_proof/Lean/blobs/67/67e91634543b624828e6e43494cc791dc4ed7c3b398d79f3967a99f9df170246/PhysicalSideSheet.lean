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

theorem q0_sum_minors (x0 x1 x2 y0 y1 y2 : ℂ)
    (hx0 : IsPhase x0) (hx1 : IsPhase x1) (hx2 : IsPhase x2)
    (hy0 : IsPhase y0) (hy1 : IsPhase y1) (hy2 : IsPhase y2) :
    FourierGramNumerators.q (s x0 x1 x2) (t y0 y1 y2) (r x0 x1 x2 y0 y1 y2) 0 =
      Complex.normSq (x0*y1-x1*y0) + Complex.normSq (x0*y2-x2*y0) +
        Complex.normSq (x1*y2-x2*y1) := by
  apply Complex.ofReal_injective
  have hX0 := phase_mul_conj hx0
  have hX1 := phase_mul_conj hx1
  have hX2 := phase_mul_conj hx2
  have hY0 := phase_mul_conj hy0
  have hY1 := phase_mul_conj hy1
  have hY2 := phase_mul_conj hy2
  simp [FourierGramNumerators.q, s, t, r,
    Complex.normSq_eq_conj_mul_self, Complex.star_def]
  linear_combination
    (-y0*(starRingEnd ℂ) y0-y1*(starRingEnd ℂ) y1-y2*(starRingEnd ℂ) y2)*hX0 +
    (-y0*(starRingEnd ℂ) y0-y1*(starRingEnd ℂ) y1-y2*(starRingEnd ℂ) y2)*hX1 +
    (-y0*(starRingEnd ℂ) y0-y1*(starRingEnd ℂ) y1-y2*(starRingEnd ℂ) y2)*hX2 -
    3*hY0-3*hY1-3*hY2

theorem q0_nonzero_of_determinant (x0 x1 x2 y0 y1 y2 : ℂ)
    (hx0 : IsPhase x0) (hx1 : IsPhase x1) (hx2 : IsPhase x2)
    (hy0 : IsPhase y0) (hy1 : IsPhase y1) (hy2 : IsPhase y2)
    (hD : determinant x0 x1 x2 y0 y1 y2 ≠ 0) :
    FourierGramNumerators.q (s x0 x1 x2) (t y0 y1 y2) (r x0 x1 x2 y0 y1 y2) 0 ≠ 0 := by
  intro hq
  have hm := q0_sum_minors x0 x1 x2 y0 y1 y2 hx0 hx1 hx2 hy0 hy1 hy2
  rw [hq] at hm
  have hn01 := Complex.normSq_nonneg (x0*y1-x1*y0)
  have hn02 := Complex.normSq_nonneg (x0*y2-x2*y0)
  have hn12 := Complex.normSq_nonneg (x1*y2-x2*y1)
  have h01 : x0*y1-x1*y0 = 0 := Complex.normSq_eq_zero.mp (by linarith)
  have h02 : x0*y2-x2*y0 = 0 := Complex.normSq_eq_zero.mp (by linarith)
  have h12 : x1*y2-x2*y1 = 0 := Complex.normSq_eq_zero.mp (by linarith)
  apply hD
  rw [determinant_formula]
  linear_combination h01-h02+h12

theorem physicalSheet_real (x0 x1 x2 y0 y1 y2 : ℂ)
    (hx0 : IsPhase x0) (hx1 : IsPhase x1) (hx2 : IsPhase x2)
    (hy0 : IsPhase y0) (hy1 : IsPhase y1) (hy2 : IsPhase y2)
    (hD : determinant x0 x1 x2 y0 y1 y2 ≠ 0) :
    2 * FourierGramNumerators.g (s x0 x1 x2) (t y0 y1 y2) (r x0 x1 x2 y0 y1 y2) *
      (physicalSheet x0 x1 x2 y0 y1 y2).re =
        FourierGramNumerators.chi (s x0 x1 x2) (t y0 y1 y2) (r x0 x1 x2 y0 y1 y2) := by
  exact real_sheet_equation_of_norm _ _ _ _ _ _ _
    (orientationPhase_phase x0 x1 x2 y0 y1 y2 hx0 hx1 hx2 hy0 hy1 hy2 hD)
    (physical_numerator0_factor x0 x1 x2 y0 y1 y2 hx0 hx1 hx2 hy0 hy1 hy2 hD)
    (FourierGramNumerators.numerator_normSq _ _ _ 0)
    (physicalSheet_normSq x0 x1 x2 y0 y1 y2 hx0 hx1 hx2 hy0 hy1 hy2 hD)
    (q0_nonzero_of_determinant x0 x1 x2 y0 y1 y2 hx0 hx1 hx2 hy0 hy1 hy2 hD)

theorem physicalSheet_lifted (x0 x1 x2 y0 y1 y2 : ℂ)
    (hx0 : IsPhase x0) (hx1 : IsPhase x1) (hx2 : IsPhase x2)
    (hy0 : IsPhase y0) (hy1 : IsPhase y1) (hy2 : IsPhase y2)
    (hD : determinant x0 x1 x2 y0 y1 y2 ≠ 0) :
    ∃ w : ℝ,
      w^2 = FourierRadicalGuards.radicand
        (FourierGramNumerators.g (s x0 x1 x2) (t y0 y1 y2) (r x0 x1 x2 y0 y1 y2))
        (FourierGramNumerators.chi (s x0 x1 x2) (t y0 y1 y2) (r x0 x1 x2 y0 y1 y2))
        (FourierGramNumerators.eta (s x0 x1 x2) (t y0 y1 y2) (r x0 x1 x2 y0 y1 y2)) ∧
      physicalSheet x0 x1 x2 y0 y1 y2 = FourierRadicalGuards.sheet
        (FourierGramNumerators.g (s x0 x1 x2) (t y0 y1 y2) (r x0 x1 x2 y0 y1 y2))
        (FourierGramNumerators.chi (s x0 x1 x2) (t y0 y1 y2) (r x0 x1 x2 y0 y1 y2)) w := by
  have hg : FourierGramNumerators.g (s x0 x1 x2) (t y0 y1 y2)
      (r x0 x1 x2 y0 y1 y2) ≠ 0 := by
    rw [g_determinant x0 x1 x2 y0 y1 y2 hx0 hx1 hx2 hy0 hy1 hy2]
    exact fun hz => hD (Complex.normSq_eq_zero.mp hz)
  exact (FourierRadicalGuards.lifted_sheet_exact _ _ _ _ hg).mp
    ⟨physicalSheet_real x0 x1 x2 y0 y1 y2 hx0 hx1 hx2 hy0 hy1 hy2 hD,
      physicalSheet_normSq x0 x1 x2 y0 y1 y2 hx0 hx1 hx2 hy0 hy1 hy2 hD⟩

#print axioms rowProduct_phase
#print axioms orientationPhase_phase
#print axioms g_orientationPhase
#print axioms physicalSheet_normSq
#print axioms physical_numerator0_factor
#print axioms real_sheet_equation_of_norm
#print axioms q0_sum_minors
#print axioms q0_nonzero_of_determinant
#print axioms physicalSheet_real
#print axioms physicalSheet_lifted

end
end FourierPhysicalSide
