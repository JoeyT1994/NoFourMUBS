import CriticalMomentQuadData

set_option autoImplicit false
namespace CriticalMomentQuad20261003
open CriticalZeroLight20261003
noncomputable section
variable {F : Type*} [Field F] [CharZero F]
variable {A B : F}

def quadNewton_m2_m1 (D : Data (Quad A B)) : Quad A B := (((D.S * ((D.S * D.T) - D.PI)) - ((D.T * D.U) * D.s)) + (D.U * D.Q))

theorem eval_newton_m2_m1 (r : F) (hq : r^2=A+B*r) (D : Data (Quad A B)) :
    eval r (quadNewton_m2_m1 D)=CriticalZeroLight20261003.newton_m2_m1 (evalData r D) := by
  simp only [quadNewton_m2_m1,CriticalZeroLight20261003.newton_m2_m1,evalData,
    eval_add,eval_sub,eval_neg,eval_mul r hq,eval_pow r hq,eval_nat]

def quadNewton_m2_m2 (D : Data (Quad A B)) : Quad A B := ((((D.S * D.T) - D.PI)^2) - (((D.U * 2) * D.V) * ((D.s * D.t) - D.pi)))

theorem eval_newton_m2_m2 (r : F) (hq : r^2=A+B*r) (D : Data (Quad A B)) :
    eval r (quadNewton_m2_m2 D)=CriticalZeroLight20261003.newton_m2_m2 (evalData r D) := by
  simp only [quadNewton_m2_m2,CriticalZeroLight20261003.newton_m2_m2,evalData,
    eval_add,eval_sub,eval_neg,eval_mul r hq,eval_pow r hq,eval_nat]

def quadNewton_m2_p0 (D : Data (Quad A B)) : Quad A B := ((D.S * D.S) - ((D.U * 2) * D.s))

theorem eval_newton_m2_p0 (r : F) (hq : r^2=A+B*r) (D : Data (Quad A B)) :
    eval r (quadNewton_m2_p0 D)=CriticalZeroLight20261003.newton_m2_p0 (evalData r D) := by
  simp only [quadNewton_m2_p0,CriticalZeroLight20261003.newton_m2_p0,evalData,
    eval_add,eval_sub,eval_neg,eval_mul r hq,eval_pow r hq,eval_nat]

def quadNewton_m2_p1 (D : Data (Quad A B)) : Quad A B := ((D.S * D.r) - D.UP)

theorem eval_newton_m2_p1 (r : F) (hq : r^2=A+B*r) (D : Data (Quad A B)) :
    eval r (quadNewton_m2_p1 D)=CriticalZeroLight20261003.newton_m2_p1 (evalData r D) := by
  simp only [quadNewton_m2_p1,CriticalZeroLight20261003.newton_m2_p1,evalData,
    eval_add,eval_sub,eval_neg,eval_mul r hq,eval_pow r hq,eval_nat]

end
#print axioms eval_newton_m2_m1
#print axioms eval_newton_m2_m2
#print axioms eval_newton_m2_p0
#print axioms eval_newton_m2_p1
end CriticalMomentQuad20261003
