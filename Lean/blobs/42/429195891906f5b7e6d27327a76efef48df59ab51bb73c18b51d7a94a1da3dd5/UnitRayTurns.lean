import EndpointConvexity
import EqualAngleCells
import FormalCore
import Mathlib.Analysis.SpecialFunctions.Complex.Arg
import Mathlib.Analysis.Complex.Trigonometric

/-! Actual dephased raw unit rays have five turn coordinates in the closed
unit cube. The phase is constructed from Complex.arg, with its negative
branch shifted by exactly one turn. No phase parametrization is assumed. -/
noncomputable section
open Seed0024ClusterTubeCover20261007

namespace Seed0024ClusterTube20261007

theorem circlePoint_eq_exp (t : ℝ) :
    circlePoint t=Complex.exp ((t:ℂ)*Complex.I) := by
  apply Complex.ext <;>
    simp [circlePoint,Complex.exp_ofReal_mul_I_re,Complex.exp_ofReal_mul_I_im]

theorem circlePoint_add_two_pi (t : ℝ) :
    circlePoint (t+2*Real.pi)=circlePoint t := by
  apply Complex.ext <;> simp [circlePoint]

theorem circlePoint_normSq (t : ℝ) : Complex.normSq (circlePoint t)=1 := by
  simp only [circlePoint,Complex.normSq_apply]
  nlinarith [Real.sin_sq_add_cos_sq t]

def unitTurn (z : ℂ) : ℝ :=
  if z.arg<0 then (z.arg+2*Real.pi)/(2*Real.pi) else z.arg/(2*Real.pi)

theorem unitTurn_spec (z : ℂ) (hz : Complex.normSq z=1) :
    0≤unitTurn z ∧ unitTurn z≤1 ∧ circlePoint (2*Real.pi*unitTurn z)=z := by
  have hp : (0:ℝ)<2*Real.pi := by positivity
  have hn : 2*Real.pi≠(0:ℝ) := ne_of_gt hp
  have hz' : ‖z‖=1 := by
    rw [Complex.normSq_eq_norm_sq] at hz
    nlinarith [norm_nonneg z]
  have harg : circlePoint z.arg=z := by
    rw [circlePoint_eq_exp]
    simpa only [hz',Complex.ofReal_one,one_mul] using Complex.norm_mul_exp_arg_mul_I z
  have ha := abs_le.mp (Complex.abs_arg_le_pi z)
  have hlo : -Real.pi≤z.arg := ha.1
  have hhi : z.arg≤Real.pi := ha.2
  by_cases hneg : z.arg<0
  · simp only [unitTurn,if_pos hneg]
    refine ⟨div_nonneg (by linarith [Real.pi_pos]) hp.le,
      (div_le_one hp).2 (by linarith),?_⟩
    rw [mul_comm (2*Real.pi) ((z.arg+2*Real.pi)/(2*Real.pi)),div_mul_cancel₀ _ hn,
      circlePoint_add_two_pi,harg]
  · simp only [unitTurn,if_neg hneg]
    refine ⟨div_nonneg (le_of_not_gt hneg) hp.le,
      (div_le_one hp).2 (by linarith [Real.pi_pos]),?_⟩
    rw [mul_comm (2*Real.pi) (z.arg/(2*Real.pi)),div_mul_cancel₀ _ hn,harg]

def turnRay (theta : Turns) : Mub6.Vector :=
  Fin.cases (1:ℂ) (fun i => circlePoint (2*Real.pi*theta i))

theorem turnRay_zero (theta : Turns) : turnRay theta 0=1 := rfl

theorem turnRay_succ (theta : Turns) (i : Fin 5) :
    turnRay theta i.succ=circlePoint (2*Real.pi*theta i) := rfl

theorem turnRay_isRawUnitRay (theta : Turns) : Mub6.Numerical.IsRawUnitRay (turnRay theta) := by
  refine ⟨rfl,?_⟩
  intro i
  refine Fin.cases ?_ ?_ i
  · rw [turnRay_zero]
    norm_num
  · intro j
    rw [turnRay_succ]
    exact circlePoint_normSq _

theorem rawUnitRay_exists_turns (z : Mub6.Vector) (hz : Mub6.Numerical.IsRawUnitRay z) :
    ∃theta : Turns,UnitCube theta ∧ turnRay theta=z := by
  let theta : Turns := fun i => unitTurn (z i.succ)
  refine ⟨theta,?_,?_⟩
  · intro i
    have h := unitTurn_spec (z i.succ) (hz.2 _)
    exact ⟨h.1,h.2.1⟩
  · funext i
    refine Fin.cases ?_ ?_ i
    · exact hz.1.symm
    · intro j
      exact (unitTurn_spec (z j.succ) (hz.2 _)).2.2

end Seed0024ClusterTube20261007

#print axioms Seed0024ClusterTube20261007.circlePoint_eq_exp
#print axioms Seed0024ClusterTube20261007.circlePoint_add_two_pi
#print axioms Seed0024ClusterTube20261007.circlePoint_normSq
#print axioms Seed0024ClusterTube20261007.unitTurn_spec
#print axioms Seed0024ClusterTube20261007.turnRay_zero
#print axioms Seed0024ClusterTube20261007.turnRay_succ
#print axioms Seed0024ClusterTube20261007.turnRay_isRawUnitRay
#print axioms Seed0024ClusterTube20261007.rawUnitRay_exists_turns
