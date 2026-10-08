import PhysicalAllSideMoments

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace ShoulderTwoColumn20261008
open Centiradian20261006 Centiradian20261006.NativeSigned20261006
open scoped ComplexConjugate BigOperators
noncomputable section

theorem two_unit_sum_norm_le_two (z w : ℂ)
    (hz : Complex.normSq z=1) (hw : Complex.normSq w=1) : ‖z+w‖≤2 := by
  calc
    _ ≤ ‖z‖+‖w‖ := norm_add_le z w
    _ = 2 := by simp [Complex.norm_def,hz,hw]

theorem three_unit_remaining_bound (z : Fin 3 → ℂ)
    (hz : ∀ j, Complex.normSq (z j)=1) (i : Fin 3) :
    ‖(∑ j : Fin 3,z j)-z i‖≤2 := by
  fin_cases i
  · have he : (∑ j : Fin 3,z j)-z 0=z 1+z 2 := by
      simp [Fin.sum_univ_succ] <;> ring
    rw [he]; exact two_unit_sum_norm_le_two _ _ (hz 1) (hz 2)
  · have he : (∑ j : Fin 3,z j)-z 1=z 0+z 2 := by
      simp [Fin.sum_univ_succ] <;> ring
    rw [he]; exact two_unit_sum_norm_le_two _ _ (hz 0) (hz 2)
  · have he : (∑ j : Fin 3,z j)-z 2=z 0+z 1 := by
      simp [Fin.sum_univ_succ] <;> ring
    rw [he]; exact two_unit_sum_norm_le_two _ _ (hz 0) (hz 1)

/-- All three modulus bounds used before the shoulder moment test. -/
theorem physical_horizontal_bounds {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (i : Fin 3) :
    ‖(-1-H 1 1-H 1 2)-H 1 (sideIndex i)‖≤2 ∧
    ‖(-1-H 2 1-H 2 2)-H 2 (sideIndex i)‖≤2 ∧
    ‖(-1-H 2 1*conj (H 1 1)-H 2 2*conj (H 1 2))-
      H 2 (sideIndex i)*conj (H 1 (sideIndex i))‖≤2 := by
  have hs : (∑ j : Fin 3,H 1 (sideIndex j))= -1-H 1 1-H 1 2 := by
    simpa [sideIndex,Fin.sum_univ_succ,add_assoc] using
      physical_remaining_row_sum hH hd 1 (by decide)
  have ht : (∑ j : Fin 3,H 2 (sideIndex j))= -1-H 2 1-H 2 2 := by
    simpa [sideIndex,Fin.sum_univ_succ,add_assoc] using
      physical_remaining_row_sum hH hd 2 (by decide)
  have hr : (∑ j : Fin 3,H 2 (sideIndex j)*conj (H 1 (sideIndex j)))=
      -1-H 2 1*conj (H 1 1)-H 2 2*conj (H 1 2) := by
    simpa [sideIndex,Fin.sum_univ_succ,add_assoc] using physical_remaining_cross_sum hH hd
  rw [← hs,← ht,← hr]
  refine ⟨three_unit_remaining_bound _ (fun j => hH.1 1 (sideIndex j)) i,
    three_unit_remaining_bound _ (fun j => hH.1 2 (sideIndex j)) i,?_⟩
  apply three_unit_remaining_bound
  intro j
  simp [Complex.normSq_mul,Complex.normSq_conj,hH.1]

theorem physical_vertical_bounds {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (i : Fin 3) :
    ‖(-1-H 1 1-H 2 1)-H (sideIndex i) 1‖≤2 ∧
    ‖(-1-H 1 2-H 2 2)-H (sideIndex i) 2‖≤2 ∧
    ‖(-1-H 1 2*conj (H 1 1)-H 2 2*conj (H 2 1))-
      H (sideIndex i) 2*conj (H (sideIndex i) 1)‖≤2 := by
  exact physical_horizontal_bounds (physical_transpose hH) ⟨hd.2,hd.1⟩ i

end
#print axioms two_unit_sum_norm_le_two
#print axioms three_unit_remaining_bound
#print axioms physical_horizontal_bounds
#print axioms physical_vertical_bounds
end ShoulderTwoColumn20261008
