import SparsePolynomialIntervals

namespace Mub6.Classification.ShiftedPolynomialIntervals
open Mub6.Numerical.IntervalKernel MvPolynomial
open Mub6.Classification.SparsePolynomialIntervals
noncomputable section

/-- Substitute x = c + delta before normalization; c is exact rational data. -/
def shiftedPolynomial {σ : Type*} (c : σ → ℚ) (P : MvPolynomial σ ℚ) :
    MvPolynomial σ ℚ := eval₂ C (fun i => C (c i) + X i) P

def shiftedBoxes {σ : Type*} (B : σ → Interval) (c : σ → ℚ) : σ → Interval :=
  fun i => sub (B i) (point (c i))

theorem shiftedPolynomial_eval {σ : Type*} (c : σ → ℚ) (p : σ → ℝ)
    (P : MvPolynomial σ ℚ) :
    eval₂ (algebraMap ℚ ℝ) p (shiftedPolynomial c P) =
      eval₂ (algebraMap ℚ ℝ) (fun i => (c i : ℝ) + p i) P := by
  unfold shiftedPolynomial
  rw [← eval₂_assoc]
  simp

theorem shiftedBoxes_sound {σ : Type*} (B : σ → Interval) (c : σ → ℚ)
    (p : σ → ℝ) (hp : ∀ i, Mem (B i) (p i)) :
    ∀ i, Mem (shiftedBoxes B c i) (p i - c i) :=
  fun i => mem_sub (hp i) (mem_point (c i))

theorem enclose_shifted_polynomial {σ : Type*} (B : σ → Interval) (c : σ → ℚ)
    (p : σ → ℝ) (hp : ∀ i, Mem (B i) (p i))
    (ts : Program σ) (P : MvPolynomial σ ℚ)
    (h : programPolynomial ts = shiftedPolynomial c P) :
    Mem (enclose (shiftedBoxes B c) ts) (eval₂ (algebraMap ℚ ℝ) p P) := by
  have hr := enclose_polynomial (shiftedBoxes B c) (fun i => p i - c i)
    (shiftedBoxes_sound B c p hp) ts (shiftedPolynomial c P) h
  simpa only [shiftedPolynomial_eval, add_sub_cancel] using hr

#print axioms Mub6.Classification.ShiftedPolynomialIntervals.shiftedPolynomial_eval
#print axioms Mub6.Classification.ShiftedPolynomialIntervals.shiftedBoxes_sound
#print axioms Mub6.Classification.ShiftedPolynomialIntervals.enclose_shifted_polynomial
end
end Mub6.Classification.ShiftedPolynomialIntervals
