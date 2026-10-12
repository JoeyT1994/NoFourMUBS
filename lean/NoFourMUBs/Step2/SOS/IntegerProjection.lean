import OAI.Analysis.MutuallyUnbiased.Certificate.IntegerMerge
import Mathlib.Algebra.BigOperators.Fin

/-!
Exact collection for the normalization DAG. This is the same integer sparse
merge checker used by the final SOS certificate, with a short finite-list
wrapper and a common-denominator rule. No floating-point arithmetic occurs.
-/

namespace NoFourMUBs.Step2.SOS.Normalization

open scoped BigOperators
open OAI.MUB6.Certificate

def sumScaledList {ι : Type*} [LinearOrder ι] :
    List (ℤ × Integer.Sparse ι) → Integer.Sparse ι
  | [] => []
  | (c, v) :: vs => Integer.Sparse.merge (Integer.Sparse.scale c v) (sumScaledList vs)

theorem sumScaledList_eval {ι : Type*} [LinearOrder ι]
    (vs : List (ℤ × Integer.Sparse ι)) (x : ι → ℝ) :
    Integer.Sparse.eval (sumScaledList vs) x =
      (vs.map fun t => (t.1 : ℝ) * Integer.Sparse.eval t.2 x).sum := by
  induction vs with
  | nil => rfl
  | cons t vs ih => simp [sumScaledList, ih]

def sumScaled {ι : Type*} [LinearOrder ι] {m : ℕ}
    (rows : Fin m → Integer.Sparse ι) (weights : Fin m → ℤ) : Integer.Sparse ι :=
  sumScaledList (List.ofFn fun i => (weights i, rows i))

theorem sumScaled_eval {ι : Type*} [LinearOrder ι] {m : ℕ}
    (rows : Fin m → Integer.Sparse ι) (weights : Fin m → ℤ) (x : ι → ℝ) :
    Integer.Sparse.eval (sumScaled rows weights) x =
      ∑ i, (weights i : ℝ) * Integer.Sparse.eval (rows i) x := by
  rw [sumScaled, sumScaledList_eval, List.map_ofFn, List.sum_ofFn]
  rfl

/-- Transport a scalar contraction to its checked, collected projection.
The finite certificate checks the denominator relations and a sparse zero. -/
theorem integer_projection {ι : Type*} [LinearOrder ι] {m : ℕ}
    (x : ι → ℝ) (a : ℝ) (z : Fin m → ℝ)
    (c d L k : ℤ) (denominators weights : Fin m → ℤ)
    (target : Integer.Sparse ι) (children : Fin m → Integer.Sparse ι)
    (hk : k ≠ 0) (hkd : k * d = c * L)
    (hweights : ∀ i, weights i * denominators i = L)
    (hrelation : (c : ℝ) * a + ∑ i, z i = 0)
    (hchildren : ∀ i, (denominators i : ℝ) * z i =
      Integer.Sparse.eval (children i) x)
    (hcheck : Integer.Sparse.merge (Integer.Sparse.scale k target)
      (sumScaled children weights) = []) :
    (d : ℝ) * a = Integer.Sparse.eval target x := by
  have hcheck' := congrArg (fun v => Integer.Sparse.eval v x) hcheck
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, sumScaled_eval] at hcheck'
  change (k : ℝ) * Integer.Sparse.eval target x +
    ∑ i, (weights i : ℝ) * Integer.Sparse.eval (children i) x = 0 at hcheck'
  have hs : (∑ i, (weights i : ℝ) * Integer.Sparse.eval (children i) x) =
      (L : ℝ) * ∑ i, z i := by
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro i _
    rw [← hchildren i, ← mul_assoc, ← Int.cast_mul, hweights i]
  rw [hs] at hcheck'
  have hkd' : (k : ℝ) * (d : ℝ) = (c : ℝ) * (L : ℝ) := by exact_mod_cast hkd
  have hk' : (k : ℝ) ≠ 0 := by exact_mod_cast hk
  apply mul_left_cancel₀ hk'
  calc
    (k : ℝ) * ((d : ℝ) * a) = (L : ℝ) * ((c : ℝ) * a) := by
      rw [← mul_assoc, hkd']
      ring
    _ = (k : ℝ) * Integer.Sparse.eval target x := by
      have h := congrArg (fun t : ℝ => (L : ℝ) * t) hrelation
      simp only [mul_add, mul_zero] at h
      linarith

end NoFourMUBs.Step2.SOS.Normalization
