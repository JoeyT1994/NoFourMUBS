import EqualAngleTable
import Mathlib.Tactic.FinCases

/- Only one quarter of the rounded trigonometric table needs independent
analytic checking. The full table is constructed by exact integer rotations.
There is no premise asserting correctness of the other three quarters. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace Seed0024ClusterTubeTable20261007.Sparse
open Seed0024ClusterTubeTable20261007

theorem supplier_gridAngle_quarter (k : ℕ) :
    gridAngle 1824 (k+456)=gridAngle 1824 k+Real.pi/2 := by
  simp only [gridAngle_eq,Nat.cast_add,Nat.cast_ofNat]
  ring

theorem entryApprox_quarter_turn (Q k : ℕ) (x y : ℤ)
    (h : EntryApprox 1824 Q k x y) :
    EntryApprox 1824 Q (k+456) (-y) x := by
  rcases h with ⟨hx,hy⟩
  constructor
  · simp only [supplier_gridAngle_quarter,Real.cos_add_pi_div_two,Int.cast_neg,mul_neg]
    have he : -(y:ℝ)- -((Q:ℝ)*Real.sin (gridAngle 1824 k))=
        -((y:ℝ)-(Q:ℝ)*Real.sin (gridAngle 1824 k)) := by ring
    rw [he,abs_neg]
    exact hy
  · simpa only [supplier_gridAngle_quarter,Real.sin_add_pi_div_two] using hx

def quarterRotate (q : Fin 4) (z : ℤ × ℤ) : ℤ × ℤ :=
  match q.val with
  | 0 => z
  | 1 => (-z.2,z.1)
  | 2 => (-z.1,-z.2)
  | _ => (z.2,-z.1)

theorem quarterRotate_sound (Q k : ℕ) (q : Fin 4) (z : ℤ × ℤ)
    (h : EntryApprox 1824 Q k z.1 z.2) :
    EntryApprox 1824 Q (k+q.val*456) (quarterRotate q z).1 (quarterRotate q z).2 := by
  have h1 := entryApprox_quarter_turn Q k z.1 z.2 h
  have h2 := entryApprox_quarter_turn Q (k+456) (-z.2) z.1 h1
  have h3 := entryApprox_quarter_turn Q (k+456+456) (-z.1) (-z.2) h2
  fin_cases q
  · simpa only [quarterRotate,Nat.zero_mul,Nat.add_zero] using h
  · simpa only [quarterRotate,Nat.one_mul] using h1
  · simpa only [quarterRotate,Nat.add_assoc] using h2
  · simpa only [quarterRotate,Nat.add_assoc,neg_neg] using h3

def quarterIndex (k : Fin 1824) : Fin 4 := ⟨k.val/456,by have := k.isLt; omega⟩
def withinQuarterIndex (k : Fin 1824) : Fin 456 :=
  ⟨k.val%456,Nat.mod_lt _ (by decide)⟩

def tableFromQuarter (base : Fin 456 → ℤ × ℤ) (k : Fin 1824) : ℤ × ℤ :=
  quarterRotate (quarterIndex k) (base (withinQuarterIndex k))

theorem tableFromQuarter_sound (Q : ℕ) (base : Fin 456 → ℤ × ℤ)
    (hbase : ∀k : Fin 456,EntryApprox 1824 Q k.val (base k).1 (base k).2) :
    ∀k : Fin 1824,EntryApprox 1824 Q k.val
      (tableFromQuarter base k).1 (tableFromQuarter base k).2 := by
  intro k
  have h := quarterRotate_sound Q (withinQuarterIndex k).val (quarterIndex k)
    (base (withinQuarterIndex k)) (hbase (withinQuarterIndex k))
  have he : (withinQuarterIndex k).val+(quarterIndex k).val*456=k.val := by
    simp only [withinQuarterIndex,quarterIndex]
    omega
  rw [he] at h
  exact h

end Seed0024ClusterTubeTable20261007.Sparse

#print axioms Seed0024ClusterTubeTable20261007.Sparse.supplier_gridAngle_quarter
#print axioms Seed0024ClusterTubeTable20261007.Sparse.entryApprox_quarter_turn
#print axioms Seed0024ClusterTubeTable20261007.Sparse.quarterRotate_sound
#print axioms Seed0024ClusterTubeTable20261007.Sparse.tableFromQuarter_sound
