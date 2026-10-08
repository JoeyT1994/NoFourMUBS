import PhysicalSideSheet

/-! Necessary rational data attached to an existing phase side; no sufficiency. -/

namespace FourierPhysicalSide

open FourierSeedBinding
noncomputable section

def physicalLambda (x0 x1 x2 y0 y1 y2 : ℂ) : Fin 3 → ℂ :=
  ![orientationPhase x0 x1 x2 y0 y1 y2,
    orientationPhase x0 x1 x2 y0 y1 y2 / rowProduct x0 x1 x2,
    orientationPhase x0 x1 x2 y0 y1 y2 / rowProduct y0 y1 y2]

def sideDenominator (x0 x1 x2 y0 y1 y2 : ℂ) (i : Fin 3) : ℂ :=
  (FourierGramNumerators.g (s x0 x1 x2) (t y0 y1 y2) (r x0 x1 x2 y0 y1 y2) : ℂ) +
    physicalSheet x0 x1 x2 y0 y1 y2 *
      (FourierGramNumerators.q (s x0 x1 x2) (t y0 y1 y2) (r x0 x1 x2 y0 y1 y2) i : ℂ)

theorem physicalLambda_phase (x0 x1 x2 y0 y1 y2 : ℂ) (i : Fin 3)
    (hx0 : IsPhase x0) (hx1 : IsPhase x1) (hx2 : IsPhase x2)
    (hy0 : IsPhase y0) (hy1 : IsPhase y1) (hy2 : IsPhase y2)
    (hD : determinant x0 x1 x2 y0 y1 y2 ≠ 0) :
    IsPhase (physicalLambda x0 x1 x2 y0 y1 y2 i) := by
  have hL := orientationPhase_phase x0 x1 x2 y0 y1 y2 hx0 hx1 hx2 hy0 hy1 hy2 hD
  fin_cases i
  · exact hL
  · exact phase_div hL (rowProduct_phase x0 x1 x2 hx0 hx1 hx2)
  · exact phase_div hL (rowProduct_phase y0 y1 y2 hy0 hy1 hy2)

theorem factor_of_scaled_numerator (u P g W C z L q : ℂ)
    (hu : u ≠ 0) (h : u*P = W*q-C) (hg : g*L = -C) (hz : z*L = W) :
    P = (g+z*q)*(L/u) := by
  rw [← mul_div_assoc]
  apply (eq_div_iff hu).2
  calc
    P*u = u*P := mul_comm _ _
    _ = W*q-C := h
    _ = (g+z*q)*L := by rw [add_mul, hg, mul_right_comm z, hz]; ring

theorem physical_numerators_factor (x0 x1 x2 y0 y1 y2 : ℂ) (i : Fin 3)
    (hx0 : IsPhase x0) (hx1 : IsPhase x1) (hx2 : IsPhase x2)
    (hy0 : IsPhase y0) (hy1 : IsPhase y1) (hy2 : IsPhase y2)
    (hD : determinant x0 x1 x2 y0 y1 y2 ≠ 0) :
    FourierGramNumerators.numerator
      (s x0 x1 x2) (t y0 y1 y2) (r x0 x1 x2 y0 y1 y2) i =
        sideDenominator x0 x1 x2 y0 y1 y2 i * physicalLambda x0 x1 x2 y0 y1 y2 i := by
  have hL := phase_ne_zero
    (orientationPhase_phase x0 x1 x2 y0 y1 y2 hx0 hx1 hx2 hy0 hy1 hy2 hD)
  have hz : physicalSheet x0 x1 x2 y0 y1 y2 * orientationPhase x0 x1 x2 y0 y1 y2 =
      permanent x0 x1 x2 y0 y1 y2 := div_mul_cancel₀ _ hL
  have hG := g_orientationPhase x0 x1 x2 y0 y1 y2 hx0 hx1 hx2 hy0 hy1 hy2 hD
  simp only [neg_mul] at hG
  fin_cases i
  · exact physical_numerator0_factor x0 x1 x2 y0 y1 y2 hx0 hx1 hx2 hy0 hy1 hy2 hD
  · exact factor_of_scaled_numerator (rowProduct x0 x1 x2) _ _ _ _ _ _ _
      (phase_ne_zero (rowProduct_phase x0 x1 x2 hx0 hx1 hx2))
      (numerator1_binding x0 x1 x2 y0 y1 y2 hx0 hx1 hx2 hy0 hy1 hy2) hG hz
  · exact factor_of_scaled_numerator (rowProduct y0 y1 y2) _ _ _ _ _ _ _
      (phase_ne_zero (rowProduct_phase y0 y1 y2 hy0 hy1 hy2))
      (numerator2_binding x0 x1 x2 y0 y1 y2 hx0 hx1 hx2 hy0 hy1 hy2) hG hz

/-- The rational expressions recover the actual side phases on each nonpole
coordinate; the factor identity above remains valid even at a pole. -/
theorem rational_lambda_matches_physical (x0 x1 x2 y0 y1 y2 : ℂ) (i : Fin 3)
    (hx0 : IsPhase x0) (hx1 : IsPhase x1) (hx2 : IsPhase x2)
    (hy0 : IsPhase y0) (hy1 : IsPhase y1) (hy2 : IsPhase y2)
    (hD : determinant x0 x1 x2 y0 y1 y2 ≠ 0)
    (hden : sideDenominator x0 x1 x2 y0 y1 y2 i ≠ 0) :
    FourierGramNumerators.numerator
      (s x0 x1 x2) (t y0 y1 y2) (r x0 x1 x2 y0 y1 y2) i /
        sideDenominator x0 x1 x2 y0 y1 y2 i = physicalLambda x0 x1 x2 y0 y1 y2 i := by
  apply (div_eq_iff hden).2
  rw [physical_numerators_factor x0 x1 x2 y0 y1 y2 i hx0 hx1 hx2 hy0 hy1 hy2 hD]
  ring

