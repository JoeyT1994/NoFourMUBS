import NoFourMUBs.Reuse.Archive.GramNumerators

/-! Forward algebra of a pre-existing phase side. -/

namespace FourierPhysicalSide

open Matrix
open FourierSeedBinding
noncomputable section

theorem actual_gram (x0 x1 x2 y0 y1 y2 : ℂ)
    (hx0 : IsPhase x0) (hx1 : IsPhase x1) (hx2 : IsPhase x2)
    (hy0 : IsPhase y0) (hy1 : IsPhase y1) (hy2 : IsPhase y2) :
    side x0 x1 x2 y0 y1 y2 * (side x0 x1 x2 y0 y1 y2)ᴴ =
      FourierGramNumerators.gram (s x0 x1 x2) (t y0 y1 y2) (r x0 x1 x2 y0 y1 y2) := by
  have hX0 := phase_mul_conj hx0
  have hX1 := phase_mul_conj hx1
  have hX2 := phase_mul_conj hx2
  have hY0 := phase_mul_conj hy0
  have hY1 := phase_mul_conj hy1
  have hY2 := phase_mul_conj hy2
  ext i j
  fin_cases i <;> fin_cases j <;>
    rw [Matrix.mul_apply] <;>
    simp only [Matrix.conjTranspose_apply] <;>
    simp [side, s, t, r, FourierGramNumerators.gram,
      Matrix.mul_apply, Fin.sum_univ_three, Matrix.conjTranspose_apply,
      Complex.star_def, hX0, hX1, hX2, hY0, hY1, hY2] <;> ring

