module
public import ReflectedLaurentPhase
public import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Linarith
import Lean.Elab.Tactic.Omega

public section
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.MomentInterpretation20261006
open ReflectedLaurent
noncomputable section

/-- The literal 2442 phase center in row-major order. -/
@[expose] def seed2442Angles (j : Fin 4) : ℝ :=
  if j=0 ∨ j=3 then 2*Real.pi/3 else 4*Real.pi/3

@[expose] def omegaSeed : ℂ := Complex.exp (Complex.I*((2*Real.pi/3:ℝ):ℂ))
@[expose] def seedWeight (e : Exp4) : ℤ := e.x0+2*e.x1+2*e.x2+e.x3

theorem omegaSeed_value : omegaSeed=-(1/2:ℂ)+Complex.I*((Real.sqrt 3/2:ℝ):ℂ) := by
  have ha : (2*Real.pi/3:ℝ)=Real.pi-Real.pi/3 := by ring
  apply Complex.ext <;>
    simp [omegaSeed,Complex.exp_re,Complex.exp_im,ha,Real.cos_sub,Real.sin_sub,
      Real.cos_pi_div_three,Real.sin_pi_div_three] <;> ring

theorem omegaSeed_squared : omegaSeed^2=-1-omegaSeed := by
  have hs := Real.sq_sqrt (by norm_num : (0:ℝ) ≤ 3)
  apply Complex.ext <;> simp [omegaSeed_value,pow_two] <;> nlinarith

theorem omegaSeed_cubed : omegaSeed^3=1 := by
  calc
    omegaSeed^3=omegaSeed*omegaSeed^2 := by ring
    _ = omegaSeed*(-1-omegaSeed) := by rw [omegaSeed_squared]
    _ = -omegaSeed-omegaSeed^2 := by ring
    _ = 1 := by rw [omegaSeed_squared]; ring

theorem phaseDot_seed2442 (e : Exp4) :
    phaseDot e seed2442Angles=(seedWeight e:ℝ)*(2*Real.pi/3) := by
  simp [phaseDot,seed2442Angles,seedWeight]
  ring

/-- Reducing the integer weight modulo three is justified by the actual
complex exponential's 2*pi period, including negative frequencies. -/
theorem phaseCharacter_seed2442_mod (e : Exp4) :
    phaseCharacter seed2442Angles e=
      Complex.exp (Complex.I*(((seedWeight e%3:ℤ):ℝ)*(2*Real.pi/3):ℝ)) := by
  rw [phaseCharacter,phaseDot_seed2442]
  have hm : (seedWeight e:ℝ)=((seedWeight e%3:ℤ):ℝ)+3*((seedWeight e/3:ℤ):ℝ) := by
    exact_mod_cast (Int.emod_add_ediv (seedWeight e) 3).symm
  rw [hm]
  have he : Complex.I*(((((seedWeight e%3:ℤ):ℝ)+3*((seedWeight e/3:ℤ):ℝ))*(2*Real.pi/3):ℝ):ℂ)=
      Complex.I*((((seedWeight e%3:ℤ):ℝ)*(2*Real.pi/3):ℝ):ℂ)+
      ((seedWeight e/3:ℤ):ℂ)*(2*(Real.pi:ℂ)*Complex.I) := by
    push_cast
    ring
  rw [he,Complex.exp_add,Complex.exp_int_mul_two_pi_mul_I,mul_one]

theorem phaseCharacter_seed2442_cases (e : Exp4) :
    phaseCharacter seed2442Angles e=
      if seedWeight e%3=0 then 1 else if seedWeight e%3=1 then omegaSeed else -1-omegaSeed := by
  rw [phaseCharacter_seed2442_mod]
  by_cases h0 : seedWeight e%3=0
  · simp [h0]
  · by_cases h1 : seedWeight e%3=1
    · simp [h0,h1,omegaSeed]
    · have hnonneg := Int.emod_nonneg (seedWeight e) (by norm_num : (3:ℤ)≠0)
      have hlt := Int.emod_lt_of_pos (seedWeight e) (by norm_num : (0:ℤ)<3)
      have h2 : seedWeight e%3=2 := by omega
      simp only [h0,h1,ite_false,h2]
      rw [← omegaSeed_squared]
      have he : Complex.I*(((2:ℝ)*(2*Real.pi/3):ℝ):ℂ)=
          Complex.I*((2*Real.pi/3:ℝ):ℂ)+Complex.I*((2*Real.pi/3:ℝ):ℂ) := by
        push_cast
        ring
      rw [he,Complex.exp_add]
      rfl

end
end Centiradian20261006.MomentInterpretation20261006

#print axioms Centiradian20261006.MomentInterpretation20261006.omegaSeed_value
#print axioms Centiradian20261006.MomentInterpretation20261006.omegaSeed_squared
#print axioms Centiradian20261006.MomentInterpretation20261006.omegaSeed_cubed
#print axioms Centiradian20261006.MomentInterpretation20261006.phaseDot_seed2442
#print axioms Centiradian20261006.MomentInterpretation20261006.phaseCharacter_seed2442_mod
#print axioms Centiradian20261006.MomentInterpretation20261006.phaseCharacter_seed2442_cases
