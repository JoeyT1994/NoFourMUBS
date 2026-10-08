import Mathlib.Data.Complex.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

/-!
Scalar lifted-sheet and denominator facts for the Fourier radical chart.
The variables `g`, `chi`, and `eta` are parameters: this module does not assert
that the physical seed and Gram/adjugate formulas have these values.  Once that
binding is supplied, every real adjugate diagonal is covered by the universal
quantifier over `q` below.  No classification or nonextension is asserted.
-/

namespace FourierRadicalGuards

noncomputable def sheet (g chi w : ℝ) : ℂ :=
  ((chi : ℂ) + (w : ℂ) * Complex.I) / ((2 * g : ℝ) : ℂ)

def guard (g chi eta q : ℝ) : ℝ := g ^ 2 + chi * q + eta * q ^ 2

theorem sheet_re (g chi w : ℝ) : (sheet g chi w).re = chi / (2 * g) := by
  simp only [sheet, Complex.div_ofReal_re, Complex.add_re,
    Complex.mul_I_re, Complex.ofReal_re, Complex.ofReal_im, neg_zero, add_zero]

theorem sheet_im (g chi w : ℝ) : (sheet g chi w).im = w / (2 * g) := by
  simp only [sheet, Complex.div_ofReal_im, Complex.add_im,
    Complex.mul_I_im, Complex.ofReal_re, Complex.ofReal_im, zero_add]

theorem sheet_real_identity (g chi w : ℝ) (hg : g ≠ 0) :
    2 * g * (sheet g chi w).re = chi := by
  rw [sheet_re]
  field_simp

theorem sheet_norm_identity (g chi eta w : ℝ) (hg : g ≠ 0)
    (hw : w ^ 2 = 4 * g ^ 2 * eta - chi ^ 2) :
    Complex.normSq (sheet g chi w) = eta := by
  rw [Complex.normSq_apply, sheet_re, sheet_im]
  have hd : 2 * g ≠ 0 := mul_ne_zero (by norm_num) hg
  field_simp [hd]
  nlinarith [hw]

theorem sheet_conjugate (g chi w : ℝ) :
    sheet g chi (-w) = star (sheet g chi w) := by
  apply Complex.ext
  · simp [sheet_re, Complex.star_def]
  · simp [sheet_im, Complex.star_def, neg_div]

theorem sheet_boundary (g chi : ℝ) : sheet g chi 0 = sheet g chi (-0) := by
  simp

theorem sheet_distinct (g chi w : ℝ) (hg : g ≠ 0) (hw : w ≠ 0) :
    sheet g chi w ≠ sheet g chi (-w) := by
  intro heq
  have hi := congrArg Complex.im heq
  rw [sheet_im, sheet_im] at hi
  have hd : 2 * g ≠ 0 := mul_ne_zero (by norm_num) hg
  field_simp [hd] at hi
  exact hw (by linarith)

theorem sheet_equal_iff_boundary (g chi w : ℝ) (hg : g ≠ 0) :
    sheet g chi w = sheet g chi (-w) ↔ w = 0 := by
  constructor
  · intro h
    by_contra hn
    exact (sheet_distinct g chi w hg hn) h
  · intro h
    subst w
    simp

theorem lifted_w_sq (g chi eta : ℝ) (z : ℂ)
    (hreal : 2 * g * z.re = chi)
    (hnorm : Complex.normSq z = eta) :
    (2 * g * z.im) ^ 2 = 4 * g ^ 2 * eta - chi ^ 2 := by
  rw [← hreal, ← hnorm, Complex.normSq_apply]
  ring

theorem lifted_sheet_exact (g chi eta : ℝ) (z : ℂ) (hg : g ≠ 0) :
    (2 * g * z.re = chi ∧ Complex.normSq z = eta) ↔
      ∃ w : ℝ, w ^ 2 = 4 * g ^ 2 * eta - chi ^ 2 ∧ z = sheet g chi w := by
  constructor
  · rintro ⟨hr, hn⟩
    refine ⟨2 * g * z.im, lifted_w_sq g chi eta z hr hn, ?_⟩
    apply Complex.ext
    · rw [sheet_re]
      field_simp
      linarith
    · rw [sheet_im]
      field_simp
  · rintro ⟨w, hw, rfl⟩
    exact ⟨sheet_real_identity g chi w hg,
      sheet_norm_identity g chi eta w hg hw⟩

