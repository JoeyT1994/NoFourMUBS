import SupplierMaskIndices

/-! At levels 0..4 every actual supplier lookup is a multiple of120.
This is an additive restriction on leaf acceptance, not a restriction of the
continuous phase domain. The original level0..7 geometry remains unchanged. -/
set_option autoImplicit false
open Seed0024ClusterTubeCover20261007

namespace Seed0024ClusterTube20261007

theorem supplier_sparse_halfstep_finite :
    ∀l : Fin 5,120 ∣ 218880/(2*(19*2^l.val)) := by decide

theorem supplier_halfstep_divisible (s : Cell) (hs : s.level≤4) :
    120 ∣ supplierHalfStep s :=
  supplier_sparse_halfstep_finite ⟨s.level,by omega⟩

theorem supplier_step_divisible (s : Cell) (hs : s.level≤4) :
    120 ∣ supplierStep s := by
  obtain ⟨n,hn⟩ := supplier_halfstep_divisible s hs
  refine ⟨2*n,?_⟩
  rw [(supplier_cell_divisibility s (by omega)).2.2,hn]
  ring

theorem supplier_midpoint_divisible (s : Cell) (hs : s.level≤4) (i : Fin 5) :
    120 ∣ supplierMidpointIndex s i := by
  obtain ⟨n,hn⟩ := supplier_halfstep_divisible s hs
  refine ⟨(2*s.index i+1)*n,?_⟩
  rw [supplierMidpointIndex,hn]
  ring

theorem supplier_lower_divisible (s : Cell) (hs : s.level≤4) (i : Fin 5) :
    120 ∣ supplierLowerIndex s i := by
  obtain ⟨n,hn⟩ := supplier_step_divisible s hs
  refine ⟨s.index i*n,?_⟩
  rw [supplierLowerIndex,hn]
  ring

theorem supplier_upper_divisible (s : Cell) (hs : s.level≤4) (i : Fin 5) :
    120 ∣ supplierUpperIndex s i := by
  obtain ⟨n,hn⟩ := supplier_step_divisible s hs
  refine ⟨(s.index i+1)*n,?_⟩
  rw [supplierUpperIndex,hn]
  ring

theorem supplier_endpoint_divisible (s : Cell) (hs : s.level≤4)
    (m : Mask) (i : Fin 5) : 120 ∣ supplierEndpointIndex s m i := by
  cases hb : maskBits m i
  · simpa only [supplierEndpointIndex,hb,Bool.false_eq_true,if_false] using
      supplier_lower_divisible s hs i
  · simpa only [supplierEndpointIndex,hb,if_true] using supplier_upper_divisible s hs i

theorem normalizedSupplierIndex_divisible (n : ℤ) (hn : (120:ℤ)∣n) :
    120 ∣ normalizedSupplierIndex n := by
  obtain ⟨a,ha⟩ := hn
  have hrem : (120:ℤ)∣n%218880 := by
    refine ⟨a-1824*(n/218880),?_⟩
    have he : n%218880=n-218880*(n/218880) := by omega
    rw [he,ha]
    ring
  have hcast : (120:ℤ)∣(normalizedSupplierIndex n:ℤ) := by
    rw [normalizedSupplierIndex_cast]
    exact hrem
  exact_mod_cast hcast

theorem supplier_shift_divisible (index : ℕ) (hindex : 120∣index)
    (k : Fin 6) (i : Fin 5) : 120∣supplierShiftedIndex index k i := by
  apply normalizedSupplierIndex_divisible
  obtain ⟨a,ha⟩ := hindex
  refine ⟨(a:ℤ)-((i.succ.val*k.val:ℕ):ℤ)*304,?_⟩
  rw [ha]
  push_cast
  ring

theorem supplier_midpoint_shift_divisible (s : Cell) (hs : s.level≤4)
    (k : Fin 6) (i : Fin 5) :
    120∣supplierShiftedIndex (supplierMidpointIndex s i) k i :=
  supplier_shift_divisible _ (supplier_midpoint_divisible s hs i) k i

theorem supplier_endpoint_shift_divisible (s : Cell) (hs : s.level≤4)
    (k : Fin 6) (m : Mask) (i : Fin 5) :
    120∣supplierShiftedIndex (supplierEndpointIndex s m i) k i :=
  supplier_shift_divisible _ (supplier_endpoint_divisible s hs m i) k i

def reducedSupplierIndex (index : ℕ) (hindex : index<218880) : Fin 1824 :=
  ⟨index/120,by omega⟩

theorem reducedSupplierIndex_exact (index : ℕ) (hindex : index<218880)
    (hdiv : 120∣index) : 120*(reducedSupplierIndex index hindex).val=index := by
  have hm := Nat.mod_eq_zero_of_dvd hdiv
  change 120*(index/120)=index
  omega

theorem supplier_midpoint_reduced_index (s : Cell) (hs : s.level≤4)
    (k : Fin 6) (i : Fin 5) :
    ∃j : Fin 1824,120*j.val=supplierShiftedIndex (supplierMidpointIndex s i) k i := by
  refine ⟨reducedSupplierIndex (supplierShiftedIndex (supplierMidpointIndex s i) k i)
    (supplierShiftedIndex_lt (supplierMidpointIndex s i) k i),?_⟩
  exact reducedSupplierIndex_exact _ _ (supplier_midpoint_shift_divisible s hs k i)

theorem supplier_endpoint_reduced_index (s : Cell) (hs : s.level≤4)
    (k : Fin 6) (m : Mask) (i : Fin 5) :
    ∃j : Fin 1824,120*j.val=supplierShiftedIndex (supplierEndpointIndex s m i) k i := by
  refine ⟨reducedSupplierIndex (supplierShiftedIndex (supplierEndpointIndex s m i) k i)
    (supplierShiftedIndex_lt (supplierEndpointIndex s m i) k i),?_⟩
  exact reducedSupplierIndex_exact _ _ (supplier_endpoint_shift_divisible s hs k m i)

end Seed0024ClusterTube20261007

#print axioms Seed0024ClusterTube20261007.supplier_sparse_halfstep_finite
#print axioms Seed0024ClusterTube20261007.supplier_halfstep_divisible
#print axioms Seed0024ClusterTube20261007.supplier_step_divisible
#print axioms Seed0024ClusterTube20261007.supplier_midpoint_divisible
#print axioms Seed0024ClusterTube20261007.supplier_lower_divisible
#print axioms Seed0024ClusterTube20261007.supplier_upper_divisible
#print axioms Seed0024ClusterTube20261007.supplier_endpoint_divisible
#print axioms Seed0024ClusterTube20261007.normalizedSupplierIndex_divisible
#print axioms Seed0024ClusterTube20261007.supplier_shift_divisible
#print axioms Seed0024ClusterTube20261007.supplier_midpoint_shift_divisible
#print axioms Seed0024ClusterTube20261007.supplier_endpoint_shift_divisible
#print axioms Seed0024ClusterTube20261007.reducedSupplierIndex_exact
#print axioms Seed0024ClusterTube20261007.supplier_midpoint_reduced_index
#print axioms Seed0024ClusterTube20261007.supplier_endpoint_reduced_index