theorem physicalLambda_row_products (x0 x1 x2 y0 y1 y2 : ℂ)
    (hx0 : IsPhase x0) (hx1 : IsPhase x1) (hx2 : IsPhase x2)
    (hy0 : IsPhase y0) (hy1 : IsPhase y1) (hy2 : IsPhase y2)
    (hD : determinant x0 x1 x2 y0 y1 y2 ≠ 0) :
    physicalLambda x0 x1 x2 y0 y1 y2 0 / physicalLambda x0 x1 x2 y0 y1 y2 1 =
      rowProduct x0 x1 x2 ∧
    physicalLambda x0 x1 x2 y0 y1 y2 0 / physicalLambda x0 x1 x2 y0 y1 y2 2 =
      rowProduct y0 y1 y2 := by
  have hL := phase_ne_zero
    (orientationPhase_phase x0 x1 x2 y0 y1 y2 hx0 hx1 hx2 hy0 hy1 hy2 hD)
  exact ⟨div_div_cancel₀ hL, div_div_cancel₀ hL⟩

theorem physicalSheet_lambda0_permanent (x0 x1 x2 y0 y1 y2 : ℂ)
    (hx0 : IsPhase x0) (hx1 : IsPhase x1) (hx2 : IsPhase x2)
    (hy0 : IsPhase y0) (hy1 : IsPhase y1) (hy2 : IsPhase y2)
    (hD : determinant x0 x1 x2 y0 y1 y2 ≠ 0) :
    physicalSheet x0 x1 x2 y0 y1 y2 * physicalLambda x0 x1 x2 y0 y1 y2 0 =
      permanent x0 x1 x2 y0 y1 y2 := by
  exact div_mul_cancel₀ _ (phase_ne_zero
    (orientationPhase_phase x0 x1 x2 y0 y1 y2 hx0 hx1 hx2 hy0 hy1 hy2 hD))

theorem physicalSheet_two_sqrt (x0 x1 x2 y0 y1 y2 : ℂ)
    (hx0 : IsPhase x0) (hx1 : IsPhase x1) (hx2 : IsPhase x2)
    (hy0 : IsPhase y0) (hy1 : IsPhase y1) (hy2 : IsPhase y2)
    (hD : determinant x0 x1 x2 y0 y1 y2 ≠ 0) :
    let g := FourierGramNumerators.g (s x0 x1 x2) (t y0 y1 y2) (r x0 x1 x2 y0 y1 y2)
    let chi := FourierGramNumerators.chi (s x0 x1 x2) (t y0 y1 y2) (r x0 x1 x2 y0 y1 y2)
    let eta := FourierGramNumerators.eta (s x0 x1 x2) (t y0 y1 y2) (r x0 x1 x2 y0 y1 y2)
    0 ≤ FourierRadicalGuards.radicand g chi eta ∧
      (physicalSheet x0 x1 x2 y0 y1 y2 =
        FourierRadicalGuards.sheet g chi (Real.sqrt (FourierRadicalGuards.radicand g chi eta)) ∨
       physicalSheet x0 x1 x2 y0 y1 y2 =
        FourierRadicalGuards.sheet g chi (-Real.sqrt (FourierRadicalGuards.radicand g chi eta))) := by
  dsimp only
  have hg : FourierGramNumerators.g (s x0 x1 x2) (t y0 y1 y2)
      (r x0 x1 x2 y0 y1 y2) ≠ 0 := by
    rw [g_determinant x0 x1 x2 y0 y1 y2 hx0 hx1 hx2 hy0 hy1 hy2]
    exact fun hz => hD (Complex.normSq_eq_zero.mp hz)
  obtain ⟨w, hw, _⟩ := physicalSheet_lifted x0 x1 x2 y0 y1 y2 hx0 hx1 hx2 hy0 hy1 hy2 hD
  have hR : 0 ≤ FourierRadicalGuards.radicand
      (FourierGramNumerators.g (s x0 x1 x2) (t y0 y1 y2) (r x0 x1 x2 y0 y1 y2))
      (FourierGramNumerators.chi (s x0 x1 x2) (t y0 y1 y2) (r x0 x1 x2 y0 y1 y2))
      (FourierGramNumerators.eta (s x0 x1 x2) (t y0 y1 y2) (r x0 x1 x2 y0 y1 y2)) := by
    rw [← hw]
    exact sq_nonneg w
  exact ⟨hR, (FourierRadicalGuards.lifted_sheet_sqrt _ _ _ _ hg hR).mp
    ⟨physicalSheet_real x0 x1 x2 y0 y1 y2 hx0 hx1 hx2 hy0 hy1 hy2 hD,
      physicalSheet_normSq x0 x1 x2 y0 y1 y2 hx0 hx1 hx2 hy0 hy1 hy2 hD⟩⟩

#print axioms physicalLambda_phase
#print axioms factor_of_scaled_numerator
#print axioms physical_numerators_factor
#print axioms rational_lambda_matches_physical
#print axioms physicalLambda_row_products
#print axioms physicalSheet_lambda0_permanent
#print axioms physicalSheet_two_sqrt

end
end FourierPhysicalSide
