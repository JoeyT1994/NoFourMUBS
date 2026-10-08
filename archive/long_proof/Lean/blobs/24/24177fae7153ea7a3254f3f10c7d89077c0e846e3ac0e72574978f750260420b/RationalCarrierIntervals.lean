import IntervalKernel
import RationalCircleCharts
import Mathlib.Algebra.Order.Field.Basic
import Mathlib.LinearAlgebra.Matrix.Adjugate

/-! Executable rational enclosures for circle parameters and block reconstruction.
No emptiness predicate is defined or used. -/
namespace Mub6.Classification.CarrierIntervals
open scoped BigOperators
open Matrix Mub6.Numerical Mub6.Numerical.IntervalKernel
noncomputable section

def clampLower (a : Interval) (q : ℚ) : Interval := ⟨max a.lo q,a.hi⟩
def reciprocal (a : Interval) : Interval := ⟨1/a.hi,1/a.lo⟩

theorem mem_clampLower {a : Interval} {x : ℝ} {q : ℚ}
    (hx : Mem a x) (hq : (q : ℝ) ≤ x) : Mem (clampLower a q) x := by
  exact ⟨by simpa only [clampLower,Rat.cast_max] using max_le hx.1 hq,hx.2⟩

theorem mem_reciprocal {a : Interval} {x : ℝ}
    (ha : 0 < a.lo) (hx : Mem a x) : Mem (reciprocal a) (1/x) := by
  have hlo : (0 : ℝ) < a.lo := by exact_mod_cast ha
  have hp : 0 < x := lt_of_lt_of_le hlo hx.1
  simp only [Mem,reciprocal,Rat.cast_div,Rat.cast_one]
  exact ⟨one_div_le_one_div_of_le hp hx.2,one_div_le_one_div_of_le hlo hx.1⟩

def divide (a b : Interval) : Interval := mul a (reciprocal b)

theorem mem_divide {a b : Interval} {x y : ℝ}
    (hb : 0 < b.lo) (hx : Mem a x) (hy : Mem b y) : Mem (divide a b) (x/y) := by
  simpa only [divide,div_eq_mul_inv,one_mul] using mem_mul hx (mem_reciprocal hb hy)

def boxDivideReal (a : RationalRectangle) (b : Interval) : RationalRectangle :=
  rectangle (divide (reInterval a) b) (divide (imInterval a) b)

theorem mem_boxDivideReal {a : RationalRectangle} {b : Interval} {z : ℂ} {y : ℝ}
    (hb : 0 < b.lo) (hz : MemRectangle a z) (hy : Mem b y) :
    MemRectangle (boxDivideReal a b) (z/(y : ℂ)) := by
  rw [boxDivideReal,mem_rectangle_iff,Complex.div_ofReal]
  exact ⟨mem_divide hb ⟨hz.1,hz.2.1⟩ hy,mem_divide hb hz.2.2 hy⟩

def circleBox (negative : Bool) (a : Interval) : RationalRectangle :=
  let denominator := clampLower (add (point 1) (square a)) 1
  let base := rectangle (divide (sub (point 1) (square a)) denominator)
    (divide (mul (point 2) a) denominator)
  if negative then boxNeg base else base

