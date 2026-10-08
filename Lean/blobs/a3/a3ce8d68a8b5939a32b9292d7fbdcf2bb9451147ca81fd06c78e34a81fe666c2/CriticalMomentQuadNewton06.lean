import CriticalMomentQuadData
import CriticalMomentQuadNumerals

set_option autoImplicit false
namespace CriticalMomentQuad20261003
open CriticalZeroLight20261003
noncomputable section
variable {F : Type*} [Field F] [CharZero F]
variable {A B : F}

def quadNewton_p2_m1 (D : Data (Quad A B)) : Quad A B := ((D.s * D.Q) - D.up)

theorem eval_newton_p2_m1 (r : F) (hq : r^2=A+B*r) (D : Data (Quad A B)) :
    eval r (quadNewton_p2_m1 D)=CriticalZeroLight20261003.newton_p2_m1 (evalData r D) := by
  simp only [quadNewton_p2_m1,CriticalZeroLight20261003.newton_p2_m1,evalData,
    eval_add,eval_sub,eval_neg,eval_mul r hq,eval_pow r hq,eval_nat,eval_two,eval_three]

def quadNewton_p2_m2 (D : Data (Quad A B)) : Quad A B := ((D.Q * D.Q) - ((D.w * 2) * D.r))

theorem eval_newton_p2_m2 (r : F) (hq : r^2=A+B*r) (D : Data (Quad A B)) :
    eval r (quadNewton_p2_m2 D)=CriticalZeroLight20261003.newton_p2_m2 (evalData r D) := by
  simp only [quadNewton_p2_m2,CriticalZeroLight20261003.newton_p2_m2,evalData,
    eval_add,eval_sub,eval_neg,eval_mul r hq,eval_pow r hq,eval_nat,eval_two,eval_three]

def quadNewton_p2_m3 (D : Data (Quad A B)) : Quad A B := (((D.Q * ((D.T * D.Q) - D.VP)) - ((D.T * D.w) * D.r)) + (D.w * D.S))

theorem eval_newton_p2_m3 (r : F) (hq : r^2=A+B*r) (D : Data (Quad A B)) :
    eval r (quadNewton_p2_m3 D)=CriticalZeroLight20261003.newton_p2_m3 (evalData r D) := by
  simp only [quadNewton_p2_m3,CriticalZeroLight20261003.newton_p2_m3,evalData,
    eval_add,eval_sub,eval_neg,eval_mul r hq,eval_pow r hq,eval_nat,eval_two,eval_three]

def quadNewton_p2_m4 (D : Data (Quad A B)) : Quad A B := ((((D.T * D.Q) - D.VP)^2) - (((D.V * 2) * D.w) * ((D.t * D.r) - D.vp)))

theorem eval_newton_p2_m4 (r : F) (hq : r^2=A+B*r) (D : Data (Quad A B)) :
    eval r (quadNewton_p2_m4 D)=CriticalZeroLight20261003.newton_p2_m4 (evalData r D) := by
  simp only [quadNewton_p2_m4,CriticalZeroLight20261003.newton_p2_m4,evalData,
    eval_add,eval_sub,eval_neg,eval_mul r hq,eval_pow r hq,eval_nat,eval_two,eval_three]

end
#print axioms eval_newton_p2_m1
#print axioms eval_newton_p2_m2
#print axioms eval_newton_p2_m3
#print axioms eval_newton_p2_m4
end CriticalMomentQuad20261003
