module
public import DirectionalQuarticValue
public import MomentPhaseCore
import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum

public section
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.DirectionalQuartic20261006
open ReflectedLaurent MomentInterpretation20261006 MomentPhaseCore20261006
open scoped BigOperators
noncomputable section

/-- The actual literal Laurent table evaluated at the shifted 2442 seed. -/
@[expose] def seedLaurentR (u : Fin 4 → ℝ) : ℂ :=
  eval (phaseCharacter (fun j => seed2442Angles j+u j)) tableFullR

@[expose] def listPhaseSum (p : List Term) (u : Fin 4 → ℝ) : ℂ :=
  (p.map (fun t => (t.coefficient:ℂ)*phaseCharacter seed2442Angles t.exponent*
    Complex.exp (Complex.I*(phaseDot t.exponent u:ℂ)))).sum

@[expose] def listPhasePartial (p : List Term) (u : Fin 4 → ℝ) (n : ℕ) : ℂ :=
  (p.map (fun t => (t.coefficient:ℂ)*phaseCharacter seed2442Angles t.exponent*
    phasePartial n (phaseDot t.exponent u))).sum

@[expose] def listPhaseTail (p : List Term) (u : Fin 4 → ℝ) (n : ℕ) : ℂ :=
  (p.map (fun t => (t.coefficient:ℂ)*phaseCharacter seed2442Angles t.exponent*
    phaseRemainder n (phaseDot t.exponent u))).sum

/-- The sharp finite phase-tail budget. Its literal value is not evaluated here. -/
@[expose] def listTailBudget (p : List Term) (u : Fin 4 → ℝ) (n : ℕ) : ℝ :=
  (p.map (fun t => ‖(t.coefficient:ℂ)*phaseCharacter seed2442Angles t.exponent‖*
    (|phaseDot t.exponent u|^n/(n.factorial:ℝ)))).sum

theorem phaseCharacter_angles_add (a b : Fin 4 → ℝ) (e : Exp4) :
    phaseCharacter (fun j => a j+b j) e=phaseCharacter a e*phaseCharacter b e := by
  have hd : phaseDot e (fun j => a j+b j)=phaseDot e a+phaseDot e b := by
    unfold phaseDot
    ring
  simp only [phaseCharacter,hd,Complex.ofReal_add,mul_add,Complex.exp_add]

theorem eval_shift_eq_listPhaseSum (p : List Term) (u : Fin 4 → ℝ) :
    eval (phaseCharacter (fun j => seed2442Angles j+u j)) p=listPhaseSum p u := by
  simp only [eval,evalTerm,listPhaseSum,phaseCharacter_angles_add,phaseCharacter,mul_assoc]

theorem seedLaurentR_eq_listPhaseSum (u : Fin 4 → ℝ) :
    seedLaurentR u=listPhaseSum tableFullR u :=
  eval_shift_eq_listPhaseSum tableFullR u

/-- This identifies the shifted finite sum with the frozen positive-J invariant. -/
theorem seedLaurentR_eq_complexCornerR (u : Fin 4 → ℝ) :
    seedLaurentR u=KernelLaurent.complexCornerR
      (Complex.exp (Complex.I*((seed2442Angles 0+u 0:ℝ):ℂ)))
      (Complex.exp (Complex.I*((seed2442Angles 1+u 1:ℝ):ℂ)))
      (Complex.exp (Complex.I*((seed2442Angles 2+u 2:ℝ):ℂ)))
      (Complex.exp (Complex.I*((seed2442Angles 3+u 3:ℝ):ℂ))) :=
  eval_phase_tableFullR _

theorem listPhasePartial_eq_directionalTaylor (p : List Term) (u : Fin 4 → ℝ) (n : ℕ) :
    listPhasePartial p u n=∑ k ∈ Finset.range n, directionalTaylor p u k := by
  induction p with
  | nil => simp [listPhasePartial,directionalTaylor]
  | cons t p ih =>
      simp only [listPhasePartial,List.map_cons,List.sum_cons] at ih ⊢
      rw [ih]
      simp only [directionalTaylor,List.map_cons,List.sum_cons,Finset.sum_add_distrib,
        phasePartial,Finset.mul_sum]