set_option maxHeartbeats 0 in
theorem numerator0_binding (x0 x1 x2 y0 y1 y2 : ℂ)
    (hx0 : IsPhase x0) (hx1 : IsPhase x1) (hx2 : IsPhase x2)
    (hy0 : IsPhase y0) (hy1 : IsPhase y1) (hy2 : IsPhase y2) :
    FourierGramNumerators.numerator
      (s x0 x1 x2) (t y0 y1 y2) (r x0 x1 x2 y0 y1 y2) 0 =
      permanent x0 x1 x2 y0 y1 y2 *
        (FourierGramNumerators.q (s x0 x1 x2) (t y0 y1 y2) (r x0 x1 x2 y0 y1 y2) 0 : ℂ) -
      rowProduct x0 x1 x2 * rowProduct y0 y1 y2 *
        (star (determinant x0 x1 x2 y0 y1 y2))^2 := by
  have hX0 := phase_mul_conj hx0
  have hX1 := phase_mul_conj hx1
  have hX2 := phase_mul_conj hx2
  have hY0 := phase_mul_conj hy0
  have hY1 := phase_mul_conj hy1
  have hY2 := phase_mul_conj hy2
  simp [FourierGramNumerators.numerator, FourierGramNumerators.q, s, t, r,
    rowProduct, determinant_formula, permanent, Complex.normSq_eq_conj_mul_self,
    Complex.star_def]
  linear_combination
    (-x0*y0^2*(starRingEnd ℂ) y0 +x0*y0 +x1*x2*y0*y1*y2*(starRingEnd ℂ) x0*(starRingEnd ℂ) y1^2 -2*x1*x2*y0*y1*y2*(starRingEnd ℂ) x0*(starRingEnd ℂ) y1*(starRingEnd ℂ) y2 +x1*x2*y0*y1*y2*(starRingEnd ℂ) x0*(starRingEnd ℂ) y2^2 -2*x1*x2*y0*y1*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y0*(starRingEnd ℂ) y1 +2*x1*x2*y0*y1*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y0*(starRingEnd ℂ) y2 +2*x1*x2*y0*y1*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y1*(starRingEnd ℂ) y2 -2*x1*x2*y0*y1*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y2^2 +2*x1*x2*y0*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y0*(starRingEnd ℂ) y1 -2*x1*x2*y0*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y0*(starRingEnd ℂ) y2 -2*x1*x2*y0*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y1^2 +2*x1*x2*y0*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y1*(starRingEnd ℂ) y2 -x1*y0^2*(starRingEnd ℂ) y1 -x1*y0*y1*(starRingEnd ℂ) y0 +2*x1*y0 -x2*y0^2*(starRingEnd ℂ) y2 -x2*y0*y2*(starRingEnd ℂ) y0 +2*x2*y0)*hX0 +
    (x0*x2*y0*y1*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y0^2 -2*x0*x2*y0*y1*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y0*(starRingEnd ℂ) y2 +x0*x2*y0*y1*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y2^2 -2*x0*x2*y0*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y0^2 +2*x0*x2*y0*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y0*(starRingEnd ℂ) y1 +2*x0*x2*y0*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y0*(starRingEnd ℂ) y2 -2*x0*x2*y0*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y1*(starRingEnd ℂ) y2 -x0*y0*y1*(starRingEnd ℂ) y1 -x0*y1^2*(starRingEnd ℂ) y0 +2*x0*y1 -x1*y1^2*(starRingEnd ℂ) y1 +x1*y1 -2*x2*y0*y1*y2*(starRingEnd ℂ) y0*(starRingEnd ℂ) y1 +2*x2*y0*y1*y2*(starRingEnd ℂ) y0*(starRingEnd ℂ) y2 +2*x2*y0*y1*y2*(starRingEnd ℂ) y1*(starRingEnd ℂ) y2 -2*x2*y0*y1*y2*(starRingEnd ℂ) y2^2 -x2*y1^2*(starRingEnd ℂ) y2 -x2*y1*y2*(starRingEnd ℂ) y1 +2*x2*y1)*hX1 +
    (x0*x1*y0*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y0^2 -2*x0*x1*y0*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y0*(starRingEnd ℂ) y1 +x0*x1*y0*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y1^2 -2*x0*y0*y1*y2*(starRingEnd ℂ) y0^2 +2*x0*y0*y1*y2*(starRingEnd ℂ) y0*(starRingEnd ℂ) y1 +2*x0*y0*y1*y2*(starRingEnd ℂ) y0*(starRingEnd ℂ) y2 -2*x0*y0*y1*y2*(starRingEnd ℂ) y1*(starRingEnd ℂ) y2 -x0*y0*y2*(starRingEnd ℂ) y2 -x0*y2^2*(starRingEnd ℂ) y0 +2*x0*y2 +2*x1*y0*y1*y2*(starRingEnd ℂ) y0*(starRingEnd ℂ) y1 -2*x1*y0*y1*y2*(starRingEnd ℂ) y0*(starRingEnd ℂ) y2 -2*x1*y0*y1*y2*(starRingEnd ℂ) y1^2 +2*x1*y0*y1*y2*(starRingEnd ℂ) y1*(starRingEnd ℂ) y2 -x1*y1*y2*(starRingEnd ℂ) y2 -x1*y2^2*(starRingEnd ℂ) y1 +2*x1*y2 -x2*y2^2*(starRingEnd ℂ) y2 +x2*y2)*hX2 +
    (-x0^2*y1*(starRingEnd ℂ) x1 -x0^2*y2*(starRingEnd ℂ) x2 +x0*x1*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y0 -2*x0*x1*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y1 +x0*x2*y1*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y0 -2*x0*x2*y1*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y2 -2*x0*y1*y2*(starRingEnd ℂ) y0 +2*x0*y1*y2*(starRingEnd ℂ) y1 +2*x0*y1*y2*(starRingEnd ℂ) y2 +2*x0*y1 +2*x0*y2 +2*x1*y1*y2*(starRingEnd ℂ) y1 -2*x1*y1*y2*(starRingEnd ℂ) y2 -x1*y1 -2*x2*y1*y2*(starRingEnd ℂ) y1 +2*x2*y1*y2*(starRingEnd ℂ) y2 -x2*y2)*hY0 +
    (x0*x1*y0*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y1 -2*x0*x1*y2*(starRingEnd ℂ) x2 -2*x0*y0*y2*(starRingEnd ℂ) y2 -x0*y0 +2*x0*y2 -x1^2*y0*(starRingEnd ℂ) x0 -x1^2*y2*(starRingEnd ℂ) x2 +x1*x2*y0*y2*(starRingEnd ℂ) x0*(starRingEnd ℂ) y1 -2*x1*x2*y0*y2*(starRingEnd ℂ) x0*(starRingEnd ℂ) y2 -2*x1*y0*y2*(starRingEnd ℂ) y1 +2*x1*y0*y2*(starRingEnd ℂ) y2 +2*x1*y0 +4*x1*y2 +2*x2*y0*y2*(starRingEnd ℂ) y2 -3*x2*y2)*hY1 +
    (x0*x2*y0*y1*(starRingEnd ℂ) x1*(starRingEnd ℂ) y2 -2*x0*x2*y1*(starRingEnd ℂ) x1 -3*x0*y0 +2*x0*y1 +x1*x2*y0*y1*(starRingEnd ℂ) x0*(starRingEnd ℂ) y2 -2*x1*x2*y0*(starRingEnd ℂ) x0 +2*x1*y0 -3*x1*y1 -x2^2*y0*(starRingEnd ℂ) x0 -x2^2*y1*(starRingEnd ℂ) x1 -2*x2*y0*y1*(starRingEnd ℂ) y2 +4*x2*y0 +4*x2*y1)*hY2

