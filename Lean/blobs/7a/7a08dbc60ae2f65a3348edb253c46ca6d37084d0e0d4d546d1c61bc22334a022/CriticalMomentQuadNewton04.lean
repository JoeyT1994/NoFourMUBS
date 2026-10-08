import CriticalMomentQuadData

set_option autoImplicit false
namespace CriticalMomentQuad20261003
open CriticalZeroLight20261003
noncomputable section
variable {F : Type*} [Field F] [CharZero F]
variable {A B : F}

def quadNewton_p0_m2 (D : Data (Quad A B)) : Quad A B := ((D.T * D.T) - ((D.V * 2) * D.t))

theorem eval_newton_p0_m2 (r : F) (hq : r^2=A+B*r) (D : Data (Quad A B)) :
    eval r (quadNewton_p0_m2 D)=CriticalZeroLight20261003.newton_p0_m2 (evalData r D) := by
  simp only [quadNewton_p0_m2,CriticalZeroLight20261003.newton_p0_m2,evalData,
    eval_add,eval_sub,eval_neg,eval_mul r hq,eval_pow r hq,eval_nat]

def quadNewton_p0_m3 (D : Data (Quad A B)) : Quad A B := (((D.T^3) - (((D.T * 3) * D.V) * D.t)) + (D.V * 3))

theorem eval_newton_p0_m3 (r : F) (hq : r^2=A+B*r) (D : Data (Quad A B)) :
    eval r (quadNewton_p0_m3 D)=CriticalZeroLight20261003.newton_p0_m3 (evalData r D) := by
  simp only [quadNewton_p0_m3,CriticalZeroLight20261003.newton_p0_m3,evalData,
    eval_add,eval_sub,eval_neg,eval_mul r hq,eval_pow r hq,eval_nat]

def quadNewton_p0_p2 (D : Data (Quad A B)) : Quad A B := ((D.t * D.t) - ((D.v * 2) * D.T))

theorem eval_newton_p0_p2 (r : F) (hq : r^2=A+B*r) (D : Data (Quad A B)) :
    eval r (quadNewton_p0_p2 D)=CriticalZeroLight20261003.newton_p0_p2 (evalData r D) := by
  simp only [quadNewton_p0_p2,CriticalZeroLight20261003.newton_p0_p2,evalData,
    eval_add,eval_sub,eval_neg,eval_mul r hq,eval_pow r hq,eval_nat]

def quadNewton_p0_p3 (D : Data (Quad A B)) : Quad A B := (((D.t^3) - (((D.t * 3) * D.v) * D.T)) + (D.v * 3))

theorem eval_newton_p0_p3 (r : F) (hq : r^2=A+B*r) (D : Data (Quad A B)) :
    eval r (quadNewton_p0_p3 D)=CriticalZeroLight20261003.newton_p0_p3 (evalData r D) := by
  simp only [quadNewton_p0_p3,CriticalZeroLight20261003.newton_p0_p3,evalData,
    eval_add,eval_sub,eval_neg,eval_mul r hq,eval_pow r hq,eval_nat]

end
#print axioms eval_newton_p0_m2
#print axioms eval_newton_p0_m3
#print axioms eval_newton_p0_p2
#print axioms eval_newton_p0_p3
end CriticalMomentQuad20261003
