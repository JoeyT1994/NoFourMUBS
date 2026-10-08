import CriticalNonzeroLightMoments
import CriticalNonzeroData

set_option autoImplicit false
namespace CriticalNonzeroRational20261003
open CriticalNewton20261003
noncomputable section

/-- Literal complex specialization of the light generic paired moment.
The original eighteen-field reconstruction constructor is used on the left. -/
theorem paired_p1_p1 (X Y k r : ℂ) (hX : X≠0)
    (hp : pole k 1 (p k-X-Y)≠0) (hm : pole k (-1) (p k-X-Y)≠0) :
    newton_p1_p1 (nonzeroSide X Y k r 1)+
      newton_p1_p1 (nonzeroSide X Y k r (-1)) =
      (CriticalNonzeroLight20261003.linearA X Y k+
        CriticalNonzeroLight20261003.linearB X Y k*r)/
        CriticalNonzeroLight20261003.linearD X Y k := by
  exact CriticalNonzeroLight20261003.paired_p1_p1 X Y k r hX hp hm

/-- The second full complex paired moment, under the explicit physical
reciprocal quadratic supplied by the independently checked gauge bridge. -/
theorem paired_m2_p1 (X Y k r : ℂ)
    (hp : pole k 1 Y≠0) (hm : pole k (-1) Y≠0)
    (hq : Y*r^2-J k*r+X*(p k-X-Y)=0) :
    newton_m2_p1 (nonzeroSide X Y k r 1)+
      newton_m2_p1 (nonzeroSide X Y k r (-1)) =
      (CriticalNonzeroLight20261003.quadraticA X Y k+
        CriticalNonzeroLight20261003.quadraticB X Y k*r)/
        CriticalNonzeroLight20261003.quadraticD Y k := by
  exact CriticalNonzeroLight20261003.paired_m2_p1 X Y k r hp hm hq

end
#print axioms paired_p1_p1
#print axioms paired_m2_p1
end CriticalNonzeroRational20261003
