import FormalCore

namespace Mub6.Numerical.IntervalKernel

open scoped BigOperators

structure Interval where
  lo : ℚ
  hi : ℚ
  deriving DecidableEq, Repr

def Mem (a : Interval) (x : ℝ) : Prop := (a.lo : ℝ) ≤ x ∧ x ≤ (a.hi : ℝ)
def point (q : ℚ) : Interval := ⟨q, q⟩
def add (a b : Interval) : Interval := ⟨a.lo + b.lo, a.hi + b.hi⟩
def neg (a : Interval) : Interval := ⟨-a.hi, -a.lo⟩
def sub (a b : Interval) : Interval := add a (neg b)
def mul (a b : Interval) : Interval :=
  ⟨min (min (a.lo*b.lo) (a.lo*b.hi)) (min (a.hi*b.lo) (a.hi*b.hi)),
   max (max (a.lo*b.lo) (a.lo*b.hi)) (max (a.hi*b.lo) (a.hi*b.hi))⟩
def square (a : Interval) : Interval :=
  ⟨if a.lo ≤ 0 ∧ 0 ≤ a.hi then 0 else min (a.lo*a.lo) (a.hi*a.hi),
   max (a.lo*a.lo) (a.hi*a.hi)⟩
def excludes (a : Interval) (q : ℚ) : Bool := decide (a.hi < q ∨ q < a.lo)

theorem mem_point (q : ℚ) : Mem (point q) (q : ℝ) := ⟨le_rfl, le_rfl⟩

theorem mem_add {a b : Interval} {x y : ℝ} (hx : Mem a x) (hy : Mem b y) :
    Mem (add a b) (x + y) := by
  simp only [Mem, add, Rat.cast_add]
  exact ⟨add_le_add hx.1 hy.1, add_le_add hx.2 hy.2⟩

theorem mem_neg {a : Interval} {x : ℝ} (hx : Mem a x) : Mem (neg a) (-x) := by
  simpa only [Mem, neg, Rat.cast_neg, neg_le_neg_iff] using And.intro hx.2 hx.1

theorem mem_sub {a b : Interval} {x y : ℝ} (hx : Mem a x) (hy : Mem b y) :
    Mem (sub a b) (x - y) := by
  simpa only [sub, sub_eq_add_neg] using mem_add hx (mem_neg hy)

