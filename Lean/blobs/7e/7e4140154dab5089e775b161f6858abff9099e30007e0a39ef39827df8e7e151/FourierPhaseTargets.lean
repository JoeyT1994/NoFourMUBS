import UnitRayTurns
import PhaseVariation
import ZeroLatticeF6

/-! The supplier's six shifted phase sums are exactly the six overlaps
with the positive-exponent, unnormalized Fourier matrix. Conjugation in
rawOverlap supplies the minus sign in the Fourier target. -/
noncomputable section
open Seed0024ClusterTubeCover20261007 Seed0024Mathematical20261007

namespace Seed0024ClusterTube20261007

theorem circlePoint_zero : circlePoint 0=(1:ℂ) := by
  apply Complex.ext <;> simp [circlePoint]

theorem star_circlePoint_mul (a b : ℝ) :
    star (circlePoint a)*circlePoint b=circlePoint (b-a) := by
  apply Complex.ext <;>
    simp [circlePoint,Complex.star_def,Real.cos_sub,Real.sin_sub] <;> ring

theorem explicitF6_eq_circlePoint (r k : Fin 6) :
    explicitF6 r k=circlePoint (((r.val*k.val:ℕ):ℝ)*Real.pi/3) := by
  simp only [explicitF6,phaseSix,cis,circlePoint,Int.cast_natCast]

theorem explicitF6_row_zero (k : Fin 6) : explicitF6 0 k=1 := by
  rw [explicitF6_eq_circlePoint]
  simp only [Fin.val_zero,Nat.zero_mul,Nat.cast_zero,zero_mul,zero_div,circlePoint_zero]

def fourierTarget (theta : Turns) (k : Fin 6) (i : Fin 5) : ℝ :=
  2*Real.pi*theta i-(((i.succ.val*k.val:ℕ):ℝ)*Real.pi/3)

theorem turnRay_fourier_overlap (theta : Turns) (k : Fin 6) :
    Mub6.Numerical.rawOverlap (fun r => explicitF6 r k) (turnRay theta)=
      phaseSum (fourierTarget theta k) := by
  unfold Mub6.Numerical.rawOverlap
  rw [Fin.sum_univ_succ]
  rw [explicitF6_row_zero,turnRay_zero]
  simp only [star_one,mul_one]
  change 1+(∑ i : Fin 5,star (explicitF6 i.succ k)*turnRay theta i.succ)=
    1+∑ i : Fin 5,circlePoint (fourierTarget theta k i)
  congr 1
  apply Finset.sum_congr rfl
  intro i _
  rw [explicitF6_eq_circlePoint,turnRay_succ,star_circlePoint_mul]
  rfl

theorem fourierTarget_zero (theta : Turns) (i : Fin 5) :
    fourierTarget theta 0 i=2*Real.pi*theta i := by
  simp only [fourierTarget,Fin.val_zero,Nat.mul_zero,Nat.cast_zero,
    zero_mul,zero_div,sub_zero]

end Seed0024ClusterTube20261007

#print axioms Seed0024ClusterTube20261007.circlePoint_zero
#print axioms Seed0024ClusterTube20261007.star_circlePoint_mul
#print axioms Seed0024ClusterTube20261007.explicitF6_eq_circlePoint
#print axioms Seed0024ClusterTube20261007.explicitF6_row_zero
#print axioms Seed0024ClusterTube20261007.turnRay_fourier_overlap
#print axioms Seed0024ClusterTube20261007.fourierTarget_zero
