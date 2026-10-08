import PhysicalAllSideMoments

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace ShoulderTwoColumn20261008
open Centiradian20261006 Centiradian20261006.NativeSigned20261006
open scoped ComplexConjugate BigOperators
noncomputable section

def remainingSlot (i j : Fin 3) : Fin 3 :=
  ⟨(3-i.val-j.val)%3,Nat.mod_lt _ (by decide)⟩

/-- Distinct physical positions leave exactly one position. No statement
of distinctness for phase values or certificate labels is made. -/
theorem three_sum_minus_two (z : Fin 3 → ℂ) (i j : Fin 3) (hij : i ≠ j) :
    (∑ k : Fin 3,z k)-z i-z j=z (remainingSlot i j) := by
  fin_cases i <;> fin_cases j <;>
    simp_all [Fin.sum_univ_succ,remainingSlot] <;> ring

/-- Exact remaining-column norm and mixed-product tests of possible_pair. -/
theorem physical_horizontal_pair_remainder {H : Mat6}
    (hH : Physical H) (hd : Dephased H) (i j : Fin 3) (hij : i ≠ j) :
    let s := -1-H 1 1-H 1 2
    let t := -1-H 2 1-H 2 2
    let r := -1-H 2 1*conj (H 1 1)-H 2 2*conj (H 1 2)
    let x := fun k => H 1 (sideIndex k)
    let y := fun k => H 2 (sideIndex k)
    Complex.normSq (s-x i-x j)=1 ∧
    Complex.normSq (t-y i-y j)=1 ∧
    r-y i*conj (x i)-y j*conj (x j)=(t-y i-y j)*conj (s-x i-x j) := by
  have hs : (∑ k : Fin 3,H 1 (sideIndex k))= -1-H 1 1-H 1 2 := by
    simpa [sideIndex,Fin.sum_univ_succ,add_assoc] using
      physical_remaining_row_sum hH hd 1 (by decide)
  have ht : (∑ k : Fin 3,H 2 (sideIndex k))= -1-H 2 1-H 2 2 := by
    simpa [sideIndex,Fin.sum_univ_succ,add_assoc] using
      physical_remaining_row_sum hH hd 2 (by decide)
  have hr : (∑ k : Fin 3,H 2 (sideIndex k)*conj (H 1 (sideIndex k)))=
      -1-H 2 1*conj (H 1 1)-H 2 2*conj (H 1 2) := by
    simpa [sideIndex,Fin.sum_univ_succ,add_assoc] using physical_remaining_cross_sum hH hd
  dsimp only
  rw [← hs,← ht,← hr,three_sum_minus_two _ i j hij,
    three_sum_minus_two _ i j hij,three_sum_minus_two _ i j hij]
  exact ⟨hH.1 1 _,hH.1 2 _,rfl⟩

theorem physical_vertical_pair_remainder {H : Mat6}
    (hH : Physical H) (hd : Dephased H) (i j : Fin 3) (hij : i ≠ j) :
    let s := -1-H 1 1-H 2 1
    let t := -1-H 1 2-H 2 2
    let r := -1-H 1 2*conj (H 1 1)-H 2 2*conj (H 2 1)
    let x := fun k => H (sideIndex k) 1
    let y := fun k => H (sideIndex k) 2
    Complex.normSq (s-x i-x j)=1 ∧
    Complex.normSq (t-y i-y j)=1 ∧
    r-y i*conj (x i)-y j*conj (x j)=(t-y i-y j)*conj (s-x i-x j) := by
  exact physical_horizontal_pair_remainder (physical_transpose hH) ⟨hd.2,hd.1⟩ i j hij

end
#print axioms three_sum_minus_two
#print axioms physical_horizontal_pair_remainder
#print axioms physical_vertical_pair_remainder
end ShoulderTwoColumn20261008
