import NoFourMUBs.Reuse.Archive.CriticalNonzeroMomentInterface

set_option autoImplicit false
namespace CriticalNonzeroMoments20261003
open CriticalNonzeroRational20261003 CriticalNewtonGauge20261003
noncomputable section

/-- The unchanged 66-term polynomial with its 36 moment inputs exposed. -/
def momentPolynomial66 (v : MomentTag → ℂ) : ℂ :=
  (1728 : ℂ) +
  (-1 : ℂ) * (v .m4_p2) * (v .p2_m4) * (v .p2_p2) +
  (2 : ℂ) * (v .m4_p2) * (v .p2_m3) * (v .p2_p1) +
  (1 : ℂ) * (v .m4_p2) * (v .p2_m2) * (v .p2_p0) +
  (-2 : ℂ) * (v .m4_p2) * (v .p2_m1) * (v .p2_m1) +
  (-2 : ℂ) * (v .m3_p0) * (v .p0_p2) * (v .p3_m2) +
  (2 : ℂ) * (v .m3_p0) * (v .p0_p3) * (v .p3_m3) +
  (2 : ℂ) * (v .m3_p0) * (v .p1_p1) * (v .p2_m1) +
  (-2 : ℂ) * (v .m3_p0) * (v .p1_p2) * (v .p2_m2) +
  (12 : ℂ) * (v .m3_p0) * (v .p3_p0) +
  (-2 : ℂ) * (v .m3_p1) * (v .p0_p2) * (v .p3_m3) +
  (2 : ℂ) * (v .m3_p1) * (v .p1_m3) * (v .p2_p2) +
  (-2 : ℂ) * (v .m3_p1) * (v .p1_m2) * (v .p2_p1) +
  (12 : ℂ) * (v .m3_p1) * (v .p3_m1) +
  (-2 : ℂ) * (v .m3_p2) * (v .p0_m2) * (v .p3_p0) +
  (-2 : ℂ) * (v .m3_p2) * (v .p1_p1) * (v .p2_m3) +
  (2 : ℂ) * (v .m3_p2) * (v .p1_p2) * (v .p2_m4) +
  (12 : ℂ) * (v .m3_p2) * (v .p3_m2) +
  (2 : ℂ) * (v .m3_p3) * (v .p0_m3) * (v .p3_p0) +
  (-2 : ℂ) * (v .m3_p3) * (v .p0_m2) * (v .p3_m1) +
  (-2 : ℂ) * (v .m3_p3) * (v .p1_m3) * (v .p2_p0) +
  (2 : ℂ) * (v .m3_p3) * (v .p1_m2) * (v .p2_m1) +
  (12 : ℂ) * (v .m3_p3) * (v .p3_m3) +
  (-1 : ℂ) * (v .m2_m2) * (v .m2_p4) * (v .p4_m2) +
  (2 : ℂ) * (v .m2_m2) * (v .m1_p3) * (v .p3_m1) +
  (1 : ℂ) * (v .m2_m2) * (v .p0_p2) * (v .p2_p0) +
  (-2 : ℂ) * (v .m2_m2) * (v .p1_p1) * (v .p1_p1) +
  (2 : ℂ) * (v .m2_m1) * (v .m2_p3) * (v .p4_m2) +
  (-2 : ℂ) * (v .m2_m1) * (v .m1_p2) * (v .p3_m1) +
  (-2 : ℂ) * (v .m2_m1) * (v .p0_p3) * (v .p2_m2) +
  (12 : ℂ) * (v .m2_m1) * (v .p2_p1) +
  (1 : ℂ) * (v .m2_p0) * (v .m2_p2) * (v .p4_m2) +
  (-2 : ℂ) * (v .m2_p0) * (v .m1_p3) * (v .p3_m3) +
  (1 : ℂ) * (v .m2_p0) * (v .p0_m2) * (v .p2_p2) +
  (6 : ℂ) * (v .m2_p0) * (v .p0_p2) * (v .p2_m2) +
  (-2 : ℂ) * (v .m2_p0) * (v .p0_p3) * (v .p2_m3) +
  (-48 : ℂ) * (v .m2_p0) * (v .p2_p0) +
  (-2 : ℂ) * (v .m2_p1) * (v .m2_p1) * (v .p4_m2) +
  (2 : ℂ) * (v .m2_p1) * (v .m1_m1) * (v .p3_p0) +
  (2 : ℂ) * (v .m2_p1) * (v .m1_p2) * (v .p3_m3) +
  (-2 : ℂ) * (v .m2_p1) * (v .p1_m3) * (v .p1_p2) +
  (-2 : ℂ) * (v .m2_p1) * (v .p1_m2) * (v .p1_p1) +
  (-24 : ℂ) * (v .m2_p1) * (v .p2_m1) +
  (-2 : ℂ) * (v .m2_p2) * (v .m1_m2) * (v .p3_p0) +
  (-2 : ℂ) * (v .m2_p2) * (v .p0_m3) * (v .p2_p1) +
  (6 : ℂ) * (v .m2_p2) * (v .p0_m2) * (v .p2_p0) +
  (1 : ℂ) * (v .m2_p2) * (v .p0_p2) * (v .p2_m4) +
  (-48 : ℂ) * (v .m2_p2) * (v .p2_m2) +
  (-2 : ℂ) * (v .m2_p3) * (v .m1_m1) * (v .p3_m2) +
  (-2 : ℂ) * (v .m2_p3) * (v .p0_m3) * (v .p2_p0) +
  (12 : ℂ) * (v .m2_p3) * (v .p2_m3) +
  (2 : ℂ) * (v .m2_p4) * (v .m1_m2) * (v .p3_m2) +
  (1 : ℂ) * (v .m2_p4) * (v .p0_m2) * (v .p2_m2) +
  (-2 : ℂ) * (v .m2_p4) * (v .p1_m2) * (v .p1_m2) +
  (-2 : ℂ) * (v .m1_m2) * (v .m1_p3) * (v .p2_m1) +
  (12 : ℂ) * (v .m1_m2) * (v .p1_p2) +
  (-2 : ℂ) * (v .m1_m1) * (v .m1_m1) * (v .p2_p2) +
  (-2 : ℂ) * (v .m1_m1) * (v .m1_p2) * (v .p2_m1) +
  (2 : ℂ) * (v .m1_m1) * (v .p0_p3) * (v .p1_m2) +
  (-24 : ℂ) * (v .m1_m1) * (v .p1_p1) +
  (-2 : ℂ) * (v .m1_p2) * (v .m1_p2) * (v .p2_m4) +
  (2 : ℂ) * (v .m1_p2) * (v .p0_m3) * (v .p1_p1) +
  (-24 : ℂ) * (v .m1_p2) * (v .p1_m2) +
  (12 : ℂ) * (v .m1_p3) * (v .p1_m3) +
  (12 : ℂ) * (v .p0_m3) * (v .p0_p3) +
  (-48 : ℂ) * (v .p0_m2) * (v .p0_p2)

theorem pureNewtonPolynomial66_as_moments (L R : CriticalNewton20261003.Data) :
    pureNewtonPolynomial66 L R=
      momentPolynomial66 (fun m => momentValue m L+momentValue m R) := by
  rfl

/-- Program-level substitution only. This does not identify the rational
numerator with the separately supplied quartic factorization. -/
theorem nonzero_polynomial66_via_moments (X Y k r : ℂ) (hY : Y≠0)
    (hq : Y*r^2-J k*r+X*(p k-X-Y)=0) :
    pureNewtonPolynomial66 (nonzeroSide X Y k r 1) (nonzeroSide X Y k r (-1))=
      momentPolynomial66 (fun m =>
        (pairedCoefficient m X Y k).a+(pairedCoefficient m X Y k).b*r) := by
  rw [pureNewtonPolynomial66_as_moments]
  exact congrArg momentPolynomial66 (funext (complete_moment_interface X Y k r hY hq))

end
#print axioms pureNewtonPolynomial66_as_moments
#print axioms nonzero_polynomial66_via_moments
end CriticalNonzeroMoments20261003
