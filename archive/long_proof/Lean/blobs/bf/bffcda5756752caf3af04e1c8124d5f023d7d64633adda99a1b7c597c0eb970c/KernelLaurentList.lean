module
public import Mathlib.Data.Complex.Basic
public import Mathlib.Data.List.Sort
public import Mathlib.Algebra.BigOperators.Group.List.Basic
public import Mathlib.Tactic.Ring
import all Init.Data.List.Sort.Basic

public section

/-! A small exact Laurent normalizer. Its algebraic soundness is kernel checked;
generated coefficient lists acquire no credit until their equality is checked. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace Centiradian20261006.KernelLaurent

structure Exp4 where
  x0 : ℤ
  x1 : ℤ
  x2 : ℤ
  x3 : ℤ
  deriving DecidableEq, Repr

@[expose] def addExp (a b : Exp4) : Exp4 :=
  ⟨a.x0+b.x0, a.x1+b.x1, a.x2+b.x2, a.x3+b.x3⟩

@[expose] def negExp (a : Exp4) : Exp4 := ⟨-a.x0,-a.x1,-a.x2,-a.x3⟩

structure Term where
  exponent : Exp4
  coefficient : ℤ
  deriving DecidableEq, Repr

@[expose] def termLE (a b : Term) : Bool :=
  if a.exponent.x0 != b.exponent.x0 then decide (a.exponent.x0 ≤ b.exponent.x0)
  else if a.exponent.x1 != b.exponent.x1 then decide (a.exponent.x1 ≤ b.exponent.x1)
  else if a.exponent.x2 != b.exponent.x2 then decide (a.exponent.x2 ≤ b.exponent.x2)
  else decide (a.exponent.x3 ≤ b.exponent.x3)

@[expose] def consMerge (t : Term) : List Term → List Term
  | [] => [t]
  | u :: us => if t.exponent = u.exponent then
      { exponent := t.exponent, coefficient := t.coefficient+u.coefficient } :: us
    else t :: u :: us

@[expose] def compress (p : List Term) : List Term := p.foldr consMerge []

@[expose] def dropZeros : List Term → List Term
  | [] => []
  | t :: ts => if t.coefficient = 0 then dropZeros ts else t :: dropZeros ts

@[expose] def normalize (p : List Term) : List Term := dropZeros (compress (p.mergeSort termLE))

@[expose] def mulTerm (a b : Term) : Term :=
  ⟨addExp a.exponent b.exponent, a.coefficient*b.coefficient⟩

@[expose] def rawMul (p q : List Term) : List Term := p.flatMap (fun a => q.map (mulTerm a))
@[expose] def add (p q : List Term) : List Term := normalize (p++q)
@[expose] def mul (p q : List Term) : List Term := normalize (rawMul p q)
@[expose] def neg (p : List Term) : List Term := p.map (fun t => ⟨t.exponent,-t.coefficient⟩)
@[expose] def conjugate (p : List Term) : List Term :=
  normalize (p.map (fun t => ⟨negExp t.exponent,t.coefficient⟩))
@[expose] def ofInt (n : ℤ) : List Term := [⟨⟨0,0,0,0⟩,n⟩]
@[expose] def monomial (e : Exp4) : List Term := [⟨e,1⟩]

@[expose] noncomputable def evalTerm (h : Exp4 → ℂ) (t : Term) : ℂ :=
  (t.coefficient : ℂ)*h t.exponent
@[expose] noncomputable def eval (h : Exp4 → ℂ) (p : List Term) : ℂ := (p.map (evalTerm h)).sum

theorem eval_nil (h : Exp4 → ℂ) : eval h [] = 0 := rfl
theorem eval_cons (h : Exp4 → ℂ) (t : Term) (p : List Term) :
    eval h (t::p) = evalTerm h t + eval h p := rfl

theorem eval_append (h : Exp4 → ℂ) (p q : List Term) :
    eval h (p++q) = eval h p + eval h q := by
  simp [eval]

theorem eval_consMerge (h : Exp4 → ℂ) (t : Term) (p : List Term) :
    eval h (consMerge t p) = evalTerm h t + eval h p := by
  cases p with
  | nil => simp [consMerge, eval]
  | cons u us =>
    by_cases he : t.exponent = u.exponent
    · simp [consMerge, he, eval_cons, evalTerm, Int.cast_add]
      ring
    · simp [consMerge, he, eval_cons]

