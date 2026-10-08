import CriticalMomentQuadData

set_option autoImplicit false
namespace CriticalMomentQuad20261003
open CriticalZeroLight20261003
noncomputable section
variable {F : Type*} [Field F] [CharZero F]
variable {A B : F}

def quadNewton_m2_p2 (D : Data (Quad A B)) : Quad A B := ((D.r * D.r) - ((D.W * 2) * D.Q))

theorem eval_newton_m2_p2 (r : F) (hq : r^2=A+B*r) (D : Data (Quad A B)) :
    eval r (quadNewton_m2_p2 D)=CriticalZeroLight20261003.newton_m2_p2 (evalData r D) := by
  simp only [quadNewton_m2_p2,CriticalZeroLight20261003.newton_m2_p2,evalData,
    eval_add,eval_sub,eval_neg,eval_mul r hq,eval_pow r hq,eval_nat]

def quadNewton_m2_p3 (D : Data (Quad A B)) : Quad A B := (((D.r * ((D.t * D.r) - D.vp)) - ((D.t * D.W) * D.Q)) + (D.W * D.s))

theorem eval_newton_m2_p3 (r : F) (hq : r^2=A+B*r) (D : Data (Quad A B)) :
    eval r (quadNewton_m2_p3 D)=CriticalZeroLight20261003.newton_m2_p3 (evalData r D) := by
  simp only [quadNewton_m2_p3,CriticalZeroLight20261003.newton_m2_p3,evalData,
    eval_add,eval_sub,eval_neg,eval_mul r hq,eval_pow r hq,eval_nat]

def quadNewton_m2_p4 (D : Data (Quad A B)) : Quad A B := ((((D.t * D.r) - D.vp)^2) - (((D.v * 2) * D.W) * ((D.T * D.Q) - D.VP)))

theorem eval_newton_m2_p4 (r : F) (hq : r^2=A+B*r) (D : Data (Quad A B)) :
    eval r (quadNewton_m2_p4 D)=CriticalZeroLight20261003.newton_m2_p4 (evalData r D) := by
  simp only [quadNewton_m2_p4,CriticalZeroLight20261003.newton_m2_p4,evalData,
    eval_add,eval_sub,eval_neg,eval_mul r hq,eval_pow r hq,eval_nat]

def quadNewton_m3_p0 (D : Data (Quad A B)) : Quad A B := (((D.S^3) - (((D.S * 3) * D.U) * D.s)) + (D.U * 3))

theorem eval_newton_m3_p0 (r : F) (hq : r^2=A+B*r) (D : Data (Quad A B)) :
    eval r (quadNewton_m3_p0 D)=CriticalZeroLight20261003.newton_m3_p0 (evalData r D) := by
  simp only [quadNewton_m3_p0,CriticalZeroLight20261003.newton_m3_p0,evalData,
    eval_add,eval_sub,eval_neg,eval_mul r hq,eval_pow r hq,eval_nat]

end
#print axioms eval_newton_m2_p2
#print axioms eval_newton_m2_p3
#print axioms eval_newton_m2_p4
#print axioms eval_newton_m3_p0
end CriticalMomentQuad20261003