set_option maxHeartbeats 0 in
theorem numerator1_binding (x0 x1 x2 y0 y1 y2 : ℂ)
    (hx0 : IsPhase x0) (hx1 : IsPhase x1) (hx2 : IsPhase x2)
    (hy0 : IsPhase y0) (hy1 : IsPhase y1) (hy2 : IsPhase y2) :
    rowProduct x0 x1 x2 * FourierGramNumerators.numerator
      (s x0 x1 x2) (t y0 y1 y2) (r x0 x1 x2 y0 y1 y2) 1 =
      permanent x0 x1 x2 y0 y1 y2 *
        (FourierGramNumerators.q (s x0 x1 x2) (t y0 y1 y2) (r x0 x1 x2 y0 y1 y2) 1 : ℂ) -
      rowProduct x0 x1 x2 * rowProduct y0 y1 y2 *
        (star (determinant x0 x1 x2 y0 y1 y2))^2 := by
  have hX0 := phase_mul_conj hx0
  have hX1 := phase_mul_conj hx1
  have hX2 := phase_mul_conj hx2
  have hY0 := phase_mul_conj hy0
  have hY1 := phase_mul_conj hy1
  have hY2 := phase_mul_conj hy2
  simp [FourierGramNumerators.numerator, FourierGramNumerators.q, s, t, r,
    rowProduct, determinant_formula, permanent, Complex.normSq_eq_conj_mul_self,
    Complex.star_def]
  linear_combination
    (-x1*x2*y0^2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y0 -x1*x2*y0^2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y1 -x1*x2*y0^2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y2 -x1*x2*y0^2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y0 -x1*x2*y0^2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y1 -x1*x2*y0^2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y2 +x1*x2*y0*y1*y2*(starRingEnd ℂ) x0*(starRingEnd ℂ) y1^2 -2*x1*x2*y0*y1*y2*(starRingEnd ℂ) x0*(starRingEnd ℂ) y1*(starRingEnd ℂ) y2 +x1*x2*y0*y1*y2*(starRingEnd ℂ) x0*(starRingEnd ℂ) y2^2 -2*x1*x2*y0*y1*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y0*(starRingEnd ℂ) y1 +2*x1*x2*y0*y1*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y0*(starRingEnd ℂ) y2 +2*x1*x2*y0*y1*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y1*(starRingEnd ℂ) y2 -2*x1*x2*y0*y1*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y2^2 +2*x1*x2*y0*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y0*(starRingEnd ℂ) y1 -2*x1*x2*y0*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y0*(starRingEnd ℂ) y2 -2*x1*x2*y0*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y1^2 +2*x1*x2*y0*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y1*(starRingEnd ℂ) y2 -x1*x2*y0*y1*(starRingEnd ℂ) x0*(starRingEnd ℂ) y0 -x1*x2*y0*y1*(starRingEnd ℂ) x0*(starRingEnd ℂ) y1 -x1*x2*y0*y1*(starRingEnd ℂ) x0*(starRingEnd ℂ) y2 -x1*x2*y0*y1*(starRingEnd ℂ) x2*(starRingEnd ℂ) y0 -x1*x2*y0*y1*(starRingEnd ℂ) x2*(starRingEnd ℂ) y1 -x1*x2*y0*y1*(starRingEnd ℂ) x2*(starRingEnd ℂ) y2 -x1*x2*y0*y2*(starRingEnd ℂ) x0*(starRingEnd ℂ) y0 -x1*x2*y0*y2*(starRingEnd ℂ) x0*(starRingEnd ℂ) y1 -x1*x2*y0*y2*(starRingEnd ℂ) x0*(starRingEnd ℂ) y2 -x1*x2*y0*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y0 -x1*x2*y0*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y1 -x1*x2*y0*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y2 +4*x1*x2*y0*(starRingEnd ℂ) x0 +5*x1*x2*y0*(starRingEnd ℂ) x1 +5*x1*x2*y0*(starRingEnd ℂ) x2 -x1*x2*y1^2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y0 -x1*x2*y1^2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y1 -x1*x2*y1^2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y2 -x1*x2*y1*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y0 -x1*x2*y1*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y1 -x1*x2*y1*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y2 -x1*x2*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y0 -x1*x2*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y1 -x1*x2*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y2 +x1*x2*y1*(starRingEnd ℂ) x0 +5*x1*x2*y1*(starRingEnd ℂ) x1 +2*x1*x2*y1*(starRingEnd ℂ) x2 -x1*x2*y2^2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y0 -x1*x2*y2^2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y1 -x1*x2*y2^2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y2 +x1*x2*y2*(starRingEnd ℂ) x0 +2*x1*x2*y2*(starRingEnd ℂ) x1 +5*x1*x2*y2*(starRingEnd ℂ) x2)*hX0 +
    (x0*x2*y0*y1*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y0^2 -2*x0*x2*y0*y1*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y0*(starRingEnd ℂ) y2 +x0*x2*y0*y1*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y2^2 -2*x0*x2*y0*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y0^2 +2*x0*x2*y0*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y0*(starRingEnd ℂ) y1 +2*x0*x2*y0*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y0*(starRingEnd ℂ) y2 -2*x0*x2*y0*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y1*(starRingEnd ℂ) y2 -x0*x2*y0*y1*(starRingEnd ℂ) x1*(starRingEnd ℂ) y0 -x0*x2*y0*y1*(starRingEnd ℂ) x1*(starRingEnd ℂ) y1 -x0*x2*y0*y1*(starRingEnd ℂ) x1*(starRingEnd ℂ) y2 -x0*x2*y0*y1*(starRingEnd ℂ) x2*(starRingEnd ℂ) y0 -x0*x2*y0*y1*(starRingEnd ℂ) x2*(starRingEnd ℂ) y1 -x0*x2*y0*y1*(starRingEnd ℂ) x2*(starRingEnd ℂ) y2 -x0*x2*y0*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y0 -x0*x2*y0*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y1 -x0*x2*y0*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y2 +x0*x2*y0*(starRingEnd ℂ) x1 +2*x0*x2*y0*(starRingEnd ℂ) x2 -x0*x2*y1^2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y0 -x0*x2*y1^2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y1 -x0*x2*y1^2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y2 -x0*x2*y1*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y0 -x0*x2*y1*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y1 -x0*x2*y1*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y2 +4*x0*x2*y1*(starRingEnd ℂ) x1 +5*x0*x2*y1*(starRingEnd ℂ) x2 -x0*x2*y2^2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y0 -x0*x2*y2^2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y1 -x0*x2*y2^2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y2 +x0*x2*y2*(starRingEnd ℂ) x1 +5*x0*x2*y2*(starRingEnd ℂ) x2 -x2*y0^2*(starRingEnd ℂ) y0 -x2*y0^2*(starRingEnd ℂ) y1 -x2*y0^2*(starRingEnd ℂ) y2 -2*x2*y0*y1*y2*(starRingEnd ℂ) y0*(starRingEnd ℂ) y1 +2*x2*y0*y1*y2*(starRingEnd ℂ) y0*(starRingEnd ℂ) y2 +2*x2*y0*y1*y2*(starRingEnd ℂ) y1*(starRingEnd ℂ) y2 -2*x2*y0*y1*y2*(starRingEnd ℂ) y2^2 -x2*y0*y2*(starRingEnd ℂ) y0 -x2*y0*y2*(starRingEnd ℂ) y1 -x2*y0*y2*(starRingEnd ℂ) y2 +5*x2*y0 -x2*y1^2*(starRingEnd ℂ) y0 -x2*y1^2*(starRingEnd ℂ) y1 -x2*y1^2*(starRingEnd ℂ) y2 -x2*y1*y2*(starRingEnd ℂ) y0 -x2*y1*y2*(starRingEnd ℂ) y1 -x2*y1*y2*(starRingEnd ℂ) y2 +5*x2*y1 +2*x2*y2)*hX1 +
    (x0*x1*y0*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y0^2 -2*x0*x1*y0*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y0*(starRingEnd ℂ) y1 +x0*x1*y0*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y1^2 -x0*x1*y0*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y0 -x0*x1*y0*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y1 -x0*x1*y0*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y2 +x0*x1*y0*(starRingEnd ℂ) x2 -x0*x1*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y0 -x0*x1*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y1 -x0*x1*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y2 +x0*x1*y1*(starRingEnd ℂ) x2 +4*x0*x1*y2*(starRingEnd ℂ) x2 -2*x0*y0*y1*y2*(starRingEnd ℂ) y0^2 +2*x0*y0*y1*y2*(starRingEnd ℂ) y0*(starRingEnd ℂ) y1 +2*x0*y0*y1*y2*(starRingEnd ℂ) y0*(starRingEnd ℂ) y2 -2*x0*y0*y1*y2*(starRingEnd ℂ) y1*(starRingEnd ℂ) y2 -x0*y0*y1*(starRingEnd ℂ) y0 -x0*y0*y1*(starRingEnd ℂ) y1 -x0*y0*y1*(starRingEnd ℂ) y2 -x0*y0*y2*(starRingEnd ℂ) y0 -x0*y0*y2*(starRingEnd ℂ) y1 -x0*y0*y2*(starRingEnd ℂ) y2 +2*x0*y0 -x0*y1^2*(starRingEnd ℂ) y0 -x0*y1^2*(starRingEnd ℂ) y1 -x0*y1^2*(starRingEnd ℂ) y2 +5*x0*y1 -x0*y2^2*(starRingEnd ℂ) y0 -x0*y2^2*(starRingEnd ℂ) y1 -x0*y2^2*(starRingEnd ℂ) y2 +5*x0*y2 -x1*y0^2*(starRingEnd ℂ) y0 -x1*y0^2*(starRingEnd ℂ) y1 -x1*y0^2*(starRingEnd ℂ) y2 +2*x1*y0*y1*y2*(starRingEnd ℂ) y0*(starRingEnd ℂ) y1 -2*x1*y0*y1*y2*(starRingEnd ℂ) y0*(starRingEnd ℂ) y2 -2*x1*y0*y1*y2*(starRingEnd ℂ) y1^2 +2*x1*y0*y1*y2*(starRingEnd ℂ) y1*(starRingEnd ℂ) y2 -x1*y0*y1*(starRingEnd ℂ) y0 -x1*y0*y1*(starRingEnd ℂ) y1 -x1*y0*y1*(starRingEnd ℂ) y2 +5*x1*y0 -x1*y1*y2*(starRingEnd ℂ) y0 -x1*y1*y2*(starRingEnd ℂ) y1 -x1*y1*y2*(starRingEnd ℂ) y2 +2*x1*y1 -x1*y2^2*(starRingEnd ℂ) y0 -x1*y2^2*(starRingEnd ℂ) y1 -x1*y2^2*(starRingEnd ℂ) y2 +5*x1*y2)*hX2 +
    (x0*x1*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y0 -2*x0*x1*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y1 -x0*x1*y2*(starRingEnd ℂ) x2 +x0*x2*y1*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y0 -2*x0*x2*y1*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y2 -x0*x2*y1*(starRingEnd ℂ) x1 -2*x0*y1*y2*(starRingEnd ℂ) y0 +2*x0*y1*y2*(starRingEnd ℂ) y1 +2*x0*y1*y2*(starRingEnd ℂ) y2 -x1*x2*y1*(starRingEnd ℂ) x0 -x1*x2*y2*(starRingEnd ℂ) x0 +2*x1*y1*y2*(starRingEnd ℂ) y1 -2*x1*y1*y2*(starRingEnd ℂ) y2 +2*x1*y2 -2*x2*y1*y2*(starRingEnd ℂ) y1 +2*x2*y1*y2*(starRingEnd ℂ) y2 +2*x2*y1)*hY0 +
    (x0*x1*y0*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y1 -3*x0*x1*y2*(starRingEnd ℂ) x2 -x0*x2*y0*(starRingEnd ℂ) x1 -x0*x2*y2*(starRingEnd ℂ) x1 -2*x0*y0*y2*(starRingEnd ℂ) y2 +4*x0*y2 +x1*x2*y0*y2*(starRingEnd ℂ) x0*(starRingEnd ℂ) y1 -2*x1*x2*y0*y2*(starRingEnd ℂ) x0*(starRingEnd ℂ) y2 -x1*x2*y0*(starRingEnd ℂ) x0 -2*x1*y0*y2*(starRingEnd ℂ) y1 +2*x1*y0*y2*(starRingEnd ℂ) y2 +2*x1*y2 +2*x2*y0*y2*(starRingEnd ℂ) y2 +2*x2*y0 -2*x2*y2)*hY1 +
    (-x0*x1*y0*(starRingEnd ℂ) x2 -x0*x1*y1*(starRingEnd ℂ) x2 +x0*x2*y0*y1*(starRingEnd ℂ) x1*(starRingEnd ℂ) y2 -3*x0*x2*y1*(starRingEnd ℂ) x1 -2*x0*y0 +4*x0*y1 +x1*x2*y0*y1*(starRingEnd ℂ) x0*(starRingEnd ℂ) y2 -3*x1*x2*y0*(starRingEnd ℂ) x0 +4*x1*y0 -2*x1*y1 -2*x2*y0*y1*(starRingEnd ℂ) y2 +2*x2*y0 +2*x2*y1)*hY2

