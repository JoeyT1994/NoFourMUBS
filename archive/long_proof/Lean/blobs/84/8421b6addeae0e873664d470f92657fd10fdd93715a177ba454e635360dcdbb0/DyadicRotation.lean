import IntervalRotation

/- Fixed-denominator integer rectangles. The interval product is the same
four-corner min/max construction as CBox.mul. Checks contain only integer
products and order tests; no rational normalization is repeated per edge. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 3000000

namespace Seed0024ClusterTubeTable20261007.Dyadic
open SignedMeanIntake20261006 ExactMeanChecker20261006

structure IRange where
  lo : ℤ
  hi : ℤ
  deriving DecidableEq, Repr

namespace IRange
def Contains (a : IRange) (x : ℝ) : Prop := (a.lo:ℝ) ≤ x ∧ x ≤ (a.hi:ℝ)
def toQInterval (D : ℕ) (a : IRange) : QInterval :=
  ⟨(a.lo:ℚ)/(D:ℚ),(a.hi:ℚ)/(D:ℚ)⟩
def add (a b : IRange) : IRange := ⟨a.lo+b.lo,a.hi+b.hi⟩
def sub (a b : IRange) : IRange := ⟨a.lo-b.hi,a.hi-b.lo⟩
def mul (a b : IRange) : IRange :=
  ⟨min (min (a.lo*b.lo) (a.lo*b.hi)) (min (a.hi*b.lo) (a.hi*b.hi)),
   max (max (a.lo*b.lo) (a.lo*b.hi)) (max (a.hi*b.lo) (a.hi*b.hi))⟩

theorem toQInterval_contains_iff (D : ℕ) (hD : 0<D) (a : IRange) (x : ℝ) :
    (a.toQInterval D).Contains x ↔ a.Contains ((D:ℝ)*x) := by
  have hd : (0:ℝ)<D := by exact_mod_cast hD
  simp only [toQInterval,QInterval.Contains,Contains,Rat.cast_div,Rat.cast_intCast,
    Rat.cast_natCast]
  constructor
  · rintro ⟨hl,hu⟩
    exact ⟨by simpa [mul_comm] using (div_le_iff₀ hd).1 hl,
      by simpa [mul_comm] using (le_div_iff₀ hd).1 hu⟩
  · rintro ⟨hl,hu⟩
    exact ⟨(div_le_iff₀ hd).2 (by simpa [mul_comm] using hl),
      (le_div_iff₀ hd).2 (by simpa [mul_comm] using hu)⟩

theorem add_sound {a b : IRange} {x y : ℝ} (hx : a.Contains x)
    (hy : b.Contains y) : (add a b).Contains (x+y) := by
  rcases hx with ⟨hxl,hxu⟩
  rcases hy with ⟨hyl,hyu⟩
  constructor <;> simp only [add,Int.cast_add] <;> linarith

theorem sub_sound {a b : IRange} {x y : ℝ} (hx : a.Contains x)
    (hy : b.Contains y) : (sub a b).Contains (x-y) := by
  rcases hx with ⟨hxl,hxu⟩
  rcases hy with ⟨hyl,hyu⟩
  constructor <;> simp only [sub,Int.cast_sub] <;> linarith

theorem mul_sound {a b : IRange} {x y : ℝ} (hx : a.Contains x)
    (hy : b.Contains y) : (mul a b).Contains (x*y) := by
  simpa only [mul,Contains,Int.cast_min,Int.cast_max,Int.cast_mul] using
    QInterval.real_mul_bounds hx hy
end IRange

structure IBox where
  re : IRange
  im : IRange
  deriving DecidableEq, Repr

namespace IBox
def Contains (D : ℕ) (a : IBox) (z : ℂ) : Prop :=
  a.re.Contains ((D:ℝ)*z.re) ∧ a.im.Contains ((D:ℝ)*z.im)
def toCBox (D : ℕ) (a : IBox) : CBox :=
  ⟨a.re.toQInterval D,a.im.toQInterval D⟩
def mulNumerator (a b : IBox) : IBox :=
  ⟨IRange.sub (IRange.mul a.re b.re) (IRange.mul a.im b.im),
   IRange.add (IRange.mul a.re b.im) (IRange.mul a.im b.re)⟩

theorem toCBox_contains_iff (D : ℕ) (hD : 0<D) (a : IBox) (z : ℂ) :
    (a.toCBox D).Contains z ↔ a.Contains D z := by
  exact and_congr (IRange.toQInterval_contains_iff D hD a.re z.re)
    (IRange.toQInterval_contains_iff D hD a.im z.im)

