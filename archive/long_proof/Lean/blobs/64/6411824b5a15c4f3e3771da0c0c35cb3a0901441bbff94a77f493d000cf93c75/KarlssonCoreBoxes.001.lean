import KarlssonBoxArithmetic

namespace Mub6.Classification.KarlssonCompiler
open Complex Hadamard6 Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CarrierIntervals Mub6.Classification.KarlssonCover
open Mub6.Numerical.CircleCharts
noncomputable section
set_option maxHeartbeats 1600000

theorem realPoint_mem (q : ℚ) : MemRectangle (boxPoint q 0) (q : ℂ) := by
  simp [MemRectangle,boxPoint,rectangle,point]

def realBox (a : Interval) : RationalRectangle := rectangle a (point 0)
theorem realBox_sound {a : Interval} {x : ℝ} (hx : Mem a x) : MemRectangle (realBox a) (x : ℂ) := by
  exact ⟨hx.1,hx.2,by simp,by simp⟩

def sqrt3Valid (a : Interval) : Prop := 0≤a.lo ∧ 0≤a.hi ∧ a.lo^2≤3 ∧ 3≤a.hi^2
instance (a : Interval) : Decidable (sqrt3Valid a) := inferInstanceAs (Decidable (_ ∧ _ ∧ _ ∧ _))
theorem sqrt3_sound {a : Interval} (ha : sqrt3Valid a) : Mem a (Real.sqrt 3) := by
  have h0 : (0 : ℝ) ≤ a.lo := by exact_mod_cast ha.1
  have h1 : (0 : ℝ) ≤ a.hi := by exact_mod_cast ha.2.1
  have h2 : (a.lo : ℝ)^2 ≤ 3 := by exact_mod_cast ha.2.2.1
  have h3 : (3 : ℝ) ≤ (a.hi : ℝ)^2 := by exact_mod_cast ha.2.2.2
  have hs : (Real.sqrt 3)^2=3 := Real.sq_sqrt (by norm_num)
  have hp : 0≤Real.sqrt 3 := Real.sqrt_nonneg _
  constructor <;> nlinarith

def coreDenBox (s : Interval) : Interval :=
  clampLower (add (square s) (square (sub (point 1) s))) (1/2)
def coreUBox (s : Interval) : Interval :=
  divide (sub (square (sub (point 1) s)) (square s)) (coreDenBox s)
def coreVBox (s : Interval) : Interval :=
  divide (mul (mul (point 2) s) (sub (point 1) s)) (coreDenBox s)

theorem coreDenBox_sound {b : Interval} {s : ℝ} (hs : Mem b s) : Mem (coreDenBox b) (coreDen s) := by
  apply mem_clampLower
  · simpa [coreDen,pow_two] using mem_add (mem_square hs) (mem_square (mem_sub (mem_point 1) hs))
  · exact coreDen_lower s
theorem coreDenBox_pos (b : Interval) : 0 < (coreDenBox b).lo :=
  lt_of_lt_of_le (by norm_num) (le_max_right _ _)
theorem coreUBox_sound {b : Interval} {s : ℝ} (hs : Mem b s) : Mem (coreUBox b) (coreU s) := by
  exact mem_divide (coreDenBox_pos b)
    (by simpa [pow_two] using mem_sub (mem_square (mem_sub (mem_point 1) hs)) (mem_square hs))
    (coreDenBox_sound hs)
theorem coreVBox_sound {b : Interval} {s : ℝ} (hs : Mem b s) : Mem (coreVBox b) (coreV s) := by
  exact mem_divide (coreDenBox_pos b) (mem_mul (mem_mul (mem_point 2) hs) (mem_sub (mem_point 1) hs))
    (coreDenBox_sound hs)

theorem compact_uncompact {s : ℝ} (hs : s<1) : compactT (uncompactT s)=s := by
  have h : 1-s≠0 := ne_of_gt (sub_pos.mpr hs)
  unfold compactT uncompactT
  field_simp
  ring
theorem compactUV_uncompact {s : ℝ} (h0 : 0<s) (h1 : s<1) :
    (coreU s : ℂ)=karlssonHalfAngleU (uncompactT s) ∧
    (coreV s : ℂ)=karlssonHalfAngleV (uncompactT s) := by
  have ht : 0<uncompactT s := div_pos h0 (sub_pos.mpr h1)
  simpa only [compact_uncompact h1] using compactUV ht

abbrev Boxes2 := Matrix (Fin 2) (Fin 2) RationalRectangle
def Mem2 (b : Boxes2) (A : Mat2) : Prop := ∀ i j, MemRectangle (b i j) (A i j)
def mul2 (a b : Boxes2) : Boxes2 := fun i j =>
  boxAdd (boxMul (a i 0) (b 0 j)) (boxMul (a i 1) (b 1 j))
def add2 (a b : Boxes2) : Boxes2 := fun i j => boxAdd (a i j) (b i j)
def sub2 (a b : Boxes2) : Boxes2 := fun i j => boxSub (a i j) (b i j)
def neg2 (a : Boxes2) : Boxes2 := fun i j => boxNeg (a i j)
def scale2 (q : RationalRectangle) (a : Boxes2) : Boxes2 := fun i j => boxMul q (a i j)
def diagonal2 (q : ℚ) : Boxes2 := fun i j => boxPoint (if i=j then q else 0) 0
def f2Box : Boxes2 := !![boxPoint 1 0,boxPoint 1 0;boxPoint 1 0,boxPoint (-1) 0]

