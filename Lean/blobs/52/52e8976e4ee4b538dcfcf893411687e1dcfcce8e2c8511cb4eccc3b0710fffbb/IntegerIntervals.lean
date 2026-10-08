import PartitionKernel

namespace Mub6.Numerical.IntegerIntervals
open scoped BigOperators

structure ZInterval where
  lo : ℤ
  hi : ℤ
  deriving DecidableEq, Repr

def Mem (a : ZInterval) (x : ℝ) : Prop := (a.lo : ℝ) ≤ x ∧ x ≤ (a.hi : ℝ)
def point (q : ℤ) : ZInterval := ⟨q, q⟩
def add (a b : ZInterval) : ZInterval := ⟨a.lo + b.lo, a.hi + b.hi⟩
def neg (a : ZInterval) : ZInterval := ⟨-a.hi, -a.lo⟩
def sub (a b : ZInterval) : ZInterval := add a (neg b)
def mul (a b : ZInterval) : ZInterval :=
  ⟨min (min (a.lo*b.lo) (a.lo*b.hi)) (min (a.hi*b.lo) (a.hi*b.hi)),
   max (max (a.lo*b.lo) (a.lo*b.hi)) (max (a.hi*b.lo) (a.hi*b.hi))⟩
def square (a : ZInterval) : ZInterval :=
  ⟨if a.lo ≤ 0 ∧ 0 ≤ a.hi then 0 else min (a.lo*a.lo) (a.hi*a.hi),
   max (a.lo*a.lo) (a.hi*a.hi)⟩
def excludes (a : ZInterval) (q : ℤ) : Bool := decide (a.hi < q ∨ q < a.lo)

theorem mem_point (q : ℤ) : Mem (point q) (q : ℝ) := ⟨le_rfl, le_rfl⟩

theorem mem_add {a b : ZInterval} {x y : ℝ} (hx : Mem a x) (hy : Mem b y) :
    Mem (add a b) (x + y) := by
  simp only [Mem, add, Int.cast_add]
  exact ⟨add_le_add hx.1 hy.1, add_le_add hx.2 hy.2⟩

theorem mem_neg {a : ZInterval} {x : ℝ} (hx : Mem a x) : Mem (neg a) (-x) := by
  simpa only [Mem, neg, Int.cast_neg, neg_le_neg_iff] using And.intro hx.2 hx.1

theorem mem_sub {a b : ZInterval} {x y : ℝ} (hx : Mem a x) (hy : Mem b y) :
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

theorem mem_mul {a b : ZInterval} {x y : ℝ} (hx : Mem a x) (hy : Mem b y) :
    Mem (mul a b) (x*y) := by
  have h1 := const_mul_bounds hy (a.lo : ℝ)
  have h2 := const_mul_bounds hy (a.hi : ℝ)
  have h3 := const_mul_bounds hx y
  simp only [Mem, mul, Int.cast_min, Int.cast_max, Int.cast_mul]
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

theorem mem_square {a : ZInterval} {x : ℝ} (hx : Mem a x) :
    Mem (square a) (x*x) := by
  constructor
  · by_cases hz : a.lo ≤ 0 ∧ 0 ≤ a.hi
    · simp only [square, if_pos hz, Int.cast_zero]
      exact mul_self_nonneg x
    · simp only [square, if_neg hz, Int.cast_min, Int.cast_mul]
      by_cases hlo : 0 ≤ a.lo
      · have hlo' : (0:ℝ) ≤ a.lo := by exact_mod_cast hlo
        have hp := mul_nonneg (sub_nonneg.mpr hx.1) (show 0 ≤ x+(a.lo:ℝ) by linarith [hx.1])
        exact (min_le_left _ _).trans (show (a.lo:ℝ)*(a.lo:ℝ) ≤ x*x by nlinarith)
      · have hhi : a.hi < 0 := lt_of_not_ge (fun hh =>
          hz ⟨le_of_lt (lt_of_not_ge hlo), hh⟩)
        have hhi' : (a.hi:ℝ) < 0 := by exact_mod_cast hhi
        have hp := mul_nonneg (sub_nonneg.mpr hx.2) (show 0 ≤ -(a.hi:ℝ)-x by linarith [hx.2])
        exact (min_le_right _ _).trans (show (a.hi:ℝ)*(a.hi:ℝ) ≤ x*x by nlinarith)
  · simpa only [square, Int.cast_max, Int.cast_mul] using square_upper hx

