import CriticalNonzeroMomentProgram
set_option autoImplicit false
namespace CriticalNonzeroMomentsIndependentReview20261003
open CriticalNonzeroMoments20261003 CriticalNonzeroRational20261003 CriticalNewtonGauge20261003
noncomputable section
/-- Independent replay uses the original complex reconstruction on both signs,
with no implicit matrix-existence, numerator-zero or pole claim. -/
theorem complete_substitution (X Y k r : ℂ) (hY : Y≠0)
    (hq : Y*r^2-J k*r+X*(p k-X-Y)=0) :
    pureNewtonPolynomial66 (nonzeroSide X Y k r 1) (nonzeroSide X Y k r (-1))=
      momentPolynomial66 (fun m => (pairedCoefficient m X Y k).a+
        (pairedCoefficient m X Y k).b*r) :=
  nonzero_polynomial66_via_moments X Y k r hY hq
end
#print axioms complete_substitution
end CriticalNonzeroMomentsIndependentReview20261003
