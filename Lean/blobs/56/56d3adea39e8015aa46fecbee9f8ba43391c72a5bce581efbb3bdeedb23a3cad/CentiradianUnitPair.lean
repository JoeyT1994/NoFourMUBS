import CentiradianPhysical
import Mathlib.Analysis.Real.Sqrt
import Mathlib.Tactic.FieldSimp

/-! Exhaustive two-point unit-circle completion, used by each side row/column.
Both orientations are retained; no selected branch is assumed. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace Centiradian20261006
noncomputable section

def pairHeight (s : ℂ) : ℝ := Real.sqrt (1/Complex.normSq s-1/4)
def pairPlus (s : ℂ) : ℂ := s*((1/2:ℂ)+Complex.I*(pairHeight s:ℂ))
def pairMinus (s : ℂ) : ℂ := s*((1/2:ℂ)-Complex.I*(pairHeight s:ℂ))

theorem exhaustive_unit_pair (u v s : ℂ) (hu : Complex.normSq u = 1)
    (hv : Complex.normSq v = 1) (hsum : u+v=s) (hs : s ≠ 0) :
    (u = pairPlus s ∧ v = pairMinus s) ∨ (u = pairMinus s ∧ v = pairPlus s) := by
  let z := u/s
  have hsum' : z+v/s=1 := by
    dsimp [z]
    rw [← add_div, hsum, div_self hs]
  have hvz : v/s=1-z := by
    calc
      v/s = (z+v/s)-z := by ring
      _ = 1-z := by rw [hsum']
  have heq : Complex.normSq z = Complex.normSq (1-z) := by
    rw [← hvz]
    simp only [z, Complex.normSq_div, hu, hv]
  have hre : z.re = 1/2 := by
    simp only [Complex.normSq_apply, Complex.sub_re, Complex.sub_im,
      Complex.one_re, Complex.one_im] at heq
    nlinarith
  have hn : Complex.normSq z = 1/Complex.normSq s := by
    simp only [z, Complex.normSq_div, hu]
  have him : z.im^2 = 1/Complex.normSq s-1/4 := by
    rw [Complex.normSq_apply, hre] at hn
    nlinarith
  have hr : 0 ≤ 1/Complex.normSq s-1/4 := by rw [← him]; exact sq_nonneg _
  have hheight : z.im^2 = pairHeight s^2 := by
    unfold pairHeight
    rw [Real.sq_sqrt hr]
    exact him
  have huz : u=s*z := by dsimp [z]; field_simp
  have hvz' : v=s*(1-z) := by rw [← hvz]; field_simp
  rcases sq_eq_sq_iff_eq_or_eq_neg.mp hheight with hz | hz
  · left
    have hz' : z=(1/2:ℂ)+Complex.I*(pairHeight s:ℂ) := by
      apply Complex.ext <;> simp [hre, hz]
    constructor
    · rw [huz, hz']; rfl
    · rw [hvz', hz']
      unfold pairMinus
      ring
  · right
    have hz' : z=(1/2:ℂ)-Complex.I*(pairHeight s:ℂ) := by
      apply Complex.ext <;> simp [hre, hz]
    constructor
    · rw [huz, hz']; rfl
    · rw [hvz', hz']
      unfold pairPlus
      ring

end
end Centiradian20261006

#print axioms Centiradian20261006.exhaustive_unit_pair
