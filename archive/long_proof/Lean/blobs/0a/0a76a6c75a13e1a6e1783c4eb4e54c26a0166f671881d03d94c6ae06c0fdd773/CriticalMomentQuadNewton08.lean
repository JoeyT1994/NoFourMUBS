import CriticalMomentQuadData

set_option autoImplicit false
namespace CriticalMomentQuad20261003
open CriticalZeroLight20261003
noncomputable section
variable {F : Type*} [Field F] [CharZero F]
variable {A B : F}

def quadNewton_p3_m2 (D : Data (Quad A B)) : Quad A B := (((D.Q * ((D.s * D.Q) - D.up)) - ((D.s * D.w) * D.r)) + (D.w * D.t))

theorem eval_newton_p3_m2 (r : F) (hq : r^2=A+B*r) (D : Data (Quad A B)) :
    eval r (quadNewton_p3_m2 D)=CriticalZeroLight20261003.newton_p3_m2 (evalData r D) := by
  simp only [quadNewton_p3_m2,CriticalZeroLight20261003.newton_p3_m2,evalData,
    eval_add,eval_sub,eval_neg,eval_mul r hq,eval_pow r hq,eval_nat]

def quadNewton_p3_m3 (D : Data (Quad A B)) : Quad A B := (((D.Q^3) - (((D.Q * 3) * D.w) * D.r)) + (D.w * 3))

theorem eval_newton_p3_m3 (r : F) (hq : r^2=A+B*r) (D : Data (Quad A B)) :
    eval r (quadNewton_p3_m3 D)=CriticalZeroLight20261003.newton_p3_m3 (evalData r D) := by
  simp only [quadNewton_p3_m3,CriticalZeroLight20261003.newton_p3_m3,evalData,
    eval_add,eval_sub,eval_neg,eval_mul r hq,eval_pow r hq,eval_nat]

def quadNewton_p3_p0 (D : Data (Quad A B)) : Quad A B := (((D.s^3) - (((D.s * 3) * D.u) * D.S)) + (D.u * 3))

theorem eval_newton_p3_p0 (r : F) (hq : r^2=A+B*r) (D : Data (Quad A B)) :
    eval r (quadNewton_p3_p0 D)=CriticalZeroLight20261003.newton_p3_p0 (evalData r D) := by
  simp only [quadNewton_p3_p0,CriticalZeroLight20261003.newton_p3_p0,evalData,
    eval_add,eval_sub,eval_neg,eval_mul r hq,eval_pow r hq,eval_nat]

def quadNewton_p4_m2 (D : Data (Quad A B)) : Quad A B := ((((D.s * D.Q) - D.up)^2) - (((D.u * 2) * D.w) * ((D.S * D.r) - D.UP)))

theorem eval_newton_p4_m2 (r : F) (hq : r^2=A+B*r) (D : Data (Quad A B)) :
    eval r (quadNewton_p4_m2 D)=CriticalZeroLight20261003.newton_p4_m2 (evalData r D) := by
  simp only [quadNewton_p4_m2,CriticalZeroLight20261003.newton_p4_m2,evalData,
    eval_add,eval_sub,eval_neg,eval_mul r hq,eval_pow r hq,eval_nat]

end
#print axioms eval_newton_p3_m2
#print axioms eval_newton_p3_m3
#print axioms eval_newton_p3_p0
#print axioms eval_newton_p4_m2
end CriticalMomentQuad20261003
