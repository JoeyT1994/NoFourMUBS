import Seed0024Geometry

/-! Actual matrix-entry bounds required by the row-pair and q estimates.
No physical assumption is needed beyond the literal phase-coordinate relation;
the bounds therefore apply to each physical matrix with that relation.
-/
set_option autoImplicit false
namespace Seed0024Geometry20261007
open Mub6.GlobalBoxCover20261006

theorem phase_norm_sub_one_le (t : ℝ) :
    ‖Complex.exp ((t:ℂ)*Complex.I)-1‖ ≤ |t| := by
  have hs := phase_normSq_sub_one_le (show |t|≤|t| from le_rfl)
  rw [Complex.normSq_eq_norm_sq] at hs
  exact (sq_le_sq₀ (norm_nonneg _) (abs_nonneg t)).mp hs

theorem actual_seed_entry_norm_sum {H : Fin 6 → Fin 6 → ℂ}
    {b : SeedBox} (hb : b ∈ residual) {x : Fin 4 → ℝ}
    (hx : b.box.Contains x) (hphase : PhaseCoordinates (seedEntries H) x) :
    ‖H 1 1-1‖+‖H 1 2-1‖ ≤ 3*(77:ℝ)/100000 := by
  have he0 : Complex.exp ((x 0:ℂ)*Complex.I)=H 1 1 := hphase 0
  have he1 : Complex.exp ((x 1:ℂ)*Complex.I)=H 1 2 := hphase 1
  have h0 := phase_norm_sub_one_le (x 0)
  have h1 := phase_norm_sub_one_le (x 1)
  rw [he0] at h0
  rw [he1] at h1
  rcases residual_phase_two_axis_bounds hb hx with h|h <;> linarith [h.1,h.2]

theorem actual_seed_entry_sq_sum {H : Fin 6 → Fin 6 → ℂ}
    {b : SeedBox} (hb : b ∈ residual) {x : Fin 4 → ℝ}
    (hx : b.box.Contains x) (hphase : PhaseCoordinates (seedEntries H) x) :
    Complex.normSq (H 1 1-1)+Complex.normSq (H 1 2-1) ≤
      5*((77:ℝ)/100000)^2 := by
  have h := actual_seed_entry_pair_bound hb hx hphase
  norm_num at h ⊢
  linarith

theorem actual_seed_entry_small {H : Fin 6 → Fin 6 → ℂ}
    {b : SeedBox} (hb : b ∈ residual) {x : Fin 4 → ℝ}
    (hx : b.box.Contains x) (hphase : PhaseCoordinates (seedEntries H) x) :
    (Complex.normSq (H 1 1-1)+Complex.normSq (H 1 2-1) ≤ 5*((77:ℝ)/100000)^2) ∧
      (‖H 1 1-1‖+‖H 1 2-1‖ ≤ 3*(77:ℝ)/100000) :=
  ⟨actual_seed_entry_sq_sum hb hx hphase,actual_seed_entry_norm_sum hb hx hphase⟩

end Seed0024Geometry20261007
#print axioms Seed0024Geometry20261007.phase_norm_sub_one_le
#print axioms Seed0024Geometry20261007.actual_seed_entry_norm_sum
#print axioms Seed0024Geometry20261007.actual_seed_entry_sq_sum
#print axioms Seed0024Geometry20261007.actual_seed_entry_small
