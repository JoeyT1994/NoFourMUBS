import SeedInvariants

/-! The rational lambda values of the actual seed have unit norm on the stated
guarded sheets. This does not construct a side matrix or a lower block. -/

namespace FourierSeedBinding

open Matrix
noncomputable section

def numeratorOfGram (G : Matrix (Fin 3) (Fin 3) ℂ) (i : Fin 3) : ℂ :=
  FourierGramNumerators.numerator (G 1 0) (G 2 0) (G 2 1) i

def numeratorH (a b c d : ℂ) (i : Fin 3) : ℂ :=
  FourierGramNumerators.numerator (rowS a b) (rowT c d) (rowR a b c d) i

def numeratorV (a b c d : ℂ) (i : Fin 3) : ℂ := numeratorH a c b d i

theorem numeratorH_actual_gram (a b c d : ℂ) (i : Fin 3)
    (ha : IsPhase a) (hb : IsPhase b) (hc : IsPhase c) (hd : IsPhase d) :
    numeratorH a b c d i = numeratorOfGram (gramH a b c d) i := by
  rw [gramH_entries a b c d ha hb hc hd]
  rfl

theorem numeratorV_actual_gram (a b c d : ℂ) (i : Fin 3)
    (ha : IsPhase a) (hb : IsPhase b) (hc : IsPhase c) (hd : IsPhase d) :
    numeratorV a b c d i = numeratorOfGram (gramV a b c d) i := by
  rw [gramV_eq_gramH_swap]
  exact numeratorH_actual_gram a c b d i ha hc hb hd

theorem numeratorH_normSq (a b c d : ℂ) (i : Fin 3)
    (ha : IsPhase a) (hb : IsPhase b) (hc : IsPhase c) (hd : IsPhase d) :
    Complex.normSq (numeratorH a b c d i) =
      FourierRadicalGuards.guard (g a b c d) (chi a b c d) (eta a b c d) (q a b c d i) := by
  rw [numeratorH, FourierGramNumerators.numerator_normSq,
    ← g_gram_binding a b c d ha hb hc hd,
    ← chi_gram_binding a b c d ha hb hc hd,
    ← eta_gram_binding a b c d ha hb hc hd,
    ← q_gram_binding a b c d i ha hb hc hd]

theorem numeratorV_normSq (a b c d : ℂ) (i : Fin 3)
    (ha : IsPhase a) (hb : IsPhase b) (hc : IsPhase c) (hd : IsPhase d) :
    Complex.normSq (numeratorV a b c d i) =
      FourierRadicalGuards.guard (g a b c d) (chi a b c d) (eta a b c d) (qV a b c d i) := by
  rw [numeratorV, numeratorH_normSq a c b d i ha hc hb hd,
    g_swap a b c d ha hb hc hd, chi_swap a b c d ha hb hc hd,
    eta_swap a b c d ha hb hc hd, qV_eq_q_swap]

def lambdaH (a b c d : ℂ) (w : ℝ) (i : Fin 3) : ℂ :=
  numeratorH a b c d i / ((g a b c d : ℂ) +
    FourierRadicalGuards.sheet (g a b c d) (chi a b c d) w *
      (gramH a b c d).adjugate i i)

def lambdaV (a b c d : ℂ) (w : ℝ) (i : Fin 3) : ℂ :=
  numeratorV a b c d i / ((g a b c d : ℂ) +
    FourierRadicalGuards.sheet (g a b c d) (chi a b c d) (-w) *
      (gramV a b c d).adjugate i i)

theorem phase_of_equal_normSq {P D : ℂ}
    (h : Complex.normSq P = Complex.normSq D) (hD : D ≠ 0) : IsPhase (P / D) := by
  rw [IsPhase, Complex.normSq_div, h]
  exact div_self (fun hz => hD (Complex.normSq_eq_zero.mp hz))

/-- This also covers a zero-radicand sheet when its denominator guard holds. -/
theorem lambdaH_phase_guarded (a b c d : ℂ) (w : ℝ) (i : Fin 3)
    (ha : IsPhase a) (hb : IsPhase b) (hc : IsPhase c) (hd : IsPhase d)
    (hg : g a b c d ≠ 0) (hw : w^2 = radicand a b c d)
    (hD : (g a b c d : ℂ) +
      FourierRadicalGuards.sheet (g a b c d) (chi a b c d) w *
        (gramH a b c d).adjugate i i ≠ 0) :
    IsPhase (lambdaH a b c d w i) := by
  unfold lambdaH
  apply phase_of_equal_normSq _ hD
  rw [numeratorH_normSq a b c d i ha hb hc hd]
  have hn := FourierRadicalGuards.denominator_normSq
    (g a b c d) (chi a b c d) (eta a b c d) w (q a b c d i) hg hw
  rw [adjugate_diag_real a b c d i] at hn
  exact hn.symm

/-- The vertical side uses the conjugate sheet, encoded by negating w. -/
theorem lambdaV_phase_guarded (a b c d : ℂ) (w : ℝ) (i : Fin 3)
    (ha : IsPhase a) (hb : IsPhase b) (hc : IsPhase c) (hd : IsPhase d)
    (hg : g a b c d ≠ 0) (hw : w^2 = radicand a b c d)
    (hD : (g a b c d : ℂ) +
      FourierRadicalGuards.sheet (g a b c d) (chi a b c d) (-w) *
        (gramV a b c d).adjugate i i ≠ 0) :
    IsPhase (lambdaV a b c d w i) := by
  unfold lambdaV
  apply phase_of_equal_normSq _ hD
  rw [numeratorV_normSq a b c d i ha hb hc hd]
  have hwneg : (-w)^2 = radicand a b c d := by simpa using hw
  have hn := FourierRadicalGuards.denominator_normSq
    (g a b c d) (chi a b c d) (eta a b c d) (-w) (qV a b c d i) hg hwneg
  rw [vertical_adjugate_diag_real a b c d i] at hn
  exact hn.symm

