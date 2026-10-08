import PhysicalSideMoment
import PhysicalColumnGram
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace ShoulderTwoColumn20261008
open Centiradian20261006 Centiradian20261006.NativeSigned20261006
open scoped ComplexConjugate
noncomputable section

def sideIndex (i : Fin 3) : Fin 6 := ![3,4,5] i

def columnResidual (s t r x y : ℂ) : ℂ :=
  (s-x)*(r-y*conj x)*conj (t-y)-
    ((Complex.normSq (s-x)+Complex.normSq (t-y)+
      Complex.normSq (r-y*conj x)-4 : ℝ) : ℂ)

/-- All three side columns satisfy the same necessary residual. This is an
explicit cyclic rebinding of the four-unit identity, not a distinctness rule. -/
theorem physical_horizontal_residuals {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (i : Fin 3) :
    columnResidual (-1-H 1 1-H 1 2) (-1-H 2 1-H 2 2)
      (-1-H 2 1*conj (H 1 1)-H 2 2*conj (H 1 2))
      (H 1 (sideIndex i)) (H 2 (sideIndex i))=0 := by
  have hs := physical_remaining_row_sum hH hd 1 (by decide)
  have ht := physical_remaining_row_sum hH hd 2 (by decide)
  have hr := physical_remaining_cross_sum hH hd
  fin_cases i
  · exact physical_side_column_residual_zero hH hd
  · change columnResidual _ _ _ (H 1 4) (H 2 4)=0
    rw [← hs, ← ht, ← hr]
    have hs' : H 1 3+H 1 4+H 1 5=H 1 4+H 1 5+H 1 3 := by ring
    have ht' : H 2 3+H 2 4+H 2 5=H 2 4+H 2 5+H 2 3 := by ring
    have hr' : H 2 3*conj (H 1 3)+H 2 4*conj (H 1 4)+H 2 5*conj (H 1 5)=
        H 2 4*conj (H 1 4)+H 2 5*conj (H 1 5)+H 2 3*conj (H 1 3) := by ring
    rw [hs', ht', hr']
    exact side_column_residual_zero (H 1 4) (H 2 4) (H 1 5) (H 1 3) (H 2 5) (H 2 3)
      (hH.1 1 5) (hH.1 1 3) (hH.1 2 5) (hH.1 2 3)
  · change columnResidual _ _ _ (H 1 5) (H 2 5)=0
    rw [← hs, ← ht, ← hr]
    have hs' : H 1 3+H 1 4+H 1 5=H 1 5+H 1 3+H 1 4 := by ring
    have ht' : H 2 3+H 2 4+H 2 5=H 2 5+H 2 3+H 2 4 := by ring
    have hr' : H 2 3*conj (H 1 3)+H 2 4*conj (H 1 4)+H 2 5*conj (H 1 5)=
        H 2 5*conj (H 1 5)+H 2 3*conj (H 1 3)+H 2 4*conj (H 1 4) := by ring
    rw [hs', ht', hr']
    exact side_column_residual_zero (H 1 5) (H 2 5) (H 1 3) (H 1 4) (H 2 3) (H 2 4)
      (hH.1 1 3) (hH.1 1 4) (hH.1 2 3) (hH.1 2 4)

/-- The vertical convention follows from the checked physical transpose
lemma. In particular r uses H12*conj(H11), with no reversed conjugation. -/
theorem physical_vertical_residuals {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (i : Fin 3) :
    columnResidual (-1-H 1 1-H 2 1) (-1-H 1 2-H 2 2)
      (-1-H 1 2*conj (H 1 1)-H 2 2*conj (H 2 1))
      (H (sideIndex i) 1) (H (sideIndex i) 2)=0 := by
  have ht : Physical (fun i j => H j i) := physical_transpose hH
  have hdT : Dephased (fun i j => H j i) := ⟨hd.2,hd.1⟩
  exact physical_horizontal_residuals ht hdT i

end
#print axioms physical_horizontal_residuals
#print axioms physical_vertical_residuals
end ShoulderTwoColumn20261008
