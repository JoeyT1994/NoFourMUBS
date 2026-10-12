import NoFourMUBs.Reuse.Archive.CriticalNonzeroPairComplex00
import NoFourMUBs.Reuse.Archive.CriticalNonzeroPairComplex01
import NoFourMUBs.Reuse.Archive.CriticalNonzeroPairComplex02
import NoFourMUBs.Reuse.Archive.CriticalNonzeroPairComplex03
import NoFourMUBs.Reuse.Archive.CriticalNonzeroPairComplex04
import NoFourMUBs.Reuse.Archive.CriticalNonzeroPairComplex05
import NoFourMUBs.Reuse.Archive.CriticalNonzeroPairComplex06
import NoFourMUBs.Reuse.Archive.CriticalNonzeroPairComplex07
import NoFourMUBs.Reuse.Archive.CriticalNonzeroPairComplex08

set_option autoImplicit false
namespace CriticalNonzeroMoments20261003
open CriticalNewton20261003 CriticalNonzeroRational20261003
open CriticalMomentQuad20261003 CriticalNonzeroQuad20261003
noncomputable section

/-- Exactly the 36 distinct Newton moments present in the literal 66-term sum. -/
inductive MomentTag where
  | m1_m1
  | m1_m2
  | m1_p2
  | m1_p3
  | m2_m1
  | m2_m2
  | m2_p0
  | m2_p1
  | m2_p2
  | m2_p3
  | m2_p4
  | m3_p0
  | m3_p1
  | m3_p2
  | m3_p3
  | m4_p2
  | p0_m2
  | p0_m3
  | p0_p2
  | p0_p3
  | p1_m2
  | p1_m3
  | p1_p1
  | p1_p2
  | p2_m1
  | p2_m2
  | p2_m3
  | p2_m4
  | p2_p0
  | p2_p1
  | p2_p2
  | p3_m1
  | p3_m2
  | p3_m3
  | p3_p0
  | p4_m2

def momentValue : MomentTag → CriticalNewton20261003.Data → ℂ
  | .m1_m1, D => newton_m1_m1 D
  | .m1_m2, D => newton_m1_m2 D
  | .m1_p2, D => newton_m1_p2 D
  | .m1_p3, D => newton_m1_p3 D
  | .m2_m1, D => newton_m2_m1 D
  | .m2_m2, D => newton_m2_m2 D
  | .m2_p0, D => newton_m2_p0 D
  | .m2_p1, D => newton_m2_p1 D
  | .m2_p2, D => newton_m2_p2 D
  | .m2_p3, D => newton_m2_p3 D
  | .m2_p4, D => newton_m2_p4 D
  | .m3_p0, D => newton_m3_p0 D
  | .m3_p1, D => newton_m3_p1 D
  | .m3_p2, D => newton_m3_p2 D
  | .m3_p3, D => newton_m3_p3 D
  | .m4_p2, D => newton_m4_p2 D
  | .p0_m2, D => newton_p0_m2 D
  | .p0_m3, D => newton_p0_m3 D
  | .p0_p2, D => newton_p0_p2 D
  | .p0_p3, D => newton_p0_p3 D
  | .p1_m2, D => newton_p1_m2 D
  | .p1_m3, D => newton_p1_m3 D
  | .p1_p1, D => newton_p1_p1 D
  | .p1_p2, D => newton_p1_p2 D
  | .p2_m1, D => newton_p2_m1 D
  | .p2_m2, D => newton_p2_m2 D
  | .p2_m3, D => newton_p2_m3 D
  | .p2_m4, D => newton_p2_m4 D
  | .p2_p0, D => newton_p2_p0 D
  | .p2_p1, D => newton_p2_p1 D
  | .p2_p2, D => newton_p2_p2 D
  | .p3_m1, D => newton_p3_m1 D
  | .p3_m2, D => newton_p3_m2 D
  | .p3_m3, D => newton_p3_m3 D
  | .p3_p0, D => newton_p3_p0 D
  | .p4_m2, D => newton_p4_m2 D