theorem mul2_sound {a b : Boxes2} {A B : Mat2} (ha : Mem2 a A) (hb : Mem2 b B) : Mem2 (mul2 a b) (A*B) := by
  intro i j
  simpa only [Matrix.mul_apply,Fin.sum_univ_two] using mem_boxAdd
    (mem_boxMul (ha i 0) (hb 0 j)) (mem_boxMul (ha i 1) (hb 1 j))
theorem add2_sound {a b : Boxes2} {A B : Mat2} (ha : Mem2 a A) (hb : Mem2 b B) : Mem2 (add2 a b) (A+B) :=
  fun i j => mem_boxAdd (ha i j) (hb i j)
theorem sub2_sound {a b : Boxes2} {A B : Mat2} (ha : Mem2 a A) (hb : Mem2 b B) : Mem2 (sub2 a b) (A-B) :=
  fun i j => mem_boxSub (ha i j) (hb i j)
theorem neg2_sound {a : Boxes2} {A : Mat2} (ha : Mem2 a A) : Mem2 (neg2 a) (-A) :=
  fun i j => mem_boxNeg (ha i j)
theorem scale2_sound {q : RationalRectangle} {a : Boxes2} {Q : ℂ} {A : Mat2}
    (hq : MemRectangle q Q) (ha : Mem2 a A) : Mem2 (scale2 q a) (Q • A) :=
  fun i j => mem_boxMul hq (ha i j)
theorem diagonal2_sound (q : ℚ) : Mem2 (diagonal2 q) ((q : ℂ) • (1 : Mat2)) := by
  intro i j
  by_cases h : i=j <;> simp [diagonal2,MemRectangle,boxPoint,rectangle,point,h]
theorem f2Box_sound : Mem2 f2Box karlssonF2 := by
  intro i j
  fin_cases i <;> fin_cases j <;> norm_num [f2Box,karlssonF2,MemRectangle,boxPoint,rectangle,point]

def lambdaBox (s : Interval) (p : RationalRectangle) : Boxes2 :=
  let u := realBox (coreUBox s)
  let v := realBox (coreVBox s)
  !![u,boxMul p v;boxMul v (boxConj p),boxNeg u]
def gammaBox (sqrt3 : Interval) : RationalRectangle :=
  boxMul (boxPoint 0 (1/2)) (realBox sqrt3)
def coreABox (s : Interval) (p : RationalRectangle) (sqrt3 : Interval) : Boxes2 :=
  mul2 f2Box (add2 (diagonal2 (-1/2)) (scale2 (gammaBox sqrt3) (lambdaBox s p)))
def coreBBox (s : Interval) (p : RationalRectangle) (sqrt3 : Interval) : Boxes2 :=
  sub2 (neg2 f2Box) (coreABox s p sqrt3)

theorem lambdaBox_sound {sb : Interval} {pb : RationalRectangle} {s : ℝ} {p : ℂ}
    (hs : Mem sb s) (hp : MemRectangle pb p) (hu : normSq p=1) (h0 : 0<s) (h1 : s<1) :
    Mem2 (lambdaBox sb pb) (karlssonLambda (uncompactT s) p) := by
  have huv := compactUV_uncompact h0 h1
  have huB := realBox_sound (coreUBox_sound hs)
  have hvB := realBox_sound (coreVBox_sound hs)
  rw [huv.1] at huB
  rw [huv.2] at hvB
  have hinv : p⁻¹=star p := by
    apply inv_eq_of_mul_eq_one_right
    simpa [mul_comm] using star_mul_self_of_normSq_one hu
  intro i j
  fin_cases i <;> fin_cases j
  · exact huB
  · exact mem_boxMul hp hvB
  · simpa only [div_eq_mul_inv,hinv] using mem_boxMul hvB (mem_boxConj hp)
  · exact mem_boxNeg huB

theorem gammaBox_sound {a : Interval} (ha : sqrt3Valid a) :
    MemRectangle (gammaBox a) (Complex.I * (Real.sqrt 3 : ℂ)/2) := by
  have hi : MemRectangle (boxPoint 0 (1/2)) (Complex.I/2) := by
    norm_num [MemRectangle,boxPoint,rectangle,point,Complex.div_re,Complex.div_im]
  convert mem_boxMul hi (realBox_sound (sqrt3_sound ha)) using 1 <;> ring

theorem coreABox_sound {sb : Interval} {pb : RationalRectangle} {rt : Interval} {s : ℝ} {p : ℂ}
    (hs : Mem sb s) (hp : MemRectangle pb p) (hu : normSq p=1)
    (h0 : 0<s) (h1 : s<1) (hr : sqrt3Valid rt) :
    Mem2 (coreABox sb pb rt) (karlssonCoreA (uncompactT s) p) := by
  apply mul2_sound f2Box_sound
  apply add2_sound
  · simpa using diagonal2_sound (-1/2)
  · exact scale2_sound (gammaBox_sound hr) (lambdaBox_sound hs hp hu h0 h1)
theorem coreBBox_sound {sb : Interval} {pb : RationalRectangle} {rt : Interval} {s : ℝ} {p : ℂ}
    (hs : Mem sb s) (hp : MemRectangle pb p) (hu : normSq p=1)
    (h0 : 0<s) (h1 : s<1) (hr : sqrt3Valid rt) :
    Mem2 (coreBBox sb pb rt) (karlssonCoreB (uncompactT s) p) :=
  sub2_sound (neg2_sound f2Box_sound) (coreABox_sound hs hp hu h0 h1 hr)

#print axioms sqrt3_sound
#print axioms coreDenBox_sound
#print axioms coreUBox_sound
#print axioms coreVBox_sound
#print axioms coreABox_sound
#print axioms coreBBox_sound
end
end Mub6.Classification.KarlssonCompiler
