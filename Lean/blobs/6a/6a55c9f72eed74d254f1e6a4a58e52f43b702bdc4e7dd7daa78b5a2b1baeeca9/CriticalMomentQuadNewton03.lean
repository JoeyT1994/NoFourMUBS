import CriticalMomentQuadData
import CriticalMomentQuadNumerals

set_option autoImplicit false
namespace CriticalMomentQuad20261003
open CriticalZeroLight20261003
noncomputable section
variable {F : Type*} [Field F] [CharZero F]
variable {A B : F}

def quadNewton_m3_p1 (D : Data (Quad A B)) : Quad A B := (((D.S * ((D.S * D.r) - D.UP)) - ((D.r * D.U) * D.s)) + (D.U * D.t))

theorem eval_newton_m3_p1 (r : F) (hq : r^2=A+B*r) (D : Data (Quad A B)) :
    eval r (quadNewton_m3_p1 D)=CriticalZeroLight20261003.newton_m3_p1 (evalData r D) := by
  simp only [quadNewton_m3_p1,CriticalZeroLight20261003.newton_m3_p1,evalData,
    eval_add,eval_sub,eval_neg,eval_mul r hq,eval_pow r hq,eval_nat,eval_two,eval_three]

def quadNewton_m3_p2 (D : Data (Quad A B)) : Quad A B := (((D.r * ((D.S * D.r) - D.UP)) - ((D.S * D.W) * D.Q)) + (D.W * D.T))

theorem eval_newton_m3_p2 (r : F) (hq : r^2=A+B*r) (D : Data (Quad A B)) :
    eval r (quadNewton_m3_p2 D)=CriticalZeroLight20261003.newton_m3_p2 (evalData r D) := by
  simp only [quadNewton_m3_p2,CriticalZeroLight20261003.newton_m3_p2,evalData,
    eval_add,eval_sub,eval_neg,eval_mul r hq,eval_pow r hq,eval_nat,eval_two,eval_three]

def quadNewton_m3_p3 (D : Data (Quad A B)) : Quad A B := (((D.r^3) - (((D.r * 3) * D.W) * D.Q)) + (D.W * 3))

theorem eval_newton_m3_p3 (r : F) (hq : r^2=A+B*r) (D : Data (Quad A B)) :
    eval r (quadNewton_m3_p3 D)=CriticalZeroLight20261003.newton_m3_p3 (evalData r D) := by
  simp only [quadNewton_m3_p3,CriticalZeroLight20261003.newton_m3_p3,evalData,
    eval_add,eval_sub,eval_neg,eval_mul r hq,eval_pow r hq,eval_nat,eval_two,eval_three]

def quadNewton_m4_p2 (D : Data (Quad A B)) : Quad A B := ((((D.S * D.r) - D.UP)^2) - (((D.U * 2) * D.W) * ((D.s * D.Q) - D.up)))

theorem eval_newton_m4_p2 (r : F) (hq : r^2=A+B*r) (D : Data (Quad A B)) :
    eval r (quadNewton_m4_p2 D)=CriticalZeroLight20261003.newton_m4_p2 (evalData r D) := by
  simp only [quadNewton_m4_p2,CriticalZeroLight20261003.newton_m4_p2,evalData,
    eval_add,eval_sub,eval_neg,eval_mul r hq,eval_pow r hq,eval_nat,eval_two,eval_three]

end
#print axioms eval_newton_m3_p1
#print axioms eval_newton_m3_p2
#print axioms eval_newton_m3_p3
#print axioms eval_newton_m4_p2
end CriticalMomentQuad20261003
