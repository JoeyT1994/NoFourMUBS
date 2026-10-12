import NoFourMUBs.Reuse.Archive.CriticalNonzeroPair08
import NoFourMUBs.Reuse.Archive.CriticalNonzeroData

set_option autoImplicit false
namespace CriticalNonzeroRational20261003
open CriticalNewton20261003
noncomputable section

/-- Exact complex specialization with the original reconstruction fields. -/
theorem complete_paired_p3_m2 (X Y k r : ℂ) (hY : Y≠0)
    (hq : Y*r^2-J k*r+X*(p k-X-Y)=0) :
    newton_p3_m2 (nonzeroSide X Y k r 1)+newton_p3_m2 (nonzeroSide X Y k r (-1))=
      (CriticalNonzeroQuad20261003.pairedQuad_p3_m2 X Y k).a+
        (CriticalNonzeroQuad20261003.pairedQuad_p3_m2 X Y k).b*r := by
  exact CriticalNonzeroQuad20261003.paired_moment_p3_m2 X Y k r hY hq

/-- Exact complex specialization with the original reconstruction fields. -/
theorem complete_paired_p3_m3 (X Y k r : ℂ) (hY : Y≠0)
    (hq : Y*r^2-J k*r+X*(p k-X-Y)=0) :
    newton_p3_m3 (nonzeroSide X Y k r 1)+newton_p3_m3 (nonzeroSide X Y k r (-1))=
      (CriticalNonzeroQuad20261003.pairedQuad_p3_m3 X Y k).a+
        (CriticalNonzeroQuad20261003.pairedQuad_p3_m3 X Y k).b*r := by
  exact CriticalNonzeroQuad20261003.paired_moment_p3_m3 X Y k r hY hq

/-- Exact complex specialization with the original reconstruction fields. -/
theorem complete_paired_p3_p0 (X Y k r : ℂ) (hY : Y≠0)
    (hq : Y*r^2-J k*r+X*(p k-X-Y)=0) :
    newton_p3_p0 (nonzeroSide X Y k r 1)+newton_p3_p0 (nonzeroSide X Y k r (-1))=
      (CriticalNonzeroQuad20261003.pairedQuad_p3_p0 X Y k).a+
        (CriticalNonzeroQuad20261003.pairedQuad_p3_p0 X Y k).b*r := by
  exact CriticalNonzeroQuad20261003.paired_moment_p3_p0 X Y k r hY hq

/-- Exact complex specialization with the original reconstruction fields. -/
theorem complete_paired_p4_m2 (X Y k r : ℂ) (hY : Y≠0)
    (hq : Y*r^2-J k*r+X*(p k-X-Y)=0) :
    newton_p4_m2 (nonzeroSide X Y k r 1)+newton_p4_m2 (nonzeroSide X Y k r (-1))=
      (CriticalNonzeroQuad20261003.pairedQuad_p4_m2 X Y k).a+
        (CriticalNonzeroQuad20261003.pairedQuad_p4_m2 X Y k).b*r := by
  exact CriticalNonzeroQuad20261003.paired_moment_p4_m2 X Y k r hY hq

end
#print axioms complete_paired_p3_m2
#print axioms complete_paired_p3_m3
#print axioms complete_paired_p3_p0
#print axioms complete_paired_p4_m2
end CriticalNonzeroRational20261003