theorem const_mul_bounds {lo hi x : ℝ} (hx : lo ≤ x ∧ x ≤ hi) (c : ℝ) :
    min (c*lo) (c*hi) ≤ c*x ∧ c*x ≤ max (c*lo) (c*hi) := by
  by_cases hc : 0 ≤ c
  · exact ⟨(min_le_left _ _).trans (mul_le_mul_of_nonneg_left hx.1 hc),
      (mul_le_mul_of_nonneg_left hx.2 hc).trans (le_max_right _ _)⟩
  · have hc' : c ≤ 0 := le_of_lt (lt_of_not_ge hc)
    exact ⟨(min_le_right _ _).trans (mul_le_mul_of_nonpos_left hx.2 hc'),
      (mul_le_mul_of_nonpos_left hx.1 hc').trans (le_max_left _ _)⟩

theorem mem_mul {a b : Interval} {x y : ℝ} (hx : Mem a x) (hy : Mem b y) :
    Mem (mul a b) (x*y) := by
  have h1 := const_mul_bounds hy (a.lo : ℝ)
  have h2 := const_mul_bounds hy (a.hi : ℝ)
  have h3 := const_mul_bounds hx y
  simp only [Mem, mul, Rat.cast_min, Rat.cast_max, Rat.cast_mul]
  constructor
  · apply le_trans _ (show min ((a.lo:ℝ)*y) ((a.hi:ℝ)*y) ≤ x*y by
      simpa only [mul_comm] using h3.1)
    exact le_min ((min_le_left _ _).trans h1.1) ((min_le_right _ _).trans h2.1)
  · apply le_trans (show x*y ≤ max ((a.lo:ℝ)*y) ((a.hi:ℝ)*y) by
      simpa only [mul_comm] using h3.2) _
    exact max_le (h1.2.trans (le_max_left _ _)) (h2.2.trans (le_max_right _ _))

theorem square_upper {lo hi x : ℝ} (hx : lo ≤ x ∧ x ≤ hi) :
    x*x ≤ max (lo*lo) (hi*hi) := by
  by_cases h : 0 ≤ x
  · have hp := mul_nonneg (sub_nonneg.mpr hx.2) (show 0 ≤ hi+x by linarith)
    exact (show x*x ≤ hi*hi by nlinarith).trans (le_max_right _ _)
  · have hp := mul_nonneg (sub_nonneg.mpr hx.1) (show 0 ≤ -lo-x by linarith)
    exact (show x*x ≤ lo*lo by nlinarith).trans (le_max_left _ _)

theorem mem_square {a : Interval} {x : ℝ} (hx : Mem a x) :
    Mem (square a) (x*x) := by
  constructor
  · by_cases hz : a.lo ≤ 0 ∧ 0 ≤ a.hi
    · simp only [square, if_pos hz, Rat.cast_zero]
      exact mul_self_nonneg x
    · simp only [square, if_neg hz, Rat.cast_min, Rat.cast_mul]
      by_cases hlo : 0 ≤ a.lo
      · have hlo' : (0:ℝ) ≤ a.lo := by exact_mod_cast hlo
        have hp := mul_nonneg (sub_nonneg.mpr hx.1) (show 0 ≤ x+(a.lo:ℝ) by linarith [hx.1])
        exact (min_le_left _ _).trans (show (a.lo:ℝ)*(a.lo:ℝ) ≤ x*x by nlinarith)
      · have hhi : a.hi < 0 := lt_of_not_ge (fun hh =>
          hz ⟨le_of_lt (lt_of_not_ge hlo), hh⟩)
        have hhi' : (a.hi:ℝ) < 0 := by exact_mod_cast hhi
        have hp := mul_nonneg (sub_nonneg.mpr hx.2) (show 0 ≤ -(a.hi:ℝ)-x by linarith [hx.2])
        exact (min_le_right _ _).trans (show (a.hi:ℝ)*(a.hi:ℝ) ≤ x*x by nlinarith)
  · simpa only [square, Rat.cast_max, Rat.cast_mul] using square_upper hx

theorem excludes_sound {a : Interval} {q : ℚ} (h : excludes a q = true)
    {x : ℝ} (hx : Mem a x) : x ≠ (q : ℝ) := by
  have hq : a.hi < q ∨ q < a.lo := of_decide_eq_true h
  intro he
  rcases hq with hq | hq
  · have hq' : (a.hi:ℝ) < q := by exact_mod_cast hq
    linarith [hx.2]
  · have hq' : (q:ℝ) < a.lo := by exact_mod_cast hq
    linarith [hx.1]

def reInterval (q : RationalRectangle) : Interval := ⟨q.reLo, q.reHi⟩
def imInterval (q : RationalRectangle) : Interval := ⟨q.imLo, q.imHi⟩
def rectangle (a b : Interval) : RationalRectangle := ⟨a.lo, a.hi, b.lo, b.hi⟩
def boxPoint (re im : ℚ) : RationalRectangle := rectangle (point re) (point im)
def boxAdd (a b : RationalRectangle) : RationalRectangle :=
  rectangle (add (reInterval a) (reInterval b)) (add (imInterval a) (imInterval b))
def boxNeg (a : RationalRectangle) : RationalRectangle :=
  rectangle (neg (reInterval a)) (neg (imInterval a))
def boxSub (a b : RationalRectangle) : RationalRectangle := boxAdd a (boxNeg b)
def boxConj (a : RationalRectangle) : RationalRectangle := rectangle (reInterval a) (neg (imInterval a))
def boxMul (a b : RationalRectangle) : RationalRectangle :=
  rectangle (sub (mul (reInterval a) (reInterval b)) (mul (imInterval a) (imInterval b)))
    (add (mul (reInterval a) (imInterval b)) (mul (imInterval a) (reInterval b)))
def boxNormSq (a : RationalRectangle) : Interval :=
  add (square (reInterval a)) (square (imInterval a))

theorem mem_rectangle_iff (a b : Interval) (z : ℂ) :
    MemRectangle (rectangle a b) z ↔ Mem a z.re ∧ Mem b z.im := by
  simp only [MemRectangle, rectangle, Mem]
  tauto

theorem mem_boxAdd {a b : RationalRectangle} {z w : ℂ}
    (hz : MemRectangle a z) (hw : MemRectangle b w) : MemRectangle (boxAdd a b) (z+w) := by
  rw [boxAdd, mem_rectangle_iff]
  exact ⟨mem_add ⟨hz.1,hz.2.1⟩ ⟨hw.1,hw.2.1⟩, mem_add hz.2.2 hw.2.2⟩

theorem mem_boxNeg {a : RationalRectangle} {z : ℂ} (hz : MemRectangle a z) :
    MemRectangle (boxNeg a) (-z) := by
  rw [boxNeg, mem_rectangle_iff]
  exact ⟨mem_neg ⟨hz.1,hz.2.1⟩, mem_neg hz.2.2⟩

theorem mem_boxSub {a b : RationalRectangle} {z w : ℂ}
    (hz : MemRectangle a z) (hw : MemRectangle b w) : MemRectangle (boxSub a b) (z-w) := by
  simpa only [boxSub, sub_eq_add_neg] using mem_boxAdd hz (mem_boxNeg hw)

theorem mem_boxConj {a : RationalRectangle} {z : ℂ} (hz : MemRectangle a z) :
    MemRectangle (boxConj a) (star z) := by
  rw [boxConj, mem_rectangle_iff]
  exact ⟨⟨hz.1,hz.2.1⟩, mem_neg hz.2.2⟩

theorem mem_boxMul {a b : RationalRectangle} {z w : ℂ}
    (hz : MemRectangle a z) (hw : MemRectangle b w) : MemRectangle (boxMul a b) (z*w) := by
  rw [boxMul, mem_rectangle_iff]
  exact ⟨mem_sub (mem_mul ⟨hz.1,hz.2.1⟩ ⟨hw.1,hw.2.1⟩) (mem_mul hz.2.2 hw.2.2),
    mem_add (mem_mul ⟨hz.1,hz.2.1⟩ hw.2.2) (mem_mul hz.2.2 ⟨hw.1,hw.2.1⟩)⟩

theorem mem_boxNormSq {a : RationalRectangle} {z : ℂ} (hz : MemRectangle a z) :
    Mem (boxNormSq a) (Complex.normSq z) := by
  rw [Complex.normSq_apply]
  exact mem_add (mem_square ⟨hz.1,hz.2.1⟩) (mem_square hz.2.2)

def boxSum : {n : ℕ} → (Fin n → RationalRectangle) → RationalRectangle
  | 0, _ => boxPoint 0 0
  | n+1, f => boxAdd (f 0) (boxSum (fun i : Fin n => f i.succ))

theorem mem_boxSum {n : ℕ} (f : Fin n → RationalRectangle) (z : Fin n → ℂ)
    (h : ∀ i, MemRectangle (f i) (z i)) : MemRectangle (boxSum f) (∑ i, z i) := by
  induction n with
  | zero => simp [boxSum, boxPoint, rectangle, point, MemRectangle]
  | succ n ih =>
    rw [Fin.sum_univ_succ]
    exact mem_boxAdd (h 0) (ih (fun i => f i.succ) (fun i => z i.succ) (fun i => h i.succ))

#print axioms mem_add
#print axioms mem_neg
#print axioms mem_sub
#print axioms mem_mul
#print axioms mem_square
#print axioms excludes_sound
#print axioms mem_boxAdd
#print axioms mem_boxNeg
#print axioms mem_boxSub
#print axioms mem_boxConj
#print axioms mem_boxMul
#print axioms mem_boxNormSq
#print axioms mem_boxSum

end Mub6.Numerical.IntervalKernel
