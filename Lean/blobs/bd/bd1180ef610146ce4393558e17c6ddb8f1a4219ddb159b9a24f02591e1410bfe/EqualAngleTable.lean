import PiPhaseBounds
import WholeBoxPhase

/- A soundness consumer for the supplier's equal-angle grid. Each finite check
uses the existing rational Taylor enclosure, widened only by the certified pi
uncertainty. No concrete trigonometric table or binary decoder is asserted. -/
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 1500000

namespace Seed0024ClusterTubeTable20261007
open SignedMeanIntake20261006

def gridScale (L k : ℕ) : ℚ := 2*k/L
def gridAngle (L k : ℕ) : ℝ := (gridScale L k:ℝ)*Real.pi
def gridInterval (L k : ℕ) : QInterval :=
  QInterval.mul (.point (gridScale L k)) piInterval
def intervalCenter (a : QInterval) : ℚ := (a.lo+a.hi)/2
def intervalRadius (a : QInterval) : ℚ := (a.hi-a.lo)/2

theorem gridAngle_eq (L k : ℕ) : gridAngle L k=2*Real.pi*k/L := by
  simp only [gridAngle,gridScale,Rat.cast_div,Rat.cast_mul,Rat.cast_ofNat,Rat.cast_natCast]
  ring

theorem gridInterval_contains (L k : ℕ) : (gridInterval L k).Contains (gridAngle L k) :=
  QInterval.mul_sound (QInterval.point_sound _) piInterval_contains

theorem interval_center_error (a : QInterval) (x : ℝ) (hx : a.Contains x) :
    |x-(intervalCenter a:ℝ)|≤(intervalRadius a:ℝ) := by
  rcases hx with ⟨hl,hu⟩
  apply abs_le.mpr
  simp only [intervalCenter,intervalRadius,Rat.cast_div,Rat.cast_add,Rat.cast_sub,
    Rat.cast_ofNat]
  constructor <;> linarith

def gridPhaseBox (n L k : ℕ) : QInterval × QInterval :=
  let a := gridInterval L k
  let p := phaseBox n (intervalCenter a)
  (p.1.widen (intervalRadius a),p.2.widen (intervalRadius a))

theorem gridPhaseBox_sound (n L k : ℕ) :
    (gridPhaseBox n L k).1.Contains (Real.cos (gridAngle L k)) ∧
    (gridPhaseBox n L k).2.Contains (Real.sin (gridAngle L k)) := by
  have h := phaseBox_sound n (intervalCenter (gridInterval L k))
  exact phaseWholeBox_sound h.1 h.2
    (interval_center_error _ _ (gridInterval_contains L k))

/-- Strict coordinate margin in integer-scaled units, matching the supplier's <1 requirement. -/
def coordinateCheck (Q : ℕ) (z : ℤ) (a : QInterval) : Bool :=
  decide ((z:ℚ)-1<(Q:ℚ)*a.lo ∧ (Q:ℚ)*a.hi<(z:ℚ)+1)

theorem coordinateCheck_sound (Q : ℕ) (z : ℤ) (a : QInterval) (x : ℝ)
    (hx : a.Contains x) (hc : coordinateCheck Q z a=true) :
    |(z:ℝ)-(Q:ℝ)*x|<1 := by
  have hq : ((z:ℚ)-1<(Q:ℚ)*a.lo ∧ (Q:ℚ)*a.hi<(z:ℚ)+1) :=
    of_decide_eq_true hc
  have hl : (z:ℝ)-1<(Q:ℝ)*(a.lo:ℝ) := by exact_mod_cast hq.1
  have hu : (Q:ℝ)*(a.hi:ℝ)<(z:ℝ)+1 := by exact_mod_cast hq.2
  have hQ : (0:ℝ)≤Q := by positivity
  have hxl := mul_le_mul_of_nonneg_left hx.1 hQ
  have hxu := mul_le_mul_of_nonneg_left hx.2 hQ
  apply abs_lt.mpr
  constructor <;> linarith

def entryCheck (n L Q k : ℕ) (re im : ℤ) : Bool :=
  coordinateCheck Q re (gridPhaseBox n L k).1 &&
    coordinateCheck Q im (gridPhaseBox n L k).2

def EntryApprox (L Q k : ℕ) (re im : ℤ) : Prop :=
  |(re:ℝ)-(Q:ℝ)*Real.cos (gridAngle L k)|<1 ∧
    |(im:ℝ)-(Q:ℝ)*Real.sin (gridAngle L k)|<1

