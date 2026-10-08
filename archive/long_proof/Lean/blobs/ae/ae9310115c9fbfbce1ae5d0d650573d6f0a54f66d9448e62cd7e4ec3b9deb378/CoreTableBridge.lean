import CoreOctantDataEquality

/-! Bounded pure Nat lookups agree with the same certified sparse table.
The out-of-range default is never used in these theorems. Approximation
accuracy still requires the exact120-divisibility condition. -/
set_option autoImplicit false
open Seed0024PhaseCore20261007 Seed0024ClusterTubeTable20261007

namespace Seed0024PhaseCoreBridge20261007

theorem octantEntry_eq (n : Nat) (hn : n < 229) :
    octantEntry n = compactBase ⟨n,hn⟩ := by
  have hsize : n < compactRoundedArray.size := by
    simpa only [compactRoundedArray_size] using hn
  simp only [octantEntry,octantArray_eq]
  change (compactRoundedArray[n]?).getD (0,0) = compactRoundedArray[n]'hsize
  simp [hsize]

theorem quarterEntry_eq (k : Fin 456) :
    quarterEntry k.val = Sparse.quarterFromOctant compactBase k := by
  by_cases h : k.val ≤ 228
  · simp only [quarterEntry,Sparse.quarterFromOctant,if_pos h,dif_pos h]
    exact octantEntry_eq k.val (by omega)
  · simp only [quarterEntry,Sparse.quarterFromOctant,if_neg h,dif_neg h]
    rw [octantEntry_eq (456-k.val) (by have := k.isLt; omega)]

theorem rotateQuarter_eq (q : Fin 4) (z : Pair) :
    rotateQuarter q.val z = Sparse.quarterRotate q z := rfl

theorem sparseEntry_eq (k : Fin 1824) :
    sparseEntry k.val = compactSparseTable k := by
  change rotateQuarter (Sparse.quarterIndex k).val
      (quarterEntry (Sparse.withinQuarterIndex k).val) =
    Sparse.quarterRotate (Sparse.quarterIndex k)
      (Sparse.quarterFromOctant compactBase (Sparse.withinQuarterIndex k))
  calc
    rotateQuarter (Sparse.quarterIndex k).val
        (quarterEntry (Sparse.withinQuarterIndex k).val) =
      rotateQuarter (Sparse.quarterIndex k).val
        (Sparse.quarterFromOctant compactBase (Sparse.withinQuarterIndex k)) :=
      congrArg (rotateQuarter (Sparse.quarterIndex k).val)
        (quarterEntry_eq (Sparse.withinQuarterIndex k))
    _ = Sparse.quarterRotate (Sparse.quarterIndex k)
        (Sparse.quarterFromOctant compactBase (Sparse.withinQuarterIndex k)) :=
      rotateQuarter_eq (Sparse.quarterIndex k) _

theorem tableEntry_eq (k : Fin 218880) :
    tableEntry k.val = compactSupplierTable k := by
  change sparseEntry (sparseLookupIndex k).val = compactSparseTable (sparseLookupIndex k)
  exact sparseEntry_eq (sparseLookupIndex k)

theorem tableEntry_needed_accuracy (k : Fin 218880) (hk : 120 ∣ k.val) :
    EntryApprox 218880 67108864 k.val (tableEntry k.val).1 (tableEntry k.val).2 := by
  rw [tableEntry_eq]
  exact compactSupplierTable_needed_accuracy k hk

end Seed0024PhaseCoreBridge20261007

#print axioms Seed0024PhaseCoreBridge20261007.octantEntry_eq
#print axioms Seed0024PhaseCoreBridge20261007.quarterEntry_eq
#print axioms Seed0024PhaseCoreBridge20261007.rotateQuarter_eq
#print axioms Seed0024PhaseCoreBridge20261007.sparseEntry_eq
#print axioms Seed0024PhaseCoreBridge20261007.tableEntry_eq
#print axioms Seed0024PhaseCoreBridge20261007.tableEntry_needed_accuracy
