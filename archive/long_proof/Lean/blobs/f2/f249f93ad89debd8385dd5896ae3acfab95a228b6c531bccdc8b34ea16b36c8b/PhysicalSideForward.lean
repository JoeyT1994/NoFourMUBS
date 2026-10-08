import SideLambdaPhases

/-! Forward algebra of a pre-existing phase side. -/

namespace FourierPhysicalSide

open Matrix
open FourierSeedBinding
noncomputable section

def side (x0 x1 x2 y0 y1 y2 : ℂ) : Matrix (Fin 3) (Fin 3) ℂ :=
  ![![1,1,1], ![x0,x1,x2], ![y0,y1,y2]]

def s (x0 x1 x2 : ℂ) : ℂ := x0+x1+x2
def t (y0 y1 y2 : ℂ) : ℂ := y0+y1+y2
def r (x0 x1 x2 y0 y1 y2 : ℂ) : ℂ := y0*star x0+y1*star x1+y2*star x2
def rowProduct (x0 x1 x2 : ℂ) : ℂ := x0*x1*x2
def determinant (x0 x1 x2 y0 y1 y2 : ℂ) : ℂ := (side x0 x1 x2 y0 y1 y2).det
def permanent (x0 x1 x2 y0 y1 y2 : ℂ) : ℂ :=
  x1*y2+x2*y0+x0*y1+x2*y1+x0*y2+x1*y0

theorem determinant_formula (x0 x1 x2 y0 y1 y2 : ℂ) :
    determinant x0 x1 x2 y0 y1 y2 =
      x1*y2+x2*y0+x0*y1-x2*y1-x0*y2-x1*y0 := by
  simp [determinant, side, Matrix.det_fin_three]
  ring

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
    simp [side, s, t, r, FourierGramNumerators.gram,
      Matrix.mul_apply, Fin.sum_univ_three, Matrix.conjTranspose_apply,
      Complex.star_def, hX0, hX1, hX2, hY0, hY1, hY2] <;> ring

theorem g_determinant (x0 x1 x2 y0 y1 y2 : ℂ)
    (hx0 : IsPhase x0) (hx1 : IsPhase x1) (hx2 : IsPhase x2)
    (hy0 : IsPhase y0) (hy1 : IsPhase y1) (hy2 : IsPhase y2) :
    FourierGramNumerators.g (s x0 x1 x2) (t y0 y1 y2) (r x0 x1 x2 y0 y1 y2) =
      Complex.normSq (determinant x0 x1 x2 y0 y1 y2) := by
  apply Complex.ofReal_injective
  rw [← FourierGramNumerators.gram_det,
    ← actual_gram x0 x1 x2 y0 y1 y2 hx0 hx1 hx2 hy0 hy1 hy2,
    Matrix.det_mul, Matrix.det_conjTranspose]
  simp only [determinant, Complex.normSq_eq_conj_mul_self, Complex.star_def]
  ring

#print axioms determinant_formula
#print axioms actual_gram
#print axioms g_determinant

end
end FourierPhysicalSide
