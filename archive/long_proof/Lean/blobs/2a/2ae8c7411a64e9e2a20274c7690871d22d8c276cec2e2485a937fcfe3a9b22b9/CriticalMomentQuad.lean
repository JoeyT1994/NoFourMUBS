import CriticalZeroLightData
import Mathlib.Tactic.LinearCombination

set_option autoImplicit false
namespace CriticalMomentQuad20261003
noncomputable section
variable {F : Type*} [Field F] [CharZero F]

/-- The two coefficients used by the pinned external Quad evaluator.
The intended correlation obeys r²=A+B*r. No irreducibility is assumed. -/
structure Quad (A B : F) where
  a : F
  b : F

variable {A B : F}

instance : Add (Quad A B) := ⟨fun u v => ⟨u.a+v.a,u.b+v.b⟩⟩
instance : Neg (Quad A B) := ⟨fun u => ⟨-u.a,-u.b⟩⟩
instance : Sub (Quad A B) := ⟨fun u v => ⟨u.a-v.a,u.b-v.b⟩⟩
instance : Mul (Quad A B) :=
  ⟨fun u v => ⟨u.a*v.a+A*u.b*v.b,u.a*v.b+u.b*v.a+B*u.b*v.b⟩⟩
instance (n : ℕ) : OfNat (Quad A B) n := ⟨⟨(n : F),0⟩⟩

def qpow (u : Quad A B) : ℕ → Quad A B
  | 0 => 1
  | n+1 => qpow u n*u
instance : Pow (Quad A B) ℕ := ⟨qpow⟩

def scalar (c : F) : Quad A B := ⟨c,0⟩
def root : Quad A B := ⟨0,1⟩
def divScalar (u : Quad A B) (c : F) : Quad A B := ⟨u.a/c,u.b/c⟩
def eval (r : F) (u : Quad A B) : F := u.a+u.b*r

@[simp] theorem eval_scalar (r c : F) : eval r (scalar (A:=A) (B:=B) c)=c := by
  simp [eval,scalar]
@[simp] theorem eval_root (r : F) : eval r (root (A:=A) (B:=B))=r := by
  simp [eval,root]
@[simp] theorem eval_nat (r : F) (n : ℕ) : eval r (OfNat.ofNat n : Quad A B)=(n : F) := by
  simp [eval,OfNat.ofNat]
@[simp] theorem eval_add (r : F) (u v : Quad A B) : eval r (u+v)=eval r u+eval r v := by
  change (u.a+v.a)+(u.b+v.b)*r=(u.a+u.b*r)+(v.a+v.b*r)
  ring
@[simp] theorem eval_sub (r : F) (u v : Quad A B) : eval r (u-v)=eval r u-eval r v := by
  change (u.a-v.a)+(u.b-v.b)*r=(u.a+u.b*r)-(v.a+v.b*r)
  ring
@[simp] theorem eval_neg (r : F) (u : Quad A B) : eval r (-u)= -eval r u := by
  change -u.a+ -u.b*r= -(u.a+u.b*r)
  ring
@[simp] theorem eval_divScalar (r c : F) (u : Quad A B) :
    eval r (divScalar u c)=eval r u/c := by
  dsimp only [eval,divScalar]
  simp only [div_eq_mul_inv]
  ring

theorem eval_mul (r : F) (hq : r^2=A+B*r) (u v : Quad A B) :
    eval r (u*v)=eval r u*eval r v := by
  change (u.a*v.a+A*u.b*v.b)+(u.a*v.b+u.b*v.a+B*u.b*v.b)*r=
    (u.a+u.b*r)*(v.a+v.b*r)
  linear_combination -(u.b*v.b)*hq

theorem eval_pow (r : F) (hq : r^2=A+B*r) (u : Quad A B) (n : ℕ) :
    eval r (u^n)=(eval r u)^n := by
  change eval r (qpow u n)=(eval r u)^n
  induction n with
  | zero => simp [qpow,eval,OfNat.ofNat]
  | succ n ih => rw [qpow,eval_mul r hq,ih,pow_succ]

end
#print axioms eval_scalar
#print axioms eval_root
#print axioms eval_nat
#print axioms eval_add
#print axioms eval_sub
#print axioms eval_neg
#print axioms eval_divScalar
#print axioms eval_mul
#print axioms eval_pow
end CriticalMomentQuad20261003
