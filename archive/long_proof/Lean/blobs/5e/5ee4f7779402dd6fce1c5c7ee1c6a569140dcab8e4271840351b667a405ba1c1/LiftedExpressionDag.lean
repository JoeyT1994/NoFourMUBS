import LiftedAtlasPolynomial

/-! A typed, backward-reference expression DAG. Evaluation and compilation are
separate, and theorems relate the actual complex/real polynomial values to
semantic evaluation. No physicality or emptiness is asserted. -/
namespace Mub6.Classification.LiftedDagBridge
open Mub6.Classification.LiftedAtlasPolynomial
open Mub6.Classification.SharedRationalIncidence
open MvPolynomial
noncomputable section

inductive CExpr (κ ρ : Type*) where
  | rat : ℚ → CExpr κ ρ
  | coordinate : κ → CExpr κ ρ
  | ref : ρ → CExpr κ ρ
  | add : CExpr κ ρ → CExpr κ ρ → CExpr κ ρ
  | sub : CExpr κ ρ → CExpr κ ρ → CExpr κ ρ
  | mul : CExpr κ ρ → CExpr κ ρ → CExpr κ ρ
  | neg : CExpr κ ρ → CExpr κ ρ
  | conj : CExpr κ ρ → CExpr κ ρ
  | pow : CExpr κ ρ → Nat → CExpr κ ρ

/-- Preserve the conventional explicit square/cube shape of the source polynomials. -/
def polyPow {σ : Type*} (P : CPoly σ) : Nat → CPoly σ
  | 0 => 1
  | 1 => P
  | n + 2 => polyPow P (n + 1) * P

@[simp] theorem value_polyPow {σ : Type*} (p : σ → ℝ) (P : CPoly σ) (n : Nat) :
    CPoly.value p (polyPow P n) = CPoly.value p P ^ n := by
  induction n with
  | zero => simp [polyPow]
  | succ n ih =>
    cases n with
    | zero => simp [polyPow]
    | succ n => simpa [polyPow, pow_succ] using congrArg (fun z => z * CPoly.value p P) ih

namespace CExpr
variable {κ ρ σ : Type*}
def compile (coordinates : κ → CPoly σ) (references : ρ → CPoly σ) :
    CExpr κ ρ → CPoly σ
  | .rat q => CPoly.rat q
  | .coordinate i => coordinates i
  | .ref i => references i
  | .add a b => compile coordinates references a + compile coordinates references b
  | .sub a b => compile coordinates references a - compile coordinates references b
  | .mul a b => compile coordinates references a * compile coordinates references b
  | .neg a => -compile coordinates references a
  | .conj a => CPoly.conj (compile coordinates references a)
  | .pow a n => polyPow (compile coordinates references a) n

def eval (coordinates : κ → ℂ) (references : ρ → ℂ) : CExpr κ ρ → ℂ
  | .rat q => q
  | .coordinate i => coordinates i
  | .ref i => references i
  | .add a b => eval coordinates references a + eval coordinates references b
  | .sub a b => eval coordinates references a - eval coordinates references b
  | .mul a b => eval coordinates references a * eval coordinates references b
  | .neg a => -eval coordinates references a
  | .conj a => star (eval coordinates references a)
  | .pow a n => eval coordinates references a ^ n

/-- Uniform soundness for arbitrary coordinates and reference polynomial environments. -/
theorem sound (p : σ → ℝ) (coordinates : κ → CPoly σ)
    (references : ρ → CPoly σ) (e : CExpr κ ρ) :
    CPoly.value p (e.compile coordinates references) =
      e.eval (fun i => CPoly.value p (coordinates i))
        (fun i => CPoly.value p (references i)) := by
  induction e <;> simp [compile, eval, *]
end CExpr

inductive RExpr (κ ρ : Type*) where
  | rat : ℚ → RExpr κ ρ
  | add : RExpr κ ρ → RExpr κ ρ → RExpr κ ρ
  | sub : RExpr κ ρ → RExpr κ ρ → RExpr κ ρ
  | mul : RExpr κ ρ → RExpr κ ρ → RExpr κ ρ
  | neg : RExpr κ ρ → RExpr κ ρ
  | pow : RExpr κ ρ → Nat → RExpr κ ρ
  | re : CExpr κ ρ → RExpr κ ρ
  | im : CExpr κ ρ → RExpr κ ρ
  | normSq : CExpr κ ρ → RExpr κ ρ

