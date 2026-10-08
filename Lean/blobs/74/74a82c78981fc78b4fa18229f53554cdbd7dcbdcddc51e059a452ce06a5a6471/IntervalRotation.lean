import EqualAngleTable
import ExactComplexExpr

/- Block recurrence for the same equal-angle grid. The recurrence uses exact
rational rectangles, not rounded table integers. Every supplied cutpoint is
checked against the full interval product. File decoding, signed division and
the historical table hash remain independent obligations. -/
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 1500000

namespace Seed0024ClusterTubeTable20261007
open SignedMeanIntake20261006 ExactMeanChecker20261006

noncomputable def gridPoint (L k : ℕ) : ℂ :=
  Complex.exp (Complex.I*(gridAngle L k:ℂ))

theorem gridAngle_succ (L k : ℕ) :
    gridAngle L (k+1)=gridAngle L k+gridAngle L 1 := by
  simp only [gridAngle_eq,Nat.cast_add,Nat.cast_one]
  ring

theorem gridPoint_succ (L k : ℕ) :
    gridPoint L (k+1)=gridPoint L k*gridPoint L 1 := by
  simp only [gridPoint,gridAngle_succ,Complex.ofReal_add,mul_add,Complex.exp_add]

theorem gridPoint_zero (L : ℕ) : gridPoint L 0=1 := by
  simp [gridPoint,gridAngle_eq]

theorem gridPoint_re (L k : ℕ) : (gridPoint L k).re=Real.cos (gridAngle L k) := by
  simp only [gridPoint,mul_comm Complex.I,Complex.exp_ofReal_mul_I_re]

theorem gridPoint_im (L k : ℕ) : (gridPoint L k).im=Real.sin (gridAngle L k) := by
  simp only [gridPoint,mul_comm Complex.I,Complex.exp_ofReal_mul_I_im]

def gridBox (n L k : ℕ) : CBox :=
  ⟨(gridPhaseBox n L k).1,(gridPhaseBox n L k).2⟩

theorem gridBox_sound (n L k : ℕ) : (gridBox n L k).Contains (gridPoint L k) := by
  simpa only [CBox.Contains,gridBox,gridPoint_re,gridPoint_im] using gridPhaseBox_sound n L k

def boxEncloses (outer inner : CBox) : Bool :=
  outer.re.encloses inner.re && outer.im.encloses inner.im

theorem boxEncloses_sound (outer inner : CBox) (z : ℂ)
    (hz : inner.Contains z) (hc : boxEncloses outer inner=true) : outer.Contains z := by
  have hh : outer.re.encloses inner.re=true ∧ outer.im.encloses inner.im=true := by
    simpa only [boxEncloses,Bool.and_eq_true] using hc
  exact ⟨QInterval.encloses_sound hh.1 hz.1,QInterval.encloses_sound hh.2 hz.2⟩

def rotationCheck (previous step next : CBox) : Bool :=
  boxEncloses next (CBox.mul previous step)

theorem rotationCheck_sound (L k : ℕ) (previous step next : CBox)
    (hp : previous.Contains (gridPoint L k)) (hs : step.Contains (gridPoint L 1))
    (hc : rotationCheck previous step next=true) : next.Contains (gridPoint L (k+1)) := by
  rw [gridPoint_succ]
  exact boxEncloses_sound next _ _ (CBox.mul_sound hp hs) hc

structure RotationRow where
  bounds : CBox
  rounded : ℤ × ℤ
  deriving DecidableEq, Repr

def roundedRowCheck (Q : ℕ) (r : RotationRow) : Bool :=
  coordinateCheck Q r.rounded.1 r.bounds.re &&
    coordinateCheck Q r.rounded.2 r.bounds.im

theorem roundedRowCheck_sound (L Q k : ℕ) (r : RotationRow)
    (hr : r.bounds.Contains (gridPoint L k)) (hc : roundedRowCheck Q r=true) :
    EntryApprox L Q k r.rounded.1 r.rounded.2 := by
  have hh : coordinateCheck Q r.rounded.1 r.bounds.re=true ∧
      coordinateCheck Q r.rounded.2 r.bounds.im=true := by
    simpa only [roundedRowCheck,Bool.and_eq_true] using hc
  have hreal : r.bounds.re.Contains (Real.cos (gridAngle L k)) := by
    simpa only [gridPoint_re] using hr.1
  have himag : r.bounds.im.Contains (Real.sin (gridAngle L k)) := by
    simpa only [gridPoint_im] using hr.2
  exact ⟨coordinateCheck_sound Q _ _ _ hreal hh.1,
    coordinateCheck_sound Q _ _ _ himag hh.2⟩

def rotationTailCheck (Q : ℕ) (step : CBox) : CBox → List RotationRow → Bool
  | _,[] => true
  | previous,r::rows => rotationCheck previous step r.bounds &&
      roundedRowCheck Q r && rotationTailCheck Q step r.bounds rows

def RowsSound (L Q : ℕ) : ℕ → List RotationRow → Prop
  | _,[] => True
  | start,r::rows => r.bounds.Contains (gridPoint L start) ∧
      EntryApprox L Q start r.rounded.1 r.rounded.2 ∧ RowsSound L Q (start+1) rows

theorem rotationTailCheck_sound (L Q : ℕ) (step : CBox)
    (hs : step.Contains (gridPoint L 1)) (rows : List RotationRow) :
    ∀start previous,previous.Contains (gridPoint L start) →
      rotationTailCheck Q step previous rows=true → RowsSound L Q (start+1) rows := by
  induction rows with
  | nil => intro start previous hp hc; trivial
  | cons r rows ih =>
      intro start previous hp hc
      have hh : (rotationCheck previous step r.bounds=true ∧ roundedRowCheck Q r=true) ∧
          rotationTailCheck Q step r.bounds rows=true := by
        simpa only [rotationTailCheck,Bool.and_eq_true] using hc
      have hr := rotationCheck_sound L start previous step r.bounds hp hs hh.1.1
      exact ⟨hr,roundedRowCheck_sound L Q (start+1) r hr hh.1.2,
        ih (start+1) r.bounds hr hh.2⟩

