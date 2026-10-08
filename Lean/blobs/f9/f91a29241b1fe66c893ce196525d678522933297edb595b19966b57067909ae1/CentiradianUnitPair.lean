import CentiradianPhysical
import Mathlib.Analysis.Real.Sqrt
import Mathlib.Tactic.FieldSimp

/-! Exhaustive two-point unit-circle completion, used by each side row/column.
Both orientations are retained; no selected branch is assumed. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace Centiradian20261006
open scoped BigOperators ComplexConjugate
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

theorem exhaustive_anchored_row (v u w S : ℂ)
    (hv : Complex.normSq v = 1) (hu : Complex.normSq u = 1) (hw : Complex.normSq w = 1)
    (hsum : v+u+w=S) (hs : S*conj v-1 ≠ 0) :
    (u*conj v = pairPlus (S*conj v-1) ∧ w*conj v = pairMinus (S*conj v-1)) ∨
      (u*conj v = pairMinus (S*conj v-1) ∧ w*conj v = pairPlus (S*conj v-1)) := by
  apply exhaustive_unit_pair
  · simp only [Complex.normSq_mul, Complex.normSq_conj, hu, hv, mul_one]
  · simp only [Complex.normSq_mul, Complex.normSq_conj, hw, hv, mul_one]
  · calc
      u*conj v+w*conj v = (v+u+w)*conj v-v*conj v := by ring
      _ = S*conj v-1 := by rw [hsum, Complex.mul_conj, hv]; rfl
  · exact hs

/-- Direct binding of the exhaustive two-point chart to a side row of an
actual dephased physical six-by-six Hadamard. The nonzero chart guard remains
visible; proving it uniformly from the seed radius is a separate obligation. -/
theorem physical_side_row_pair {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (i : Fin 6) (hi : i ≠ 0)
    (ha : (-1-H i 1-H i 2)*conj (H i 3)-1 ≠ 0) :
    let a := (-1-H i 1-H i 2)*conj (H i 3)-1
    (H i 4*conj (H i 3) = pairPlus a ∧ H i 5*conj (H i 3) = pairMinus a) ∨
      (H i 4*conj (H i 3) = pairMinus a ∧ H i 5*conj (H i 3) = pairPlus a) := by
  have hfull : (∑ k : Fin 6, H i k) = 0 := by
    simpa only [hd.1, map_one, mul_one, if_neg hi] using hH.2 i 0
  have hsix : H i 0+H i 1+H i 2+H i 3+H i 4+H i 5 = 0 := by
    simpa [Fin.sum_univ_succ, add_assoc] using hfull
  have hsum : H i 3+H i 4+H i 5 = -1-H i 1-H i 2 := by
    calc
      _ = (H i 0+H i 1+H i 2+H i 3+H i 4+H i 5)-H i 0-H i 1-H i 2 := by ring
      _ = -1-H i 1-H i 2 := by rw [hsix, hd.2]; ring
  exact exhaustive_anchored_row _ _ _ _ (hH.1 i 3) (hH.1 i 4) (hH.1 i 5) hsum ha

end
end Centiradian20261006

#print axioms Centiradian20261006.exhaustive_unit_pair
#print axioms Centiradian20261006.exhaustive_anchored_row
#print axioms Centiradian20261006.physical_side_row_pair