theorem lifted_sheet_two (g chi eta w : ℝ) (z : ℂ) (hg : g ≠ 0)
    (hw : w ^ 2 = 4 * g ^ 2 * eta - chi ^ 2) :
    (2 * g * z.re = chi ∧ Complex.normSq z = eta) ↔
      z = sheet g chi w ∨ z = sheet g chi (-w) := by
  constructor
  · intro hz
    obtain ⟨v, hv, rfl⟩ := (lifted_sheet_exact g chi eta z hg).mp hz
    rcases (sq_eq_sq_iff_eq_or_eq_neg).mp (hv.trans hw.symm) with h | h
    · left; rw [h]
    · right; rw [h]
  · rintro (rfl | rfl)
    · exact ⟨sheet_real_identity g chi w hg,
        sheet_norm_identity g chi eta w hg hw⟩
    · have hneg : (-w) ^ 2 = 4 * g ^ 2 * eta - chi ^ 2 := by simpa using hw
      exact ⟨sheet_real_identity g chi (-w) hg,
        sheet_norm_identity g chi eta (-w) hg hneg⟩

theorem lifted_sheet_sqrt (g chi eta : ℝ) (z : ℂ) (hg : g ≠ 0)
    (hR : 0 ≤ 4 * g ^ 2 * eta - chi ^ 2) :
    (2 * g * z.re = chi ∧ Complex.normSq z = eta) ↔
      z = sheet g chi (Real.sqrt (4 * g ^ 2 * eta - chi ^ 2)) ∨
      z = sheet g chi (-Real.sqrt (4 * g ^ 2 * eta - chi ^ 2)) := by
  exact lifted_sheet_two g chi eta
    (Real.sqrt (4 * g ^ 2 * eta - chi ^ 2)) z hg (Real.sq_sqrt hR)

/-- A polynomial square certificate, before any division or radical evaluation. -/
theorem guard_square_certificate (g chi eta w q : ℝ)
    (hw : w ^ 2 = 4 * g ^ 2 * eta - chi ^ 2) :
    4 * g ^ 2 * guard g chi eta q =
      (2 * g ^ 2 + chi * q) ^ 2 + q ^ 2 * w ^ 2 := by
  unfold guard
  nlinarith [hw]

/-- A second completion of the square gives a q-uniform strict-sheet margin. -/
theorem guard_vertex_certificate (g chi eta w q : ℝ)
    (hw : w ^ 2 = 4 * g ^ 2 * eta - chi ^ 2) :
    4 * eta * guard g chi eta q =
      (2 * eta * q + chi) ^ 2 + w ^ 2 := by
  unfold guard
  nlinarith [hw]

theorem guard_margin (g chi eta w q : ℝ) (heta : 0 < eta)
    (hw : w ^ 2 = 4 * g ^ 2 * eta - chi ^ 2) :
    w ^ 2 / (4 * eta) ≤ guard g chi eta q := by
  have hc := guard_vertex_certificate g chi eta w q hw
  have hs : 0 ≤ (2 * eta * q + chi) ^ 2 := sq_nonneg _
  have hd : 0 < 4 * eta := by positivity
  apply (div_le_iff₀ hd).2
  nlinarith

theorem guard_positive_strict (g chi eta w q : ℝ) (heta : 0 < eta)
    (hw : w ^ 2 = 4 * g ^ 2 * eta - chi ^ 2) (hwn : w ≠ 0) :
    0 < guard g chi eta q := by
  have hm := guard_margin g chi eta w q heta hw
  have hp : 0 < w ^ 2 / (4 * eta) :=
    div_pos (sq_pos_of_ne_zero hwn) (by positivity)
  exact lt_of_lt_of_le hp hm

theorem strict_parameters (g chi eta w : ℝ)
    (hw : w ^ 2 = 4 * g ^ 2 * eta - chi ^ 2) (hwn : w ≠ 0) :
    g ≠ 0 ∧ 0 < eta := by
  have hwp : 0 < w ^ 2 := sq_pos_of_ne_zero hwn
  have hg : g ≠ 0 := by
    intro hzero
    rw [hzero] at hw
    nlinarith [sq_nonneg chi]
  refine ⟨hg, ?_⟩
  by_contra h
  have heta : eta ≤ 0 := le_of_not_gt h
  have hgn : 0 ≤ 4 * g ^ 2 := by positivity
  have hprod : 4 * g ^ 2 * eta ≤ 0 := mul_nonpos_of_nonneg_of_nonpos hgn heta
  nlinarith [sq_nonneg chi]

theorem guard_positive_of_nonzero_sheet (g chi eta w q : ℝ)
    (hw : w ^ 2 = 4 * g ^ 2 * eta - chi ^ 2) (hwn : w ≠ 0) :
    0 < guard g chi eta q :=
  guard_positive_strict g chi eta w q (strict_parameters g chi eta w hw hwn).2 hw hwn

