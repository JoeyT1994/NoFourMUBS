import CoreIntegerBridge
import CoreCellBridge
import SeedPhaseLeaves
import PhaseForest
import ApproximatePhaseFrontend
import SquareEndpointRejection
import SquareBallLabelNoInit

/-! Exact refinement of the lightweight integer leaf computations to the
existing physical checks. The two data-representation hypotheses are explicit
and must be supplied by the checked literal-data/table bridges. No numerical
table accuracy or complete finite cover is postulated by these identities. -/
set_option autoImplicit false
set_option maxRecDepth 4096
open Seed0024PhaseCore20261007 Seed0024ClusterTube20261007
open Seed0024ClusterTubeTable20261007

namespace Seed0024PhaseCoreBridge20261007

def TableRepresents (table : SupplierTable) : Prop :=
  ∀ k : Fin 218880, tableEntry k.val = table k

def CentresRepresent : Prop :=
  ∀ (label : Label) (i : Fin 5),
    centreEntry label i = Seed0024ClusterTube20261007.roundedCentreCoordinates label i

theorem midpointEntry_eq_leaf (table : SupplierTable) (h : TableRepresents table)
    (s : CellCode) (k : Column) (i : Fin 5) :
    midpointEntry s k i = leafMidpointEntry table (toPhaseCell s) k i := by
  exact h ⟨shiftedIndex (midpointIndex s i) k i, shiftedIndex_lt _ _ _⟩

theorem endpointEntry_eq_leaf (table : SupplierTable) (h : TableRepresents table)
    (s : CellCode) (k : Column) (m : Mask) (i : Fin 5) :
    endpointEntry s k m i = leafEndpointEntry table (toPhaseCell s) k m i := by
  exact h ⟨shiftedIndex (endpointIndex s m i) k i, shiftedIndex_lt _ _ _⟩

theorem midpointPair_eq_leaf (table : SupplierTable) (h : TableRepresents table)
    (s : CellCode) (k : Column) :
    midpointPair s k = leafMidpointPair table (toPhaseCell s) k := by
  unfold midpointPair leafMidpointPair
  rw [fiveSumWithQ_eq_integerFiveSum]
  congr 1
  funext i
  exact midpointEntry_eq_leaf table h s k i

theorem endpointDifferencePair_eq_leaf (table : SupplierTable)
    (h : TableRepresents table) (s : CellCode) (k : Column) (m : Mask) :
    endpointDifferencePair s k m =
      leafEndpointDifferencePair table (toPhaseCell s) k m := by
  unfold endpointDifferencePair leafEndpointDifferencePair
  rw [pairSub_eq_integerPairSub, fiveSumWithQ_eq_integerFiveSum,
    midpointPair_eq_leaf table h]
  congr 2
  funext i
  exact endpointEntry_eq_leaf table h s k m i

theorem tolerance_eq_leaf : tolerance = leafTolerance := rfl

theorem midpointError_eq_leaf (s : CellCode) :
    midpointError s = leafMidpointError (toPhaseCell s) := rfl

theorem absolute_eq_abs (z : Int) : absolute z = |z| := by
  exact Int.natCast_natAbs z

theorem midpointReject_eq_square (table : SupplierTable) (h : TableRepresents table)
    (s : CellCode) (k : Column) :
    midpointReject s k = squareMidpointRejectCheck table (toPhaseCell s) k := by
  simp only [midpointReject, squareMidpointRejectCheck,
    midpointPair_eq_leaf table h, pairSquare_eq_integerPairSquare,
    midpointError_eq_leaf, tolerance_eq_leaf]
  rfl

theorem endpointReject_eq_square (table : SupplierTable) (h : TableRepresents table)
    (s : CellCode) (k : Column) (r : Nat) :
    endpointReject s k r = squareEndpointRejectCheck table (toPhaseCell s) k r := by
  simp only [endpointReject, squareEndpointRejectCheck, absolute_eq_abs,
    midpointPair_eq_leaf table h, floorWitnessCheck_eq_normFloorWitnessCheck,
    endpointDifferencePair_eq_leaf table h, pairSquare_eq_integerPairSquare,
    tolerance_eq_leaf, halfStep_eq]
  rfl

theorem labelLower_eq_square (level : Nat) :
    labelLower level = squareBallLower level := rfl

theorem labelProducts_eq_ball (table : SupplierTable) (h : TableRepresents table)
    (hc : CentresRepresent) (s : CellCode) (label : Label) (i : Fin 5) :
    labelProducts s label i = ballLabelProducts table (toPhaseCell s) label i := by
  unfold labelProducts ballLabelProducts
  rw [conjugateProductQuotient_eq_integerConjProductQuotient,
    hc label i, midpointEntry_eq_leaf table h]

theorem labelPair_eq_ball (table : SupplierTable) (h : TableRepresents table)
    (hc : CentresRepresent) (s : CellCode) (label : Label) :
    labelPair s label = ballLabelSum table (toPhaseCell s) label := by
  unfold labelPair ballLabelSum
  rw [fiveSumWithQ_eq_integerFiveSum]
  congr 1
  funext i
  exact labelProducts_eq_ball table h hc s label i

theorem labelAccept_eq_square (table : SupplierTable) (h : TableRepresents table)
    (hc : CentresRepresent) (s : CellCode) (label : Label) :
    labelAccept s label = squareBallLabelCheck table (toPhaseCell s) label := by
  simp only [labelAccept, squareBallLabelCheck, labelLower_eq_square,
    labelPair_eq_ball table h hc, pairSquare_eq_integerPairSquare]
  rfl

def bridgeChecks (table : SupplierTable) : Seed0024ClusterTubeCover20261007.LeafChecks 48 :=
  ⟨scalarRejectCheck table, squareBallLabelCheck table⟩

theorem bridgeChecks_sound (table : SupplierTable)
    (hTable : SupplierNeededTableSound table) :
    Seed0024ClusterTubeCover20261007.LeafSound (bridgeChecks table) ClosedPhaseDomain
      (fun k theta => centreProjectorLabel k (turnRay theta)) := by
  constructor
  · intro s k theta hs ht hc hf
    exact scalarRejectCheck_sound table hTable s hs.1 k theta ht hc (hf k)
  · intro s k theta hs ht hc
    exact squareBallLabelCheck_sound table hTable s k theta ht hc


end Seed0024PhaseCoreBridge20261007

#print axioms Seed0024PhaseCoreBridge20261007.midpointEntry_eq_leaf
#print axioms Seed0024PhaseCoreBridge20261007.endpointEntry_eq_leaf
#print axioms Seed0024PhaseCoreBridge20261007.midpointPair_eq_leaf
#print axioms Seed0024PhaseCoreBridge20261007.endpointDifferencePair_eq_leaf
#print axioms Seed0024PhaseCoreBridge20261007.tolerance_eq_leaf
#print axioms Seed0024PhaseCoreBridge20261007.midpointError_eq_leaf
#print axioms Seed0024PhaseCoreBridge20261007.absolute_eq_abs
#print axioms Seed0024PhaseCoreBridge20261007.midpointReject_eq_square
#print axioms Seed0024PhaseCoreBridge20261007.endpointReject_eq_square
#print axioms Seed0024PhaseCoreBridge20261007.labelLower_eq_square
#print axioms Seed0024PhaseCoreBridge20261007.labelProducts_eq_ball
#print axioms Seed0024PhaseCoreBridge20261007.labelPair_eq_ball
#print axioms Seed0024PhaseCoreBridge20261007.labelAccept_eq_square
#print axioms Seed0024PhaseCoreBridge20261007.bridgeChecks_sound
