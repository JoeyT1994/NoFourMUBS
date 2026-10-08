module
public import IntegerMomentSemantics
import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum

public section
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.DirectionalQuartic20261006
open ReflectedLaurent MomentInterpretation20261006
noncomputable section

/-- The raw directional Fourier moment, before i^n and n! normalization. -/
@[expose] def directionalRaw (p : List Term) (u : Fin 4 → ℝ) (n : ℕ) : ℂ :=
  (p.map (fun t => (t.coefficient:ℂ)*phaseCharacter seed2442Angles t.exponent*
    (phaseDot t.exponent u:ℂ)^n)).sum

/-- The homogeneous degree-n coefficient in the phase exponential expansion. -/
@[expose] def directionalTaylor (p : List Term) (u : Fin 4 → ℝ) (n : ℕ) : ℂ :=
  (p.map (fun t => (t.coefficient:ℂ)*phaseCharacter seed2442Angles t.exponent*
    ((Complex.I*(phaseDot t.exponent u:ℂ))^n/(n.factorial:ℂ)))).sum

theorem directionalRaw_cons (t : Term) (p : List Term) (u : Fin 4 → ℝ) (n : ℕ) :
    directionalRaw (t::p) u n=
      (t.coefficient:ℂ)*phaseCharacter seed2442Angles t.exponent*(phaseDot t.exponent u:ℂ)^n+
        directionalRaw p u n := by rfl

theorem phaseMoment_cons (t : Term) (p : List Term) (α : Nat4) :
    phaseMoment (t::p) α=
      (integerMomentWeight α t:ℂ)*phaseCharacter seed2442Angles t.exponent+phaseMoment p α := by rfl

theorem directionalTaylor_eq_raw (p : List Term) (u : Fin 4 → ℝ) (n : ℕ) :
    directionalTaylor p u n=Complex.I^n*directionalRaw p u n/(n.factorial:ℂ) := by
  induction p with
  | nil => simp [directionalTaylor,directionalRaw]
  | cons t p ih =>
      simp only [directionalTaylor,List.map_cons,List.sum_cons] at ih ⊢
      rw [ih,directionalRaw_cons]
      rw [mul_pow]
      ring

/-- Exact multinomial expansion in four directions, degree 0. -/
theorem directionalRaw_expand_0 (p : List Term) (u : Fin 4 → ℝ) :
    directionalRaw p u 0=
      1*phaseMoment p ⟨0,0,0,0⟩ := by
  induction p with
  | nil => simp [directionalRaw,phaseMoment]
  | cons t p ih =>
      rw [directionalRaw_cons,ih]
      simp only [phaseMoment_cons,integerMomentWeight_cast]
      simp only [phaseDot,Complex.ofReal_add,Complex.ofReal_mul,Complex.ofReal_intCast]
      ring

/-- Exact multinomial expansion in four directions, degree 1. -/
theorem directionalRaw_expand_1 (p : List Term) (u : Fin 4 → ℝ) :
    directionalRaw p u 1=
      1*phaseMoment p ⟨0,0,0,1⟩*(u 3:ℂ)^1+
      1*phaseMoment p ⟨0,0,1,0⟩*(u 2:ℂ)^1+
      1*phaseMoment p ⟨0,1,0,0⟩*(u 1:ℂ)^1+
      1*phaseMoment p ⟨1,0,0,0⟩*(u 0:ℂ)^1 := by
  induction p with
  | nil => simp [directionalRaw,phaseMoment]
  | cons t p ih =>
      rw [directionalRaw_cons,ih]
      simp only [phaseMoment_cons,integerMomentWeight_cast]
      simp only [phaseDot,Complex.ofReal_add,Complex.ofReal_mul,Complex.ofReal_intCast]
      ring

/-- Exact multinomial expansion in four directions, degree 2. -/
theorem directionalRaw_expand_2 (p : List Term) (u : Fin 4 → ℝ) :
    directionalRaw p u 2=
      1*phaseMoment p ⟨0,0,0,2⟩*(u 3:ℂ)^2+
      2*phaseMoment p ⟨0,0,1,1⟩*(u 2:ℂ)^1*(u 3:ℂ)^1+
      1*phaseMoment p ⟨0,0,2,0⟩*(u 2:ℂ)^2+
      2*phaseMoment p ⟨0,1,0,1⟩*(u 1:ℂ)^1*(u 3:ℂ)^1+
      2*phaseMoment p ⟨0,1,1,0⟩*(u 1:ℂ)^1*(u 2:ℂ)^1+
      1*phaseMoment p ⟨0,2,0,0⟩*(u 1:ℂ)^2+
      2*phaseMoment p ⟨1,0,0,1⟩*(u 0:ℂ)^1*(u 3:ℂ)^1+
      2*phaseMoment p ⟨1,0,1,0⟩*(u 0:ℂ)^1*(u 2:ℂ)^1+
      2*phaseMoment p ⟨1,1,0,0⟩*(u 0:ℂ)^1*(u 1:ℂ)^1+
      1*phaseMoment p ⟨2,0,0,0⟩*(u 0:ℂ)^2 := by
  induction p with
  | nil => simp [directionalRaw,phaseMoment]
  | cons t p ih =>
      rw [directionalRaw_cons,ih]
      simp only [phaseMoment_cons,integerMomentWeight_cast]
      simp only [phaseDot,Complex.ofReal_add,Complex.ofReal_mul,Complex.ofReal_intCast]
      ring