theorem eval_compress (h : Exp4 → ℂ) (p : List Term) : eval h (compress p) = eval h p := by
  induction p with
  | nil => rfl
  | cons t ts ih =>
    change eval h (consMerge t (compress ts)) = eval h (t::ts)
    rw [eval_consMerge, ih, eval_cons]

theorem eval_dropZeros (h : Exp4 → ℂ) (p : List Term) : eval h (dropZeros p) = eval h p := by
  induction p with
  | nil => rfl
  | cons t ts ih =>
    by_cases hc : t.coefficient = 0
    · simp [dropZeros, hc, eval_cons, evalTerm, ih]
    · simp [dropZeros, hc, eval_cons, ih]

theorem eval_normalize (h : Exp4 → ℂ) (p : List Term) : eval h (normalize p) = eval h p := by
  rw [normalize, eval_dropZeros, eval_compress]
  exact ((List.mergeSort_perm p termLE).map (evalTerm h)).sum_eq

theorem eval_add (h : Exp4 → ℂ) (p q : List Term) :
    eval h (add p q) = eval h p + eval h q := by
  rw [add, eval_normalize, eval_append]

theorem eval_neg (h : Exp4 → ℂ) (p : List Term) : eval h (neg p) = -eval h p := by
  induction p with
  | nil => simp [neg, eval]
  | cons t ts ih =>
    change eval h ((⟨t.exponent,-t.coefficient⟩ : Term)::neg ts) = -eval h (t::ts)
    rw [eval_cons, eval_cons, ih]
    simp [evalTerm, add_comm]

theorem eval_mulTerm (h : Exp4 → ℂ)
    (hm : ∀ a b, h (addExp a b) = h a*h b) (a b : Term) :
    evalTerm h (mulTerm a b) = evalTerm h a*evalTerm h b := by
  simp only [evalTerm, mulTerm, Int.cast_mul, hm]
  ring

theorem eval_map_mulTerm (h : Exp4 → ℂ)
    (hm : ∀ a b, h (addExp a b) = h a*h b) (a : Term) (q : List Term) :
    eval h (q.map (mulTerm a)) = evalTerm h a*eval h q := by
  induction q with
  | nil => simp [eval]
  | cons t ts ih =>
    simp only [List.map_cons, eval_cons, eval_mulTerm h hm, ih]
    ring

theorem eval_rawMul (h : Exp4 → ℂ)
    (hm : ∀ a b, h (addExp a b) = h a*h b) (p q : List Term) :
    eval h (rawMul p q) = eval h p*eval h q := by
  induction p with
  | nil => simp [rawMul, eval]
  | cons t ts ih =>
    change eval h ((q.map (mulTerm t))++rawMul ts q) = eval h (t::ts)*eval h q
    rw [eval_append, eval_map_mulTerm h hm, ih, eval_cons]
    ring

theorem eval_mul (h : Exp4 → ℂ)
    (hm : ∀ a b, h (addExp a b) = h a*h b) (p q : List Term) :
    eval h (mul p q) = eval h p*eval h q := by
  rw [mul, eval_normalize, eval_rawMul h hm]

theorem eval_conjugate (h : Exp4 → ℂ)
    (hc : ∀ e, h (negExp e) = star (h e)) (p : List Term) :
    eval h (conjugate p) = star (eval h p) := by
  unfold conjugate
  rw [eval_normalize]
  induction p with
  | nil => simp [eval]
  | cons t ts ih =>
    simp only [List.map_cons, eval_cons, ih, star_add]
    congr 1
    simp [evalTerm, hc]

theorem eval_ofInt (h : Exp4 → ℂ) (hz : h ⟨0,0,0,0⟩ = 1) (n : ℤ) :
    eval h (ofInt n) = (n:ℂ) := by
  simp [ofInt, eval, evalTerm, hz]

theorem eval_monomial (h : Exp4 → ℂ) (e : Exp4) :
    eval h (monomial e) = h e := by
  simp [monomial, eval, evalTerm]

end Centiradian20261006.KernelLaurent

#print axioms Centiradian20261006.KernelLaurent.eval_normalize
#print axioms Centiradian20261006.KernelLaurent.eval_mul
#print axioms Centiradian20261006.KernelLaurent.eval_neg
#print axioms Centiradian20261006.KernelLaurent.eval_conjugate
#print axioms Centiradian20261006.KernelLaurent.eval_ofInt
#print axioms Centiradian20261006.KernelLaurent.eval_monomial
