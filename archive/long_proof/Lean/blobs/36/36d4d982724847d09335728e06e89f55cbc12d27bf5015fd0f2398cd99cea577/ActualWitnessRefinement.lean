import CoreLabelBridge
import CoreTableBridge
import CoreDataEqualitiesSplit
import WitnessTapeRefinement
import SquareConcretePhaseChecksNoInit

/-! Use the already checked actual-table physical checker. This discharges
all data premises without rebuilding its geometric soundness argument. -/
set_option autoImplicit false
open Seed0024PhaseCore20261007 Seed0024ClusterTube20261007
open Seed0024ClusterTubeTable20261007 Seed0024PhaseTapeBridge20261007

namespace Seed0024PhaseCoreBridge20261007

theorem actual_table_represents : TableRepresents compactSupplierTable :=
  tableEntry_eq
#print axioms actual_table_represents

theorem actual_centres_represent : CentresRepresent := centreEntry_eq
#print axioms actual_centres_represent

theorem actual_witness_refinement : LeafRefinement squareConcretePhaseChecks := by
  constructor
  · intro s k hs
    rw [midpointReject_eq_square compactSupplierTable actual_table_represents] at hs
    change (squareMidpointRejectCheck compactSupplierTable (toPhaseCell s) k ||
      endpointRejectCheck compactSupplierTable (toPhaseCell s) k) = true
    simp only [Bool.or_eq_true]
    exact Or.inl hs
  · intro s k r hs
    rw [endpointReject_eq_square compactSupplierTable actual_table_represents] at hs
    have he := squareEndpointRejectCheck_implies compactSupplierTable
      (toPhaseCell s) k r hs
    change (squareMidpointRejectCheck compactSupplierTable (toPhaseCell s) k ||
      endpointRejectCheck compactSupplierTable (toPhaseCell s) k) = true
    simp only [Bool.or_eq_true]
    exact Or.inr he
  · intro s label hs
    rw [labelAccept_eq_square compactSupplierTable actual_table_represents
      actual_centres_represent] at hs
    exact hs
#print axioms actual_witness_refinement

end Seed0024PhaseCoreBridge20261007