theorem mulNumerator_sound (D : ℕ) {a b : IBox} {z w : ℂ}
    (hz : a.Contains D z) (hw : b.Contains D w) :
    (mulNumerator a b).Contains (D*D) (z*w) := by
  have hr := IRange.sub_sound (IRange.mul_sound hz.1 hw.1)
    (IRange.mul_sound hz.2 hw.2)
  have hi := IRange.add_sound (IRange.mul_sound hz.1 hw.2)
    (IRange.mul_sound hz.2 hw.1)
  have her : ((D:ℝ)*z.re)*((D:ℝ)*w.re)-((D:ℝ)*z.im)*((D:ℝ)*w.im) =
      ((D*D:ℕ):ℝ)*(z*w).re := by simp only [Nat.cast_mul,Complex.mul_re]; ring
  have hei : ((D:ℝ)*z.re)*((D:ℝ)*w.im)+((D:ℝ)*z.im)*((D:ℝ)*w.re) =
      ((D*D:ℕ):ℝ)*(z*w).im := by simp only [Nat.cast_mul,Complex.mul_im]; ring
  exact ⟨her ▸ hr,hei ▸ hi⟩
end IBox

def rotateCheck (D : ℕ) (previous step out : IBox) : Bool :=
  let p := IBox.mulNumerator previous step
  decide (out.re.lo*(D:ℤ) ≤ p.re.lo ∧ p.re.hi ≤ out.re.hi*(D:ℤ) ∧
    out.im.lo*(D:ℤ) ≤ p.im.lo ∧ p.im.hi ≤ out.im.hi*(D:ℤ))

theorem scaled_range_sound (D : ℕ) (hD : 0<D) (outer inner : IRange) (x : ℝ)
    (hx : inner.Contains (((D*D:ℕ):ℝ)*x))
    (hl : outer.lo*(D:ℤ) ≤ inner.lo) (hu : inner.hi ≤ outer.hi*(D:ℤ)) :
    outer.Contains ((D:ℝ)*x) := by
  have hd : (0:ℝ)<D := by exact_mod_cast hD
  have hlr : (outer.lo:ℝ)*(D:ℝ) ≤ (inner.lo:ℝ) := by exact_mod_cast hl
  have hur : (inner.hi:ℝ) ≤ (outer.hi:ℝ)*(D:ℝ) := by exact_mod_cast hu
  have hh := hx.1
  have hj := hx.2
  simp only [Nat.cast_mul] at hh hj
  constructor
  · apply (mul_le_mul_iff_right₀ hd).1
    calc
      (outer.lo:ℝ)*(D:ℝ) ≤ (D:ℝ)*(D:ℝ)*x := le_trans hlr hh
      _ = ((D:ℝ)*x)*(D:ℝ) := by ring
  · apply (mul_le_mul_iff_right₀ hd).1
    calc
      ((D:ℝ)*x)*(D:ℝ) = (D:ℝ)*(D:ℝ)*x := by ring
      _ ≤ (outer.hi:ℝ)*(D:ℝ) := le_trans hj hur

theorem rotateCheck_sound (D : ℕ) (hD : 0<D) {previous step out : IBox}
    {z w : ℂ} (hp : previous.Contains D z) (hs : step.Contains D w)
    (hc : rotateCheck D previous step out=true) : out.Contains D (z*w) := by
  have hh : out.re.lo*(D:ℤ) ≤ (IBox.mulNumerator previous step).re.lo ∧
      (IBox.mulNumerator previous step).re.hi ≤ out.re.hi*(D:ℤ) ∧
      out.im.lo*(D:ℤ) ≤ (IBox.mulNumerator previous step).im.lo ∧
      (IBox.mulNumerator previous step).im.hi ≤ out.im.hi*(D:ℤ) := of_decide_eq_true hc
  have hm := IBox.mulNumerator_sound D hp hs
  exact ⟨scaled_range_sound D hD _ _ _ hm.1 hh.1 hh.2.1,
    scaled_range_sound D hD _ _ _ hm.2 hh.2.2.1 hh.2.2.2⟩

def coordinateCheck (D Q : ℕ) (z : ℤ) (a : IRange) : Bool :=
  decide ((z-1)*(D:ℤ)<(Q:ℤ)*a.lo ∧ (Q:ℤ)*a.hi<(z+1)*(D:ℤ))

