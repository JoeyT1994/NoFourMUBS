import TwoColumnMoment
import PhysicalSideSums

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace ShoulderTwoColumn20261008
open Centiradian20261006
open scoped ComplexConjugate BigOperators
noncomputable section

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
#print axioms physical_side_column_residual_zero
end ShoulderTwoColumn20261008
