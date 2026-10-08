import SeedPhaseCore
import SupplierMaskIndices

/-! The lightweight cell code has exactly the existing closed phase-cell
geometry, child bit order and signed Fourier indices. No table values or
accepted finite trees are asserted. -/
set_option autoImplicit false
open Seed0024PhaseCore20261007 Seed0024ClusterTube20261007

namespace Seed0024PhaseCoreBridge20261007

def toPhaseCell (s : CellCode) : Seed0024ClusterTubeCover20261007.Cell :=
  ⟨s.level,s.index⟩

theorem denominator_eq (s : CellCode) :
    denominator s = Seed0024ClusterTubeCover20261007.denominator (toPhaseCell s) := rfl

theorem valid_iff (s : CellCode) :
    Valid s ↔ Seed0024ClusterTubeCover20261007.Valid (toPhaseCell s) := Iff.rfl

theorem validCheck_eq (s : CellCode) :
    validCheck s = Seed0024ClusterTubeCover20261007.validCheck (toPhaseCell s) := rfl

theorem maskBits_eq (m : Mask) (i : Fin 5) :
    maskBits m i = Seed0024ClusterTubeCover20261007.maskBits m i := rfl

theorem childCell_eq (s : CellCode) (m : Mask) :
    toPhaseCell (childCell s m) =
      Seed0024ClusterTubeCover20261007.childCell (toPhaseCell s) m := rfl

theorem step_eq (s : CellCode) : step s = supplierStep (toPhaseCell s) := rfl

theorem halfStep_eq (s : CellCode) : halfStep s = supplierHalfStep (toPhaseCell s) := rfl

theorem midpointIndex_eq (s : CellCode) (i : Fin 5) :
    midpointIndex s i = supplierMidpointIndex (toPhaseCell s) i := rfl

theorem lowerIndex_eq (s : CellCode) (i : Fin 5) :
    lowerIndex s i = supplierLowerIndex (toPhaseCell s) i := rfl

theorem upperIndex_eq (s : CellCode) (i : Fin 5) :
    upperIndex s i = supplierUpperIndex (toPhaseCell s) i := rfl

theorem endpointIndex_eq (s : CellCode) (m : Mask) (i : Fin 5) :
    endpointIndex s m i = supplierEndpointIndex (toPhaseCell s) m i := rfl

theorem normalizedIndex_eq (n : Int) :
    normalizedIndex n = normalizedSupplierIndex n := rfl

theorem shiftedIndex_eq (index : Nat) (k : Column) (i : Fin 5) :
    shiftedIndex index k i = supplierShiftedIndex index k i := rfl

theorem shiftedIndex_lt (index : Nat) (k : Column) (i : Fin 5) :
    shiftedIndex index k i < 218880 := supplierShiftedIndex_lt index k i

theorem midpoint_circle (s : CellCode) (hs : s.level ≤ 7) (k : Column) (i : Fin 5) :
    circlePoint (2*Real.pi*(shiftedIndex (midpointIndex s i) k i : ℝ)/218880) =
      circlePoint (fourierTarget (cellMidpoint (toPhaseCell s)) k i) :=
  supplier_midpoint_fourier_target (toPhaseCell s) hs k i

theorem endpoint_circle (s : CellCode) (hs : s.level ≤ 7)
    (k : Column) (m : Mask) (i : Fin 5) :
    circlePoint (2*Real.pi*(shiftedIndex (endpointIndex s m i) k i : ℝ)/218880) =
      circlePoint (fourierTarget
        (Seed0024ClusterTubeCover20261007.endpoint
          (cellLower (toPhaseCell s)) (cellUpper (toPhaseCell s)) m) k i) :=
  supplier_mask_fourier_target (toPhaseCell s) hs k m i

end Seed0024PhaseCoreBridge20261007

#print axioms Seed0024PhaseCoreBridge20261007.denominator_eq
#print axioms Seed0024PhaseCoreBridge20261007.valid_iff
#print axioms Seed0024PhaseCoreBridge20261007.validCheck_eq
#print axioms Seed0024PhaseCoreBridge20261007.maskBits_eq
#print axioms Seed0024PhaseCoreBridge20261007.childCell_eq
#print axioms Seed0024PhaseCoreBridge20261007.step_eq
#print axioms Seed0024PhaseCoreBridge20261007.halfStep_eq
#print axioms Seed0024PhaseCoreBridge20261007.midpointIndex_eq
#print axioms Seed0024PhaseCoreBridge20261007.lowerIndex_eq
#print axioms Seed0024PhaseCoreBridge20261007.upperIndex_eq
#print axioms Seed0024PhaseCoreBridge20261007.endpointIndex_eq
#print axioms Seed0024PhaseCoreBridge20261007.normalizedIndex_eq
#print axioms Seed0024PhaseCoreBridge20261007.shiftedIndex_eq
#print axioms Seed0024PhaseCoreBridge20261007.shiftedIndex_lt
#print axioms Seed0024PhaseCoreBridge20261007.midpoint_circle
#print axioms Seed0024PhaseCoreBridge20261007.endpoint_circle
