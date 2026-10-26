import KernelAtlas.WholeBall.Germ
import KernelAtlas.Seed.C1SideSound

/-! A finite interval row test supplies the nonsingular Jacobians required by
`local_matched_phase_germ`. Its inputs are the already certified side rows. -/

open Matrix Complex NoFourMUBs.Side NoFourMUBs.SeedAtlas
open NoFourMUBs.KernelAtlas.Seed

namespace NoFourMUBs.KernelAtlas.WholeBall

/-- Every row of the preconditioned interval Jacobian is strictly below one. -/
def sideRegularCheck (h : List ℕ) (rows : List CT) (Y : List ℤ) : Bool :=
  (l6 fun i => decide (gn (qRowsI Y (jI fun j => ivc h (gT rows j))) i < 2 ^ pp)).all id

theorem sideRegularCheck_sound {h : List ℕ} {rows : List CT} {Y : List ℤ}
    {u : Fin 4 → ℝ} {φ : Fin 6 → ℝ} (hu : InBox h u)
    (hx : ∀ j : Fin 3, (gT rows j).Has u (sx φ j))
    (hy : ∀ j : Fin 3, (gT rows (j + 3)).Has u (sy φ j))
    (hc : sideRegularCheck h rows Y = true) : IsUnit (sideJ φ).det := by
  let q : Fin 6 → ℝ := fun i => rn (gn (qRowsI Y (jI fun j => ivc h (gT rows j))) i)
  have hq : ∀ i, ∑ j, |(1 - Ymat Y * sideJ φ) i j| ≤ q i :=
    qRowsI_sound (jI_sound (fun j => ivH_ivc hu (hx j)) (fun j => ivH_ivc hu (hy j)))
  have hq1 : ∀ i, q i < 1 := by
    intro i
    have hi := all_l6 hc i.2
    rw [decide_eq_true_eq] at hi
    change (gn (qRowsI Y (jI fun j => ivc h (gT rows j))) i : ℝ) / 2 ^ pp < 1
    rw [div_lt_one (by positivity)]
    exact_mod_cast hi
  obtain ⟨i0, -, hmax⟩ := Finset.exists_max_image Finset.univ q Finset.univ_nonempty
  have hK : ∀ i, q i ≤ q i0 := fun i => hmax i (Finset.mem_univ i)
  have hh := Method.isUnit_det_of_rowsum (Ymat Y * sideJ φ) 1 (hq1 i0) hK
    (by simpa only [Matrix.mul_one] using hq)
  rw [Matrix.det_mul] at hh
  exact isUnit_of_mul_isUnit_right hh

end NoFourMUBs.KernelAtlas.WholeBall
