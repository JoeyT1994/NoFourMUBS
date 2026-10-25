import KernelAtlas.Edge.Models

/-! The forced-block check also certifies invertibility, including at the fold. -/

open Complex Matrix Hadamard6 NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed

set_option maxHeartbeats 2000000 in
/-- Extract the Neumann invertibility conclusion without assuming a Hadamard completion. -/
theorem forced_invertible {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u)
    {Xp : List CT} {A0 : List (ℤ × ℤ)} {E Bm C : List CT} {Bmat : Mat3}
    (hB : Has3 u Bm Bmat) (hok : (forcedT h Xp A0 E Bm C).ok = true) :
    IsUnit Bmat.det := by
  let X := neuT h A0 Bm
  let q := (l3 fun i => (l3 fun l => bnd h (gT X (3 * i + l))).sum).foldr max 0
  let a := l3 fun j => (l3 fun l => mb (gz A0 (3 * l + j))).foldr max 0
  have hq : q < 2 ^ pp := by
    simpa only [forcedT, q, X, decide_eq_true_eq] using hok
  have hX := has3_neuT (A0 := A0) hu hB
  have hE : ∀ i : Fin 3, ∑ l, ‖(1 - A0m A0 * Bmatᴴ) i l‖ ≤ rn q := fun i => by
    calc ∑ l : Fin 3, ‖(1 - A0m A0 * Bmatᴴ) i l‖
        ≤ ∑ l : Fin 3, rn (bnd h (gT X (3 * i + l))) :=
          Finset.sum_le_sum fun l _ => norm_le_bnd hu (hX i l)
      _ ≤ rn q := by
        rw [← rn_sum_l3 (fun l => bnd h (gT X (3 * i + l)))]
        exact rn_mono (le_foldr_max3 (fun i => (l3 fun l => bnd h (gT X (3 * i + l))).sum) i)
  have ha : ∀ l j : Fin 3, ‖A0m A0 l j‖ ≤ rn (gn a j) := fun l j => by
    refine (norm_cz_le _).trans (rn_mono ?_)
    dsimp only [a]
    rw [gn_l3 _ j.2]
    exact le_foldr_max3 (fun l => mb (gz A0 (3 * l + j))) l
  have hq1 : rn q < 1 := by
    unfold rn
    rw [div_lt_one (two_pow_pos pp)]
    exact_mod_cast hq
  have hd := (Method.neumann (Bmatᴴ) (A0m A0) hq1 hE ha).1
  rw [Matrix.det_conjTranspose] at hd
  exact isUnit_star.mp hd

/-- The forced completion varies continuously wherever its side block is invertible. -/
theorem continuous_forcedD {P : Type*} [TopologicalSpace P] (E B C : P → Mat3)
    (hE : Continuous E) (hB : Continuous B) (hC : Continuous C)
    (hdet : ∀ p, IsUnit (B p).det) : Continuous (fun p => forcedD (E p) (B p) (C p)) := by
  have hinv : Continuous (fun p => (B p)⁻¹) := by
    rw [continuous_iff_continuousAt]
    intro p
    apply (continuousAt_matrix_inv (B p) ?_).comp hB.continuousAt
    simpa only [Ring.inverse_eq_inv'] using continuousAt_inv₀ (isUnit_iff_ne_zero.mp (hdet p))
  unfold forcedD
  exact (hC.neg.matrix_mul hE.matrix_conjTranspose).matrix_mul hinv.matrix_conjTranspose

end NoFourMUBs.KernelAtlas.Edge
