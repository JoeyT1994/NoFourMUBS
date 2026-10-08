import DyadicRotation

/- Join separately checked integer tails without re-evaluating any Taylor
anchor. The inherited last rectangle has the exact successor grid index. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 1500000

namespace Seed0024ClusterTubeTable20261007.Dyadic

def lastBox : IBox → List Row → IBox
  | previous,[] => previous
  | _,r::rows => lastBox r.bounds rows

theorem tailCheck_append (D Q : ℕ) (step previous : IBox) (xs ys : List Row) :
    tailCheck D Q step previous (xs++ys) =
      (tailCheck D Q step previous xs && tailCheck D Q step (lastBox previous xs) ys) := by
  induction xs generalizing previous with
  | nil => simp [tailCheck,lastBox]
  | cons r xs ih => simp only [List.cons_append,tailCheck,lastBox,ih,Bool.and_assoc]

theorem tailCheck_join (D Q : ℕ) (step previous : IBox) (xs ys : List Row)
    (hx : tailCheck D Q step previous xs=true)
    (hy : tailCheck D Q step (lastBox previous xs) ys=true) :
    tailCheck D Q step previous (xs++ys)=true := by
  rw [tailCheck_append,hx,hy]
  rfl

theorem RowsSound_bounds (D L Q start : ℕ) (rows : List Row)
    (hs : RowsSound D L Q start rows) (j : ℕ) (hj : j<rows.length) :
    (rows[j]).bounds.Contains D (gridPoint L (start+j)) := by
  induction rows generalizing start j with
  | nil => simp at hj
  | cons r rows ih =>
      cases j with
      | zero => simpa only [Nat.add_zero,List.getElem_cons_zero] using hs.1
      | succ j =>
          have hj' : j<rows.length := Nat.lt_of_succ_lt_succ hj
          have h := ih (start+1) hs.2.2 j hj'
          simpa only [List.getElem_cons_succ,Nat.add_assoc,Nat.add_comm 1 j] using h

theorem tailCheck_last_bounds (D L Q : ℕ) (hD : 0<D) (step : IBox)
    (hs : step.Contains D (gridPoint L 1)) (rows : List Row) :
    ∀(start : ℕ) (previous : IBox),previous.Contains D (gridPoint L start) →
      tailCheck D Q step previous rows=true →
      (lastBox previous rows).Contains D (gridPoint L (start+rows.length)) := by
  induction rows with
  | nil => intro start previous hp hc; simpa only [lastBox,List.length_nil,Nat.add_zero] using hp
  | cons r rows ih =>
      intro start previous hp hc
      have hh : (rotateCheck D previous step r.bounds=true ∧ rowCheck D Q r=true) ∧
          tailCheck D Q step r.bounds rows=true := by
        simpa only [tailCheck,Bool.and_eq_true] using hc
      have hr : r.bounds.Contains D (gridPoint L (start+1)) := by
        rw [gridPoint_succ]
        exact rotateCheck_sound D hD hp hs hh.1.1
      have h := ih (start+1) r.bounds hr hh.2
      simpa only [lastBox,List.length_cons,Nat.add_assoc,Nat.add_comm 1 rows.length] using h

theorem checked_tail_entry (D L Q start : ℕ) (hD : 0<D) (step previous : IBox)
    (hs : step.Contains D (gridPoint L 1)) (hp : previous.Contains D (gridPoint L start))
    (rows : List Row) (hc : tailCheck D Q step previous rows=true)
    (j : ℕ) (hj : j<rows.length) :
    EntryApprox L Q (start+1+j) (rows[j]).rounded.1 (rows[j]).rounded.2 :=
  RowsSound_entry D L Q (start+1) rows (tailCheck_sound D L Q hD step hs rows start previous hp hc) j hj

end Seed0024ClusterTubeTable20261007.Dyadic

#print axioms Seed0024ClusterTubeTable20261007.Dyadic.tailCheck_append
#print axioms Seed0024ClusterTubeTable20261007.Dyadic.tailCheck_join
#print axioms Seed0024ClusterTubeTable20261007.Dyadic.RowsSound_bounds
#print axioms Seed0024ClusterTubeTable20261007.Dyadic.tailCheck_last_bounds
#print axioms Seed0024ClusterTubeTable20261007.Dyadic.checked_tail_entry
