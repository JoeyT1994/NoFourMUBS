import QuarterTable

/- Exact reflection reduces the remaining quadrant to27361 entries, including
the pi/4 endpoint. Combined with quarter turns, all218880 entries follow. -/
set_option autoImplicit false

namespace Seed0024ClusterTubeTable20261007

theorem supplier_gridAngle_complement (k : ℕ) (hk : k≤54720) :
    gridAngle 218880 (54720-k)=Real.pi/2-gridAngle 218880 k := by
  simp only [gridAngle_eq,Nat.cast_sub hk,Nat.cast_ofNat]
  ring

theorem entryApprox_quarter_complement (Q k : ℕ) (hk : k≤54720) (x y : ℤ)
    (h : EntryApprox 218880 Q k x y) :
    EntryApprox 218880 Q (54720-k) y x := by
  constructor
  · simpa only [supplier_gridAngle_complement k hk,Real.cos_pi_div_two_sub] using h.2
  · simpa only [supplier_gridAngle_complement k hk,Real.sin_pi_div_two_sub] using h.1

def quarterFromOctant (base : Fin 27361 → ℤ × ℤ) (k : Fin 54720) : ℤ × ℤ :=
  if h : k.val≤27360 then base ⟨k.val,by omega⟩
  else
    let z := base ⟨54720-k.val,by have := k.isLt; omega⟩
    (z.2,z.1)

theorem quarterFromOctant_sound (Q : ℕ) (base : Fin 27361 → ℤ × ℤ)
    (hbase : ∀k : Fin 27361,EntryApprox 218880 Q k.val (base k).1 (base k).2) :
    ∀k : Fin 54720,EntryApprox 218880 Q k.val
      (quarterFromOctant base k).1 (quarterFromOctant base k).2 := by
  intro k
  by_cases h : k.val≤27360
  · simpa only [quarterFromOctant,dif_pos h] using hbase ⟨k.val,by omega⟩
  · let j : Fin 27361 := ⟨54720-k.val,by have := k.isLt; omega⟩
    have hj : j.val≤54720 := by dsimp [j]; omega
    have hh := entryApprox_quarter_complement Q j.val hj (base j).1 (base j).2 (hbase j)
    have he : 54720-j.val=k.val := by dsimp [j]; have := k.isLt; omega
    rw [he] at hh
    simpa only [quarterFromOctant,dif_neg h] using hh

def tableFromOctant (base : Fin 27361 → ℤ × ℤ) : Fin 218880 → ℤ × ℤ :=
  tableFromQuarter (quarterFromOctant base)

theorem tableFromOctant_sound (Q : ℕ) (base : Fin 27361 → ℤ × ℤ)
    (hbase : ∀k : Fin 27361,EntryApprox 218880 Q k.val (base k).1 (base k).2) :
    ∀k : Fin 218880,EntryApprox 218880 Q k.val
      (tableFromOctant base k).1 (tableFromOctant base k).2 :=
  tableFromQuarter_sound Q (quarterFromOctant base) (quarterFromOctant_sound Q base hbase)

end Seed0024ClusterTubeTable20261007

#print axioms Seed0024ClusterTubeTable20261007.supplier_gridAngle_complement
#print axioms Seed0024ClusterTubeTable20261007.entryApprox_quarter_complement
#print axioms Seed0024ClusterTubeTable20261007.quarterFromOctant_sound
#print axioms Seed0024ClusterTubeTable20261007.tableFromOctant_sound
