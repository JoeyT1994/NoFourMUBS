import NoFourMUBs.Reuse.Archive.CriticalMomentQuad
import Mathlib.Algebra.QuadraticAlgebra.Basic

/-! The archived two-coefficient model is Mathlib's quadratic algebra.
Use the existing ring and involution infrastructure through this literal map. -/

set_option autoImplicit false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing
open CriticalMomentQuad20261003
variable {F : Type*} [Field F] {A B : F}

def toQuadratic (u : Quad A B) : QuadraticAlgebra F A B := ⟨u.a, u.b⟩

@[simp] theorem toQuadratic_re (u : Quad A B) : (toQuadratic u).re = u.a := rfl
@[simp] theorem toQuadratic_im (u : Quad A B) : (toQuadratic u).im = u.b := rfl

@[simp] theorem toQuadratic_add (u v : Quad A B) :
    toQuadratic (u+v) = toQuadratic u+toQuadratic v := rfl
@[simp] theorem toQuadratic_sub (u v : Quad A B) :
    toQuadratic (u-v) = toQuadratic u-toQuadratic v := rfl
@[simp] theorem toQuadratic_neg (u : Quad A B) :
    toQuadratic (-u) = -toQuadratic u := rfl
@[simp] theorem toQuadratic_mul (u v : Quad A B) :
    toQuadratic (u*v) = toQuadratic u*toQuadratic v := rfl
@[simp] theorem toQuadratic_nat (n : ℕ) :
    toQuadratic (OfNat.ofNat n : Quad A B) = (n : QuadraticAlgebra F A B) := rfl
@[simp] theorem toQuadratic_scalar (c : F) :
    toQuadratic (scalar (A:=A) (B:=B) c) = algebraMap F _ c := rfl
@[simp] theorem toQuadratic_root :
    toQuadratic (root : Quad A B) = QuadraticAlgebra.omega := rfl

@[simp] theorem toQuadratic_divScalar (u : Quad A B) (c : F) :
    toQuadratic (divScalar u c) = algebraMap F _ c⁻¹ * toQuadratic u := by
  ext <;> simp [toQuadratic, divScalar, div_eq_mul_inv, mul_comm]

@[simp] theorem toQuadratic_pow (u : Quad A B) (n : ℕ) :
    toQuadratic (u^n) = (toQuadratic u)^n := by
  change toQuadratic (qpow u n) = _
  induction n with
  | zero => rw [qpow, toQuadratic_nat]; simp
  | succ n ih => rw [qpow, toQuadratic_mul, ih, pow_succ]

end NoFourMUBs.Step2.Critical.NonzeroClearing