theorem coordinateCheck_sound (D Q : ℕ) (hD : 0<D) (z : ℤ) (a : IRange)
    (x : ℝ) (hx : a.Contains ((D:ℝ)*x)) (hc : coordinateCheck D Q z a=true) :
    |(z:ℝ)-(Q:ℝ)*x|<1 := by
  have hd : (0:ℝ)<D := by exact_mod_cast hD
  have hq : (0:ℝ)≤Q := by positivity
  have hh : (z-1)*(D:ℤ)<(Q:ℤ)*a.lo ∧ (Q:ℤ)*a.hi<(z+1)*(D:ℤ) :=
    of_decide_eq_true hc
  have hl : ((z:ℝ)-1)*(D:ℝ)<(Q:ℝ)*(a.lo:ℝ) := by exact_mod_cast hh.1
  have hu : (Q:ℝ)*(a.hi:ℝ)<((z:ℝ)+1)*(D:ℝ) := by exact_mod_cast hh.2
  have hxl := mul_le_mul_of_nonneg_left hx.1 hq
  have hxu := mul_le_mul_of_nonneg_left hx.2 hq
  have hlow : (z:ℝ)-1<(Q:ℝ)*x := by
    apply (mul_lt_mul_iff_right₀ hd).1
    calc
      ((z:ℝ)-1)*(D:ℝ)<(Q:ℝ)*((D:ℝ)*x) := lt_of_lt_of_le hl hxl
      _ = ((Q:ℝ)*x)*(D:ℝ) := by ring
  have hupp : (Q:ℝ)*x<(z:ℝ)+1 := by
    apply (mul_lt_mul_iff_right₀ hd).1
    calc
      ((Q:ℝ)*x)*(D:ℝ) = (Q:ℝ)*((D:ℝ)*x) := by ring
      _ < ((z:ℝ)+1)*(D:ℝ) := lt_of_le_of_lt hxu hu
  exact abs_lt.mpr ⟨by linarith,by linarith⟩

structure Row where
  bounds : IBox
  rounded : ℤ × ℤ
  deriving DecidableEq, Repr

def rowCheck (D Q : ℕ) (r : Row) : Bool :=
  coordinateCheck D Q r.rounded.1 r.bounds.re &&
    coordinateCheck D Q r.rounded.2 r.bounds.im

theorem rowCheck_sound (D L Q k : ℕ) (hD : 0<D) (r : Row)
    (hr : r.bounds.Contains D (gridPoint L k)) (hc : rowCheck D Q r=true) :
    EntryApprox L Q k r.rounded.1 r.rounded.2 := by
  have hh : coordinateCheck D Q r.rounded.1 r.bounds.re=true ∧
      coordinateCheck D Q r.rounded.2 r.bounds.im=true := by
    simpa only [rowCheck,Bool.and_eq_true] using hc
  rw [IBox.Contains,gridPoint_re,gridPoint_im] at hr
  exact ⟨coordinateCheck_sound D Q hD _ _ _ hr.1 hh.1,
    coordinateCheck_sound D Q hD _ _ _ hr.2 hh.2⟩

def tailCheck (D Q : ℕ) (step : IBox) : IBox → List Row → Bool
  | _,[] => true
  | previous,r::rows => rotateCheck D previous step r.bounds && rowCheck D Q r &&
      tailCheck D Q step r.bounds rows

def RowsSound (D L Q : ℕ) : ℕ → List Row → Prop
  | _,[] => True
  | start,r::rows => r.bounds.Contains D (gridPoint L start) ∧
      EntryApprox L Q start r.rounded.1 r.rounded.2 ∧ RowsSound D L Q (start+1) rows

theorem tailCheck_sound (D L Q : ℕ) (hD : 0<D) (step : IBox)
    (hs : step.Contains D (gridPoint L 1)) (rows : List Row) :
    ∀(start : ℕ) (previous : IBox),previous.Contains D (gridPoint L start) →
      tailCheck D Q step previous rows=true → RowsSound D L Q (start+1) rows := by
  induction rows with
  | nil => intro start previous hp hc; trivial
  | cons r rows ih =>
      intro start previous hp hc
      have hh : (rotateCheck D previous step r.bounds=true ∧ rowCheck D Q r=true) ∧
          tailCheck D Q step r.bounds rows=true := by
        simpa only [tailCheck,Bool.and_eq_true] using hc
      have hr : r.bounds.Contains D (gridPoint L (start+1)) := by
        rw [gridPoint_succ]
        exact rotateCheck_sound D hD hp hs hh.1.1
      exact ⟨hr,rowCheck_sound D L Q (start+1) hD r hr hh.1.2,
        ih (start+1) r.bounds hr hh.2⟩

