import SharedSeedIntervals
import CenteredLambdaBounds
import Mathlib.Algebra.MvPolynomial.Basic

/-! Actual rational polynomial residuals on one four-entry seed and one sheet.
The sheet belongs to the selected side: no equality of horizontal and vertical
sheets is imposed. Four signed-circle substitutions are a later clearing step. -/
namespace Mub6.Classification.SharedResidualPolynomials
open Matrix MvPolynomial
open Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CarrierIntervals Mub6.Classification.RadicalIntervals
open Mub6.Classification.GoodMinor Mub6.Classification.CompactCover
open Mub6.Classification.FourPhase Mub6.Classification.PoleAtlas
open FourierSeedBinding Hadamard6Extensions.FourierSide
noncomputable section

abbrev Variable := Fin 5 × Fin 2
abbrev Poly := MvPolynomial Variable ℚ
structure ComplexPoly where
  re : Poly
  im : Poly

def evalReal (p : Variable → ℝ) (P : Poly) : ℝ :=
  eval₂ (algebraMap ℚ ℝ) p P

def ComplexPoly.eval (p : Variable → ℝ) (P : ComplexPoly) : ℂ :=
  ⟨evalReal p P.re, evalReal p P.im⟩

def ComplexPoly.const (a b : ℚ) : ComplexPoly := ⟨C a, C b⟩
def ComplexPoly.add (P Q : ComplexPoly) : ComplexPoly := ⟨P.re+Q.re,P.im+Q.im⟩
def ComplexPoly.neg (P : ComplexPoly) : ComplexPoly := ⟨-P.re,-P.im⟩
def ComplexPoly.sub (P Q : ComplexPoly) : ComplexPoly := ⟨P.re-Q.re,P.im-Q.im⟩
def ComplexPoly.mul (P Q : ComplexPoly) : ComplexPoly :=
  ⟨P.re*Q.re-P.im*Q.im,P.re*Q.im+P.im*Q.re⟩
def ComplexPoly.conj (P : ComplexPoly) : ComplexPoly := ⟨P.re,-P.im⟩
def ComplexPoly.sq (P : ComplexPoly) : ComplexPoly := P.mul P
def ComplexPoly.normSq (P : ComplexPoly) : Poly := P.re^2+P.im^2
def ComplexPoly.real (P : Poly) : ComplexPoly := ⟨P,0⟩

@[simp] theorem eval_const (p : Variable → ℝ) (a b : ℚ) :
    (ComplexPoly.const a b).eval p = rationalCenter a b := by
  apply Complex.ext <;> simp [ComplexPoly.eval,ComplexPoly.const,evalReal,rationalCenter]
@[simp] theorem eval_add (p : Variable → ℝ) (P Q : ComplexPoly) :
    (P.add Q).eval p = P.eval p + Q.eval p := by
  apply Complex.ext <;> simp [ComplexPoly.eval,ComplexPoly.add,evalReal]
@[simp] theorem eval_neg (p : Variable → ℝ) (P : ComplexPoly) :
    P.neg.eval p = -P.eval p := by
  apply Complex.ext <;> simp [ComplexPoly.eval,ComplexPoly.neg,evalReal]
@[simp] theorem eval_sub (p : Variable → ℝ) (P Q : ComplexPoly) :
    (P.sub Q).eval p = P.eval p - Q.eval p := by
  apply Complex.ext <;> simp [ComplexPoly.eval,ComplexPoly.sub,evalReal]
@[simp] theorem eval_mul (p : Variable → ℝ) (P Q : ComplexPoly) :
    (P.mul Q).eval p = P.eval p * Q.eval p := by
  apply Complex.ext <;> simp [ComplexPoly.eval,ComplexPoly.mul,evalReal,Complex.mul_re,Complex.mul_im]
@[simp] theorem eval_conj (p : Variable → ℝ) (P : ComplexPoly) :
    P.conj.eval p = star (P.eval p) := by
  apply Complex.ext <;> simp [ComplexPoly.eval,ComplexPoly.conj,evalReal]
@[simp] theorem eval_sq (p : Variable → ℝ) (P : ComplexPoly) :
    P.sq.eval p = P.eval p ^ 2 := by simp [ComplexPoly.sq,pow_two]
@[simp] theorem eval_normSq (p : Variable → ℝ) (P : ComplexPoly) :
    evalReal p P.normSq = Complex.normSq (P.eval p) := by
  simp [evalReal,ComplexPoly.normSq,ComplexPoly.eval,Complex.normSq_apply,pow_two]
