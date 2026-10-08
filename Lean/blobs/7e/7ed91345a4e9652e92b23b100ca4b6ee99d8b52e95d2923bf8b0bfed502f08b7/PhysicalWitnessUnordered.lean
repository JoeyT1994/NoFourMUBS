import PhysicalWitnessTransfer

set_option autoImplicit false
namespace Seed0024Mathematical20261007
open Centiradian20261006
noncomputable section

theorem physical_witness_q_small_unordered {H : Mat6} (hH : Physical H)
    (hd : Dephased H) (hm : Maximal H) (i j : Fin 6)
    (hi : 0 < i) (hj : 0 < j) (hij : i≠j)
    (hsmall : Complex.normSq (H 1 1-1)+Complex.normSq (H 1 2-1) ≤
      5*((77:ℝ)/100000)^2) :
    |(dephasedQ (H i 1) (H i 3) (H j 1) (H j 3)).im| < (1:ℝ)/1000 := by
  rcases lt_or_gt_of_ne hij with h|h
  · exact physical_witness_q_small hH hd hm i j hi h hsmall
  · rw [dephasedQ_row_swap]
    exact physical_witness_q_small hH hd hm j i hj h hsmall

theorem physical_nearby_witness_q_small_unordered {H : Mat6} (hH : Physical H)
    (hd : Dephased H) (hm : Maximal H) (i j : Fin 6)
    (hi : 0 < i) (hj : 0 < j) (hij : i≠j)
    (hsmall : Complex.normSq (H 1 1-1)+Complex.normSq (H 1 2-1) ≤
      5*((77:ℝ)/100000)^2) (v : Fin 4 → ℂ) (hv : ∀ k, ‖v k‖=1)
    (hnear : ‖H i 1-v 0‖+‖H i 3-v 1‖+‖H j 1-v 2‖+‖H j 3-v 3‖ ≤
      6*((2:ℝ)/625)) :
    |(dephasedQ (v 0) (v 1) (v 2) (v 3)).im| < (1:ℝ)/2 := by
  rcases lt_or_gt_of_ne hij with h|h
  · exact physical_nearby_witness_q_small hH hd hm i j hi h hsmall v hv hnear
  · let v' : Fin 4 → ℂ := ![v 2,v 3,v 0,v 1]
    have hv' : ∀ k, ‖v' k‖=1 := by intro k; fin_cases k <;> exact hv _
    have hn' : ‖H j 1-v' 0‖+‖H j 3-v' 1‖+‖H i 1-v' 2‖+‖H i 3-v' 3‖ ≤
        6*((2:ℝ)/625) := by change ‖H j 1-v 2‖+‖H j 3-v 3‖+‖H i 1-v 0‖+‖H i 3-v 1‖ ≤ _; linarith
    have hh := physical_nearby_witness_q_small hH hd hm j i hj h hsmall v' hv' hn'
    change |(dephasedQ (v 2) (v 3) (v 0) (v 1)).im| < (1:ℝ)/2 at hh
    rwa [dephasedQ_row_swap] at hh

end
end Seed0024Mathematical20261007
#print axioms Seed0024Mathematical20261007.physical_witness_q_small_unordered
#print axioms Seed0024Mathematical20261007.physical_nearby_witness_q_small_unordered