set_option maxHeartbeats 0 in
theorem numerator2_binding (x0 x1 x2 y0 y1 y2 : ℂ)
    (hx0 : IsPhase x0) (hx1 : IsPhase x1) (hx2 : IsPhase x2)
    (hy0 : IsPhase y0) (hy1 : IsPhase y1) (hy2 : IsPhase y2) :
    rowProduct y0 y1 y2 * FourierGramNumerators.numerator
      (s x0 x1 x2) (t y0 y1 y2) (r x0 x1 x2 y0 y1 y2) 2 =
      permanent x0 x1 x2 y0 y1 y2 *
        (FourierGramNumerators.q (s x0 x1 x2) (t y0 y1 y2) (r x0 x1 x2 y0 y1 y2) 2 : ℂ) -
      rowProduct x0 x1 x2 * rowProduct y0 y1 y2 *
        (star (determinant x0 x1 x2 y0 y1 y2))^2 := by
  have hX0 := phase_mul_conj hx0
  have hX1 := phase_mul_conj hx1
  have hX2 := phase_mul_conj hx2
  have hY0 := phase_mul_conj hy0
  have hY1 := phase_mul_conj hy1
  have hY2 := phase_mul_conj hy2
  simp [FourierGramNumerators.numerator, FourierGramNumerators.q, s, t, r,
    rowProduct, determinant_formula, permanent, Complex.normSq_eq_conj_mul_self,
    Complex.star_def]
  linear_combination
    (-x0*y0*y1*y2*(starRingEnd ℂ) y0*(starRingEnd ℂ) y1 -x0*y0*y1*y2*(starRingEnd ℂ) y0*(starRingEnd ℂ) y2 +x0*y1 +x0*y2 +x1*x2*y0*y1*y2*(starRingEnd ℂ) x0*(starRingEnd ℂ) y1^2 -2*x1*x2*y0*y1*y2*(starRingEnd ℂ) x0*(starRingEnd ℂ) y1*(starRingEnd ℂ) y2 +x1*x2*y0*y1*y2*(starRingEnd ℂ) x0*(starRingEnd ℂ) y2^2 -2*x1*x2*y0*y1*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y0*(starRingEnd ℂ) y1 +2*x1*x2*y0*y1*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y0*(starRingEnd ℂ) y2 +2*x1*x2*y0*y1*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y1*(starRingEnd ℂ) y2 -2*x1*x2*y0*y1*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y2^2 +2*x1*x2*y0*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y0*(starRingEnd ℂ) y1 -2*x1*x2*y0*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y0*(starRingEnd ℂ) y2 -2*x1*x2*y0*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y1^2 +2*x1*x2*y0*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y1*(starRingEnd ℂ) y2 -x1*y0*y1*y2*(starRingEnd ℂ) y0^2 -x1*y0*y1*y2*(starRingEnd ℂ) y0*(starRingEnd ℂ) y2 -x1*y0*y1*y2*(starRingEnd ℂ) y1^2 -x1*y0*y1*y2*(starRingEnd ℂ) y1*(starRingEnd ℂ) y2 +x1*y0 +x1*y1 +2*x1*y2 -x2*y0*y1*y2*(starRingEnd ℂ) y0^2 -x2*y0*y1*y2*(starRingEnd ℂ) y0*(starRingEnd ℂ) y1 -x2*y0*y1*y2*(starRingEnd ℂ) y1*(starRingEnd ℂ) y2 -x2*y0*y1*y2*(starRingEnd ℂ) y2^2 +x2*y0 +2*x2*y1 +x2*y2)*hX0 +
    (x0*x2*y0*y1*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y0^2 -2*x0*x2*y0*y1*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y0*(starRingEnd ℂ) y2 +x0*x2*y0*y1*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y2^2 -2*x0*x2*y0*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y0^2 +2*x0*x2*y0*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y0*(starRingEnd ℂ) y1 +2*x0*x2*y0*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y0*(starRingEnd ℂ) y2 -2*x0*x2*y0*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y1*(starRingEnd ℂ) y2 -x0*y0*y1*y2*(starRingEnd ℂ) y0^2 -x0*y0*y1*y2*(starRingEnd ℂ) y0*(starRingEnd ℂ) y2 -x0*y0*y1*y2*(starRingEnd ℂ) y1^2 -x0*y0*y1*y2*(starRingEnd ℂ) y1*(starRingEnd ℂ) y2 +x0*y0 +x0*y1 +2*x0*y2 -x1*y0*y1*y2*(starRingEnd ℂ) y0*(starRingEnd ℂ) y1 -x1*y0*y1*y2*(starRingEnd ℂ) y1*(starRingEnd ℂ) y2 +x1*y0 +x1*y2 -3*x2*y0*y1*y2*(starRingEnd ℂ) y0*(starRingEnd ℂ) y1 +x2*y0*y1*y2*(starRingEnd ℂ) y0*(starRingEnd ℂ) y2 -x2*y0*y1*y2*(starRingEnd ℂ) y1^2 +2*x2*y0*y1*y2*(starRingEnd ℂ) y1*(starRingEnd ℂ) y2 -3*x2*y0*y1*y2*(starRingEnd ℂ) y2^2 +2*x2*y0 +x2*y1 +x2*y2)*hX1 +
    (x0*x1*y0*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y0^2 -2*x0*x1*y0*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y0*(starRingEnd ℂ) y1 +x0*x1*y0*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y1^2 -3*x0*y0*y1*y2*(starRingEnd ℂ) y0^2 +x0*y0*y1*y2*(starRingEnd ℂ) y0*(starRingEnd ℂ) y1 +2*x0*y0*y1*y2*(starRingEnd ℂ) y0*(starRingEnd ℂ) y2 -3*x0*y0*y1*y2*(starRingEnd ℂ) y1*(starRingEnd ℂ) y2 -x0*y0*y1*y2*(starRingEnd ℂ) y2^2 +x0*y0 +2*x0*y1 +x0*y2 +x1*y0*y1*y2*(starRingEnd ℂ) y0*(starRingEnd ℂ) y1 -3*x1*y0*y1*y2*(starRingEnd ℂ) y0*(starRingEnd ℂ) y2 -3*x1*y0*y1*y2*(starRingEnd ℂ) y1^2 +2*x1*y0*y1*y2*(starRingEnd ℂ) y1*(starRingEnd ℂ) y2 -x1*y0*y1*y2*(starRingEnd ℂ) y2^2 +2*x1*y0 +x1*y1 +x1*y2 -x2*y0*y1*y2*(starRingEnd ℂ) y0*(starRingEnd ℂ) y2 -x2*y0*y1*y2*(starRingEnd ℂ) y1*(starRingEnd ℂ) y2 +x2*y0 +x2*y1)*hX2 +
    (-x0^2*y1*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y1 -x0^2*y1*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y2 -x0^2*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y1 -x0^2*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y2 -2*x0*x1*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y1 -x0*x1*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y2 -x0*x2*y1*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y1 -2*x0*x2*y1*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y2 +5*x0*y1*y2*(starRingEnd ℂ) y1 +5*x0*y1*y2*(starRingEnd ℂ) y2 -x1^2*y1*y2*(starRingEnd ℂ) x0*(starRingEnd ℂ) y1 -x1^2*y1*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y1 -x1*x2*y1*y2*(starRingEnd ℂ) x0*(starRingEnd ℂ) y1 -x1*x2*y1*y2*(starRingEnd ℂ) x0*(starRingEnd ℂ) y2 +5*x1*y1*y2*(starRingEnd ℂ) y1 -2*x1*y1*y2*(starRingEnd ℂ) y2 -x2^2*y1*y2*(starRingEnd ℂ) x0*(starRingEnd ℂ) y2 -x2^2*y1*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y2 -2*x2*y1*y2*(starRingEnd ℂ) y1 +5*x2*y1*y2*(starRingEnd ℂ) y2)*hY0 +
    (-x0^2*y2*(starRingEnd ℂ) x1 -x0^2*y2*(starRingEnd ℂ) x2 -x0*x1*y0*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y2 -2*x0*x1*y2*(starRingEnd ℂ) x2 -x0*x2*y0*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y2 -x0*x2*y2*(starRingEnd ℂ) x1 -2*x0*y0*y2*(starRingEnd ℂ) y2 +5*x0*y2 -x1^2*y0*y2*(starRingEnd ℂ) x0*(starRingEnd ℂ) y2 -x1^2*y0*y2*(starRingEnd ℂ) x2*(starRingEnd ℂ) y2 -x1^2*y2*(starRingEnd ℂ) x0 -x1^2*y2*(starRingEnd ℂ) x2 -2*x1*x2*y0*y2*(starRingEnd ℂ) x0*(starRingEnd ℂ) y2 -x1*x2*y2*(starRingEnd ℂ) x0 +5*x1*y0*y2*(starRingEnd ℂ) y2 +5*x1*y2 -x2^2*y0*y2*(starRingEnd ℂ) x0*(starRingEnd ℂ) y2 -x2^2*y0*y2*(starRingEnd ℂ) x1*(starRingEnd ℂ) y2 +5*x2*y0*y2*(starRingEnd ℂ) y2 -2*x2*y2)*hY1 +
    (-x0^2*y1*(starRingEnd ℂ) x1 -x0^2*y1*(starRingEnd ℂ) x2 -x0*x1*y0*(starRingEnd ℂ) x2 -x0*x1*y1*(starRingEnd ℂ) x2 -x0*x2*y0*(starRingEnd ℂ) x1 -2*x0*x2*y1*(starRingEnd ℂ) x1 -2*x0*y0 +5*x0*y1 -x1^2*y0*(starRingEnd ℂ) x0 -x1^2*y0*(starRingEnd ℂ) x2 -2*x1*x2*y0*(starRingEnd ℂ) x0 -x1*x2*y1*(starRingEnd ℂ) x0 +5*x1*y0 -2*x1*y1 -x2^2*y0*(starRingEnd ℂ) x0 -x2^2*y0*(starRingEnd ℂ) x1 -x2^2*y1*(starRingEnd ℂ) x0 -x2^2*y1*(starRingEnd ℂ) x1 +5*x2*y0 +5*x2*y1)*hY2

#print axioms determinant_formula
#print axioms actual_gram
#print axioms g_determinant
#print axioms eta_permanent
#print axioms numerator0_binding
#print axioms numerator1_binding
#print axioms numerator2_binding

end
end FourierPhysicalSide
