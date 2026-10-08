import CriticalQuadProgram
import CriticalNonzeroMomentProgram

set_option autoImplicit false
set_option maxRecDepth 4096
namespace CriticalNonzeroNumerator20261003
open CriticalQuadProgram20261003 CriticalMomentQuad20261003
open CriticalNonzeroMoments20261003 CriticalNonzeroQuad20261003
open CriticalNonzeroRational20261003 CriticalNewtonGauge20261003
noncomputable section

/-- Literal finite program in the unchanged order of the admitted 66 terms. -/
def program66 : Program MomentTag :=
  (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.lit (1728))
    (.mul (.mul (.mul (.lit (-1)) (.input .m4_p2)) (.input .p2_m4)) (.input .p2_p2)))
    (.mul (.mul (.mul (.lit (2)) (.input .m4_p2)) (.input .p2_m3)) (.input .p2_p1)))
    (.mul (.mul (.mul (.lit (1)) (.input .m4_p2)) (.input .p2_m2)) (.input .p2_p0)))
    (.mul (.mul (.mul (.lit (-2)) (.input .m4_p2)) (.input .p2_m1)) (.input .p2_m1)))
    (.mul (.mul (.mul (.lit (-2)) (.input .m3_p0)) (.input .p0_p2)) (.input .p3_m2)))
    (.mul (.mul (.mul (.lit (2)) (.input .m3_p0)) (.input .p0_p3)) (.input .p3_m3)))
    (.mul (.mul (.mul (.lit (2)) (.input .m3_p0)) (.input .p1_p1)) (.input .p2_m1)))
    (.mul (.mul (.mul (.lit (-2)) (.input .m3_p0)) (.input .p1_p2)) (.input .p2_m2)))
    (.mul (.mul (.lit (12)) (.input .m3_p0)) (.input .p3_p0)))
    (.mul (.mul (.mul (.lit (-2)) (.input .m3_p1)) (.input .p0_p2)) (.input .p3_m3)))
    (.mul (.mul (.mul (.lit (2)) (.input .m3_p1)) (.input .p1_m3)) (.input .p2_p2)))
    (.mul (.mul (.mul (.lit (-2)) (.input .m3_p1)) (.input .p1_m2)) (.input .p2_p1)))
    (.mul (.mul (.lit (12)) (.input .m3_p1)) (.input .p3_m1)))
    (.mul (.mul (.mul (.lit (-2)) (.input .m3_p2)) (.input .p0_m2)) (.input .p3_p0)))
    (.mul (.mul (.mul (.lit (-2)) (.input .m3_p2)) (.input .p1_p1)) (.input .p2_m3)))
    (.mul (.mul (.mul (.lit (2)) (.input .m3_p2)) (.input .p1_p2)) (.input .p2_m4)))
    (.mul (.mul (.lit (12)) (.input .m3_p2)) (.input .p3_m2)))
    (.mul (.mul (.mul (.lit (2)) (.input .m3_p3)) (.input .p0_m3)) (.input .p3_p0)))
    (.mul (.mul (.mul (.lit (-2)) (.input .m3_p3)) (.input .p0_m2)) (.input .p3_m1)))
    (.mul (.mul (.mul (.lit (-2)) (.input .m3_p3)) (.input .p1_m3)) (.input .p2_p0)))
    (.mul (.mul (.mul (.lit (2)) (.input .m3_p3)) (.input .p1_m2)) (.input .p2_m1)))
    (.mul (.mul (.lit (12)) (.input .m3_p3)) (.input .p3_m3)))
    (.mul (.mul (.mul (.lit (-1)) (.input .m2_m2)) (.input .m2_p4)) (.input .p4_m2)))
    (.mul (.mul (.mul (.lit (2)) (.input .m2_m2)) (.input .m1_p3)) (.input .p3_m1)))
    (.mul (.mul (.mul (.lit (1)) (.input .m2_m2)) (.input .p0_p2)) (.input .p2_p0)))
    (.mul (.mul (.mul (.lit (-2)) (.input .m2_m2)) (.input .p1_p1)) (.input .p1_p1)))
    (.mul (.mul (.mul (.lit (2)) (.input .m2_m1)) (.input .m2_p3)) (.input .p4_m2)))
    (.mul (.mul (.mul (.lit (-2)) (.input .m2_m1)) (.input .m1_p2)) (.input .p3_m1)))
    (.mul (.mul (.mul (.lit (-2)) (.input .m2_m1)) (.input .p0_p3)) (.input .p2_m2)))
    (.mul (.mul (.lit (12)) (.input .m2_m1)) (.input .p2_p1)))
    (.mul (.mul (.mul (.lit (1)) (.input .m2_p0)) (.input .m2_p2)) (.input .p4_m2)))
    (.mul (.mul (.mul (.lit (-2)) (.input .m2_p0)) (.input .m1_p3)) (.input .p3_m3)))
    (.mul (.mul (.mul (.lit (1)) (.input .m2_p0)) (.input .p0_m2)) (.input .p2_p2)))
    (.mul (.mul (.mul (.lit (6)) (.input .m2_p0)) (.input .p0_p2)) (.input .p2_m2)))
    (.mul (.mul (.mul (.lit (-2)) (.input .m2_p0)) (.input .p0_p3)) (.input .p2_m3)))
    (.mul (.mul (.lit (-48)) (.input .m2_p0)) (.input .p2_p0)))
    (.mul (.mul (.mul (.lit (-2)) (.input .m2_p1)) (.input .m2_p1)) (.input .p4_m2)))
    (.mul (.mul (.mul (.lit (2)) (.input .m2_p1)) (.input .m1_m1)) (.input .p3_p0)))
    (.mul (.mul (.mul (.lit (2)) (.input .m2_p1)) (.input .m1_p2)) (.input .p3_m3)))
    (.mul (.mul (.mul (.lit (-2)) (.input .m2_p1)) (.input .p1_m3)) (.input .p1_p2)))
    (.mul (.mul (.mul (.lit (-2)) (.input .m2_p1)) (.input .p1_m2)) (.input .p1_p1)))
    (.mul (.mul (.lit (-24)) (.input .m2_p1)) (.input .p2_m1)))
    (.mul (.mul (.mul (.lit (-2)) (.input .m2_p2)) (.input .m1_m2)) (.input .p3_p0)))
    (.mul (.mul (.mul (.lit (-2)) (.input .m2_p2)) (.input .p0_m3)) (.input .p2_p1)))
    (.mul (.mul (.mul (.lit (6)) (.input .m2_p2)) (.input .p0_m2)) (.input .p2_p0)))
    (.mul (.mul (.mul (.lit (1)) (.input .m2_p2)) (.input .p0_p2)) (.input .p2_m4)))
    (.mul (.mul (.lit (-48)) (.input .m2_p2)) (.input .p2_m2)))
    (.mul (.mul (.mul (.lit (-2)) (.input .m2_p3)) (.input .m1_m1)) (.input .p3_m2)))
    (.mul (.mul (.mul (.lit (-2)) (.input .m2_p3)) (.input .p0_m3)) (.input .p2_p0)))
    (.mul (.mul (.lit (12)) (.input .m2_p3)) (.input .p2_m3)))
    (.mul (.mul (.mul (.lit (2)) (.input .m2_p4)) (.input .m1_m2)) (.input .p3_m2)))
    (.mul (.mul (.mul (.lit (1)) (.input .m2_p4)) (.input .p0_m2)) (.input .p2_m2)))
    (.mul (.mul (.mul (.lit (-2)) (.input .m2_p4)) (.input .p1_m2)) (.input .p1_m2)))
    (.mul (.mul (.mul (.lit (-2)) (.input .m1_m2)) (.input .m1_p3)) (.input .p2_m1)))
    (.mul (.mul (.lit (12)) (.input .m1_m2)) (.input .p1_p2)))
    (.mul (.mul (.mul (.lit (-2)) (.input .m1_m1)) (.input .m1_m1)) (.input .p2_p2)))
    (.mul (.mul (.mul (.lit (-2)) (.input .m1_m1)) (.input .m1_p2)) (.input .p2_m1)))
    (.mul (.mul (.mul (.lit (2)) (.input .m1_m1)) (.input .p0_p3)) (.input .p1_m2)))
    (.mul (.mul (.lit (-24)) (.input .m1_m1)) (.input .p1_p1)))
    (.mul (.mul (.mul (.lit (-2)) (.input .m1_p2)) (.input .m1_p2)) (.input .p2_m4)))
    (.mul (.mul (.mul (.lit (2)) (.input .m1_p2)) (.input .p0_m3)) (.input .p1_p1)))
    (.mul (.mul (.lit (-24)) (.input .m1_p2)) (.input .p1_m2)))
    (.mul (.mul (.lit (12)) (.input .m1_p3)) (.input .p1_m3)))
    (.mul (.mul (.lit (12)) (.input .p0_m3)) (.input .p0_p3)))
    (.mul (.mul (.lit (-48)) (.input .p0_m2)) (.input .p0_p2)))

