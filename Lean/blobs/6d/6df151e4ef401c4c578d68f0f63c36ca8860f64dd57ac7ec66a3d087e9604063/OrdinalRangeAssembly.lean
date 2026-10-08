import OrdinalRoots
import PhaseForest

/- Balanced assembly of exact ordinal intervals. The range endpoints, not a
count of successful jobs, determine coverage. Actual cell proofs remain inputs.
No finite certificate or physical box is accepted by this module alone. -/
set_option autoImplicit false
namespace Seed0024ClusterTubeCover20261007

def CoveredOrdinalRange {labels : ℕ} (Feasible : Turns → Prop)
    (LabelMem : Fin labels → Turns → Prop) (first last : ℕ) : Prop :=
  ∀ n, first ≤ n → n < last →
    CoveredCell Feasible LabelMem (ordinalCell n)

theorem coveredOrdinalRange_singleton {labels : ℕ} {Feasible : Turns → Prop}
    {LabelMem : Fin labels → Turns → Prop} (n : ℕ)
    (hc : CoveredCell Feasible LabelMem (ordinalCell n)) :
    CoveredOrdinalRange Feasible LabelMem n (n+1) := by
  intro k hlo hhi
  have he : k=n := by omega
  simpa only [he] using hc

theorem coveredOrdinalRange_adjacent {labels : ℕ} {Feasible : Turns → Prop}
    {LabelMem : Fin labels → Turns → Prop} (a b c : ℕ)
    (hab : CoveredOrdinalRange Feasible LabelMem a b)
    (hbc : CoveredOrdinalRange Feasible LabelMem b c) :
    CoveredOrdinalRange Feasible LabelMem a c := by
  intro n hlo hhi
  by_cases hn : n < b
  · exact hab n hlo hn
  · exact hbc n (Nat.le_of_not_gt hn) hhi

theorem coveredOrdinalRange_all_roots {labels : ℕ} {Feasible : Turns → Prop}
    {LabelMem : Fin labels → Turns → Prop}
    (hc : CoveredOrdinalRange Feasible LabelMem 0 2476099) :
    ∀ r : RootIndex, CoveredCell Feasible LabelMem (rootCell r) := by
  intro r
  have hr := hc (rootOrdinal r) (Nat.zero_le _) (rootOrdinal_lt r)
  simpa only [ordinalCell_rootOrdinal] using hr

theorem coveredOrdinalRange_unitCube {labels : ℕ} {Feasible : Turns → Prop}
    {LabelMem : Fin labels → Turns → Prop}
    (hc : CoveredOrdinalRange Feasible LabelMem 0 2476099) :
    ∀ theta, UnitCube theta → Feasible theta → ∃ k, LabelMem k theta :=
  all_root_cells_sound (coveredOrdinalRange_all_roots hc)

#print axioms coveredOrdinalRange_singleton
#print axioms coveredOrdinalRange_adjacent
#print axioms coveredOrdinalRange_all_roots
#print axioms coveredOrdinalRange_unitCube
end Seed0024ClusterTubeCover20261007