theorem circleBox_sound (negative : Bool) {a : Interval} {t : ℝ} (ht : Mem a t) :
    MemRectangle (circleBox negative a) (CircleCharts.signedCircle negative t) := by
  let den := clampLower (add (point 1) (square a)) 1
  have hd : Mem den (1+t^2) := by
    apply mem_clampLower
    · simpa only [pow_two] using mem_add (mem_point 1) (mem_square ht)
    · norm_num
      exact sq_nonneg t
  have hp : 0 < den.lo := by
    change 0 < max _ (1 : ℚ)
    exact lt_of_lt_of_le (by norm_num) (le_max_right _ _)
  have hn : Mem (sub (point 1) (square a)) (1-t^2) := by
    simpa only [pow_two] using mem_sub (mem_point 1) (mem_square ht)
  have hi : Mem (mul (point 2) a) (2*t) := mem_mul (mem_point 2) ht
  have hbase : MemRectangle
      (rectangle (divide (sub (point 1) (square a)) den)
        (divide (mul (point 2) a) den)) (CircleCharts.circlePoint t) := by
    rw [mem_rectangle_iff]
    exact ⟨mem_divide hp hn hd,mem_divide hp hi hd⟩
  cases negative
  · simpa only [circleBox,Bool.false_eq_true,if_false,
      CircleCharts.signedCircle,CircleCharts.signValue,Complex.ofReal_one,one_mul] using hbase
  · simpa only [circleBox,if_true,CircleCharts.signedCircle,
      CircleCharts.signValue,Complex.ofReal_neg,Complex.ofReal_one,neg_one_mul] using mem_boxNeg hbase

abbrev Rect3 := Matrix (Fin 3) (Fin 3) RationalRectangle
abbrev Mat3 := Matrix (Fin 3) (Fin 3) ℂ
def MemMatrix (boxes : Rect3) (A : Mat3) : Prop := ∀ i j, MemRectangle (boxes i j) (A i j)

def matrixMul (A B : Rect3) : Rect3 := fun i j => boxSum (fun k => boxMul (A i k) (B k j))
def matrixConjTranspose (A : Rect3) : Rect3 := fun i j => boxConj (A j i)
def matrixNeg (A : Rect3) : Rect3 := fun i j => boxNeg (A i j)
def matrixSub (A B : Rect3) : Rect3 := fun i j => boxSub (A i j) (B i j)
def matrixDivideReal (A : Rect3) (q : Interval) : Rect3 := fun i j => boxDivideReal (A i j) q
def scalarIdentity (q : ℚ) : Rect3 := fun i j => if i=j then boxPoint q 0 else boxPoint 0 0

theorem mem_matrixMul {A B : Rect3} {X Y : Mat3} (hx : MemMatrix A X) (hy : MemMatrix B Y) :
    MemMatrix (matrixMul A B) (X*Y) := by
  intro i j
  exact mem_boxSum _ _ (fun k => mem_boxMul (hx i k) (hy k j))

theorem mem_matrixConjTranspose {A : Rect3} {X : Mat3} (hx : MemMatrix A X) :
    MemMatrix (matrixConjTranspose A) Xᴴ := by
  intro i j
  exact mem_boxConj (hx j i)

theorem mem_matrixNeg {A : Rect3} {X : Mat3} (hx : MemMatrix A X) :
    MemMatrix (matrixNeg A) (-X) := fun i j => mem_boxNeg (hx i j)

theorem mem_matrixSub {A B : Rect3} {X Y : Mat3} (hx : MemMatrix A X) (hy : MemMatrix B Y) :
    MemMatrix (matrixSub A B) (X-Y) := fun i j => mem_boxSub (hx i j) (hy i j)

theorem mem_matrixDivideReal {A : Rect3} {X : Mat3} {q : Interval} {y : ℝ}
    (hq : 0 < q.lo) (hx : MemMatrix A X) (hy : Mem q y) :
    MemMatrix (matrixDivideReal A q) (fun i j => X i j/(y : ℂ)) :=
  fun i j => mem_boxDivideReal hq (hx i j) hy

theorem mem_scalarIdentity (q : ℚ) : MemMatrix (scalarIdentity q) ((q : ℂ) • (1 : Mat3)) := by
  intro i j
  by_cases hij : i=j
  · subst j
    simp [scalarIdentity,MemRectangle,boxPoint,rectangle,point]
  · simp [scalarIdentity,hij,MemRectangle,boxPoint,rectangle,point]

def residualBox (E : Rect3) : Rect3 :=
  matrixSub (scalarIdentity 6) (matrixMul E (matrixConjTranspose E))