theorem denominator_normSq (g chi eta w q : ℝ) (hg : g ≠ 0)
    (hw : w ^ 2 = 4 * g ^ 2 * eta - chi ^ 2) :
    Complex.normSq ((g : ℂ) + sheet g chi w * (q : ℂ)) =
      guard g chi eta q := by
  have hr := sheet_real_identity g chi w hg
  have hn := sheet_norm_identity g chi eta w hg hw
  calc
    Complex.normSq ((g : ℂ) + sheet g chi w * (q : ℂ)) =
      g ^ 2 + (2 * g * (sheet g chi w).re) * q +
        Complex.normSq (sheet g chi w) * q ^ 2 := by
          simp only [Complex.normSq_apply, Complex.add_re, Complex.add_im,
            Complex.mul_re, Complex.mul_im, Complex.ofReal_re, Complex.ofReal_im,
            mul_zero, zero_mul, sub_zero, add_zero, zero_add]
          ring
    _ = guard g chi eta q := by rw [hr, hn]; rfl

theorem denominator_ne_zero_strict (g chi eta w q : ℝ) (hg : g ≠ 0)
    (heta : 0 < eta) (hw : w ^ 2 = 4 * g ^ 2 * eta - chi ^ 2)
    (hwn : w ≠ 0) :
    (g : ℂ) + sheet g chi w * (q : ℂ) ≠ 0 := by
  intro hz
  have hp := guard_positive_strict g chi eta w q heta hw hwn
  have hn := denominator_normSq g chi eta w q hg hw
  rw [hz] at hn
  simp at hn
  linarith

theorem denominator_uniform_margin (g chi eta w q : ℝ)
    (hw : w ^ 2 = 4 * g ^ 2 * eta - chi ^ 2) (hwn : w ≠ 0) :
    w ^ 2 / (4 * eta) ≤
      Complex.normSq ((g : ℂ) + sheet g chi w * (q : ℂ)) := by
  obtain ⟨hg, heta⟩ := strict_parameters g chi eta w hw hwn
  rw [denominator_normSq g chi eta w q hg hw]
  exact guard_margin g chi eta w q heta hw

theorem denominator_ne_zero_of_nonzero_sheet (g chi eta w q : ℝ)
    (hw : w ^ 2 = 4 * g ^ 2 * eta - chi ^ 2) (hwn : w ≠ 0) :
    (g : ℂ) + sheet g chi w * (q : ℂ) ≠ 0 := by
  obtain ⟨hg, heta⟩ := strict_parameters g chi eta w hw hwn
  exact denominator_ne_zero_strict g chi eta w q hg heta hw hwn

theorem denominator_sheet_normSq_equal (g chi eta w q : ℝ) (hg : g ≠ 0)
    (hw : w ^ 2 = 4 * g ^ 2 * eta - chi ^ 2) :
    Complex.normSq ((g : ℂ) + sheet g chi w * (q : ℂ)) =
      Complex.normSq ((g : ℂ) + sheet g chi (-w) * (q : ℂ)) := by
  rw [denominator_normSq g chi eta w q hg hw]
  have hneg : (-w) ^ 2 = 4 * g ^ 2 * eta - chi ^ 2 := by simpa using hw
  rw [denominator_normSq g chi eta (-w) q hg hneg]

theorem denominator_sheet_zero_iff (g chi eta w q : ℝ) (hg : g ≠ 0)
    (hw : w ^ 2 = 4 * g ^ 2 * eta - chi ^ 2) :
    ((g : ℂ) + sheet g chi w * (q : ℂ) = 0) ↔
      ((g : ℂ) + sheet g chi (-w) * (q : ℂ) = 0) := by
  rw [← Complex.normSq_eq_zero, ← Complex.normSq_eq_zero]
  exact (denominator_sheet_normSq_equal g chi eta w q hg hw).congr_left

/-- The two scalar square completions also give an exact classification of
    boundary poles. -/
theorem guard_boundary_pole_iff (g chi eta q : ℝ) (hg : g ≠ 0)
    (hw : (0 : ℝ) ^ 2 = 4 * g ^ 2 * eta - chi ^ 2) :
    guard g chi eta q = 0 ↔ 2 * g ^ 2 + chi * q = 0 := by
  have hc := guard_square_certificate g chi eta 0 q hw
  have hg2 : 0 < g ^ 2 := sq_pos_of_ne_zero hg
  constructor
  · intro h
    rw [h] at hc
    nlinarith [sq_nonneg (2 * g ^ 2 + chi * q)]
  · intro h
    rw [h] at hc
    nlinarith