/-- Exact multinomial expansion in four directions, degree 3. -/
theorem directionalRaw_expand_3 (p : List Term) (u : Fin 4 → ℝ) :
    directionalRaw p u 3=
      1*phaseMoment p ⟨0,0,0,3⟩*(u 3:ℂ)^3+
      3*phaseMoment p ⟨0,0,1,2⟩*(u 2:ℂ)^1*(u 3:ℂ)^2+
      3*phaseMoment p ⟨0,0,2,1⟩*(u 2:ℂ)^2*(u 3:ℂ)^1+
      1*phaseMoment p ⟨0,0,3,0⟩*(u 2:ℂ)^3+
      3*phaseMoment p ⟨0,1,0,2⟩*(u 1:ℂ)^1*(u 3:ℂ)^2+
      6*phaseMoment p ⟨0,1,1,1⟩*(u 1:ℂ)^1*(u 2:ℂ)^1*(u 3:ℂ)^1+
      3*phaseMoment p ⟨0,1,2,0⟩*(u 1:ℂ)^1*(u 2:ℂ)^2+
      3*phaseMoment p ⟨0,2,0,1⟩*(u 1:ℂ)^2*(u 3:ℂ)^1+
      3*phaseMoment p ⟨0,2,1,0⟩*(u 1:ℂ)^2*(u 2:ℂ)^1+
      1*phaseMoment p ⟨0,3,0,0⟩*(u 1:ℂ)^3+
      3*phaseMoment p ⟨1,0,0,2⟩*(u 0:ℂ)^1*(u 3:ℂ)^2+
      6*phaseMoment p ⟨1,0,1,1⟩*(u 0:ℂ)^1*(u 2:ℂ)^1*(u 3:ℂ)^1+
      3*phaseMoment p ⟨1,0,2,0⟩*(u 0:ℂ)^1*(u 2:ℂ)^2+
      6*phaseMoment p ⟨1,1,0,1⟩*(u 0:ℂ)^1*(u 1:ℂ)^1*(u 3:ℂ)^1+
      6*phaseMoment p ⟨1,1,1,0⟩*(u 0:ℂ)^1*(u 1:ℂ)^1*(u 2:ℂ)^1+
      3*phaseMoment p ⟨1,2,0,0⟩*(u 0:ℂ)^1*(u 1:ℂ)^2+
      3*phaseMoment p ⟨2,0,0,1⟩*(u 0:ℂ)^2*(u 3:ℂ)^1+
      3*phaseMoment p ⟨2,0,1,0⟩*(u 0:ℂ)^2*(u 2:ℂ)^1+
      3*phaseMoment p ⟨2,1,0,0⟩*(u 0:ℂ)^2*(u 1:ℂ)^1+
      1*phaseMoment p ⟨3,0,0,0⟩*(u 0:ℂ)^3 := by
  induction p with
  | nil => simp [directionalRaw,phaseMoment]
  | cons t p ih =>
      rw [directionalRaw_cons,ih]
      simp only [phaseMoment_cons,integerMomentWeight_cast]
      simp only [phaseDot,Complex.ofReal_add,Complex.ofReal_mul,Complex.ofReal_intCast]
      ring

