import SparseOctantTable
import SparseGridTable
import SparseBaseAccuracy

/- Actual checked integer lookup values, not a hypothetical accurate table.
Accuracy of the lifted table is claimed only at120-divisible queries. -/
set_option autoImplicit false

namespace Seed0024ClusterTubeTable20261007

def certifiedSparseTable : Fin 1824 → ℤ × ℤ :=
  Sparse.tableFromOctant SparseBase.base

theorem certifiedSparseTable_accurate (k : Fin 1824) :
    EntryApprox 1824 67108864 k.val
      (certifiedSparseTable k).1 (certifiedSparseTable k).2 :=
  Sparse.tableFromOctant_sound 67108864 SparseBase.base SparseBase.base_accurate k

def certifiedSupplierTable : Fin 218880 → ℤ × ℤ :=
  liftSparseTable certifiedSparseTable

theorem certifiedSupplierTable_needed_accuracy (k : Fin 218880) (hk : 120∣k.val) :
    EntryApprox 218880 67108864 k.val
      (certifiedSupplierTable k).1 (certifiedSupplierTable k).2 :=
  liftSparseTable_sound 67108864 certifiedSparseTable certifiedSparseTable_accurate k hk

end Seed0024ClusterTubeTable20261007

#print axioms Seed0024ClusterTubeTable20261007.certifiedSparseTable_accurate
#print axioms Seed0024ClusterTubeTable20261007.certifiedSupplierTable_needed_accuracy
