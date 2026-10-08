import CriticalMomentQuadData
import CriticalMomentQuadNumerals

set_option autoImplicit false
namespace CriticalMomentQuad20261003
open CriticalZeroLight20261003
noncomputable section
variable {F : Type*} [Field F] [CharZero F]
variable {A B : F}

def quadNewton_p2_p0 (D : Data (Quad A B)) : Quad A B := ((D.s * D.s) - ((D.u * 2) * D.S))

theorem eval_newton_p2_p0 (r : F) (hq : r^2=A+B*r) (D : Data (Quad A B)) :
    eval r (quadNewton_p2_p0 D)=CriticalZeroLight20261003.newton_p2_p0 (evalData r D) := by
  simp only [quadNewton_p2_p0,CriticalZeroLight20261003.newton_p2_p0,evalData,
    eval_add,eval_sub,eval_neg,eval_mul r hq,eval_pow r hq,eval_nat,eval_two,eval_three]

def quadNewton_p2_p1 (D : Data (Quad A B)) : Quad A B := (((D.s * ((D.s * D.t) - D.pi)) - ((D.t * D.u) * D.S)) + (D.u * D.r))

theorem eval_newton_p2_p1 (r : F) (hq : r^2=A+B*r) (D : Data (Quad A B)) :
    eval r (quadNewton_p2_p1 D)=CriticalZeroLight20261003.newton_p2_p1 (evalData r D) := by
  simp only [quadNewton_p2_p1,CriticalZeroLight20261003.newton_p2_p1,evalData,
    eval_add,eval_sub,eval_neg,eval_mul r hq,eval_pow r hq,eval_nat,eval_two,eval_three]

def quadNewton_p2_p2 (D : Data (Quad A B)) : Quad A B := ((((D.s * D.t) - D.pi)^2) - (((D.u * 2) * D.v) * ((D.S * D.T) - D.PI)))

theorem eval_newton_p2_p2 (r : F) (hq : r^2=A+B*r) (D : Data (Quad A B)) :
    eval r (quadNewton_p2_p2 D)=CriticalZeroLight20261003.newton_p2_p2 (evalData r D) := by
  simp only [quadNewton_p2_p2,CriticalZeroLight20261003.newton_p2_p2,evalData,
    eval_add,eval_sub,eval_neg,eval_mul r hq,eval_pow r hq,eval_nat,eval_two,eval_three]

def quadNewton_p3_m1 (D : Data (Quad A B)) : Quad A B := (((D.s * ((D.s * D.Q) - D.up)) - ((D.Q * D.u) * D.S)) + (D.u * D.T))

theorem eval_newton_p3_m1 (r : F) (hq : r^2=A+B*r) (D : Data (Quad A B)) :
    eval r (quadNewton_p3_m1 D)=CriticalZeroLight20261003.newton_p3_m1 (evalData r D) := by
  simp only [quadNewton_p3_m1,CriticalZeroLight20261003.newton_p3_m1,evalData,
    eval_add,eval_sub,eval_neg,eval_mul r hq,eval_pow r hq,eval_nat,eval_two,eval_three]

end
#print axioms eval_newton_p2_p0
#print axioms eval_newton_p2_p1
#print axioms eval_newton_p2_p2
#print axioms eval_newton_p3_m1
end CriticalMomentQuad20261003