theorem lambdaH_phase_strict (a b c d : ℂ) (w : ℝ) (i : Fin 3)
    (ha : IsPhase a) (hb : IsPhase b) (hc : IsPhase c) (hd : IsPhase d)
    (hR : 0 < radicand a b c d) (hw : w^2 = radicand a b c d) :
    IsPhase (lambdaH a b c d w i) :=
  lambdaH_phase_guarded a b c d w i ha hb hc hd
    (ne_of_gt (strict_radicand_g_positive a b c d ha hb hc hd hR)) hw
    (strict_horizontal_denominator_w a b c d w i hR hw)

theorem lambdaV_phase_strict (a b c d : ℂ) (w : ℝ) (i : Fin 3)
    (ha : IsPhase a) (hb : IsPhase b) (hc : IsPhase c) (hd : IsPhase d)
    (hR : 0 < radicand a b c d) (hw : w^2 = radicand a b c d) :
    IsPhase (lambdaV a b c d w i) :=
  lambdaV_phase_guarded a b c d w i ha hb hc hd
    (ne_of_gt (strict_radicand_g_positive a b c d ha hb hc hd hR)) hw
    (strict_vertical_denominator_neg_w a b c d w i hR hw)

theorem six_lambdas_phases_both_sheets (a b c d : ℂ) (w : ℝ)
    (ha : IsPhase a) (hb : IsPhase b) (hc : IsPhase c) (hd : IsPhase d)
    (hR : 0 < radicand a b c d) (hw : w^2 = radicand a b c d) :
    ∀ i : Fin 3,
      IsPhase (lambdaH a b c d w i) ∧ IsPhase (lambdaV a b c d w i) ∧
        IsPhase (lambdaH a b c d (-w) i) ∧ IsPhase (lambdaV a b c d (-w) i) := by
  intro i
  have hwneg : (-w)^2 = radicand a b c d := by simpa using hw
  exact ⟨lambdaH_phase_strict a b c d w i ha hb hc hd hR hw,
    lambdaV_phase_strict a b c d w i ha hb hc hd hR hw,
    lambdaH_phase_strict a b c d (-w) i ha hb hc hd hR hwneg,
    lambdaV_phase_strict a b c d (-w) i ha hb hc hd hR hwneg⟩

/-- The two actual square-root sheets require no additional lifted variable. -/
theorem six_lambdas_phases_sqrt (a b c d : ℂ)
    (ha : IsPhase a) (hb : IsPhase b) (hc : IsPhase c) (hd : IsPhase d)
    (hR : 0 < radicand a b c d) :
    ∀ i : Fin 3,
      IsPhase (lambdaH a b c d (Real.sqrt (radicand a b c d)) i) ∧
      IsPhase (lambdaV a b c d (Real.sqrt (radicand a b c d)) i) ∧
      IsPhase (lambdaH a b c d (-Real.sqrt (radicand a b c d)) i) ∧
      IsPhase (lambdaV a b c d (-Real.sqrt (radicand a b c d)) i) :=
  six_lambdas_phases_both_sheets a b c d (Real.sqrt (radicand a b c d))
    ha hb hc hd hR (Real.sq_sqrt (le_of_lt hR))

theorem phase_div {x y : ℂ} (hx : IsPhase x) (hy : IsPhase y) : IsPhase (x/y) := by
  simp only [IsPhase, Complex.normSq_div]
  rw [hx, hy, div_one]

/-- In particular this covers u=lambda_0/lambda_1 and v=lambda_0/lambda_2. -/
theorem lambda_ratios_phase_strict (a b c d : ℂ) (w : ℝ) (i j : Fin 3)
    (ha : IsPhase a) (hb : IsPhase b) (hc : IsPhase c) (hd : IsPhase d)
    (hR : 0 < radicand a b c d) (hw : w^2 = radicand a b c d) :
    IsPhase (lambdaH a b c d w i / lambdaH a b c d w j) ∧
      IsPhase (lambdaV a b c d w i / lambdaV a b c d w j) := by
  exact ⟨phase_div (lambdaH_phase_strict a b c d w i ha hb hc hd hR hw)
      (lambdaH_phase_strict a b c d w j ha hb hc hd hR hw),
    phase_div (lambdaV_phase_strict a b c d w i ha hb hc hd hR hw)
      (lambdaV_phase_strict a b c d w j ha hb hc hd hR hw)⟩

#print axioms numeratorH_actual_gram
#print axioms numeratorV_actual_gram
#print axioms numeratorH_normSq
#print axioms numeratorV_normSq
#print axioms phase_of_equal_normSq
#print axioms lambdaH_phase_guarded
#print axioms lambdaV_phase_guarded
#print axioms lambdaH_phase_strict
#print axioms lambdaV_phase_strict
#print axioms six_lambdas_phases_both_sheets
#print axioms six_lambdas_phases_sqrt
#print axioms phase_div
#print axioms lambda_ratios_phase_strict

end
end FourierSeedBinding
