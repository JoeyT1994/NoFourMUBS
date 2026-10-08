module
public import Mathlib.Analysis.Calculus.Deriv.Basic
import Mathlib.Analysis.Calculus.MeanValue
import Mathlib.Analysis.Calculus.Deriv.Pow
import Mathlib.Analysis.Complex.RealDeriv
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
public import Mathlib.Analysis.Complex.Exponential
public import Mathlib.Analysis.Complex.Trigonometric
import Mathlib.Tactic.Ring
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Positivity

public section

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.MomentPhaseCore20261006
open scoped BigOperators ComplexConjugate
open Set
noncomputable section

/-- The first n exponential terms along the imaginary axis. -/
@[expose] def phasePartial (n : ℕ) (x : ℝ) : ℂ :=
  ∑ k ∈ Finset.range n, (Complex.I*(x:ℂ))^k/(k.factorial:ℂ)

@[expose] def phaseRemainder (n : ℕ) (x : ℝ) : ℂ :=
  Complex.exp (Complex.I*(x:ℂ))-phasePartial n x

theorem phasePartial_succ (n : ℕ) (x : ℝ) :
    phasePartial (n+1) x=phasePartial n x+(Complex.I*(x:ℂ))^n/(n.factorial:ℂ) := by
  exact Finset.sum_range_succ _ n

theorem phasePartial_zero : phasePartial 0=(fun _ => 0) := by
  funext x
  simp [phasePartial]

theorem phasePartial_at_zero (n : ℕ) : phasePartial (n+1) 0=1 := by
  induction n with
  | zero => simp [phasePartial]
  | succ n ih => rw [phasePartial_succ,ih]; simp

theorem phaseTerm_derivative (n : ℕ) (x : ℝ) :
    HasDerivAt (fun t : ℝ => (Complex.I*(t:ℂ))^(n+1)/((n+1).factorial:ℂ))
      (Complex.I*((Complex.I*(x:ℂ))^n/(n.factorial:ℂ))) x := by
  have h := ((((hasDerivAt_id x).ofReal_comp).const_mul Complex.I).pow (n+1)).div_const
    ((n+1).factorial:ℂ)
  convert! h using 1
  simp only [id_eq,Nat.add_sub_cancel,Complex.ofReal_one,mul_one,Nat.factorial_succ,Nat.cast_mul,
    Nat.cast_add,Nat.cast_one]
  have hn : (n:ℂ)+1 ≠ 0 := by exact_mod_cast Nat.succ_ne_zero n
  have hf : (n.factorial:ℂ) ≠ 0 := by exact_mod_cast Nat.factorial_ne_zero n
  field_simp
  <;> ring

theorem phasePartial_derivative (n : ℕ) (x : ℝ) :
    HasDerivAt (phasePartial (n+1)) (Complex.I*phasePartial n x) x := by
  induction n with
  | zero =>
      have h : phasePartial 1=(fun _ => (1:ℂ)) := by funext t; simp [phasePartial]
      rw [h,phasePartial_zero]
      simpa using! hasDerivAt_const x (1:ℂ)
  | succ n ih =>
      convert! ih.add (phaseTerm_derivative n x) using 1
      · funext t
        exact phasePartial_succ (n+1) t
      · rw [phasePartial_succ]
        ring

theorem phaseExp_derivative (x : ℝ) :
    HasDerivAt (fun t : ℝ => Complex.exp (Complex.I*(t:ℂ)))
      (Complex.I*Complex.exp (Complex.I*(x:ℂ))) x := by
  simpa only [Complex.ofReal_one,mul_one,mul_comm] using!
    (((hasDerivAt_id x).ofReal_comp).const_mul Complex.I).cexp

theorem phaseRemainder_derivative (n : ℕ) (x : ℝ) :
    HasDerivAt (phaseRemainder (n+1)) (Complex.I*phaseRemainder n x) x := by
  convert! (phaseExp_derivative x).sub (phasePartial_derivative n x) using 1
  simp only [phaseRemainder,mul_sub]

theorem factorialMonomial_derivative (n : ℕ) (x : ℝ) :
    HasDerivAt (fun t : ℝ => t^(n+1)/((n+1).factorial:ℝ))
      (x^n/(n.factorial:ℝ)) x := by
  convert! ((hasDerivAt_id x).pow (n+1)).div_const ((n+1).factorial:ℝ) using 1
  simp only [id_eq,Nat.add_sub_cancel,mul_one,Nat.factorial_succ,Nat.cast_mul,Nat.cast_add,Nat.cast_one]
  have hn : (n:ℝ)+1 ≠ 0 := by positivity
  have hf : (n.factorial:ℝ) ≠ 0 := by exact_mod_cast Nat.factorial_ne_zero n
  field_simp

