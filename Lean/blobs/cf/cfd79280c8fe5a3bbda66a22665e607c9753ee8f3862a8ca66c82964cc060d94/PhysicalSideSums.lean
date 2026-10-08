import Mathlib.Tactic.Ring
import CentiradianPhysical

/- Necessary shoulder side-column residual from an actual dephased Hadamard.
No maximality, radius, side-chart nonzero or distinct-column premise is needed. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace ShoulderTwoColumn20261008
open Centiradian20261006
open scoped ComplexConjugate BigOperators
noncomputable section

theorem physical_remaining_row_sum {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (i : Fin 6) (hi : i ≠ 0) :
    H i 3+H i 4+H i 5 = -1-H i 1-H i 2 := by
  have hfull : (∑ k : Fin 6, H i k)=0 := by
    simpa only [hd.1, map_one, mul_one, if_neg hi] using hH.2 i 0
  have hsix : H i 0+H i 1+H i 2+H i 3+H i 4+H i 5=0 := by
    simpa [Fin.sum_univ_succ, add_assoc] using hfull
  calc
    _ = (H i 0+H i 1+H i 2+H i 3+H i 4+H i 5)-H i 0-H i 1-H i 2 := by ring
    _ = _ := by rw [hsix, hd.2]; ring

#print axioms physical_remaining_row_sum

theorem physical_remaining_cross_sum {H : Mat6} (hH : Physical H) (hd : Dephased H) :
    H 2 3*conj (H 1 3)+H 2 4*conj (H 1 4)+H 2 5*conj (H 1 5) =
      -1-H 2 1*conj (H 1 1)-H 2 2*conj (H 1 2) := by
  have hfull : (∑ k : Fin 6, H 2 k*conj (H 1 k))=0 := by
    simpa using hH.2 (2 : Fin 6) (1 : Fin 6)
  have hsix : H 2 0*conj (H 1 0)+H 2 1*conj (H 1 1)+
      H 2 2*conj (H 1 2)+H 2 3*conj (H 1 3)+
      H 2 4*conj (H 1 4)+H 2 5*conj (H 1 5)=0 := by
    simpa [Fin.sum_univ_succ, add_assoc] using hfull
  calc
    _ = (H 2 0*conj (H 1 0)+H 2 1*conj (H 1 1)+
      H 2 2*conj (H 1 2)+H 2 3*conj (H 1 3)+
      H 2 4*conj (H 1 4)+H 2 5*conj (H 1 5))-
      H 2 0*conj (H 1 0)-H 2 1*conj (H 1 1)-H 2 2*conj (H 1 2) := by ring
    _ = _ := by rw [hsix, hd.2, hd.2]; simp


#print axioms physical_remaining_cross_sum
end
end ShoulderTwoColumn20261008
