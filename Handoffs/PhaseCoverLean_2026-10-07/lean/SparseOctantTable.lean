import SparseQuarterTable

/- Exact reflection reduces the remaining quadrant to229 entries, including
the pi/4 endpoint. Combined with quarter turns, all1824 entries follow. -/
set_option autoImplicit false

namespace Seed0024ClusterTubeTable20261007.Sparse
open Seed0024ClusterTubeTable20261007

theorem supplier_gridAngle_complement (k : ℕ) (hk : k≤456) :
    gridAngle 1824 (456-k)=Real.pi/2-gridAngle 1824 k := by
  simp only [gridAngle_eq,Nat.cast_sub hk,Nat.cast_ofNat]
  ring

theorem entryApprox_quarter_complement (Q k : ℕ) (hk : k≤456) (x y : ℤ)
    (h : EntryApprox 1824 Q k x y) :
    EntryApprox 1824 Q (456-k) y x := by
  constructor
  · simpa only [supplier_gridAngle_complement k hk,Real.cos_pi_div_two_sub] using h.2
  · simpa only [supplier_gridAngle_complement k hk,Real.sin_pi_div_two_sub] using h.1

def quarterFromOctant (base : Fin 229 → ℤ × ℤ) (k : Fin 456) : ℤ × ℤ :=
  if h : k.val≤228 then base ⟨k.val,by omega⟩
  else
    let z := base ⟨456-k.val,by have := k.isLt; omega⟩
    (z.2,z.1)

theorem quarterFromOctant_sound (Q : ℕ) (base : Fin 229 → ℤ × ℤ)
    (hbase : ∀k : Fin 229,EntryApprox 1824 Q k.val (base k).1 (base k).2) :
    ∀k : Fin 456,EntryApprox 1824 Q k.val
      (quarterFromOctant base k).1 (quarterFromOctant base k).2 := by
  intro k
  by_cases h : k.val≤228
  · simpa only [quarterFromOctant,dif_pos h] using hbase ⟨k.val,by omega⟩
  · let j : Fin 229 := ⟨456-k.val,by have := k.isLt; omega⟩
    have hj : j.val≤456 := by dsimp [j]; omega
    have hh := entryApprox_quarter_complement Q j.val hj (base j).1 (base j).2 (hbase j)
    have he : 456-j.val=k.val := by dsimp [j]; have := k.isLt; omega
    rw [he] at hh
    simpa only [quarterFromOctant,dif_neg h] using hh

def tableFromOctant (base : Fin 229 → ℤ × ℤ) : Fin 1824 → ℤ × ℤ :=
  tableFromQuarter (quarterFromOctant base)

theorem tableFromOctant_sound (Q : ℕ) (base : Fin 229 → ℤ × ℤ)
    (hbase : ∀k : Fin 229,EntryApprox 1824 Q k.val (base k).1 (base k).2) :
    ∀k : Fin 1824,EntryApprox 1824 Q k.val
      (tableFromOctant base k).1 (tableFromOctant base k).2 :=
  tableFromQuarter_sound Q (quarterFromOctant base) (quarterFromOctant_sound Q base hbase)

end Seed0024ClusterTubeTable20261007.Sparse

#print axioms Seed0024ClusterTubeTable20261007.Sparse.supplier_gridAngle_complement
#print axioms Seed0024ClusterTubeTable20261007.Sparse.entryApprox_quarter_complement
#print axioms Seed0024ClusterTubeTable20261007.Sparse.quarterFromOctant_sound
#print axioms Seed0024ClusterTubeTable20261007.Sparse.tableFromOctant_sound
