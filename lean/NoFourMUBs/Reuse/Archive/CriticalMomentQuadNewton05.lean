import NoFourMUBs.Reuse.Archive.CriticalMomentQuadData
import NoFourMUBs.Reuse.Archive.CriticalMomentQuadNumerals

set_option autoImplicit false
namespace CriticalMomentQuad20261003
open CriticalZeroLight20261003
noncomputable section
variable {F : Type*} [Field F] [CharZero F]
variable {A B : F}

def quadNewton_p1_m2 (D : Data (Quad A B)) : Quad A B := ((D.T * D.Q) - D.VP)

theorem eval_newton_p1_m2 (r : F) (hq : r^2=A+B*r) (D : Data (Quad A B)) :
    eval r (quadNewton_p1_m2 D)=CriticalZeroLight20261003.newton_p1_m2 (evalData r D) := by
  simp only [quadNewton_p1_m2,CriticalZeroLight20261003.newton_p1_m2,evalData,
    eval_add,eval_sub,eval_neg,eval_mul r hq,eval_pow r hq,eval_nat,eval_two,eval_three]

def quadNewton_p1_m3 (D : Data (Quad A B)) : Quad A B := (((D.T * ((D.T * D.Q) - D.VP)) - ((D.Q * D.V) * D.t)) + (D.V * D.s))

theorem eval_newton_p1_m3 (r : F) (hq : r^2=A+B*r) (D : Data (Quad A B)) :
    eval r (quadNewton_p1_m3 D)=CriticalZeroLight20261003.newton_p1_m3 (evalData r D) := by
  simp only [quadNewton_p1_m3,CriticalZeroLight20261003.newton_p1_m3,evalData,
    eval_add,eval_sub,eval_neg,eval_mul r hq,eval_pow r hq,eval_nat,eval_two,eval_three]

def quadNewton_p1_p1 (D : Data (Quad A B)) : Quad A B := ((D.s * D.t) - D.pi)

theorem eval_newton_p1_p1 (r : F) (hq : r^2=A+B*r) (D : Data (Quad A B)) :
    eval r (quadNewton_p1_p1 D)=CriticalZeroLight20261003.newton_p1_p1 (evalData r D) := by
  simp only [quadNewton_p1_p1,CriticalZeroLight20261003.newton_p1_p1,evalData,
    eval_add,eval_sub,eval_neg,eval_mul r hq,eval_pow r hq,eval_nat,eval_two,eval_three]

def quadNewton_p1_p2 (D : Data (Quad A B)) : Quad A B := (((D.t * ((D.s * D.t) - D.pi)) - ((D.s * D.v) * D.T)) + (D.v * D.Q))

theorem eval_newton_p1_p2 (r : F) (hq : r^2=A+B*r) (D : Data (Quad A B)) :
    eval r (quadNewton_p1_p2 D)=CriticalZeroLight20261003.newton_p1_p2 (evalData r D) := by
  simp only [quadNewton_p1_p2,CriticalZeroLight20261003.newton_p1_p2,evalData,
    eval_add,eval_sub,eval_neg,eval_mul r hq,eval_pow r hq,eval_nat,eval_two,eval_three]

end
#print axioms eval_newton_p1_m2
#print axioms eval_newton_p1_m3
#print axioms eval_newton_p1_p1
#print axioms eval_newton_p1_p2
end CriticalMomentQuad20261003
