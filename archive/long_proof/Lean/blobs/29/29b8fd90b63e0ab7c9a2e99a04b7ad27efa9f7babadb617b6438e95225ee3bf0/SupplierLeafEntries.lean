import IntegerPhaseArithmetic
import SupplierTablePhaseBinding

/-! Shared literal table lookups for scalar rejection and centre inclusion.
Soundness remains conditional on the actual supplied table's coordinate errors;
the accepted finite table checker supplies those errors. -/
set_option autoImplicit false
open Seed0024ClusterTubeCover20261007 Seed0024ClusterTubeTable20261007
namespace Seed0024ClusterTube20261007

def SupplierIntegerTableSound (table : SupplierTable) : Prop :=
  ∀ k,EntryApprox 218880 67108864 k.val (table k).1 (table k).2

def leafMidpointEntry (table : SupplierTable) (s : Cell) (k : Fin 6)
    (i : Fin 5) : ℤ × ℤ :=
  table ⟨supplierShiftedIndex (supplierMidpointIndex s i) k i,
    supplierShiftedIndex_lt _ _ _⟩

def leafEndpointEntry (table : SupplierTable) (s : Cell) (k : Fin 6)
    (m : Mask) (i : Fin 5) : ℤ × ℤ :=
  table ⟨supplierShiftedIndex (supplierEndpointIndex s m i) k i,
    supplierShiftedIndex_lt _ _ _⟩

theorem supplier_integer_table_sound_of_check (order : SupplierIndex → ℕ)
    (table : SupplierTable) (hcheck : tableCheck 218880 67108864 order table=true) :
    SupplierIntegerTableSound table := tableCheck_sound 218880 67108864 order table hcheck

theorem leaf_midpoint_entry_errors (table : SupplierTable)
    (hTable : SupplierIntegerTableSound table) (s : Cell) (hs : s.level≤7)
    (k : Fin 6) (i : Fin 5) :
    |(integerPairComplex (leafMidpointEntry table s k i)-
      (67108864 : ℂ)*circlePoint (fourierTarget (cellMidpoint s) k i)).re|<1 ∧
    |(integerPairComplex (leafMidpointEntry table s k i)-
      (67108864 : ℂ)*circlePoint (fourierTarget (cellMidpoint s) k i)).im|<1 := by
  let index : SupplierIndex := ⟨supplierShiftedIndex (supplierMidpointIndex s i) k i,
    supplierShiftedIndex_lt _ _ _⟩
  have h := entryApprox_complex_error 218880 67108864 index.val
    (table index).1 (table index).2 (fourierTarget (cellMidpoint s) k i)
    (supplier_midpoint_gridAngle s hs k i) (hTable index)
  simpa only [leafMidpointEntry,integerPairComplex,integerComplex,index,
    Nat.cast_ofNat] using h

theorem leaf_endpoint_entry_errors (table : SupplierTable)
    (hTable : SupplierIntegerTableSound table) (s : Cell) (hs : s.level≤7)
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
  have h := entryApprox_complex_error 218880 67108864 index.val
    (table index).1 (table index).2 _
    (supplier_mask_gridAngle s hs k m i) (hTable index)
  simpa only [leafEndpointEntry,integerPairComplex,integerComplex,index,
    Nat.cast_ofNat] using h

#print axioms supplier_integer_table_sound_of_check
#print axioms leaf_midpoint_entry_errors
#print axioms leaf_endpoint_entry_errors
end Seed0024ClusterTube20261007
