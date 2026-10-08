import Seed0024PhysicalBounds
import PhysicalTripleSmall
import PhysicalQMaximal

set_option autoImplicit false
set_option maxHeartbeats 1200000
namespace Seed0024Mathematical20261007
open Centiradian20261006 Mub6.GlobalBoxCover20261006 Seed0024Geometry20261007
noncomputable section

/-- Every retained closed box supplies the actual-Hadamard hypotheses. -/
theorem retained_seed_leadingR_bound {H : Mat6} (hH : Physical H)
    (hd : Dephased H) {b : SeedBox} (hb : b ∈ Seed0024Geometry20261007.residual)
    {x : Fin 4 → ℝ} (hx : b.box.Contains x) (hphase : PhaseCoordinates (seedEntries H) x) :
    leadingR H < 4*((1:ℝ)/1000)^2 := by
  exact physical_small_leadingR hH hd (actual_seed_entry_small hb hx hphase).1

theorem retained_seed_witness_bound {H : Mat6} (hH : Physical H)
    (hd : Dephased H) (hm : Maximal H) {b : SeedBox} (hb : b ∈ Seed0024Geometry20261007.residual)
    {x : Fin 4 → ℝ} (hx : b.box.Contains x) (hphase : PhaseCoordinates (seedEntries H) x)
    (i j : Fin 6) (hi : 0 < i) (hij : i < j) :
    |(dephasedQ (H i 1) (H i 3) (H j 1) (H j 3)).im| < (1:ℝ)/1000 := by
  exact physical_witness_q_small hH hd hm i j hi hij
    (actual_seed_entry_small hb hx hphase).1

/-- These are actual phases of the six actual entries of each nonbinary row,
not a hypothetical reconstruction or an unbound local chart. -/
theorem retained_seed_two_phase_lifts {H : Mat6} (hH : Physical H)
    (hd : Dephased H) {b : SeedBox} (hb : b ∈ Seed0024Geometry20261007.residual)
    {x : Fin 4 → ℝ} (hx : b.box.Contains x) (hphase : PhaseCoordinates (seedEntries H) x)
    (i : Fin 6) (hi0 : i≠0) (hi1 : i≠1) :
    (∃ σ e f : ℝ, (σ=1 ∨ σ= -1) ∧ |e|<(2:ℝ)/625 ∧ |f|<(2:ℝ)/625 ∧
      H i 1=Seed0024.UnitTriple.phase (σ*(2*Real.pi/3)+e) ∧
      H i 2=Seed0024.UnitTriple.phase (-σ*(2*Real.pi/3)+f)) ∧
    (∃ τ e f : ℝ, (τ=1 ∨ τ= -1) ∧ |e|<(2:ℝ)/625 ∧ |f|<(2:ℝ)/625 ∧
      H i 4=H i 3*Seed0024.UnitTriple.phase (τ*(2*Real.pi/3)+e) ∧
      H i 5=H i 3*Seed0024.UnitTriple.phase (-τ*(2*Real.pi/3)+f)) := by
  have hs := actual_seed_entry_small hb hx hphase
  have hl : ‖H 1 1-1‖+‖H 1 2-1‖ ≤ 3*((77:ℝ)/100000) := by
    simpa only [div_eq_mul_inv,mul_assoc] using hs.2
  exact ⟨physical_left_phase_lift hH hd i hi0 hi1 hs.1 hl,
    physical_right_phase_lift hH hd i hi0 hi1 hs.1 hl⟩

end
end Seed0024Mathematical20261007
#print axioms Seed0024Mathematical20261007.retained_seed_leadingR_bound
#print axioms Seed0024Mathematical20261007.retained_seed_witness_bound
#print axioms Seed0024Mathematical20261007.retained_seed_two_phase_lifts
