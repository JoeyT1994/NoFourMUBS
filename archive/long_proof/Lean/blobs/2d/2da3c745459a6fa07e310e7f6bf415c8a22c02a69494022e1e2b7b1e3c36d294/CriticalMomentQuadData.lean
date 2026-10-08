import CriticalMomentQuad

set_option autoImplicit false
namespace CriticalMomentQuad20261003
open CriticalZeroLight20261003
noncomputable section
variable {F : Type*} [Field F] [CharZero F]
variable {A B : F}

def evalData (r : F) (D : Data (Quad A B)) : Data F where
  s := eval r D.s
  S := eval r D.S
  t := eval r D.t
  T := eval r D.T
  r := eval r D.r
  Q := eval r D.Q
  u := eval r D.u
  v := eval r D.v
  w := eval r D.w
  U := eval r D.U
  V := eval r D.V
  W := eval r D.W
  pi := eval r D.pi
  PI := eval r D.PI
  up := eval r D.up
  vp := eval r D.vp
  UP := eval r D.UP
  VP := eval r D.VP

def quadReconstructionData (s S t T r Q z l0 l1 l2 b0 b1 b2 : Quad A B) : Data (Quad A B) where
  s := s
  S := S
  t := t
  T := T
  r := r
  Q := Q
  u := l0*b1
  v := l0*b2
  w := l2*b1
  U := l1*b0
  V := l2*b0
  W := l1*b2
  pi := l0*z
  PI := b0*z
  up := b1*z
  vp := b2*z
  UP := l1*z
  VP := l2*z

theorem eval_reconstruction (r : F) (hq : r^2=A+B*r)
    (s S t T rr Q z l0 l1 l2 b0 b1 b2 : Quad A B) :
    evalData r (quadReconstructionData s S t T rr Q z l0 l1 l2 b0 b1 b2)=
      CriticalZeroLight20261003.reconstructionData (eval r s) (eval r S) (eval r t) (eval r T) (eval r rr) (eval r Q) (eval r z) (eval r l0) (eval r l1) (eval r l2) (eval r b0) (eval r b1) (eval r b2) := by
  simp only [evalData,quadReconstructionData,CriticalZeroLight20261003.reconstructionData,
    eval_mul r hq]

end
#print axioms eval_reconstruction
end CriticalMomentQuad20261003
