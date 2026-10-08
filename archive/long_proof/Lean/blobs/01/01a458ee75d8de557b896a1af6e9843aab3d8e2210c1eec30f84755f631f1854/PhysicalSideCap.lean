import SideDeterminantCap

set_option autoImplicit false
namespace Seed0024Mathematical20261007
open Centiradian20261006
noncomputable section

def complementIndex (j : Fin 3) : Fin 6 := ⟨j.val+3, by omega⟩

/-- The bound applies to the literal complementary three columns of the
actual Hadamard, not to a separately postulated reconstruction. -/
theorem physical_sideQ_small {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (hsmall : Complex.normSq (H 1 1-1) + Complex.normSq (H 1 2-1) ≤
      5*((77:ℝ)/100000)^2) :
    ‖sideQ (fun j => H 1 (complementIndex j))
      (fun j => H 2 (complementIndex j))‖ < (1:ℝ)/1000 := by
  apply small_row_sideQ
  · intro j
    exact physical_unit_norm hH 1 (complementIndex j)
  · intro j
    exact physical_unit_norm hH 2 (complementIndex j)
  · change Complex.normSq (H 1 3+1) + Complex.normSq (H 1 4+1) +
      Complex.normSq (H 1 5+1) ≤ 5*((77:ℝ)/100000)^2
    rw [physical_complementary_row_defect hH hd]
    exact hsmall

end
end Seed0024Mathematical20261007
#print axioms Seed0024Mathematical20261007.physical_sideQ_small