theorem entryCheck_sound (n L Q k : ℕ) (re im : ℤ)
    (hc : entryCheck n L Q k re im=true) : EntryApprox L Q k re im := by
  have hh : coordinateCheck Q re (gridPhaseBox n L k).1=true ∧
      coordinateCheck Q im (gridPhaseBox n L k).2=true := by
    simpa only [entryCheck,Bool.and_eq_true] using hc
  have hb := gridPhaseBox_sound n L k
  exact ⟨coordinateCheck_sound Q re _ _ hb.1 hh.1,
    coordinateCheck_sound Q im _ _ hb.2 hh.2⟩

def tableCheck (L Q : ℕ) (order : Fin L → ℕ) (table : Fin L → ℤ × ℤ) : Bool :=
  decide (∀k : Fin L,entryCheck (order k) L Q k.val (table k).1 (table k).2=true)

theorem tableCheck_sound (L Q : ℕ) (order : Fin L → ℕ) (table : Fin L → ℤ × ℤ)
    (hc : tableCheck L Q order table=true) :
    ∀k : Fin L,EntryApprox L Q k.val (table k).1 (table k).2 := by
  have hh : ∀k : Fin L,entryCheck (order k) L Q k.val (table k).1 (table k).2=true :=
    of_decide_eq_true hc
  intro k
  exact entryCheck_sound (order k) L Q k.val (table k).1 (table k).2 (hh k)

def tableChunkCheck (L Q : ℕ) (order : Fin L → ℕ) (table : Fin L → ℤ × ℤ)
    (indices : Finset (Fin L)) : Bool :=
  decide (∀k ∈ indices,entryCheck (order k) L Q k.val (table k).1 (table k).2=true)

theorem tableChunkCheck_sound (L Q : ℕ) (order : Fin L → ℕ) (table : Fin L → ℤ × ℤ)
    (indices : Finset (Fin L)) (hc : tableChunkCheck L Q order table indices=true) :
    ∀k ∈ indices,EntryApprox L Q k.val (table k).1 (table k).2 := by
  have hh : ∀k ∈ indices,entryCheck (order k) L Q k.val (table k).1 (table k).2=true :=
    of_decide_eq_true hc
  intro k hk
  exact entryCheck_sound (order k) L Q k.val (table k).1 (table k).2 (hh k hk)

theorem table_sound_of_chunks (L Q : ℕ) (order : Fin L → ℕ) (table : Fin L → ℤ × ℤ)
    {S : Type*} (indices : S → Finset (Fin L))
    (hcover : ∀k : Fin L,∃s : S,k ∈ indices s)
    (hchecks : ∀s : S,tableChunkCheck L Q order table (indices s)=true) :
    ∀k : Fin L,EntryApprox L Q k.val (table k).1 (table k).2 := by
  intro k
  obtain ⟨s,hs⟩ := hcover k
  exact tableChunkCheck_sound L Q order table (indices s) (hchecks s) k hs

abbrev SupplierIndex := Fin 218880
abbrev SupplierTable := SupplierIndex → ℤ × ℤ

theorem supplier_table_sound (order : SupplierIndex → ℕ) (table : SupplierTable)
    (hc : tableCheck 218880 (2^26) order table=true) :
    ∀k : SupplierIndex,
      |((table k).1:ℝ)-(67108864:ℝ)*Real.cos (2*Real.pi*k.val/218880)|<1 ∧
      |((table k).2:ℝ)-(67108864:ℝ)*Real.sin (2*Real.pi*k.val/218880)|<1 := by
  have h := tableCheck_sound 218880 (2^26) order table hc
  intro k
  simpa only [EntryApprox,gridAngle_eq,show (2^26:ℕ)=67108864 by norm_num] using h k

end Seed0024ClusterTubeTable20261007

#print axioms Seed0024ClusterTubeTable20261007.gridAngle_eq
#print axioms Seed0024ClusterTubeTable20261007.gridInterval_contains
#print axioms Seed0024ClusterTubeTable20261007.interval_center_error
#print axioms Seed0024ClusterTubeTable20261007.gridPhaseBox_sound
#print axioms Seed0024ClusterTubeTable20261007.coordinateCheck_sound
#print axioms Seed0024ClusterTubeTable20261007.entryCheck_sound
#print axioms Seed0024ClusterTubeTable20261007.tableCheck_sound
#print axioms Seed0024ClusterTubeTable20261007.tableChunkCheck_sound
#print axioms Seed0024ClusterTubeTable20261007.table_sound_of_chunks
#print axioms Seed0024ClusterTubeTable20261007.supplier_table_sound