@[simp] theorem eval_real (p : Variable → ℝ) (P : Poly) :
    (ComplexPoly.real P).eval p = (evalReal p P : ℂ) := by
  apply Complex.ext <;> simp [ComplexPoly.eval,ComplexPoly.real,evalReal]

/-- Coordinate 4 is the single sheet reused by every index of this side. -/
def entryPoly (j : Fin 5) : ComplexPoly := ⟨X (j,0),X (j,1)⟩
def seedPoint (v : Fin 4 → ℂ) (z : ℂ) : Variable → ℝ := fun (j,k) =>
  let w := if h : j.val < 4 then v ⟨j.val,h⟩ else z
  if k = 0 then w.re else w.im

theorem eval_entry (v : Fin 4 → ℂ) (z : ℂ) (j : Fin 4) :
    (entryPoly j.castSucc).eval (seedPoint v z) = v j := by
  apply Complex.ext <;> simp [ComplexPoly.eval,entryPoly,evalReal,seedPoint,j.isLt]
@[simp] theorem eval_sheet (v : Fin 4 → ℂ) (z : ℂ) :
    (entryPoly 4).eval (seedPoint v z) = z := by
  apply Complex.ext <;> simp [ComplexPoly.eval,entryPoly,evalReal,seedPoint]

inductive Side where | horizontal | vertical
  deriving DecidableEq

def sideB : Side → Fin 5 | .horizontal => 1 | .vertical => 2
def sideC : Side → Fin 5 | .horizontal => 2 | .vertical => 1

def sPoly (side : Side) : ComplexPoly :=
  ((ComplexPoly.const 1 0).add (entryPoly 0) |>.add (entryPoly (sideB side))).neg
def tPoly (side : Side) : ComplexPoly :=
  ((ComplexPoly.const 1 0).add (entryPoly (sideC side)) |>.add (entryPoly 3)).neg
def rPoly (side : Side) : ComplexPoly :=
  ((ComplexPoly.const 1 0).add ((entryPoly (sideC side)).mul (entryPoly 0).conj)
    |>.add ((entryPoly 3).mul (entryPoly (sideB side)).conj)).neg

def seedS (side : Side) (v : Fin 4 → ℂ) : ℂ :=
  match side with | .horizontal => rowS (v 0) (v 1) | .vertical => rowS (v 0) (v 2)
def seedT (side : Side) (v : Fin 4 → ℂ) : ℂ :=
  match side with | .horizontal => rowT (v 2) (v 3) | .vertical => rowT (v 1) (v 3)
def seedR (side : Side) (v : Fin 4 → ℂ) : ℂ :=
  match side with
  | .horizontal => rowR (v 0) (v 1) (v 2) (v 3)
  | .vertical => rowR (v 0) (v 2) (v 1) (v 3)

@[simp] theorem eval_s (side : Side) (v : Fin 4 → ℂ) (z : ℂ) :
    (sPoly side).eval (seedPoint v z) = seedS side v := by
  have h (j : Fin 4) := eval_entry v z j
  cases side <;> simp [sPoly,sideB,seedS,rowS,rationalCenter,← h 0,← h 1,← h 2]
@[simp] theorem eval_t (side : Side) (v : Fin 4 → ℂ) (z : ℂ) :
    (tPoly side).eval (seedPoint v z) = seedT side v := by
  have h (j : Fin 4) := eval_entry v z j
  cases side <;> simp [tPoly,sideC,seedT,rowT,rationalCenter,← h 1,← h 2,← h 3]
@[simp] theorem eval_r (side : Side) (v : Fin 4 → ℂ) (z : ℂ) :
    (rPoly side).eval (seedPoint v z) = seedR side v := by
  have h (j : Fin 4) := eval_entry v z j
  cases side <;> simp [rPoly,sideB,sideC,seedR,rowR,rationalCenter,← h 0,← h 1,← h 2,← h 3]

#print axioms Mub6.Classification.SharedResidualPolynomials.eval_entry
#print axioms Mub6.Classification.SharedResidualPolynomials.eval_s
#print axioms Mub6.Classification.SharedResidualPolynomials.eval_t
#print axioms Mub6.Classification.SharedResidualPolynomials.eval_r
end
end Mub6.Classification.SharedResidualPolynomials
