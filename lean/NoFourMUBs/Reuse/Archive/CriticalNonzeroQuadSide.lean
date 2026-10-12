import NoFourMUBs.Reuse.Archive.CriticalMomentQuadData
import NoFourMUBs.Reuse.Archive.CriticalNonzeroLightData

set_option autoImplicit false
namespace CriticalNonzeroQuad20261003
open CriticalZeroLight20261003 CriticalMomentQuad20261003
open CriticalNonzeroLight20261003
noncomputable section
variable {F : Type*} [Field F] [CharZero F]

def R2 (X Y k : F) : F := -X*(p k-X-Y)/Y
def R1 (Y k : F) : F := J k/Y

/-- Literal execution of the external side constructor in its two-component
algebra. Its coefficients depend on X,Y,k and the side sign, never on r. -/
def quadSide (X Y k sign : F) : Data (Quad (R2 X Y k) (R1 Y k)) :=
  let Z := p k-X-Y
  let s : Quad (R2 X Y k) (R1 Y k) := scalar sign
  let S := scalar (sign*X)
  let t := scalar sign
  let T := scalar (sign*Y)
  let rr := scalar sign*root
  let Q := scalar sign*divScalar (scalar (J k)-root*scalar Y) X
  let z := scalar (sheet k sign)
  let L0 := pole k sign Z
  let L1 := pole k sign Y
  let L2 := pole k sign X
  quadReconstructionData s S t T rr Q z
    (divScalar (rr*s^2+Q*t^2+s*t*scalar (3-Z)) L0)
    (divScalar (t*S^2+rr^2*T+rr*S*scalar (3-Y)) L1)
    (divScalar (s*T^2+Q^2*S+Q*T*scalar (3-X)) L2)
    (divScalar (Q*S^2+rr*T^2+S*T*scalar (3-Z)) L0)
    (divScalar (T*s^2+Q^2*t+Q*s*scalar (3-Y)) L1)
    (divScalar (S*t^2+rr^2*s+rr*t*scalar (3-X)) L2)

theorem reciprocal_square (X Y k r : F) (hY : Y≠0)
    (hq : Y*r^2-J k*r+X*(p k-X-Y)=0) :
    r^2=R2 X Y k+R1 Y k*r := by
  dsimp only [R2,R1]
  rw [div_mul_eq_mul_div,← add_div]
  apply (eq_div_iff hY).mpr
  linear_combination hq

/-- Evaluation recovers every field of the original side constructor. This
is an algebraic identity of total field expressions; recovering physical
sides still uses the explicit nonpole guards in the separate actual bridge. -/
theorem eval_quadSide (X Y k r sign : F)
    (hq : r^2=R2 X Y k+R1 Y k*r) :
    evalData r (quadSide X Y k sign)=nonzeroSide X Y k r sign := by
  unfold quadSide
  rw [eval_reconstruction r hq]
  simp only [eval_scalar,eval_root,eval_add,eval_sub,eval_neg,eval_mul r hq,
    eval_pow r hq,eval_divScalar,eval_nat,nonzeroSide]

end
#print axioms reciprocal_square
#print axioms eval_quadSide
end CriticalNonzeroQuad20261003
