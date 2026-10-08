import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Data.Finset.Max
import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity

/-! A kernel-checkable radial contraction interface, valid at every positive
scale. No division by a determinant cone, a radicand, or a cutoff is used. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace Centiradian20261006
noncomputable section

def IsSupRadius {ι : Type*} (x : ι → ℝ) (h : ℝ) : Prop :=
  0 ≤ h ∧ (∀ i, |x i| ≤ h) ∧ ∃ i, |x i| = h

theorem exists_supRadius {ι : Type*} [Fintype ι] [Nonempty ι] (x : ι → ℝ) :
    ∃ h, IsSupRadius x h := by
  classical
  obtain ⟨i, _, hi⟩ := Finset.univ.exists_max_image (fun i => |x i|) Finset.univ_nonempty
  exact ⟨|x i|, abs_nonneg _, fun j => hi j (Finset.mem_univ _), i, rfl⟩

/-- Abstract error and residual estimates force the entire normalized box
coordinate to vanish. The row attaining the sup norm is retained explicitly. -/
theorem radial_contraction {ι : Type*} {x f e b : ι → ℝ} {h : ℝ}
    (hh : IsSupRadius x h) (h1 : h ≤ 1)
    (hb : ∀ i, 0 ≤ b i)
    (herr : ∀ i, |f i-x i| ≤ e i*h)
    (hres : ∀ i, |f i| ≤ b i*h^2)
    (hscore : ∀ i, e i+b i < 1) : ∀ i, x i = 0 := by
  obtain ⟨hn, hbound, k, hk⟩ := hh
  have hsquare : h^2 ≤ h := by nlinarith
  have htriangle : |x k| ≤ |f k-x k| + |f k| := by
    simpa only [sub_zero, abs_sub_comm (x k) (f k)] using abs_sub_le (x k) (f k) 0
  have hx : h ≤ (e k+b k)*h := by
    calc
      h = |x k| := hk.symm
      _ ≤ |f k-x k|+|f k| := htriangle
      _ ≤ e k*h+b k*h^2 := add_le_add (herr k) (hres k)
      _ ≤ e k*h+b k*h := add_le_add le_rfl (mul_le_mul_of_nonneg_left hsquare (hb k))
      _ = (e k+b k)*h := by ring
  have hz : h = 0 := by nlinarith [hscore k]
  intro i
  apply abs_eq_zero.mp
  exact le_antisymm (by simpa [hz] using hbound i) (abs_nonneg _)

/-- Cubic retained errors and the fourth-order radial remainder reduce to
the contraction error coefficient without replacing the tail by a fixed error. -/
theorem cubic_radial_error {h E L T err : ℝ} (hn : 0 ≤ h) (h1 : h ≤ 1)
    (hL : 0 ≤ L) (hT : 0 ≤ T)
    (he : |err| ≤ E*h+L*h^2+T*h^4) : |err| ≤ (E+L+T)*h := by
  have h2 : h^2 ≤ h := by nlinarith
  have h4 : h^4 ≤ h := by
    have h22 : h^2*h^2 ≤ h*h := mul_self_le_mul_self (sq_nonneg h) h2
    nlinarith
  calc
    |err| ≤ E*h+L*h^2+T*h^4 := he
    _ ≤ E*h+L*h+T*h := add_le_add
      (add_le_add le_rfl (mul_le_mul_of_nonneg_left h2 hL))
      (mul_le_mul_of_nonneg_left h4 hT)
    _ = (E+L+T)*h := by ring

/-- The exact largest local score retained by the corrected native replay
is strictly below one. This arithmetic statement does not certify any Taylor
coefficient or bind the score to the actual physical residuals. -/
theorem reported_max_score_lt_one :
    (7832700243608031 : ℝ) / 9007199254740992 < 1 := by norm_num

end
end Centiradian20261006

#print axioms Centiradian20261006.exists_supRadius
#print axioms Centiradian20261006.radial_contraction
#print axioms Centiradian20261006.cubic_radial_error
#print axioms Centiradian20261006.reported_max_score_lt_one
