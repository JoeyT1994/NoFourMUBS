import NoFourMUBs.Step2.SideAlg
import Hadamard6.Basic

/-! The archived eta_permanent proof is retained verbatim. Its determinant
norm input delegates to the repository's Side.side_identities already in use.
Only the small Gram definitions needed by this proof are imported from the archive. -/

noncomputable section
open scoped ComplexConjugate
namespace FourierGramNumerators
def q (s t r : ℂ) : Fin 3 → ℝ :=
  ![9 - Complex.normSq r, 9 - Complex.normSq t, 9 - Complex.normSq s]

def g (s t r : ℂ) : ℝ :=
  27 - 3 * (Complex.normSq s + Complex.normSq t + Complex.normSq r) +
    2 * (r * s * star t).re

def sigma (s t r : ℂ) : ℝ := q s t r 0 + q s t r 1 + q s t r 2

def eta (s t r : ℂ) : ℝ := g s t r + 36 - 2 * sigma s t r

end FourierGramNumerators

namespace FourierPhysicalSide
open Matrix
private abbrev IsPhase (z : ℂ) : Prop := Complex.normSq z = 1

private theorem phase_mul_conj {z : ℂ} (h : IsPhase z) : z * conj z = 1 :=
  (mul_comm z (conj z)).trans (Hadamard6.star_mul_self_of_normSq_one h)

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
  unfold determinant
  rw [Matrix.det_fin_three]
  simp [side]
  ring

/-- Reuse the determinant norm theorem; only the coordinate conventions differ. -/
theorem g_determinant (x0 x1 x2 y0 y1 y2 : ℂ)
    (hx0 : IsPhase x0) (hx1 : IsPhase x1) (hx2 : IsPhase x2)
    (hy0 : IsPhase y0) (hy1 : IsPhase y1) (hy2 : IsPhase y2) :
    FourierGramNumerators.g (s x0 x1 x2) (t y0 y1 y2) (r x0 x1 x2 y0 y1 y2) =
      Complex.normSq (determinant x0 x1 x2 y0 y1 y2) := by
  have hx : ∀ j : Fin 3, Complex.normSq (![x0,x1,x2] j) = 1 := by
    intro j; fin_cases j <;> assumption
  have hy : ∀ j : Fin 3, Complex.normSq (![y0,y1,y2] j) = 1 := by
    intro j; fin_cases j <;> assumption
  have h := Complex.ofReal_injective (NoFourMUBs.Side.side_identities hx hy).2.2.2
  rw [determinant_formula]
  convert h.symm using 1
  · simp [FourierGramNumerators.g, NoFourMUBs.Side.gS, NoFourMUBs.Side.sS,
      NoFourMUBs.Side.rS, s, t, r, Complex.star_def, Complex.mul_re,
      Complex.mul_im, Complex.conj_re, Complex.conj_im]
    <;> ring
  · congr 1
    simp [NoFourMUBs.Side.hS]
    <;> ring

set_option maxHeartbeats 0 in
theorem eta_permanent (x0 x1 x2 y0 y1 y2 : ℂ)
    (hx0 : IsPhase x0) (hx1 : IsPhase x1) (hx2 : IsPhase x2)
    (hy0 : IsPhase y0) (hy1 : IsPhase y1) (hy2 : IsPhase y2) :
    FourierGramNumerators.eta (s x0 x1 x2) (t y0 y1 y2) (r x0 x1 x2 y0 y1 y2) =
      Complex.normSq (permanent x0 x1 x2 y0 y1 y2) := by
  rw [FourierGramNumerators.eta,
    g_determinant x0 x1 x2 y0 y1 y2 hx0 hx1 hx2 hy0 hy1 hy2]
  apply Complex.ofReal_injective
  have hX0 := phase_mul_conj hx0
  have hX1 := phase_mul_conj hx1
  have hX2 := phase_mul_conj hx2
  have hY0 := phase_mul_conj hy0
  have hY1 := phase_mul_conj hy1
  have hY2 := phase_mul_conj hy2
  simp [FourierGramNumerators.sigma, FourierGramNumerators.q, s, t, r,
    determinant_formula, permanent, Complex.normSq_eq_conj_mul_self, Complex.star_def]
  linear_combination
    (2*y0*(starRingEnd ℂ) y0 -2*y1*(starRingEnd ℂ) y2 -2*y2*(starRingEnd ℂ) y1 +2*1)*hX0 +
    (-2*y0*(starRingEnd ℂ) y2 +2*y1*(starRingEnd ℂ) y1 -2*y2*(starRingEnd ℂ) y0 +2*1)*hX1 +
    (-2*y0*(starRingEnd ℂ) y1 -2*y1*(starRingEnd ℂ) y0 +2*y2*(starRingEnd ℂ) y2 +2*1)*hX2 +
    (-2*x1*(starRingEnd ℂ) x2 -2*x2*(starRingEnd ℂ) x1 +4*1)*hY0 +
    (-2*x0*(starRingEnd ℂ) x2 -2*x2*(starRingEnd ℂ) x0 +4*1)*hY1 +
    (-2*x0*(starRingEnd ℂ) x1 -2*x1*(starRingEnd ℂ) x0 +4*1)*hY2


end FourierPhysicalSide
