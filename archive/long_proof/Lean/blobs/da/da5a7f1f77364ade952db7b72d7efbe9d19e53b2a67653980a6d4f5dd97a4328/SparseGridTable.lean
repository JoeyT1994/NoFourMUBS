import EqualAngleTable

/- The full-period lookup can be represented by1824 entries when actual
queries are divisibleby120. This theorem deliberately grants no accuracy
for unused indices; leaf checks must separately enforce that restriction. -/
set_option autoImplicit false

namespace Seed0024ClusterTubeTable20261007

theorem sparse_gridAngle (k : ℕ) :
    gridAngle 218880 (120*k)=gridAngle 1824 k := by
  simp only [gridAngle_eq,Nat.cast_mul,Nat.cast_ofNat]
  ring

def sparseLookupIndex (k : Fin 218880) : Fin 1824 :=
  ⟨k.val/120,by have := k.isLt; omega⟩

def liftSparseTable (table : Fin 1824 → ℤ × ℤ) (k : Fin 218880) : ℤ × ℤ :=
  table (sparseLookupIndex k)

theorem sparseLookupIndex_exact (k : Fin 218880) (hk : 120∣k.val) :
    120*(sparseLookupIndex k).val=k.val := by
  simp only [sparseLookupIndex]
  simpa only [Nat.mul_comm] using Nat.div_mul_cancel hk

theorem liftSparseTable_sound (Q : ℕ) (table : Fin 1824 → ℤ × ℤ)
    (htable : ∀k : Fin 1824,EntryApprox 1824 Q k.val (table k).1 (table k).2)
    (k : Fin 218880) (hk : 120∣k.val) :
    EntryApprox 218880 Q k.val (liftSparseTable table k).1 (liftSparseTable table k).2 := by
  have h := htable (sparseLookupIndex k)
  have ha : gridAngle 218880 k.val=gridAngle 1824 (sparseLookupIndex k).val := by
    rw [←sparseLookupIndex_exact k hk,sparse_gridAngle]
  simpa only [EntryApprox,ha,liftSparseTable] using h

end Seed0024ClusterTubeTable20261007

#print axioms Seed0024ClusterTubeTable20261007.sparse_gridAngle
#print axioms Seed0024ClusterTubeTable20261007.sparseLookupIndex_exact
#print axioms Seed0024ClusterTubeTable20261007.liftSparseTable_sound