theorem RowsSound_entry (D L Q start : ℕ) (rows : List Row)
    (hs : RowsSound D L Q start rows) (j : ℕ) (hj : j<rows.length) :
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

structure Block where
  start : ℕ
  anchorOrder : ℕ
  anchor : Row
  tail : List Row
  deriving DecidableEq, Repr

def Block.rows (b : Block) : List Row := b.anchor::b.tail

def blockCheck (D L Q : ℕ) (step : IBox) (b : Block) : Bool :=
  boxEncloses (b.anchor.bounds.toCBox D) (gridBox b.anchorOrder L b.start) &&
    rowCheck D Q b.anchor && tailCheck D Q step b.anchor.bounds b.tail

theorem blockCheck_sound (D L Q : ℕ) (hD : 0<D) (step : IBox) (b : Block)
    (hs : step.Contains D (gridPoint L 1)) (hc : blockCheck D L Q step b=true) :
    RowsSound D L Q b.start b.rows := by
  have hh : (boxEncloses (b.anchor.bounds.toCBox D) (gridBox b.anchorOrder L b.start)=true ∧
      rowCheck D Q b.anchor=true) ∧ tailCheck D Q step b.anchor.bounds b.tail=true := by
    simpa only [blockCheck,Bool.and_eq_true] using hc
  have ha := (IBox.toCBox_contains_iff D hD b.anchor.bounds _).1
    (boxEncloses_sound _ _ _ (gridBox_sound b.anchorOrder L b.start) hh.1.1)
  exact ⟨ha,rowCheck_sound D L Q b.start hD b.anchor ha hh.1.2,
    tailCheck_sound D L Q hD step hs b.tail b.start b.anchor.bounds ha hh.2⟩

def stepCheck (D L order : ℕ) (step : IBox) : Bool :=
  boxEncloses (step.toCBox D) (gridBox order L 1)

theorem stepCheck_sound (D L order : ℕ) (hD : 0<D) (step : IBox)
    (hc : stepCheck D L order step=true) : step.Contains D (gridPoint L 1) :=
  (IBox.toCBox_contains_iff D hD step _).1
    (boxEncloses_sound _ _ _ (gridBox_sound order L 1) hc)

theorem checked_block_entry (D L Q stepOrder : ℕ) (hD : 0<D) (step : IBox) (b : Block)
    (hstep : stepCheck D L stepOrder step=true) (hblock : blockCheck D L Q step b=true)
    (j : ℕ) (hj : j<b.rows.length) :
    EntryApprox L Q (b.start+j) (b.rows[j]).rounded.1 (b.rows[j]).rounded.2 :=
  RowsSound_entry D L Q b.start b.rows
    (blockCheck_sound D L Q hD step b (stepCheck_sound D L stepOrder hD step hstep) hblock) j hj

end Seed0024ClusterTubeTable20261007.Dyadic

#print axioms Seed0024ClusterTubeTable20261007.Dyadic.IRange.toQInterval_contains_iff
#print axioms Seed0024ClusterTubeTable20261007.Dyadic.IRange.add_sound
#print axioms Seed0024ClusterTubeTable20261007.Dyadic.IRange.sub_sound
#print axioms Seed0024ClusterTubeTable20261007.Dyadic.IRange.mul_sound
#print axioms Seed0024ClusterTubeTable20261007.Dyadic.IBox.toCBox_contains_iff
#print axioms Seed0024ClusterTubeTable20261007.Dyadic.IBox.mulNumerator_sound
#print axioms Seed0024ClusterTubeTable20261007.Dyadic.scaled_range_sound
#print axioms Seed0024ClusterTubeTable20261007.Dyadic.rotateCheck_sound
#print axioms Seed0024ClusterTubeTable20261007.Dyadic.coordinateCheck_sound
#print axioms Seed0024ClusterTubeTable20261007.Dyadic.rowCheck_sound
#print axioms Seed0024ClusterTubeTable20261007.Dyadic.tailCheck_sound
#print axioms Seed0024ClusterTubeTable20261007.Dyadic.RowsSound_entry
#print axioms Seed0024ClusterTubeTable20261007.Dyadic.blockCheck_sound
#print axioms Seed0024ClusterTubeTable20261007.Dyadic.stepCheck_sound
#print axioms Seed0024ClusterTubeTable20261007.Dyadic.checked_block_entry
