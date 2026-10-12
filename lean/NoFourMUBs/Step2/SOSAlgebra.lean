import Mathlib.Data.Complex.Basic
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Tactic

/-!
The order and complex-number algebra in the repaired coverage argument.
These results do not assume invertibility or distinct side labels.
The moment identity itself is a separate, explicitly required input.
-/

namespace NoFourMUBs.Step2

theorem side_eq_or_conjugate {a b : ℂ}
    (hre : a.re = b.re) (him : a.im ^ 2 = b.im ^ 2) :
    a = b ∨ a = star b := by
  have h : (a.im - b.im) * (a.im + b.im) = 0 := by nlinarith
  rcases mul_eq_zero.mp h with h | h
  · left
    apply Complex.ext hre
    linarith
  · right
    apply Complex.ext
    · simpa using hre
    · simp only [Complex.star_def, Complex.conj_im]
      linarith

/-- Recover the two intrinsic labels from real scalar identities. -/
theorem signature_two_labels {z : ℂ} {χ R : ℝ}
    (hre : 2 * z.re = χ) (him : 4 * z.im ^ 2 = R) :
    2 * z = (χ : ℂ) + (Real.sqrt R : ℂ) * Complex.I ∨
    2 * z = (χ : ℂ) - (Real.sqrt R : ℂ) * Complex.I := by
  have hR : 0 ≤ R := by nlinarith [sq_nonneg z.im]
  have hs := Real.sq_sqrt hR
  have hz : (2 * z.im - Real.sqrt R) * (2 * z.im + Real.sqrt R) = 0 := by
    nlinarith
  rcases mul_eq_zero.mp hz with h | h
  · left
    apply Complex.ext
    · simpa using hre
    · have hi : 2 * z.im = Real.sqrt R := by linarith
      simpa [Complex.mul_im] using hi
  · right
    apply Complex.ext
    · simpa using hre
    · have hi : 2 * z.im = -Real.sqrt R := by linarith
      simpa [Complex.mul_im] using hi

/-- If the two adjacent labels differ, they are the opposite square-root labels.
At a zero discriminant the alternatives coalesce, so differing labels also
prove strictness; no separate regularity assumption is needed. -/
theorem differing_signatures_are_matched {a b : ℂ} {χ R : ℝ}
    (ha : 2 * a.re = χ) (hb : 2 * b.re = χ)
    (haR : 4 * a.im ^ 2 = R) (hbR : 4 * b.im ^ 2 = R)
    (hne : a ≠ b) :
    0 < R ∧
      ((2 * a = (χ : ℂ) + (Real.sqrt R : ℂ) * Complex.I ∧
        2 * b = (χ : ℂ) - (Real.sqrt R : ℂ) * Complex.I) ∨
       (2 * a = (χ : ℂ) - (Real.sqrt R : ℂ) * Complex.I ∧
        2 * b = (χ : ℂ) + (Real.sqrt R : ℂ) * Complex.I)) := by
  have him : a.im ≠ 0 := by
    intro h0
    have h1 : b.im = 0 := by nlinarith [sq_nonneg b.im]
    exact hne (Complex.ext (by linarith) (h0.trans h1.symm))
  refine ⟨by nlinarith [sq_pos_of_ne_zero him], ?_⟩
  rcases signature_two_labels ha haR with hap | ham <;>
    rcases signature_two_labels hb hbR with hbp | hbm
  · exact (hne (mul_left_cancel₀ (two_ne_zero (α := ℂ)) (hap.trans hbp.symm))).elim
  · exact Or.inl ⟨hap, hbm⟩
  · exact Or.inr ⟨ham, hbp⟩
  · exact (hne (mul_left_cancel₀ (two_ne_zero (α := ℂ)) (ham.trans hbm.symm))).elim

/-- A finite sum of squared complementary-signature defects cannot be
cancelled by a real square. This is the sole positivity step in coverage. -/
theorem complementary_of_sos {ι : Type*} [Fintype ι]
    (a b : ι → ℂ) {w t : ℝ} (hw : 0 < w)
    (h : w * (∑ i, Complex.normSq (a i - star (b i))) + t ^ 2 = 0) :
    ∀ i, a i = star (b i) := by
  have hn : ∀ i, 0 ≤ Complex.normSq (a i - star (b i)) :=
    fun i => Complex.normSq_nonneg _
  have hsum : 0 ≤ ∑ i, Complex.normSq (a i - star (b i)) :=
    Finset.sum_nonneg fun i _ => hn i
  have hz : ∑ i, Complex.normSq (a i - star (b i)) = 0 := by
    nlinarith [sq_nonneg t]
  intro i
  have hi := Finset.single_le_sum (fun j _ => hn j) (Finset.mem_univ i)
  rw [hz] at hi
  have hi0 := le_antisymm hi (hn i)
  exact sub_eq_zero.mp (Complex.normSq_eq_zero.mp hi0)

/-- Same labels plus the conditional sum of squares force every corner
discriminant to vanish, including corners with singular side blocks. -/
theorem all_critical_of_same_and_sos {ι : Type*} [Fintype ι]
    (a b : ι → ℂ) (R : ι → ℝ) {w t : ℝ} (hw : 0 < w)
    (hR : ∀ i, R i = 4 * (a i).im ^ 2)
    (hsame : ∀ i, a i = b i)
    (hsos : w * (∑ i, Complex.normSq (a i - star (b i))) + t ^ 2 = 0) :
    ∀ i, R i = 0 := by
  have hc := complementary_of_sos a b hw hsos
  intro i
  have hi := congrArg Complex.im (hc i)
  rw [← hsame i] at hi
  simp only [Complex.star_def, Complex.conj_im] at hi
  have him : (a i).im = 0 := by linarith
  rw [hR, him]
  ring

end NoFourMUBs.Step2