/-- Exact multinomial expansion in four directions, degree 4. -/
theorem directionalRaw_expand_4 (p : List Term) (u : Fin 4 → ℝ) :
    directionalRaw p u 4=
      1*phaseMoment p ⟨0,0,0,4⟩*(u 3:ℂ)^4+
      4*phaseMoment p ⟨0,0,1,3⟩*(u 2:ℂ)^1*(u 3:ℂ)^3+
      6*phaseMoment p ⟨0,0,2,2⟩*(u 2:ℂ)^2*(u 3:ℂ)^2+
      4*phaseMoment p ⟨0,0,3,1⟩*(u 2:ℂ)^3*(u 3:ℂ)^1+
      1*phaseMoment p ⟨0,0,4,0⟩*(u 2:ℂ)^4+
      4*phaseMoment p ⟨0,1,0,3⟩*(u 1:ℂ)^1*(u 3:ℂ)^3+
      12*phaseMoment p ⟨0,1,1,2⟩*(u 1:ℂ)^1*(u 2:ℂ)^1*(u 3:ℂ)^2+
      12*phaseMoment p ⟨0,1,2,1⟩*(u 1:ℂ)^1*(u 2:ℂ)^2*(u 3:ℂ)^1+
      4*phaseMoment p ⟨0,1,3,0⟩*(u 1:ℂ)^1*(u 2:ℂ)^3+
      6*phaseMoment p ⟨0,2,0,2⟩*(u 1:ℂ)^2*(u 3:ℂ)^2+
      12*phaseMoment p ⟨0,2,1,1⟩*(u 1:ℂ)^2*(u 2:ℂ)^1*(u 3:ℂ)^1+
      6*phaseMoment p ⟨0,2,2,0⟩*(u 1:ℂ)^2*(u 2:ℂ)^2+
      4*phaseMoment p ⟨0,3,0,1⟩*(u 1:ℂ)^3*(u 3:ℂ)^1+
      4*phaseMoment p ⟨0,3,1,0⟩*(u 1:ℂ)^3*(u 2:ℂ)^1+
      1*phaseMoment p ⟨0,4,0,0⟩*(u 1:ℂ)^4+
      4*phaseMoment p ⟨1,0,0,3⟩*(u 0:ℂ)^1*(u 3:ℂ)^3+
      12*phaseMoment p ⟨1,0,1,2⟩*(u 0:ℂ)^1*(u 2:ℂ)^1*(u 3:ℂ)^2+
      12*phaseMoment p ⟨1,0,2,1⟩*(u 0:ℂ)^1*(u 2:ℂ)^2*(u 3:ℂ)^1+
      4*phaseMoment p ⟨1,0,3,0⟩*(u 0:ℂ)^1*(u 2:ℂ)^3+
      12*phaseMoment p ⟨1,1,0,2⟩*(u 0:ℂ)^1*(u 1:ℂ)^1*(u 3:ℂ)^2+
      24*phaseMoment p ⟨1,1,1,1⟩*(u 0:ℂ)^1*(u 1:ℂ)^1*(u 2:ℂ)^1*(u 3:ℂ)^1+
      12*phaseMoment p ⟨1,1,2,0⟩*(u 0:ℂ)^1*(u 1:ℂ)^1*(u 2:ℂ)^2+
      12*phaseMoment p ⟨1,2,0,1⟩*(u 0:ℂ)^1*(u 1:ℂ)^2*(u 3:ℂ)^1+
      12*phaseMoment p ⟨1,2,1,0⟩*(u 0:ℂ)^1*(u 1:ℂ)^2*(u 2:ℂ)^1+
      4*phaseMoment p ⟨1,3,0,0⟩*(u 0:ℂ)^1*(u 1:ℂ)^3+
      6*phaseMoment p ⟨2,0,0,2⟩*(u 0:ℂ)^2*(u 3:ℂ)^2+
      12*phaseMoment p ⟨2,0,1,1⟩*(u 0:ℂ)^2*(u 2:ℂ)^1*(u 3:ℂ)^1+
      6*phaseMoment p ⟨2,0,2,0⟩*(u 0:ℂ)^2*(u 2:ℂ)^2+
      12*phaseMoment p ⟨2,1,0,1⟩*(u 0:ℂ)^2*(u 1:ℂ)^1*(u 3:ℂ)^1+
      12*phaseMoment p ⟨2,1,1,0⟩*(u 0:ℂ)^2*(u 1:ℂ)^1*(u 2:ℂ)^1+
      6*phaseMoment p ⟨2,2,0,0⟩*(u 0:ℂ)^2*(u 1:ℂ)^2+
      4*phaseMoment p ⟨3,0,0,1⟩*(u 0:ℂ)^3*(u 3:ℂ)^1+
      4*phaseMoment p ⟨3,0,1,0⟩*(u 0:ℂ)^3*(u 2:ℂ)^1+
      4*phaseMoment p ⟨3,1,0,0⟩*(u 0:ℂ)^3*(u 1:ℂ)^1+
      1*phaseMoment p ⟨4,0,0,0⟩*(u 0:ℂ)^4 := by
  induction p with
  | nil => simp [directionalRaw,phaseMoment]
  | cons t p ih =>
      rw [directionalRaw_cons,ih]
      simp only [phaseMoment_cons,integerMomentWeight_cast]
      simp only [phaseDot,Complex.ofReal_add,Complex.ofReal_mul,Complex.ofReal_intCast]
      ring

end
end Centiradian20261006.DirectionalQuartic20261006

#print axioms Centiradian20261006.DirectionalQuartic20261006.directionalRaw_cons
#print axioms Centiradian20261006.DirectionalQuartic20261006.phaseMoment_cons
#print axioms Centiradian20261006.DirectionalQuartic20261006.directionalTaylor_eq_raw
#print axioms Centiradian20261006.DirectionalQuartic20261006.directionalRaw_expand_0
#print axioms Centiradian20261006.DirectionalQuartic20261006.directionalRaw_expand_1
#print axioms Centiradian20261006.DirectionalQuartic20261006.directionalRaw_expand_2
#print axioms Centiradian20261006.DirectionalQuartic20261006.directionalRaw_expand_3
#print axioms Centiradian20261006.DirectionalQuartic20261006.directionalRaw_expand_4