theorem mem_residualBox {E : Rect3} {X : Mat3} (hx : MemMatrix E X) :
    MemMatrix (residualBox E) ((6 : ℂ) • 1-X*Xᴴ) :=
  mem_matrixSub (mem_scalarIdentity 6) (mem_matrixMul hx (mem_matrixConjTranspose hx))

def detBox (A : Rect3) : RationalRectangle :=
  let m (i j k l p q : Fin 3) := boxMul (boxMul (A i j) (A k l)) (A p q)
  boxSub (boxAdd (boxAdd (boxSub (boxSub (m 0 0 1 1 2 2) (m 0 0 1 2 2 1))
    (m 0 1 1 0 2 2)) (m 0 1 1 2 2 0)) (m 0 2 1 0 2 1)) (m 0 2 1 1 2 0)

theorem mem_detBox {A : Rect3} {X : Mat3} (hx : MemMatrix A X) :
    MemRectangle (detBox A) X.det := by
  rw [Matrix.det_fin_three]
  exact mem_boxSub (mem_boxAdd (mem_boxAdd (mem_boxSub
    (mem_boxSub (mem_boxMul (mem_boxMul (hx 0 0) (hx 1 1)) (hx 2 2))
      (mem_boxMul (mem_boxMul (hx 0 0) (hx 1 2)) (hx 2 1)))
    (mem_boxMul (mem_boxMul (hx 0 1) (hx 1 0)) (hx 2 2)))
    (mem_boxMul (mem_boxMul (hx 0 1) (hx 1 2)) (hx 2 0)))
    (mem_boxMul (mem_boxMul (hx 0 2) (hx 1 0)) (hx 2 1)))
    (mem_boxMul (mem_boxMul (hx 0 2) (hx 1 1)) (hx 2 0))

def adjugateBox (A : Rect3) : Rect3 :=
  let m (i j k l : Fin 3) := boxMul (A i j) (A k l)
  ![![boxSub (m 1 1 2 2) (m 1 2 2 1),boxAdd (boxNeg (m 0 1 2 2)) (m 0 2 2 1),
      boxSub (m 0 1 1 2) (m 0 2 1 1)],
    ![boxAdd (boxNeg (m 1 0 2 2)) (m 1 2 2 0),boxSub (m 0 0 2 2) (m 0 2 2 0),
      boxAdd (boxNeg (m 0 0 1 2)) (m 0 2 1 0)],
    ![boxSub (m 1 0 2 1) (m 1 1 2 0),boxAdd (boxNeg (m 0 0 2 1)) (m 0 1 2 0),
      boxSub (m 0 0 1 1) (m 0 1 1 0)]]

theorem mem_adjugateBox {A : Rect3} {X : Mat3} (hx : MemMatrix A X) :
    MemMatrix (adjugateBox A) X.adjugate := by
  intro i j
  rw [Matrix.adjugate_fin_three]
  fin_cases i <;> fin_cases j <;>
    simp only [adjugateBox,Matrix.cons_val_zero,Matrix.cons_val_one,Matrix.cons_val_two,
      Matrix.head_cons,Matrix.tail_cons,Matrix.of_apply]
  all_goals first
    | exact mem_boxSub (mem_boxMul (hx _ _) (hx _ _)) (mem_boxMul (hx _ _) (hx _ _))
    | exact mem_boxAdd (mem_boxNeg (mem_boxMul (hx _ _) (hx _ _))) (mem_boxMul (hx _ _) (hx _ _))

#print axioms mem_clampLower
#print axioms mem_reciprocal
#print axioms mem_divide
#print axioms mem_boxDivideReal
#print axioms circleBox_sound
#print axioms mem_matrixMul
#print axioms mem_matrixConjTranspose
#print axioms mem_matrixNeg
#print axioms mem_matrixSub
#print axioms mem_matrixDivideReal
#print axioms mem_scalarIdentity
#print axioms mem_residualBox
#print axioms mem_detBox
#print axioms mem_adjugateBox
end
end Mub6.Classification.CarrierIntervals
