import NoFourMUBs.Reuse.Archive.CriticalMomentQuadNewton00
import NoFourMUBs.Reuse.Archive.CriticalNonzeroQuadSide

set_option autoImplicit false
namespace CriticalNonzeroQuad20261003
open CriticalZeroLight20261003 CriticalMomentQuad20261003 CriticalNonzeroLight20261003
noncomputable section
variable {F : Type*} [Field F] [CharZero F]

/-- Both coefficient functions are independent of the shared r. -/
def pairedQuad_m1_m1 (X Y k : F) : Quad (R2 X Y k) (R1 Y k) :=
  quadNewton_m1_m1 (quadSide X Y k 1)+quadNewton_m1_m1 (quadSide X Y k (-1))

theorem paired_moment_m1_m1 (X Y k r : F) (hY : Y≠0)
    (hq : Y*r^2-J k*r+X*(p k-X-Y)=0) :
    newton_m1_m1 (nonzeroSide X Y k r 1)+newton_m1_m1 (nonzeroSide X Y k r (-1))=
      (pairedQuad_m1_m1 X Y k).a+(pairedQuad_m1_m1 X Y k).b*r := by
  have hr := reciprocal_square X Y k r hY hq
  change _=eval r (pairedQuad_m1_m1 X Y k)
  simp only [pairedQuad_m1_m1,eval_add,eval_newton_m1_m1 r hr,
    eval_quadSide X Y k r 1 hr,eval_quadSide X Y k r (-1) hr]

/-- Both coefficient functions are independent of the shared r. -/
def pairedQuad_m1_m2 (X Y k : F) : Quad (R2 X Y k) (R1 Y k) :=
  quadNewton_m1_m2 (quadSide X Y k 1)+quadNewton_m1_m2 (quadSide X Y k (-1))

theorem paired_moment_m1_m2 (X Y k r : F) (hY : Y≠0)
    (hq : Y*r^2-J k*r+X*(p k-X-Y)=0) :
    newton_m1_m2 (nonzeroSide X Y k r 1)+newton_m1_m2 (nonzeroSide X Y k r (-1))=
      (pairedQuad_m1_m2 X Y k).a+(pairedQuad_m1_m2 X Y k).b*r := by
  have hr := reciprocal_square X Y k r hY hq
  change _=eval r (pairedQuad_m1_m2 X Y k)
  simp only [pairedQuad_m1_m2,eval_add,eval_newton_m1_m2 r hr,
    eval_quadSide X Y k r 1 hr,eval_quadSide X Y k r (-1) hr]

/-- Both coefficient functions are independent of the shared r. -/
def pairedQuad_m1_p2 (X Y k : F) : Quad (R2 X Y k) (R1 Y k) :=
  quadNewton_m1_p2 (quadSide X Y k 1)+quadNewton_m1_p2 (quadSide X Y k (-1))

theorem paired_moment_m1_p2 (X Y k r : F) (hY : Y≠0)
    (hq : Y*r^2-J k*r+X*(p k-X-Y)=0) :
    newton_m1_p2 (nonzeroSide X Y k r 1)+newton_m1_p2 (nonzeroSide X Y k r (-1))=
      (pairedQuad_m1_p2 X Y k).a+(pairedQuad_m1_p2 X Y k).b*r := by
  have hr := reciprocal_square X Y k r hY hq
  change _=eval r (pairedQuad_m1_p2 X Y k)
  simp only [pairedQuad_m1_p2,eval_add,eval_newton_m1_p2 r hr,
    eval_quadSide X Y k r 1 hr,eval_quadSide X Y k r (-1) hr]

/-- Both coefficient functions are independent of the shared r. -/
def pairedQuad_m1_p3 (X Y k : F) : Quad (R2 X Y k) (R1 Y k) :=
  quadNewton_m1_p3 (quadSide X Y k 1)+quadNewton_m1_p3 (quadSide X Y k (-1))

theorem paired_moment_m1_p3 (X Y k r : F) (hY : Y≠0)
    (hq : Y*r^2-J k*r+X*(p k-X-Y)=0) :
    newton_m1_p3 (nonzeroSide X Y k r 1)+newton_m1_p3 (nonzeroSide X Y k r (-1))=
      (pairedQuad_m1_p3 X Y k).a+(pairedQuad_m1_p3 X Y k).b*r := by
  have hr := reciprocal_square X Y k r hY hq
  change _=eval r (pairedQuad_m1_p3 X Y k)
  simp only [pairedQuad_m1_p3,eval_add,eval_newton_m1_p3 r hr,
    eval_quadSide X Y k r 1 hr,eval_quadSide X Y k r (-1) hr]

end
#print axioms paired_moment_m1_m1
#print axioms paired_moment_m1_m2
#print axioms paired_moment_m1_p2
#print axioms paired_moment_m1_p3
end CriticalNonzeroQuad20261003