theorem RowsSound_entry (L Q start : ℕ) (rows : List RotationRow)
    (hs : RowsSound L Q start rows) (j : ℕ) (hj : j<rows.length) :
    EntryApprox L Q (start+j) (rows[j]).rounded.1 (rows[j]).rounded.2 := by
  induction rows generalizing start j with
  | nil => simp at hj
  | cons r rows ih =>
      cases j with
      | zero => simpa only [Nat.add_zero,List.getElem_cons_zero] using hs.2.1
      | succ j =>
          have hj' : j<rows.length := Nat.lt_of_succ_lt_succ hj
          have h := ih (start+1) hs.2.2 j hj'
          simpa only [List.getElem_cons_succ,Nat.add_assoc,Nat.add_comm 1 j] using h

structure RotationBlock where
  start : ℕ
  anchorOrder : ℕ
  anchor : RotationRow
  tail : List RotationRow
  deriving DecidableEq, Repr

def RotationBlock.rows (b : RotationBlock) : List RotationRow := b.anchor::b.tail

def blockCheck (L Q : ℕ) (step : CBox) (b : RotationBlock) : Bool :=
  boxEncloses b.anchor.bounds (gridBox b.anchorOrder L b.start) &&
    roundedRowCheck Q b.anchor && rotationTailCheck Q step b.anchor.bounds b.tail

theorem blockCheck_sound (L Q : ℕ) (step : CBox) (b : RotationBlock)
    (hs : step.Contains (gridPoint L 1)) (hc : blockCheck L Q step b=true) :
    RowsSound L Q b.start b.rows := by
  have hh : (boxEncloses b.anchor.bounds (gridBox b.anchorOrder L b.start)=true ∧
      roundedRowCheck Q b.anchor=true) ∧
      rotationTailCheck Q step b.anchor.bounds b.tail=true := by
    simpa only [blockCheck,Bool.and_eq_true] using hc
  have ha := boxEncloses_sound _ _ _ (gridBox_sound b.anchorOrder L b.start) hh.1.1
  exact ⟨ha,roundedRowCheck_sound L Q b.start b.anchor ha hh.1.2,
    rotationTailCheck_sound L Q step hs b.tail b.start b.anchor.bounds ha hh.2⟩

def stepCheck (L order : ℕ) (step : CBox) : Bool :=
  boxEncloses step (gridBox order L 1)

theorem stepCheck_sound (L order : ℕ) (step : CBox)
    (hc : stepCheck L order step=true) : step.Contains (gridPoint L 1) :=
  boxEncloses_sound _ _ _ (gridBox_sound order L 1) hc

theorem checked_block_entry (L Q stepOrder : ℕ) (step : CBox) (b : RotationBlock)
    (hstep : stepCheck L stepOrder step=true) (hblock : blockCheck L Q step b=true)
    (j : ℕ) (hj : j<b.rows.length) :
    EntryApprox L Q (b.start+j) (b.rows[j]).rounded.1 (b.rows[j]).rounded.2 :=
  RowsSound_entry L Q b.start b.rows
    (blockCheck_sound L Q step b (stepCheck_sound L stepOrder step hstep) hblock) j hj

/-- Every table index is bound to a checked row with the exact same integer pair. -/
theorem table_sound_of_rotation_blocks (L Q stepOrder : ℕ) (step : CBox)
    (table : Fin L → ℤ × ℤ) {S : Type*} (blocks : S → RotationBlock)
    (hstep : stepCheck L stepOrder step=true)
    (hblocks : ∀s,blockCheck L Q step (blocks s)=true)
    (hcover : ∀k : Fin L,∃s : S,∃j : Fin (blocks s).rows.length,
      (blocks s).start+j.val=k.val ∧ ((blocks s).rows[j.val]).rounded=table k) :
    ∀k : Fin L,EntryApprox L Q k.val (table k).1 (table k).2 := by
  intro k
  obtain ⟨s,j,hindex,hvalue⟩ := hcover k
  have h := checked_block_entry L Q stepOrder step (blocks s) hstep (hblocks s) j.val j.isLt
  rw [hindex,hvalue] at h
  exact h

end Seed0024ClusterTubeTable20261007

#print axioms Seed0024ClusterTubeTable20261007.gridAngle_succ
#print axioms Seed0024ClusterTubeTable20261007.gridPoint_succ
#print axioms Seed0024ClusterTubeTable20261007.gridPoint_zero
#print axioms Seed0024ClusterTubeTable20261007.gridPoint_re
#print axioms Seed0024ClusterTubeTable20261007.gridPoint_im
#print axioms Seed0024ClusterTubeTable20261007.gridBox_sound
#print axioms Seed0024ClusterTubeTable20261007.boxEncloses_sound
#print axioms Seed0024ClusterTubeTable20261007.rotationCheck_sound
#print axioms Seed0024ClusterTubeTable20261007.roundedRowCheck_sound
#print axioms Seed0024ClusterTubeTable20261007.rotationTailCheck_sound
#print axioms Seed0024ClusterTubeTable20261007.RowsSound_entry
#print axioms Seed0024ClusterTubeTable20261007.blockCheck_sound
#print axioms Seed0024ClusterTubeTable20261007.stepCheck_sound
#print axioms Seed0024ClusterTubeTable20261007.checked_block_entry
#print axioms Seed0024ClusterTubeTable20261007.table_sound_of_rotation_blocks
