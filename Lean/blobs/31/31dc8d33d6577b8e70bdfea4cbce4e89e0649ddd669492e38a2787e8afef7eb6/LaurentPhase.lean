import LaurentList
import Mathlib.Analysis.Complex.Exponential
import Mathlib.Tactic.Ring

set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace Centiradian20261006.LaurentList
open scoped ComplexConjugate
noncomputable section

def phaseDot (e : Exp4) (θ : Fin 4 → ℝ) : ℝ :=
  e.x0*θ 0+e.x1*θ 1+e.x2*θ 2+e.x3*θ 3

def phaseCharacter (θ : Fin 4 → ℝ) (e : Exp4) : ℂ :=
  Complex.exp (Complex.I*(phaseDot e θ:ℂ))

theorem phaseDot_add (a b : Exp4) (θ : Fin 4 → ℝ) :
    phaseDot (addExp a b) θ = phaseDot a θ+phaseDot b θ := by
  simp only [phaseDot, addExp, Int.cast_add]
  ring

theorem phaseDot_neg (a : Exp4) (θ : Fin 4 → ℝ) :
    phaseDot (negExp a) θ = -phaseDot a θ := by
  simp only [phaseDot, negExp, Int.cast_neg]
  ring

theorem phaseCharacter_zero (θ : Fin 4 → ℝ) :
    phaseCharacter θ ⟨0,0,0,0⟩=1 := by
  simp [phaseCharacter,phaseDot]

theorem phaseCharacter_add (θ : Fin 4 → ℝ) (a b : Exp4) :
    phaseCharacter θ (addExp a b)=phaseCharacter θ a*phaseCharacter θ b := by
  simp only [phaseCharacter,phaseDot_add,Complex.ofReal_add,mul_add,Complex.exp_add]

theorem phaseCharacter_neg (θ : Fin 4 → ℝ) (a : Exp4) :
    phaseCharacter θ (negExp a)=star (phaseCharacter θ a) := by
  change Complex.exp (Complex.I*(phaseDot (negExp a) θ:ℂ)) =
    conj (Complex.exp (Complex.I*(phaseDot a θ:ℂ)))
  rw [← Complex.exp_conj,phaseDot_neg]
  congr 1
  simp

theorem eval_phase_add (θ : Fin 4 → ℝ) (p q : List Term) :
    eval (phaseCharacter θ) (add p q)=eval (phaseCharacter θ) p+eval (phaseCharacter θ) q :=
  eval_add _ _ _

theorem eval_phase_mul (θ : Fin 4 → ℝ) (p q : List Term) :
    eval (phaseCharacter θ) (mul p q)=eval (phaseCharacter θ) p*eval (phaseCharacter θ) q :=
  eval_mul _ (phaseCharacter_add θ) _ _

theorem eval_phase_conjugate (θ : Fin 4 → ℝ) (p : List Term) :
    eval (phaseCharacter θ) (conjugate p)=star (eval (phaseCharacter θ) p) :=
  eval_conjugate _ (phaseCharacter_neg θ) _

theorem eval_phase_ofInt (θ : Fin 4 → ℝ) (n : ℤ) :
    eval (phaseCharacter θ) (ofInt n)=(n:ℂ) :=
  eval_ofInt _ (phaseCharacter_zero θ) _

end
end Centiradian20261006.LaurentList

#print axioms Centiradian20261006.LaurentList.phaseCharacter_zero
#print axioms Centiradian20261006.LaurentList.phaseCharacter_add
#print axioms Centiradian20261006.LaurentList.phaseCharacter_neg
#print axioms Centiradian20261006.LaurentList.eval_phase_add
#print axioms Centiradian20261006.LaurentList.eval_phase_mul
#print axioms Centiradian20261006.LaurentList.eval_phase_conjugate
#print axioms Centiradian20261006.LaurentList.eval_phase_ofInt