theorem excludes_sound {a : ZInterval} {q : ℤ} (h : excludes a q = true)
    {x : ℝ} (hx : Mem a x) : x ≠ (q : ℝ) := by
  have hq : a.hi < q ∨ q < a.lo := of_decide_eq_true h
  intro he
  rcases hq with hq | hq
  · have hq' : (a.hi:ℝ) < q := by exact_mod_cast hq
    linarith [hx.2]
  · have hq' : (q:ℝ) < a.lo := by exact_mod_cast hq
    linarith [hx.1]

structure ZBox where
  re : ZInterval
  im : ZInterval
  deriving DecidableEq, Repr

abbrev ZRayBox := Fin 5 → ZBox
abbrev ZCarrier := Fin 6 → Fin 6 → ZBox

def MemBox (a : ZBox) (z : ℂ) : Prop := Mem a.re z.re ∧ Mem a.im z.im
def boxPoint (re im : ℤ) : ZBox := ⟨point re, point im⟩
def boxAdd (a b : ZBox) : ZBox := ⟨add a.re b.re, add a.im b.im⟩
def boxNeg (a : ZBox) : ZBox := ⟨neg a.re, neg a.im⟩
def boxSub (a b : ZBox) : ZBox := boxAdd a (boxNeg b)
def boxConj (a : ZBox) : ZBox := ⟨a.re, neg a.im⟩
def boxMul (a b : ZBox) : ZBox :=
  ⟨sub (mul a.re b.re) (mul a.im b.im), add (mul a.re b.im) (mul a.im b.re)⟩
def boxNormSq (a : ZBox) : ZInterval := add (square a.re) (square a.im)

theorem mem_boxPoint (r i : ℤ) : MemBox (boxPoint r i) ⟨r, i⟩ :=
  ⟨mem_point r, mem_point i⟩

theorem mem_boxAdd {a b : ZBox} {z w : ℂ} (hz : MemBox a z) (hw : MemBox b w) :
    MemBox (boxAdd a b) (z+w) := ⟨mem_add hz.1 hw.1, mem_add hz.2 hw.2⟩

theorem mem_boxNeg {a : ZBox} {z : ℂ} (hz : MemBox a z) :
    MemBox (boxNeg a) (-z) := ⟨mem_neg hz.1, mem_neg hz.2⟩

theorem mem_boxSub {a b : ZBox} {z w : ℂ} (hz : MemBox a z) (hw : MemBox b w) :
    MemBox (boxSub a b) (z-w) := by
  simpa only [boxSub, sub_eq_add_neg] using mem_boxAdd hz (mem_boxNeg hw)

theorem mem_boxConj {a : ZBox} {z : ℂ} (hz : MemBox a z) :
    MemBox (boxConj a) (star z) := ⟨hz.1, mem_neg hz.2⟩

theorem mem_boxMul {a b : ZBox} {z w : ℂ} (hz : MemBox a z) (hw : MemBox b w) :
    MemBox (boxMul a b) (z*w) :=
  ⟨mem_sub (mem_mul hz.1 hw.1) (mem_mul hz.2 hw.2),
    mem_add (mem_mul hz.1 hw.2) (mem_mul hz.2 hw.1)⟩

theorem mem_boxNormSq {a : ZBox} {z : ℂ} (hz : MemBox a z) :
    Mem (boxNormSq a) (Complex.normSq z) := by
  rw [Complex.normSq_apply]
  exact mem_add (mem_square hz.1) (mem_square hz.2)

def boxSum : {n : ℕ} → (Fin n → ZBox) → ZBox
  | 0, _ => boxPoint 0 0
  | n+1, f => boxAdd (f 0) (boxSum (fun i : Fin n => f i.succ))

theorem mem_boxSum {n : ℕ} (f : Fin n → ZBox) (z : Fin n → ℂ)
    (h : ∀ i, MemBox (f i) (z i)) : MemBox (boxSum f) (∑ i, z i) := by
  induction n with
  | zero => simp [boxSum, boxPoint, point, MemBox, Mem]
  | succ n ih =>
    rw [Fin.sum_univ_succ]
    exact mem_boxAdd (h 0) (ih (fun i => f i.succ) (fun i => z i.succ) (fun i => h i.succ))

#print axioms mem_mul
#print axioms mem_square
#print axioms mem_boxSum
#print axioms mem_boxNormSq
end Mub6.Numerical.IntegerIntervals
