import ActualFourierModel
import FourierReference

/-! Literal equality of the constructed repeated-row model with the explicit
phase family used in the Fourier lattice and projector-reference statements. -/
set_option autoImplicit false
set_option maxHeartbeats 1800000
namespace Seed0024Mathematical20261007
open Seed0024.Orientation
noncomputable section

theorem phaseSix_add (n m : ℤ) : phaseSix (n+m)=phaseSix n*phaseSix m := by
  unfold phaseSix
  rw [←cis_add]
  congr 1
  push_cast
  ring

theorem repeatedFourierModel_base (r c : Fin 6) :
    repeatedFourierModel 1 1 r c=phaseSix (tensorExponent r c : ℤ) := by
  have h0 : phaseSix 0=1 := by simp [phaseSix,cis_zero]
  have h2 : phaseSix 2=orientationRoot false := by
    simp [phaseSix,orientationRoot,turn,phase_eq_cis]
  have hn2 : phaseSix (-2)=orientationRoot true := by
    simp only [phaseSix,orientationRoot,ite_true,phase_eq_cis,turn]
    congr 1
    push_cast
    ring
  have h4 : phaseSix 4=orientationRoot true :=
    (phaseSix_eq_of_emod_eq 4 (-2) (by decide)).trans hn2
  have h3 : phaseSix 3= -1 := by
    apply Complex.ext <;> simp [phaseSix,cis]
  have h5 : phaseSix 5= -orientationRoot false := by
    rw [show (5:ℤ)=2+3 by norm_num,phaseSix_add,h2,h3]
    ring
  have h1 : phaseSix 1= -orientationRoot true := by
    rw [phaseSix_eq_of_emod_eq 1 (4+3) (by decide),phaseSix_add,h4,h3]
    ring
  fin_cases r <;> fin_cases c
  all_goals norm_num [repeatedFourierModel,Seed0024.Orientation.modelRow,binaryRow,
    tensorExponent]
  all_goals rw [phaseSix_emod]
  all_goals norm_num [h0,h1,h2,h3,h4,h5]

theorem repeatedFourier_parameter_factor (alpha beta : ℝ) (r c : Fin 6) :
    repeatedFourier alpha beta r c=
      cis ((c.val/3 : ℕ)*repeatedPhase alpha beta r)*repeatedFourierModel 1 1 r c := by
  fin_cases r <;> fin_cases c
  all_goals norm_num [repeatedFourier,repeatedFourierModel,Seed0024.Orientation.modelRow,
    binaryRow,repeatedPhase,cis_zero]

theorem repeatedFourier_entry_eq_explicitPairedFamily (alpha beta : ℝ) (r c : Fin 6) :
    repeatedFourier alpha beta r c=explicitPairedFamily alpha beta r c := by
  rw [repeatedFourier_parameter_factor,repeatedFourierModel_base]
  simp only [phaseSix,Int.cast_natCast,explicitPairedFamily,cis_add]
  ring

theorem repeatedFourier_eq_explicitPairedFamily (alpha beta : ℝ) :
    repeatedFourier alpha beta=explicitPairedFamily alpha beta := by
  funext r c
  exact repeatedFourier_entry_eq_explicitPairedFamily alpha beta r c

theorem repeatedFourierModel_eq_explicitPairedFamily_arg {mu nu : ℂ}
    (hmu : ‖mu‖=1) (hnu : ‖nu‖=1) :
    repeatedFourierModel mu nu=explicitPairedFamily mu.arg nu.arg :=
  (repeatedFourierModel_eq_arg hmu hnu).trans
    (repeatedFourier_eq_explicitPairedFamily mu.arg nu.arg)

end
end Seed0024Mathematical20261007

#print axioms Seed0024Mathematical20261007.repeatedFourierModel_base
#print axioms Seed0024Mathematical20261007.repeatedFourier_eq_explicitPairedFamily
#print axioms Seed0024Mathematical20261007.repeatedFourierModel_eq_explicitPairedFamily_arg