/-- The two coefficient functions have no shared-correlation argument. -/
def pairedCoefficient (m : MomentTag) (X Y k : ℂ) : Quad (R2 X Y k) (R1 Y k) :=
  match m with
  | .m1_m1 => pairedQuad_m1_m1 X Y k
  | .m1_m2 => pairedQuad_m1_m2 X Y k
  | .m1_p2 => pairedQuad_m1_p2 X Y k
  | .m1_p3 => pairedQuad_m1_p3 X Y k
  | .m2_m1 => pairedQuad_m2_m1 X Y k
  | .m2_m2 => pairedQuad_m2_m2 X Y k
  | .m2_p0 => pairedQuad_m2_p0 X Y k
  | .m2_p1 => pairedQuad_m2_p1 X Y k
  | .m2_p2 => pairedQuad_m2_p2 X Y k
  | .m2_p3 => pairedQuad_m2_p3 X Y k
  | .m2_p4 => pairedQuad_m2_p4 X Y k
  | .m3_p0 => pairedQuad_m3_p0 X Y k
  | .m3_p1 => pairedQuad_m3_p1 X Y k
  | .m3_p2 => pairedQuad_m3_p2 X Y k
  | .m3_p3 => pairedQuad_m3_p3 X Y k
  | .m4_p2 => pairedQuad_m4_p2 X Y k
  | .p0_m2 => pairedQuad_p0_m2 X Y k
  | .p0_m3 => pairedQuad_p0_m3 X Y k
  | .p0_p2 => pairedQuad_p0_p2 X Y k
  | .p0_p3 => pairedQuad_p0_p3 X Y k
  | .p1_m2 => pairedQuad_p1_m2 X Y k
  | .p1_m3 => pairedQuad_p1_m3 X Y k
  | .p1_p1 => pairedQuad_p1_p1 X Y k
  | .p1_p2 => pairedQuad_p1_p2 X Y k
  | .p2_m1 => pairedQuad_p2_m1 X Y k
  | .p2_m2 => pairedQuad_p2_m2 X Y k
  | .p2_m3 => pairedQuad_p2_m3 X Y k
  | .p2_m4 => pairedQuad_p2_m4 X Y k
  | .p2_p0 => pairedQuad_p2_p0 X Y k
  | .p2_p1 => pairedQuad_p2_p1 X Y k
  | .p2_p2 => pairedQuad_p2_p2 X Y k
  | .p3_m1 => pairedQuad_p3_m1 X Y k
  | .p3_m2 => pairedQuad_p3_m2 X Y k
  | .p3_m3 => pairedQuad_p3_m3 X Y k
  | .p3_p0 => pairedQuad_p3_p0 X Y k
  | .p4_m2 => pairedQuad_p4_m2 X Y k

/-- All 36 paired moments of the original complex reconstruction, with every
algebraic hypothesis explicit. No cancellation of a side pole is performed. -/
theorem complete_moment_interface (X Y k r : ℂ) (hY : Y≠0)
    (hq : Y*r^2-J k*r+X*(p k-X-Y)=0) (m : MomentTag) :
    momentValue m (nonzeroSide X Y k r 1)+
        momentValue m (nonzeroSide X Y k r (-1))=
      (pairedCoefficient m X Y k).a+(pairedCoefficient m X Y k).b*r := by
  cases m with
  | m1_m1 => exact complete_paired_m1_m1 X Y k r hY hq
  | m1_m2 => exact complete_paired_m1_m2 X Y k r hY hq
  | m1_p2 => exact complete_paired_m1_p2 X Y k r hY hq
  | m1_p3 => exact complete_paired_m1_p3 X Y k r hY hq
  | m2_m1 => exact complete_paired_m2_m1 X Y k r hY hq
  | m2_m2 => exact complete_paired_m2_m2 X Y k r hY hq
  | m2_p0 => exact complete_paired_m2_p0 X Y k r hY hq
  | m2_p1 => exact complete_paired_m2_p1 X Y k r hY hq
  | m2_p2 => exact complete_paired_m2_p2 X Y k r hY hq
  | m2_p3 => exact complete_paired_m2_p3 X Y k r hY hq
  | m2_p4 => exact complete_paired_m2_p4 X Y k r hY hq
  | m3_p0 => exact complete_paired_m3_p0 X Y k r hY hq
  | m3_p1 => exact complete_paired_m3_p1 X Y k r hY hq
  | m3_p2 => exact complete_paired_m3_p2 X Y k r hY hq
  | m3_p3 => exact complete_paired_m3_p3 X Y k r hY hq
  | m4_p2 => exact complete_paired_m4_p2 X Y k r hY hq
  | p0_m2 => exact complete_paired_p0_m2 X Y k r hY hq
  | p0_m3 => exact complete_paired_p0_m3 X Y k r hY hq
  | p0_p2 => exact complete_paired_p0_p2 X Y k r hY hq
  | p0_p3 => exact complete_paired_p0_p3 X Y k r hY hq
  | p1_m2 => exact complete_paired_p1_m2 X Y k r hY hq
  | p1_m3 => exact complete_paired_p1_m3 X Y k r hY hq
  | p1_p1 => exact complete_paired_p1_p1 X Y k r hY hq
  | p1_p2 => exact complete_paired_p1_p2 X Y k r hY hq
  | p2_m1 => exact complete_paired_p2_m1 X Y k r hY hq
  | p2_m2 => exact complete_paired_p2_m2 X Y k r hY hq
  | p2_m3 => exact complete_paired_p2_m3 X Y k r hY hq
  | p2_m4 => exact complete_paired_p2_m4 X Y k r hY hq
  | p2_p0 => exact complete_paired_p2_p0 X Y k r hY hq
  | p2_p1 => exact complete_paired_p2_p1 X Y k r hY hq
  | p2_p2 => exact complete_paired_p2_p2 X Y k r hY hq
  | p3_m1 => exact complete_paired_p3_m1 X Y k r hY hq
  | p3_m2 => exact complete_paired_p3_m2 X Y k r hY hq
  | p3_m3 => exact complete_paired_p3_m3 X Y k r hY hq
  | p3_p0 => exact complete_paired_p3_p0 X Y k r hY hq
  | p4_m2 => exact complete_paired_p4_m2 X Y k r hY hq

end
#print axioms complete_moment_interface
end CriticalNonzeroMoments20261003