namespace RExpr
variable {κ ρ σ : Type*}
def compile (coordinates : κ → CPoly σ) (references : ρ → CPoly σ) :
    RExpr κ ρ → CarrierPoly σ
  | .rat q => C q
  | .add a b => compile coordinates references a + compile coordinates references b
  | .sub a b => compile coordinates references a - compile coordinates references b
  | .mul a b => compile coordinates references a * compile coordinates references b
  | .neg a => -compile coordinates references a
  | .pow a n => compile coordinates references a ^ n
  | .re a => (a.compile coordinates references).re
  | .im a => (a.compile coordinates references).im
  | .normSq a =>
    let P := a.compile coordinates references
    P.re * P.re + P.im * P.im

def eval (coordinates : κ → ℂ) (references : ρ → ℂ) : RExpr κ ρ → ℝ
  | .rat q => q
  | .add a b => eval coordinates references a + eval coordinates references b
  | .sub a b => eval coordinates references a - eval coordinates references b
  | .mul a b => eval coordinates references a * eval coordinates references b
  | .neg a => -eval coordinates references a
  | .pow a n => eval coordinates references a ^ n
  | .re a => (a.eval coordinates references).re
  | .im a => (a.eval coordinates references).im
  | .normSq a => Complex.normSq (a.eval coordinates references)

theorem sound (p : σ → ℝ) (coordinates : κ → CPoly σ)
    (references : ρ → CPoly σ) (e : RExpr κ ρ) :
    evalReal p (e.compile coordinates references) =
      e.eval (fun i => CPoly.value p (coordinates i))
        (fun i => CPoly.value p (references i)) := by
  induction e with
  | rat q => simp [compile, eval, evalReal]
  | add a b ha hb => simpa [compile, eval, evalReal] using congrArg₂ (· + ·) ha hb
  | sub a b ha hb => simpa [compile, eval, evalReal] using congrArg₂ (· - ·) ha hb
  | mul a b ha hb => simpa [compile, eval, evalReal] using congrArg₂ (· * ·) ha hb
  | neg a ha => simpa [compile, eval, evalReal] using congrArg Neg.neg ha
  | pow a n ha => simpa [compile, eval, evalReal] using congrArg (fun x => x ^ n) ha
  | re a => exact congrArg Complex.re (CExpr.sound p coordinates references a)
  | im a => exact congrArg Complex.im (CExpr.sound p coordinates references a)
  | normSq a =>
    simpa [compile, eval, evalReal, CPoly.value, Complex.normSq_apply] using
      congrArg Complex.normSq (CExpr.sound p coordinates references a)
end RExpr

/-- Every appended node may refer only to earlier nodes, by its `Fin n` type. -/
inductive Dag (κ : Type*) : Nat → Type _ where
  | nil : Dag κ 0
  | snoc {n : Nat} : Dag κ n → CExpr κ (Fin n) → Dag κ (n + 1)

namespace Dag
variable {κ σ : Type*} {n : Nat}
def compile (coordinates : κ → CPoly σ) : {n : Nat} → Dag κ n → Fin n → CPoly σ
  | _, .nil => Fin.elim0
  | _, .snoc d e => Fin.snoc (compile coordinates d) (e.compile coordinates (compile coordinates d))

def eval (coordinates : κ → ℂ) : {n : Nat} → Dag κ n → Fin n → ℂ
  | _, .nil => Fin.elim0
  | _, .snoc d e => Fin.snoc (eval coordinates d) (e.eval coordinates (eval coordinates d))

theorem sound (p : σ → ℝ) (coordinates : κ → CPoly σ) (d : Dag κ n) :
    (fun i => CPoly.value p (d.compile coordinates i)) =
      d.eval (fun i => CPoly.value p (coordinates i)) := by
  induction d with
  | nil => funext i; exact Fin.elim0 i
  | @snoc n d e ih =>
    funext i
    refine Fin.lastCases ?_ (fun j => ?_) i
    · simp only [compile, eval, Fin.snoc_last]
      rw [CExpr.sound, ih]
    · simp only [compile, eval, Fin.snoc_castSucc]
      exact congrFun ih j

theorem real_sound (p : σ → ℝ) (coordinates : κ → CPoly σ) (d : Dag κ n)
    (e : RExpr κ (Fin n)) :
    evalReal p (e.compile coordinates (d.compile coordinates)) =
      e.eval (fun i => CPoly.value p (coordinates i))
        (d.eval (fun i => CPoly.value p (coordinates i))) := by
  rw [RExpr.sound, d.sound]
end Dag

#print axioms Mub6.Classification.LiftedDagBridge.value_polyPow
#print axioms Mub6.Classification.LiftedDagBridge.CExpr.sound
#print axioms Mub6.Classification.LiftedDagBridge.RExpr.sound
#print axioms Mub6.Classification.LiftedDagBridge.Dag.sound
#print axioms Mub6.Classification.LiftedDagBridge.Dag.real_sound
end
end Mub6.Classification.LiftedDagBridge
