import RowPairDefect

set_option autoImplicit false
set_option maxHeartbeats 1200000
namespace Seed0024Mathematical20261007
open scoped BigOperators ComplexConjugate
open Centiradian20261006
noncomputable section

def rowPairError (H : Mat6) (j : Fin 6) : ℂ :=
  H 1 j - if j.val < 3 then 1 else -1

/-- Orthogonality converts the same small row defect into the first-half
sum of each other row. All six physical entries remain in the identity. -/
theorem physical_half_row_balance {H : Mat6} (hH : Physical H)
    (hd : Dephased H) (i : Fin 6) (hi0 : i ≠ 0) (hi1 : i ≠ 1) :
    (2 : ℂ) * (H i 0 + H i 1 + H i 2) +
      ∑ j : Fin 6, H i j * conj (rowPairError H j) = 0 := by
  have hs := physical_nonfirst_row_sum hH hd i hi0
  have ho := hH.2 i 1
  rw [if_neg hi1] at ho
  simp only [Fin.sum_univ_succ] at hs ho ⊢
  change H i 0 + (H i 1 + (H i 2 + (H i 3 + (H i 4 + (H i 5 + 0))))) = 0 at hs
  change H i 0 * conj (H 1 0) + (H i 1 * conj (H 1 1) +
    (H i 2 * conj (H 1 2) + (H i 3 * conj (H 1 3) +
    (H i 4 * conj (H 1 4) + (H i 5 * conj (H 1 5) + 0))))) = 0 at ho
  change (2 : ℂ) * (H i 0 + H i 1 + H i 2) +
    (H i 0 * conj (rowPairError H 0) + (H i 1 * conj (rowPairError H 1) +
    (H i 2 * conj (rowPairError H 2) + (H i 3 * conj (rowPairError H 3) +
    (H i 4 * conj (rowPairError H 4) + (H i 5 * conj (rowPairError H 5) + 0)))))) = 0
  norm_num [rowPairError, map_sub] at ho ⊢
  linear_combination hs + ho

theorem physical_unit_norm {H : Mat6} (hH : Physical H) (i j : Fin 6) :
    ‖H i j‖ = 1 := by
  rw [Complex.norm_def, hH.1 i j, Real.sqrt_one]

theorem physical_half_row_sum_bound {H : Mat6} (hH : Physical H)
    (hd : Dephased H) (i : Fin 6) (hi0 : i ≠ 0) (hi1 : i ≠ 1) :
    2 * ‖H i 0 + H i 1 + H i 2‖ ≤ ∑ j : Fin 6, ‖rowPairError H j‖ := by
  have h := physical_half_row_balance hH hd i hi0 hi1
  have hn : ‖(2 : ℂ) * (H i 0 + H i 1 + H i 2)‖ =
      ‖∑ j : Fin 6, H i j * conj (rowPairError H j)‖ := by
    have he := eq_neg_of_add_eq_zero_left h
    rw [he, norm_neg]
  have hb := norm_sum_le (Finset.univ : Finset (Fin 6))
    (fun j => H i j * conj (rowPairError H j))
  rw [← hn] at hb
  simpa only [norm_mul, physical_unit_norm hH, one_mul,
    Complex.norm_conj, Complex.norm_ofNat] using hb

end
end Seed0024Mathematical20261007
#print axioms Seed0024Mathematical20261007.physical_half_row_balance
#print axioms Seed0024Mathematical20261007.physical_unit_norm
#print axioms Seed0024Mathematical20261007.physical_half_row_sum_bound
