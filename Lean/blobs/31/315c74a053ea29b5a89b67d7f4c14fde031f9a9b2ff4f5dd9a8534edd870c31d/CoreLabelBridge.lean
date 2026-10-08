import CoreScalarBridge
import SquareBallLabelNoInit

/-! Split of the exact leaf bridge, preserving every data premise and predicate. -/
set_option autoImplicit false
open Seed0024PhaseCore20261007 Seed0024ClusterTube20261007
open Seed0024ClusterTubeTable20261007
namespace Seed0024PhaseCoreBridge20261007

def CentresRepresent : Prop :=
  ∀ (label : Label) (i : Fin 5),
    centreEntry label i = Seed0024ClusterTube20261007.roundedCentreCoordinates label i

theorem labelLower_eq_square (level : Nat) :
    labelLower level = squareBallLower level := rfl
#print axioms labelLower_eq_square

theorem labelProducts_eq_ball (table : SupplierTable) (h : TableRepresents table)
    (hc : CentresRepresent) (s : CellCode) (label : Label) (i : Fin 5) :
    labelProducts s label i = ballLabelProducts table (toPhaseCell s) label i := by
  unfold labelProducts ballLabelProducts
  rw [conjugateProductQuotient_eq_integerConjProductQuotient,
    hc label i, midpointEntry_eq_leaf table h]
#print axioms labelProducts_eq_ball

theorem labelPair_eq_ball (table : SupplierTable) (h : TableRepresents table)
    (hc : CentresRepresent) (s : CellCode) (label : Label) :
    labelPair s label = ballLabelSum table (toPhaseCell s) label := by
  unfold labelPair ballLabelSum
  rw [fiveSumWithQ_eq_integerFiveSum]
  exact congrArg (integerFiveSum 67108864)
    (funext (fun i => labelProducts_eq_ball table h hc s label i))
#print axioms labelPair_eq_ball

theorem labelAccept_eq_square (table : SupplierTable) (h : TableRepresents table)
    (hc : CentresRepresent) (s : CellCode) (label : Label) :
    labelAccept s label = squareBallLabelCheck table (toPhaseCell s) label := by
  simp only [labelAccept, squareBallLabelCheck, labelLower_eq_square,
    labelPair_eq_ball table h hc, pairSquare_eq_integerPairSquare]
  rfl
#print axioms labelAccept_eq_square


end Seed0024PhaseCoreBridge20261007