theorem program66_value (v : MomentTag → ℂ) :
    value v program66=momentPolynomial66 v := by
  simp only [program66,value,Int.cast_neg,Int.cast_ofNat,Int.cast_one,
    momentPolynomial66]

/-- The exact two rational-field programs, before any normalization or gcd
cancellation. Neither coefficient depends on the shared correlation r. -/
def sumCoefficients (X Y k : ℂ) : Quad (R2 X Y k) (R1 Y k) :=
  coefficients (fun m => pairedCoefficient m X Y k) program66

theorem nonzero_polynomial66_via_coefficients (X Y k r : ℂ) (hY : Y≠0)
    (hq : Y*r^2-J k*r+X*(p k-X-Y)=0) :
    pureNewtonPolynomial66 (nonzeroSide X Y k r 1) (nonzeroSide X Y k r (-1))=
      (sumCoefficients X Y k).a+(sumCoefficients X Y k).b*r := by
  rw [nonzero_polynomial66_via_moments X Y k r hY hq]
  change _=eval r (sumCoefficients X Y k)
  rw [sumCoefficients,coefficients_sound r (reciprocal_square X Y k r hY hq),
    program66_value]
  rfl

/-- Conditional clearing endpoint. The two exact coefficient identities must
still be supplied; this is not an assertion of the external numerator. -/
theorem nonzero_polynomial66_times_denominator (X Y k r D N : ℂ) (hY : Y≠0)
    (hq : Y*r^2-J k*r+X*(p k-X-Y)=0)
    (ha : (sumCoefficients X Y k).a*D=N)
    (hb : (sumCoefficients X Y k).b*D=0) :
    pureNewtonPolynomial66 (nonzeroSide X Y k r 1) (nonzeroSide X Y k r (-1))*D=N := by
  rw [nonzero_polynomial66_via_coefficients X Y k r hY hq]
  exact eval_times_denominator r D N (sumCoefficients X Y k) ha hb

theorem numerator_zero_of_polynomial66_zero (X Y k r D N : ℂ) (hY : Y≠0)
    (hq : Y*r^2-J k*r+X*(p k-X-Y)=0)
    (ha : (sumCoefficients X Y k).a*D=N)
    (hb : (sumCoefficients X Y k).b*D=0)
    (hs : pureNewtonPolynomial66 (nonzeroSide X Y k r 1)
      (nonzeroSide X Y k r (-1))=0) : N=0 := by
  have hc := nonzero_polynomial66_times_denominator X Y k r D N hY hq ha hb
  rw [hs,zero_mul] at hc
  exact hc.symm

end
#print axioms program66_value
#print axioms nonzero_polynomial66_via_coefficients
#print axioms nonzero_polynomial66_times_denominator
#print axioms numerator_zero_of_polynomial66_zero
end CriticalNonzeroNumerator20261003
