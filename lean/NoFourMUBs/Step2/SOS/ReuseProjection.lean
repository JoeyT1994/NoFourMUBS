import NoFourMUBs.Step2.SOS.IntegerProjection
import OAI.Analysis.MutuallyUnbiased.Certificate.Algebra
import Mathlib.Data.Rat.Defs

/-! Reuse a proved rational projection with new coordinate indices and a
checked common denominator. A checked list permutation changes only the
order of summation; no sorting algorithm needs to be re-proved. -/

namespace NoFourMUBs.Step2.SOS.Normalization

open OAI.MUB6.Certificate

def integerLift {ι κ : Type*} (d : ℤ) (f : ι → κ) (v : Sparse ι) : Integer.Sparse κ :=
  v.map fun t => (f t.1, ((d : ℚ) * t.2).num)

def denominatorsClear {ι : Type*} (d : ℤ) (v : Sparse ι) : Bool :=
  v.all fun t => decide (((d : ℚ) * t.2).den = 1)

theorem integerLift_eval {ι κ : Type*} (d : ℤ) (f : ι → κ)
    (v : Sparse ι) (h : denominatorsClear d v = true) (x : κ → ℝ) :
    Integer.Sparse.eval (integerLift d f v) x =
      (d : ℝ) * Sparse.eval v (fun i => x (f i)) := by
  induction v with
  | nil => simp [integerLift, Integer.Sparse.eval, Sparse.eval]
  | cons t v ih =>
    have hh : (((d : ℚ) * t.2).den = 1) ∧ denominatorsClear d v = true := by
      simpa [denominatorsClear] using h
    have he : (((d : ℚ) * t.2).num : ℝ) = (d : ℝ) * (t.2 : ℝ) := by
      exact_mod_cast Rat.coe_int_num_of_den_eq_one hh.1
    change (((d : ℚ) * t.2).num : ℝ) * x (f t.1) +
      Integer.Sparse.eval (integerLift d f v) x =
      (d : ℝ) * ((t.2 : ℝ) * x (f t.1) + Sparse.eval v (fun i => x (f i)))
    rw [he, ih hh.2]
    ring

theorem reuse_projection {ι κ : Type*}
    (d : ℤ) (f : ι → κ) (v : Sparse ι) (w : Integer.Sparse κ)
    (hclear : denominatorsClear d v = true)
    (hcheck : w.Perm (integerLift d f v))
    (x : κ → ℝ) (y : ι → ℝ) (hy : ∀ i, x (f i) = y i)
    (a : ℝ) (ha : a = Sparse.eval v y) :
    (d : ℝ) * a = Integer.Sparse.eval w x := by
  rw [Integer.Sparse.eval_perm hcheck x, integerLift_eval d f v hclear]
  simp only [hy, ha]

end NoFourMUBs.Step2.SOS.Normalization