theorem phaseRemainder_nonnegative_bound (n : ℕ) (x : ℝ) (hx : 0 ≤ x) :
    ‖phaseRemainder n x‖ ≤ x^n/(n.factorial:ℝ) := by
  induction n generalizing x with
  | zero => simp [phaseRemainder,phasePartial,Complex.norm_exp]
  | succ n ih =>
      apply image_norm_le_of_norm_deriv_right_le_deriv_boundary
        (a:=0) (b:=x) (f:=phaseRemainder (n+1))
        (f':=fun t => Complex.I*phaseRemainder n t)
        (B:=fun t => t^(n+1)/((n+1).factorial:ℝ))
        (B':=fun t => t^n/(n.factorial:ℝ))
        (fun t _ => (phaseRemainder_derivative n t).continuousAt.continuousWithinAt)
        (fun t _ => (phaseRemainder_derivative n t).hasDerivWithinAt)
        ?_ (factorialMonomial_derivative n) ?_ ⟨hx,le_rfl⟩
      · simp [phaseRemainder,phasePartial_at_zero]
      · intro t ht
        simpa only [norm_mul,Complex.norm_I,one_mul] using ih t ht.1

theorem phasePartial_conjugate (n : ℕ) (x : ℝ) :
    conj (phasePartial n x)=phasePartial n (-x) := by
  simp [phasePartial,map_sum,map_pow,map_mul]

theorem phaseRemainder_conjugate (n : ℕ) (x : ℝ) :
    conj (phaseRemainder n x)=phaseRemainder n (-x) := by
  simp only [phaseRemainder,map_sub,phasePartial_conjugate,← Complex.exp_conj]
  congr 2
  simp

/-- The sharp imaginary-axis Taylor remainder, for every real argument and
every number of retained terms. No exponential prefactor or smallness
restriction is required. The proof uses derivative norm comparison and
the unit norm of the imaginary-axis exponential. -/
theorem phaseRemainder_bound (n : ℕ) (x : ℝ) :
    ‖phaseRemainder n x‖ ≤ |x|^n/(n.factorial:ℝ) := by
  by_cases hx : 0 ≤ x
  · simpa only [abs_of_nonneg hx] using phaseRemainder_nonnegative_bound n x hx
  · have hn : 0 ≤ -x := neg_nonneg.mpr (le_of_not_ge hx)
    have h := phaseRemainder_nonnegative_bound n (-x) hn
    rw [← phaseRemainder_conjugate,Complex.norm_conj] at h
    simpa only [abs_of_nonpos (le_of_not_ge hx)] using h

theorem phaseTaylor_error (n : ℕ) (x : ℝ) :
    ‖Complex.exp (Complex.I*(x:ℂ))-
      ∑ k ∈ Finset.range (n+1), (Complex.I*(x:ℂ))^k/(k.factorial:ℂ)‖ ≤
      |x|^(n+1)/((n+1).factorial:ℝ) :=
  phaseRemainder_bound (n+1) x

end
end Centiradian20261006.MomentPhaseCore20261006

#print axioms Centiradian20261006.MomentPhaseCore20261006.phasePartial_succ
#print axioms Centiradian20261006.MomentPhaseCore20261006.phasePartial_zero
#print axioms Centiradian20261006.MomentPhaseCore20261006.phasePartial_at_zero
#print axioms Centiradian20261006.MomentPhaseCore20261006.phaseTerm_derivative
#print axioms Centiradian20261006.MomentPhaseCore20261006.phasePartial_derivative
#print axioms Centiradian20261006.MomentPhaseCore20261006.phaseExp_derivative
#print axioms Centiradian20261006.MomentPhaseCore20261006.phaseRemainder_derivative
#print axioms Centiradian20261006.MomentPhaseCore20261006.factorialMonomial_derivative
#print axioms Centiradian20261006.MomentPhaseCore20261006.phaseRemainder_nonnegative_bound
#print axioms Centiradian20261006.MomentPhaseCore20261006.phasePartial_conjugate
#print axioms Centiradian20261006.MomentPhaseCore20261006.phaseRemainder_conjugate
#print axioms Centiradian20261006.MomentPhaseCore20261006.phaseRemainder_bound
#print axioms Centiradian20261006.MomentPhaseCore20261006.phaseTaylor_error
