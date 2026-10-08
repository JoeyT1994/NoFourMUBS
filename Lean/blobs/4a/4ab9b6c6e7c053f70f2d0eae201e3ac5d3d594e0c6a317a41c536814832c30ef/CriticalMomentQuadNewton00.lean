import CriticalMomentQuadData

set_option autoImplicit false
namespace CriticalMomentQuad20261003
open CriticalZeroLight20261003
noncomputable section
variable {F : Type*} [Field F] [CharZero F]
variable {A B : F}

def quadNewton_m1_m1 (D : Data (Quad A B)) : Quad A B := ((D.S * D.T) - D.PI)

theorem eval_newton_m1_m1 (r : F) (hq : r^2=A+B*r) (D : Data (Quad A B)) :
    eval r (quadNewton_m1_m1 D)=CriticalZeroLight20261003.newton_m1_m1 (evalData r D) := by
  simp only [quadNewton_m1_m1,CriticalZeroLight20261003.newton_m1_m1,evalData,
    eval_add,eval_sub,eval_neg,eval_mul r hq,eval_pow r hq,eval_nat]

def quadNewton_m1_m2 (D : Data (Quad A B)) : Quad A B := (((D.T * ((D.S * D.T) - D.PI)) - ((D.S * D.V) * D.t)) + (D.V * D.r))

theorem eval_newton_m1_m2 (r : F) (hq : r^2=A+B*r) (D : Data (Quad A B)) :
    eval r (quadNewton_m1_m2 D)=CriticalZeroLight20261003.newton_m1_m2 (evalData r D) := by
  simp only [quadNewton_m1_m2,CriticalZeroLight20261003.newton_m1_m2,evalData,
    eval_add,eval_sub,eval_neg,eval_mul r hq,eval_pow r hq,eval_nat]

def quadNewton_m1_p2 (D : Data (Quad A B)) : Quad A B := ((D.t * D.r) - D.vp)

theorem eval_newton_m1_p2 (r : F) (hq : r^2=A+B*r) (D : Data (Quad A B)) :
    eval r (quadNewton_m1_p2 D)=CriticalZeroLight20261003.newton_m1_p2 (evalData r D) := by
  simp only [quadNewton_m1_p2,CriticalZeroLight20261003.newton_m1_p2,evalData,
    eval_add,eval_sub,eval_neg,eval_mul r hq,eval_pow r hq,eval_nat]

def quadNewton_m1_p3 (D : Data (Quad A B)) : Quad A B := (((D.t * ((D.t * D.r) - D.vp)) - ((D.r * D.v) * D.T)) + (D.v * D.S))

theorem eval_newton_m1_p3 (r : F) (hq : r^2=A+B*r) (D : Data (Quad A B)) :
    eval r (quadNewton_m1_p3 D)=CriticalZeroLight20261003.newton_m1_p3 (evalData r D) := by
  simp only [quadNewton_m1_p3,CriticalZeroLight20261003.newton_m1_p3,evalData,
    eval_add,eval_sub,eval_neg,eval_mul r hq,eval_pow r hq,eval_nat]

end
#print axioms eval_newton_m1_m1
#print axioms eval_newton_m1_m2
#print axioms eval_newton_m1_p2
#print axioms eval_newton_m1_p3
end CriticalMomentQuad20261003
