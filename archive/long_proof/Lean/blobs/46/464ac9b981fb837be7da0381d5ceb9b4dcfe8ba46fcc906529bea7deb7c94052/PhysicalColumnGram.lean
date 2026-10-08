import CentiradianPhysical
import Mathlib.Data.Matrix.Mul

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.NativeSigned20261006
open scoped ComplexConjugate BigOperators
noncomputable section

/-- A square physical matrix's column Gram identity is derived from its row
Gram hypothesis; column orthogonality is not an extra research premise. -/
theorem physical_column_gram {H : Mat6} (hH : Physical H) (i j : Fin 6) :
    (∑ k : Fin 6, H k i*conj (H k j)) = if i=j then 6 else 0 := by
  let B : Matrix (Fin 6) (Fin 6) ℂ := fun i j => (1/6:ℂ)*conj (H j i)
  have hright : (H : Matrix (Fin 6) (Fin 6) ℂ)*B=1 := by
    ext i j
    change (∑ k : Fin 6, H i k*((1/6:ℂ)*conj (H j k))) = _
    calc
      _ = (1/6:ℂ)*(∑ k : Fin 6, H i k*conj (H j k)) := by
        rw [Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro k _
        ring
      _ = _ := by rw [hH.2 i j]; by_cases h : i=j <;> simp [Matrix.one_apply,h]
  have hleft : B*(H : Matrix (Fin 6) (Fin 6) ℂ)=1 := mul_eq_one_comm.mp hright
  calc
    _ = (6:ℂ)*(∑ k : Fin 6, ((1/6:ℂ)*conj (H k j))*H k i) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro k _
      ring
    _ = (6:ℂ)*(1 : Matrix (Fin 6) (Fin 6) ℂ) j i := by
      exact congrArg (fun z : ℂ => 6*z) (congrFun (congrFun hleft j) i)
    _ = _ := by by_cases h : i=j <;> simp [Matrix.one_apply,h,Ne.symm h]

/-- Transpose transport for the actual physical domain, including every
column orthogonality equation needed by the completion chart. -/
theorem physical_transpose {H : Mat6} (hH : Physical H) :
    Physical (fun i j => H j i) := by
  constructor
  · intro i j
    exact hH.1 j i
  · intro i j
    exact physical_column_gram hH i j

end
end Centiradian20261006.NativeSigned20261006

#print axioms Centiradian20261006.NativeSigned20261006.physical_column_gram
#print axioms Centiradian20261006.NativeSigned20261006.physical_transpose
