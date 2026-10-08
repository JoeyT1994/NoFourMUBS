import SupplierLeafEntries
import SparseSupplierIndices

/-! Only the120-divisible table entries are used by cells of level at most4.
The scoped premise grants no accuracy at other indices. Both rejection and
inclusion checks must enforce that level bound in their concrete Booleans. -/
set_option autoImplicit false
open Seed0024ClusterTubeCover20261007 Seed0024ClusterTubeTable20261007
namespace Seed0024ClusterTube20261007

def SupplierNeededTableSound (table : SupplierTable) : Prop :=
  ∀ k,120 ∣ k.val → EntryApprox 218880 67108864 k.val (table k).1 (table k).2

theorem scoped_leaf_midpoint_entry_errors (table : SupplierTable)
    (hTable : SupplierNeededTableSound table) (s : Cell) (hs : s.level≤4)
    (k : Fin 6) (i : Fin 5) :
    |(integerPairComplex (leafMidpointEntry table s k i)-
      (67108864 : ℂ)*circlePoint (fourierTarget (cellMidpoint s) k i)).re|<1 ∧
    |(integerPairComplex (leafMidpointEntry table s k i)-
      (67108864 : ℂ)*circlePoint (fourierTarget (cellMidpoint s) k i)).im|<1 := by
  let index : SupplierIndex := ⟨supplierShiftedIndex (supplierMidpointIndex s i) k i,
    supplierShiftedIndex_lt _ _ _⟩
  have hEntry := hTable index (supplier_midpoint_shift_divisible s hs k i)
  have h := entryApprox_complex_error 218880 67108864 index.val
    (table index).1 (table index).2 (fourierTarget (cellMidpoint s) k i)
    (supplier_midpoint_gridAngle s (by omega) k i) hEntry
  simpa only [leafMidpointEntry,integerPairComplex,integerComplex,index,
    Nat.cast_ofNat] using h

theorem scoped_leaf_endpoint_entry_errors (table : SupplierTable)
    (hTable : SupplierNeededTableSound table) (s : Cell) (hs : s.level≤4)
    (k : Fin 6) (m : Mask) (i : Fin 5) :
    |(integerPairComplex (leafEndpointEntry table s k m i)-
      (67108864 : ℂ)*circlePoint (endpoint
        (fun j => fourierTarget (cellMidpoint s) k j-Real.pi/(denominator s : ℝ))
        (fun j => fourierTarget (cellMidpoint s) k j+Real.pi/(denominator s : ℝ)) m i)).re|<1 ∧
    |(integerPairComplex (leafEndpointEntry table s k m i)-
      (67108864 : ℂ)*circlePoint (endpoint
        (fun j => fourierTarget (cellMidpoint s) k j-Real.pi/(denominator s : ℝ))
        (fun j => fourierTarget (cellMidpoint s) k j+Real.pi/(denominator s : ℝ)) m i)).im|<1 := by
  let index : SupplierIndex := ⟨supplierShiftedIndex (supplierEndpointIndex s m i) k i,
    supplierShiftedIndex_lt _ _ _⟩
  have hEntry := hTable index (supplier_endpoint_shift_divisible s hs k m i)
  have h := entryApprox_complex_error 218880 67108864 index.val
    (table index).1 (table index).2 _
    (supplier_mask_gridAngle s (by omega) k m i) hEntry
  simpa only [leafEndpointEntry,integerPairComplex,integerComplex,index,
    Nat.cast_ofNat] using h

#print axioms scoped_leaf_midpoint_entry_errors
#print axioms scoped_leaf_endpoint_entry_errors
end Seed0024ClusterTube20261007
