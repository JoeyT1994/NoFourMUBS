import KarlssonMobius
import RationalCircleCharts
import Mathlib.Analysis.Complex.Polynomial.Basic

namespace Mub6.Classification.KarlssonCover
open Complex Hadamard6
noncomputable section

def compactT (t : ℝ) : ℝ := t / (1+t)
def uncompactT (s : ℝ) : ℝ := s / (1-s)
def coreDen (s : ℝ) : ℝ := s^2+(1-s)^2
def coreU (s : ℝ) : ℝ := ((1-s)^2-s^2)/coreDen s
def coreV (s : ℝ) : ℝ := 2*s*(1-s)/coreDen s

theorem coreDen_lower (s : ℝ) : 1/2 ≤ coreDen s := by
  dsimp [coreDen]
  nlinarith [sq_nonneg (s-1/2)]

theorem compactT_mem {t : ℝ} (ht : 0<t) : 0 < compactT t ∧ compactT t < 1 := by
  have hd : 0<1+t := by linarith
  exact ⟨div_pos ht hd, (div_lt_one hd).mpr (by linarith)⟩

theorem compactT_inverse {t : ℝ} (ht : 0<t) : uncompactT (compactT t) = t := by
  unfold compactT uncompactT
  field_simp
  ring

theorem compactUV {t : ℝ} (ht : 0<t) :
    (coreU (compactT t) : ℂ) = karlssonHalfAngleU t ∧
    (coreV (compactT t) : ℂ) = karlssonHalfAngleV t := by
  have hd : 1+t ≠ 0 := by linarith
  have hd2 : 1+t^2 ≠ 0 := by positivity
  have hc : coreDen (compactT t) ≠ 0 := ne_of_gt (lt_of_lt_of_le (by norm_num) (coreDen_lower _))
  constructor <;>
    dsimp only [coreU, coreV, karlssonHalfAngleU, karlssonHalfAngleV] <;>
    congr 1 <;>
    dsimp [coreDen, compactT] at * <;>
    field_simp <;> ring

/-- An algebraic root selection; all signs are retained by the atlas.
Numerical code encloses roots locally, rather than approximating this choice. -/
def root (w : ℂ) : ℂ := Classical.choose (IsAlgClosed.exists_pow_nat_eq w (by norm_num : 0<2))
theorem root_sq (w : ℂ) : root w ^ 2 = w :=
  Classical.choose_spec (IsAlgClosed.exists_pow_nat_eq w (by norm_num : 0<2))
def signedRoot (negative : Bool) (w : ℂ) : ℂ := if negative then -(root w) else root w

theorem root_branches {z w : ℂ} (hz : z^2 = w) :
    ∃ negative : Bool, z = signedRoot negative w := by
  have hprod : (z-root w)*(z+root w)=0 := by
    linear_combination hz - root_sq w
  rcases mul_eq_zero.mp hprod with h | h
  · exact ⟨false, sub_eq_zero.mp h⟩
  · exact ⟨true, (eq_neg_iff_add_eq_zero).mpr h⟩

theorem root_branch_square (negative : Bool) (w : ℂ) :
    signedRoot negative w ^ 2 = w := by
  cases negative <;> simp [signedRoot, root_sq]

end
end Mub6.Classification.KarlssonCover
