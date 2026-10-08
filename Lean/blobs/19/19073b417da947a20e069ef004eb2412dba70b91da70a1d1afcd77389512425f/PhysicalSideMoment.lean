import TwoColumnMoment
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

/-- Literal complex residual used to reject a candidate distinguished side
column. Repeated column labels remain permitted by every hypothesis. -/
theorem physical_side_column_residual_zero {H : Mat6}
    (hH : Physical H) (hd : Dephased H) :
    let s := -1-H 1 1-H 1 2
    let t := -1-H 2 1-H 2 2
    let r := -1-H 2 1*conj (H 1 1)-H 2 2*conj (H 1 2)
    let A := s-H 1 3
    let B := t-H 2 3
    let C := r-H 2 3*conj (H 1 3)
    A*C*conj B-
      ((Complex.normSq A+Complex.normSq B+Complex.normSq C-4 : ℝ) : ℂ)=0 := by
  have hs := physical_remaining_row_sum hH hd 1 (by decide)
  have ht := physical_remaining_row_sum hH hd 2 (by decide)
  have hr := physical_remaining_cross_sum hH hd
  dsimp only
  rw [← hs, ← ht, ← hr]
  exact side_column_residual_zero (H 1 3) (H 2 3) (H 1 4) (H 1 5) (H 2 4) (H 2 5)
    (hH.1 1 4) (hH.1 1 5) (hH.1 2 4) (hH.1 2 5)

end
#print axioms physical_remaining_row_sum
#print axioms physical_remaining_cross_sum
#print axioms physical_side_column_residual_zero
end ShoulderTwoColumn20261008
