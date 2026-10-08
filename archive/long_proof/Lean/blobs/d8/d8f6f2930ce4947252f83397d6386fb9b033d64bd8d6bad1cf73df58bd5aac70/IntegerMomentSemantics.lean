module
public import Seed2442Character
public import ReflectedMomentInteger
import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum

public section
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.MomentInterpretation20261006
open ReflectedLaurent
noncomputable section

@[expose] def integerMomentWeight (α : Nat4) (t : Term) : ℤ :=
  t.coefficient*t.exponent.x0^α.n0*t.exponent.x1^α.n1*t.exponent.x2^α.n2*t.exponent.x3^α.n3

@[expose] def momentPairValue (p : ℤ × ℤ) : ℂ := (p.1:ℂ)+(p.2:ℂ)*omegaSeed

/-- The unscaled monomial Fourier moment at the literal 2442 phase center. -/
@[expose] def phaseMoment (p : List Term) (α : Nat4) : ℂ :=
  (p.map (fun t => (integerMomentWeight α t:ℂ)*phaseCharacter seed2442Angles t.exponent)).sum

theorem integerMomentWeight_cast (α : Nat4) (t : Term) :
    (integerMomentWeight α t:ℂ)=
      (t.coefficient:ℂ)*(t.exponent.x0:ℂ)^α.n0*(t.exponent.x1:ℂ)^α.n1*
        (t.exponent.x2:ℂ)^α.n2*(t.exponent.x3:ℂ)^α.n3 := by
  simp [integerMomentWeight]

theorem momentPairValue_zero : momentPairValue (0,0)=0 := by simp [momentPairValue]

theorem momentPairValue_add (a b : ℤ × ℤ) :
    momentPairValue (momentAdd a b)=momentPairValue a+momentPairValue b := by
  simp only [momentPairValue,momentAdd,Int.cast_add]
  ring

/-- The root's exact integer-pair term computes the actual exponential
phase-weighted moment, including the residue-two sign in both components. -/
theorem momentTerm_phase_value (α : Nat4) (t : Term) :
    momentPairValue (momentTerm α t)=
      (integerMomentWeight α t:ℂ)*phaseCharacter seed2442Angles t.exponent := by
  rw [phaseCharacter_seed2442_cases]
  by_cases h0 : seedWeight t.exponent%3=0
  · simp [momentTerm,momentPairValue,integerMomentWeight,seedWeight] at h0 ⊢
    simp_all
  · by_cases h1 : seedWeight t.exponent%3=1
    · simp [momentTerm,momentPairValue,integerMomentWeight,seedWeight] at h0 h1 ⊢
      simp_all
    · simp [momentTerm,momentPairValue,integerMomentWeight,seedWeight] at h0 h1 ⊢
      simp_all
      ring

theorem momentFold_phase_value (p : List Term) (α : Nat4) (acc : ℤ × ℤ) :
    momentPairValue (p.foldl (fun a t => momentAdd a (momentTerm α t)) acc)=
      momentPairValue acc+phaseMoment p α := by
  induction p generalizing acc with
  | nil => simp [phaseMoment]
  | cons t p ih =>
      rw [List.foldl_cons,ih,momentPairValue_add,momentTerm_phase_value]
      simp only [phaseMoment,List.map_cons,List.sum_cons]
      ring

theorem momentList_phase_value (p : List Term) (α : Nat4) :
    momentPairValue (momentList p α)=phaseMoment p α := by
  unfold momentList
  rw [momentFold_phase_value,momentPairValue_zero,zero_add]

theorem seedMoment_phase_value (α : Nat4) :
    momentPairValue (seedMoment α)=phaseMoment tableFullR α :=
  momentList_phase_value tableFullR α

theorem seedMoment_certificate_value (α : Nat4) (A B : ℤ)
    (h : seedMoment α=(A,B)) :
    phaseMoment tableFullR α=(A:ℂ)+(B:ℂ)*omegaSeed := by
  rw [← seedMoment_phase_value,h]
  rfl

theorem seedMoment_zero_certificate (α : Nat4) (h : seedMoment α=(0,0)) :
    phaseMoment tableFullR α=0 := by
  simpa using seedMoment_certificate_value α 0 0 h

theorem phaseMoment_zero_order (p : List Term) :
    phaseMoment p ⟨0,0,0,0⟩=eval (phaseCharacter seed2442Angles) p := by
  simp [phaseMoment,integerMomentWeight,eval,evalTerm]

theorem exact_seed_zero_order_moment : phaseMoment tableFullR ⟨0,0,0,0⟩=0 :=
  seedMoment_zero_certificate _ seedMoment_zero_order

/-- A first direct use of the checked integer certificate and exact table
semantics: the actual positive-J complex invariant vanishes at the seed. -/
theorem complexCornerR_at_seed2442_zero :
    KernelLaurent.complexCornerR
      (Complex.exp (Complex.I*(seed2442Angles 0:ℂ)))
      (Complex.exp (Complex.I*(seed2442Angles 1:ℂ)))
      (Complex.exp (Complex.I*(seed2442Angles 2:ℂ)))
      (Complex.exp (Complex.I*(seed2442Angles 3:ℂ)))=0 := by
  rw [← eval_phase_tableFullR,← phaseMoment_zero_order]
  exact exact_seed_zero_order_moment

end
end Centiradian20261006.MomentInterpretation20261006

#print axioms Centiradian20261006.MomentInterpretation20261006.integerMomentWeight_cast
#print axioms Centiradian20261006.MomentInterpretation20261006.momentPairValue_zero
#print axioms Centiradian20261006.MomentInterpretation20261006.momentPairValue_add
#print axioms Centiradian20261006.MomentInterpretation20261006.momentTerm_phase_value
#print axioms Centiradian20261006.MomentInterpretation20261006.momentFold_phase_value
#print axioms Centiradian20261006.MomentInterpretation20261006.momentList_phase_value
#print axioms Centiradian20261006.MomentInterpretation20261006.seedMoment_phase_value
#print axioms Centiradian20261006.MomentInterpretation20261006.seedMoment_certificate_value
#print axioms Centiradian20261006.MomentInterpretation20261006.seedMoment_zero_certificate
#print axioms Centiradian20261006.MomentInterpretation20261006.phaseMoment_zero_order
#print axioms Centiradian20261006.MomentInterpretation20261006.exact_seed_zero_order_moment
#print axioms Centiradian20261006.MomentInterpretation20261006.complexCornerR_at_seed2442_zero
