import Hadamard6.Basic
import Mathlib.Analysis.MeanInequalities

set_option autoImplicit false
open Hadamard6
open scoped BigOperators

namespace NoFourMUBs.Step2.Reconstruction

/-- The final AM-GM step in the repository's cubic-norm flatness argument.
The row sums and row-product identities remain explicit hypotheses. -/
theorem entrywiseUnit_of_row_norms_and_products (D : Mat3)
    (hsum : ∀ i, ∑ j, Complex.normSq (D i j) = 3)
    (hprod : ∀ i, Complex.normSq (∏ j, D i j) = 1) :
    EntrywiseUnit D := by
  intro i j
  let p : I3 → ℝ := fun k => Complex.normSq (D i k)
  have hp : ∀ k ∈ Finset.univ, 0 ≤ p k := fun k _ => Complex.normSq_nonneg _
  have ha : (∑ k, (1 / 3 : ℝ) * p k) = 1 := by
    rw [← Finset.mul_sum]
    change (1 / 3 : ℝ) * (∑ k, Complex.normSq (D i k)) = 1
    rw [hsum i]
    norm_num
  have hg : (∏ k, p k ^ (1 / 3 : ℝ)) = 1 := by
    rw [Real.finsetProd_rpow Finset.univ p hp]
    have h : (∏ k, p k) = 1 := by
      simpa only [p, map_prod] using hprod i
    rw [h, Real.one_rpow]
  have h := (Real.geom_mean_eq_arith_mean_weighted_iff_of_pos'
    Finset.univ (fun _ : I3 => (1 / 3 : ℝ)) p
    (by intro k hk; norm_num) (by norm_num) hp).mp (hg.trans ha.symm)
  exact (h j (Finset.mem_univ j)).trans ha

end NoFourMUBs.Step2.Reconstruction
