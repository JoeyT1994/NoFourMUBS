import CoreIntegerBridge
import CoreCellBridge
import SeedPhaseLeaves
import SquareEndpointRejection

/-! Split of the exact leaf bridge, preserving every data premise and predicate. -/
set_option autoImplicit false
set_option maxRecDepth 4096
open Seed0024PhaseCore20261007 Seed0024ClusterTube20261007
open Seed0024ClusterTubeTable20261007
namespace Seed0024PhaseCoreBridge20261007

def TableRepresents (table : SupplierTable) : Prop :=
  ∀ k : Fin 218880, tableEntry k.val = table k

theorem midpointEntry_eq_leaf (table : SupplierTable) (h : TableRepresents table)
    (s : CellCode) (k : Column) (i : Fin 5) :
    midpointEntry s k i = leafMidpointEntry table (toPhaseCell s) k i := by
  exact h ⟨shiftedIndex (midpointIndex s i) k i, shiftedIndex_lt _ _ _⟩
#print axioms midpointEntry_eq_leaf

theorem endpointEntry_eq_leaf (table : SupplierTable) (h : TableRepresents table)
    (s : CellCode) (k : Column) (m : Mask) (i : Fin 5) :
    endpointEntry s k m i = leafEndpointEntry table (toPhaseCell s) k m i := by
  exact h ⟨shiftedIndex (endpointIndex s m i) k i, shiftedIndex_lt _ _ _⟩
#print axioms endpointEntry_eq_leaf

theorem midpointPair_eq_leaf (table : SupplierTable) (h : TableRepresents table)
    (s : CellCode) (k : Column) :
    midpointPair s k = leafMidpointPair table (toPhaseCell s) k := by
  unfold midpointPair leafMidpointPair
  rw [fiveSumWithQ_eq_integerFiveSum]
  congr 1
  funext i
  exact midpointEntry_eq_leaf table h s k i
#print axioms midpointPair_eq_leaf

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
#print axioms endpointDifferencePair_eq_leaf

theorem tolerance_eq_leaf : tolerance = leafTolerance := rfl
#print axioms tolerance_eq_leaf

theorem midpointError_eq_leaf (s : CellCode) :
    midpointError s = leafMidpointError (toPhaseCell s) := rfl
#print axioms midpointError_eq_leaf

theorem absolute_eq_abs (z : Int) : absolute z = |z| := by
  exact Int.natCast_natAbs z
#print axioms absolute_eq_abs

theorem midpointReject_eq_square (table : SupplierTable) (h : TableRepresents table)
    (s : CellCode) (k : Column) :
    midpointReject s k = squareMidpointRejectCheck table (toPhaseCell s) k := by
  simp only [midpointReject, squareMidpointRejectCheck,
    midpointPair_eq_leaf table h, pairSquare_eq_integerPairSquare,
    midpointError_eq_leaf, tolerance_eq_leaf]
  rfl
#print axioms midpointReject_eq_square

theorem endpointReject_eq_square (table : SupplierTable) (h : TableRepresents table)
    (s : CellCode) (k : Column) (r : Nat) :
    endpointReject s k r = squareEndpointRejectCheck table (toPhaseCell s) k r := by
  simp only [endpointReject, squareEndpointRejectCheck, absolute_eq_abs,
    midpointPair_eq_leaf table h, floorWitnessCheck_eq_normFloorWitnessCheck,
    endpointDifferencePair_eq_leaf table h, pairSquare_eq_integerPairSquare,
    tolerance_eq_leaf, halfStep_eq]
  rfl
#print axioms endpointReject_eq_square


end Seed0024PhaseCoreBridge20261007