theorem boundary_denominator_zero_iff (g chi eta q : ℝ) (hg : g ≠ 0)
    (hw : (0 : ℝ) ^ 2 = 4 * g ^ 2 * eta - chi ^ 2) :
    ((g : ℂ) + sheet g chi 0 * (q : ℂ) = 0) ↔
      2 * g ^ 2 + chi * q = 0 := by
  rw [← Complex.normSq_eq_zero]
  rw [denominator_normSq g chi eta 0 q hg hw]
  exact guard_boundary_pole_iff g chi eta q hg hw

theorem normSq_parallelogram (gamma delta : ℂ) :
    Complex.normSq (gamma + delta) + Complex.normSq (gamma - delta) =
      2 * Complex.normSq gamma + 2 * Complex.normSq delta := by
  simp only [Complex.normSq_apply, Complex.add_re, Complex.add_im,
    Complex.sub_re, Complex.sub_im]
  ring

noncomputable def orientedDelta (gamma delta : ℂ) : ℂ :=
  if Complex.normSq (gamma - delta) ≤ Complex.normSq (gamma + delta)
  then delta else -delta

theorem orientedDelta_selected (gamma delta : ℂ) :
    Complex.normSq (gamma - orientedDelta gamma delta) ≤
      Complex.normSq (gamma + orientedDelta gamma delta) := by
  unfold orientedDelta
  split_ifs with h
  · exact h
  · simpa only [sub_neg_eq_add, sub_eq_add_neg, neg_neg] using
      (le_of_lt (lt_of_not_ge h))

theorem orientedDelta_normSq (gamma delta : ℂ) :
    Complex.normSq (orientedDelta gamma delta) = Complex.normSq delta := by
  unfold orientedDelta
  split_ifs <;> simp

theorem selected_pivot_bound (gamma delta : ℂ) :
    Complex.normSq delta ≤
      4 * Complex.normSq ((gamma + orientedDelta gamma delta) / (2 : ℂ)) := by
  let d := orientedDelta gamma delta
  have hp := normSq_parallelogram gamma d
  have hs := orientedDelta_selected gamma delta
  have hd := orientedDelta_normSq gamma delta
  have h0 := Complex.normSq_nonneg gamma
  have hhalf : 4 * Complex.normSq ((gamma + d) / (2 : ℂ)) =
      Complex.normSq (gamma + d) := by
    rw [Complex.normSq_div]
    norm_num [Complex.normSq_apply]
    ring
  change Complex.normSq delta ≤ 4 * Complex.normSq ((gamma + d) / (2 : ℂ))
  rw [hhalf]
  nlinarith

theorem selected_pivot_ne_zero (gamma delta : ℂ) (hd : delta ≠ 0) :
    (gamma + orientedDelta gamma delta) / (2 : ℂ) ≠ 0 := by
  intro hz
  have hp := selected_pivot_bound gamma delta
  rw [hz] at hp
  have hpositive : 0 < Complex.normSq delta := Complex.normSq_pos.mpr hd
  simp at hp
  linarith

theorem selected_pivot_three_g (gamma delta : ℂ) (g : ℝ)
    (hdisc : Complex.normSq delta = 3 * g) :
    3 * g ≤ 4 * Complex.normSq ((gamma + orientedDelta gamma delta) / (2 : ℂ)) := by
  simpa [hdisc] using selected_pivot_bound gamma delta

#print axioms sheet_real_identity
#print axioms sheet_norm_identity
#print axioms sheet_conjugate
#print axioms sheet_distinct
#print axioms sheet_equal_iff_boundary
#print axioms lifted_sheet_exact
#print axioms lifted_sheet_two
#print axioms lifted_sheet_sqrt
#print axioms guard_square_certificate
#print axioms guard_vertex_certificate
#print axioms guard_margin
#print axioms guard_positive_strict
#print axioms strict_parameters
#print axioms guard_positive_of_nonzero_sheet
#print axioms denominator_normSq
#print axioms denominator_ne_zero_strict
#print axioms denominator_uniform_margin
#print axioms denominator_ne_zero_of_nonzero_sheet
#print axioms denominator_sheet_normSq_equal
#print axioms denominator_sheet_zero_iff
#print axioms guard_boundary_pole_iff
#print axioms boundary_denominator_zero_iff
#print axioms normSq_parallelogram
#print axioms orientedDelta_selected
#print axioms orientedDelta_normSq
#print axioms selected_pivot_bound
#print axioms selected_pivot_ne_zero
#print axioms selected_pivot_three_g

end FourierRadicalGuards