/-- The actual degree-four truncation has no lower-degree terms. -/
theorem literal_listPhasePartial_five (u : Fin 4 → ℝ) :
    listPhasePartial tableFullR u 5=((243*(u 0*u 3-u 1*u 2)^2:ℝ):ℂ) := by
  rw [listPhasePartial_eq_directionalTaylor,show 5=4+1 from rfl,Finset.sum_range_succ]
  have hz : (∑ k ∈ Finset.range 4, directionalTaylor tableFullR u k)=0 := by
    apply Finset.sum_eq_zero
    intro k hk
    exact literal_directionalTaylor_below_four u k (Finset.mem_range.mp hk)
  rw [hz,zero_add,literal_directionalTaylor_four]

theorem listPhaseSum_sub_partial (p : List Term) (u : Fin 4 → ℝ) (n : ℕ) :
    listPhaseSum p u-listPhasePartial p u n=listPhaseTail p u n := by
  induction p with
  | nil => simp [listPhaseSum,listPhasePartial,listPhaseTail]
  | cons t p ih =>
      simp only [listPhaseSum,listPhasePartial,listPhaseTail,List.map_cons,List.sum_cons] at ih ⊢
      rw [← ih]
      simp only [phaseRemainder]
      ring

theorem listPhaseTail_norm_le (p : List Term) (u : Fin 4 → ℝ) (n : ℕ) :
    ‖listPhaseTail p u n‖ ≤ listTailBudget p u n := by
  induction p with
  | nil => simp [listPhaseTail,listTailBudget]
  | cons t p ih =>
      simp only [listPhaseTail,listTailBudget,List.map_cons,List.sum_cons] at ih ⊢
      apply le_trans (norm_add_le _ _) (add_le_add ?_ ih)
      rw [norm_mul]
      exact mul_le_mul_of_nonneg_left (phaseRemainder_bound n (phaseDot t.exponent u)) (norm_nonneg _)

theorem seedLaurentR_sub_quartic (u : Fin 4 → ℝ) :
    seedLaurentR u-((243*(u 0*u 3-u 1*u 2)^2:ℝ):ℂ)=listPhaseTail tableFullR u 5 := by
  rw [seedLaurentR_eq_listPhaseSum,← literal_listPhasePartial_five]
  exact listPhaseSum_sub_partial tableFullR u 5

/-- A certified sharp fifth-order tail for the actual shifted invariant;
no evaluated radius budget or exclusion is asserted. -/
theorem seedLaurentR_quartic_error (u : Fin 4 → ℝ) :
    ‖seedLaurentR u-((243*(u 0*u 3-u 1*u 2)^2:ℝ):ℂ)‖ ≤
      listTailBudget tableFullR u 5 := by
  rw [seedLaurentR_sub_quartic]
  exact listPhaseTail_norm_le tableFullR u 5

end
end Centiradian20261006.DirectionalQuartic20261006

#print axioms Centiradian20261006.DirectionalQuartic20261006.phaseCharacter_angles_add
#print axioms Centiradian20261006.DirectionalQuartic20261006.eval_shift_eq_listPhaseSum
#print axioms Centiradian20261006.DirectionalQuartic20261006.seedLaurentR_eq_listPhaseSum
#print axioms Centiradian20261006.DirectionalQuartic20261006.seedLaurentR_eq_complexCornerR
#print axioms Centiradian20261006.DirectionalQuartic20261006.listPhasePartial_eq_directionalTaylor
#print axioms Centiradian20261006.DirectionalQuartic20261006.literal_listPhasePartial_five
#print axioms Centiradian20261006.DirectionalQuartic20261006.listPhaseSum_sub_partial
#print axioms Centiradian20261006.DirectionalQuartic20261006.listPhaseTail_norm_le
#print axioms Centiradian20261006.DirectionalQuartic20261006.seedLaurentR_sub_quartic
#print axioms Centiradian20261006.DirectionalQuartic20261006.seedLaurentR_quartic_error
