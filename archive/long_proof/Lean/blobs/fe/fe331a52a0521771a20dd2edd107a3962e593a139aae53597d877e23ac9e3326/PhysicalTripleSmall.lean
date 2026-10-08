import PhysicalSideCap
import AnchoredPhaseBounds

set_option autoImplicit false
set_option maxHeartbeats 1600000
namespace Seed0024Mathematical20261007
open scoped BigOperators ComplexConjugate
open Centiradian20261006
noncomputable section

theorem physical_tail_l1_small {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (hsmall : Complex.normSq (H 1 1-1)+Complex.normSq (H 1 2-1) ≤
      5*((77:ℝ)/100000)^2) :
    ‖H 1 3+1‖+‖H 1 4+1‖+‖H 1 5+1‖ < (31:ℝ)/8*((77:ℝ)/100000) := by
  have hs := physical_complementary_row_defect hH hd
  rw [← norm_square_eq_normSq,← norm_square_eq_normSq,← norm_square_eq_normSq] at hs
  have ht : ‖H 1 3+1‖^2+‖H 1 4+1‖^2+‖H 1 5+1‖^2 ≤
      5*((77:ℝ)/100000)^2 := hs.trans_le hsmall
  have hcs : (‖H 1 3+1‖+‖H 1 4+1‖+‖H 1 5+1‖)^2 ≤
      3*(‖H 1 3+1‖^2+‖H 1 4+1‖^2+‖H 1 5+1‖^2) := by
    nlinarith [sq_nonneg (‖H 1 3+1‖-‖H 1 4+1‖),
      sq_nonneg (‖H 1 3+1‖-‖H 1 5+1‖), sq_nonneg (‖H 1 4+1‖-‖H 1 5+1‖)]
  nlinarith [norm_nonneg (H 1 3+1),norm_nonneg (H 1 4+1),norm_nonneg (H 1 5+1)]

theorem physical_both_triple_sums_small {H : Mat6} (hH : Physical H)
    (hd : Dephased H) (i : Fin 6) (hi0 : i≠0) (hi1 : i≠1)
    (hsmall : Complex.normSq (H 1 1-1)+Complex.normSq (H 1 2-1) ≤
      5*((77:ℝ)/100000)^2)
    (hl1 : ‖H 1 1-1‖+‖H 1 2-1‖ ≤ 3*((77:ℝ)/100000)) :
    ‖H i 0+H i 1+H i 2‖ < (53:ℝ)/20000 ∧
      ‖H i 3+H i 4+H i 5‖ < (53:ℝ)/20000 := by
  have hb := physical_half_row_sum_bound hH hd i hi0 hi1
  have ht := physical_tail_l1_small hH hd hsmall
  simp only [Fin.sum_univ_succ] at hb
  change 2*‖H i 0+H i 1+H i 2‖ ≤
    ‖rowPairError H 0‖+(‖rowPairError H 1‖+(‖rowPairError H 2‖+
    (‖rowPairError H 3‖+(‖rowPairError H 4‖+(‖rowPairError H 5‖+0))))) at hb
  norm_num [rowPairError,hd.2] at hb
  have hl : ‖H i 0+H i 1+H i 2‖ < (53:ℝ)/20000 := by rw [hd.2]; linarith
  refine ⟨hl,?_⟩
  have hs := physical_nonfirst_row_sum hH hd i hi0
  simp only [Fin.sum_univ_succ] at hs
  change H i 0+(H i 1+(H i 2+(H i 3+(H i 4+(H i 5+0)))))=0 at hs
  have he : H i 3+H i 4+H i 5=-(H i 0+H i 1+H i 2) := by linear_combination hs
  rw [he,norm_neg]
  exact hl

theorem physical_left_phase_lift {H : Mat6} (hH : Physical H)
    (hd : Dephased H) (i : Fin 6) (hi0 : i≠0) (hi1 : i≠1)
    (hsmall : Complex.normSq (H 1 1-1)+Complex.normSq (H 1 2-1) ≤
      5*((77:ℝ)/100000)^2)
    (hl1 : ‖H 1 1-1‖+‖H 1 2-1‖ ≤ 3*((77:ℝ)/100000)) :
    ∃ σ e f : ℝ, (σ=1 ∨ σ= -1) ∧ |e|<(2:ℝ)/625 ∧ |f|<(2:ℝ)/625 ∧
      H i 1=Seed0024.UnitTriple.phase (σ*(2*Real.pi/3)+e) ∧
      H i 2=Seed0024.UnitTriple.phase (-σ*(2*Real.pi/3)+f) := by
  have hs := (physical_both_triple_sums_small hH hd i hi0 hi1 hsmall hl1).1
  rw [hd.2] at hs
  exact Seed0024.UnitTriple.anchored_equilateral_phase_exists (H i 1) (H i 2)
    (physical_unit_norm hH i 1) (physical_unit_norm hH i 2) hs.le

theorem physical_right_phase_lift {H : Mat6} (hH : Physical H)
    (hd : Dephased H) (i : Fin 6) (hi0 : i≠0) (hi1 : i≠1)
    (hsmall : Complex.normSq (H 1 1-1)+Complex.normSq (H 1 2-1) ≤
      5*((77:ℝ)/100000)^2)
    (hl1 : ‖H 1 1-1‖+‖H 1 2-1‖ ≤ 3*((77:ℝ)/100000)) :
    ∃ σ e f : ℝ, (σ=1 ∨ σ= -1) ∧ |e|<(2:ℝ)/625 ∧ |f|<(2:ℝ)/625 ∧
      H i 4=H i 3*Seed0024.UnitTriple.phase (σ*(2*Real.pi/3)+e) ∧
      H i 5=H i 3*Seed0024.UnitTriple.phase (-σ*(2*Real.pi/3)+f) := by
  have hs := (physical_both_triple_sums_small hH hd i hi0 hi1 hsmall hl1).2
  have he : 1+H i 4*conj (H i 3)+H i 5*conj (H i 3)=
      (H i 3+H i 4+H i 5)*conj (H i 3) := by
    rw [add_mul,add_mul,Complex.mul_conj,hH.1]
    simp
  have hn : ‖1+H i 4*conj (H i 3)+H i 5*conj (H i 3)‖ ≤ (53:ℝ)/20000 := by
    rw [he,norm_mul,Complex.norm_conj,physical_unit_norm hH,mul_one]
    exact hs.le
  have hu : ‖H i 4*conj (H i 3)‖=1 := by
    rw [norm_mul,Complex.norm_conj,physical_unit_norm hH,physical_unit_norm hH,one_mul]
  have hv : ‖H i 5*conj (H i 3)‖=1 := by
    rw [norm_mul,Complex.norm_conj,physical_unit_norm hH,physical_unit_norm hH,one_mul]
  obtain ⟨σ,e,f,hσ,hee,hff,he4,he5⟩ :=
    Seed0024.UnitTriple.anchored_equilateral_phase_exists _ _ hu hv hn
  refine ⟨σ,e,f,hσ,hee,hff,?_,?_⟩
  · rw [← he4,show H i 3*(H i 4*conj (H i 3))=
      H i 4*(H i 3*conj (H i 3)) by ring,Complex.mul_conj,hH.1]
    simp
  · rw [← he5,show H i 3*(H i 5*conj (H i 3))=
      H i 5*(H i 3*conj (H i 3)) by ring,Complex.mul_conj,hH.1]
    simp

end
end Seed0024Mathematical20261007
#print axioms Seed0024Mathematical20261007.physical_tail_l1_small
#print axioms Seed0024Mathematical20261007.physical_both_triple_sums_small
#print axioms Seed0024Mathematical20261007.physical_left_phase_lift
#print axioms Seed0024Mathematical20261007.physical_right_phase_lift
