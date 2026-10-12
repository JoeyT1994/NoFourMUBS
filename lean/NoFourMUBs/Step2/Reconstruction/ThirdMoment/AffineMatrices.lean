import NoFourMUBs.Step2.Reconstruction.ThirdMoment.SideMatrices
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.IntrinsicAffine

set_option autoImplicit false
set_option maxHeartbeats 1500000
open Matrix Hadamard6
open StrictReconstruction20261007 StrictReconstruction20261007.SideIntrinsic
open Centiradian20261006
open scoped ComplexConjugate

noncomputable section
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment

/-- The constant and linear matrices are exactly those in the saved direct proof. -/
def oneConstant (s t r g chi eta c0 c1 P0 Q1 : ℂ) : Mat3 :=
  !![conj s, conj s^2 - 2*s*productAffine g chi eta c0 c1 P0 Q1 0,
      conj s*conj t - permanentAffine g chi eta c0 P0 0;
    3, conj s, conj t;
    r, conj s*r - mixedAffine g eta c1 Q1 0, conj s]

def oneLinear (s g c0 c1 P0 Q1 : ℂ) : Mat3 :=
  !![0, -2*s*(g*(c0-c1)/(P0*Q1)), g/P0;
    0, 0, 0;
    0, -g/Q1, 0]

def twoConstant (s t r g chi eta c0 c2 P0 Q2 : ℂ) : Mat3 :=
  !![conj t, conj s*conj t - permanentAffine g chi eta c0 P0 0,
      conj t^2 - 2*t*productAffine g chi eta c0 c2 P0 Q2 0;
    conj r, conj t, conj t*conj r - mixedAffine g eta c2 Q2 0;
    3, conj s, conj t]

def twoLinear (t g c0 c2 P0 Q2 : ℂ) : Mat3 :=
  !![0, g/P0, -2*t*(g*(c0-c2)/(P0*Q2));
    0, 0, -g/Q2;
    0, 0, 0]

/-- Bind both affine matrix formulas to every actual strict unit side. -/
theorem thirdMoment_intrinsic_affine (a : Rows ℂ) (ha : UnitRows a)
    (hR : 0 < gramInvariant (rowS a) (rowT a) (rowR a)) :
    let s := rowS a
    let t := rowT a
    let r := rowR a
    let g : ℂ := gramG s t r
    let chi : ℂ := gramChi s t r
    let eta : ℂ := gramEta s t r
    let c0 : ℂ := (9 - Complex.normSq r : ℝ)
    let c1 : ℂ := (9 - Complex.normSq t : ℝ)
    let c2 : ℂ := (9 - Complex.normSq s : ℝ)
    let P0 := sideP0 s t r
    let Q1 := conj (sideP1 s t r)
    let Q2 := conj (sideP2 s t r)
    thirdMoment (phaseSide a) 1 =
      oneConstant s t r g chi eta c0 c1 P0 Q1 +
        intrinsicTheta a • oneLinear s g c0 c1 P0 Q1 ∧
    thirdMoment (phaseSide a) 2 =
      twoConstant s t r g chi eta c0 c2 P0 Q2 +
        intrinsicTheta a • twoLinear t g c0 c2 P0 Q2 := by
  dsimp only
  obtain ⟨hu,hv,hp,hm1,hm2⟩ := intrinsic_affine_moments a ha hR
  constructor
  · rw [thirdMoment_phase_one a ha,hm1,hu,hp]
    ext i j
    fin_cases i <;> fin_cases j <;>
      simp only [oneConstant,oneLinear,Matrix.add_apply,Matrix.smul_apply,
        smul_eq_mul,Matrix.of_apply,Matrix.cons_val_zero',Matrix.cons_val_succ',
        Matrix.cons_val_zero,Matrix.cons_val_one,Matrix.cons_val_two,
        Matrix.head_cons,Matrix.tail_cons,productAffine,permanentAffine,mixedAffine,
        div_eq_mul_inv] <;> ring
  · rw [thirdMoment_phase_two a ha,hm2,hv,hp]
    ext i j
    fin_cases i <;> fin_cases j <;>
      simp only [twoConstant,twoLinear,Matrix.add_apply,Matrix.smul_apply,
        smul_eq_mul,Matrix.of_apply,Matrix.cons_val_zero',Matrix.cons_val_succ',
        Matrix.cons_val_zero,Matrix.cons_val_one,Matrix.cons_val_two,
        Matrix.head_cons,Matrix.tail_cons,productAffine,permanentAffine,mixedAffine,
        div_eq_mul_inv] <;> ring

end NoFourMUBs.Step2.Reconstruction.ThirdMoment
