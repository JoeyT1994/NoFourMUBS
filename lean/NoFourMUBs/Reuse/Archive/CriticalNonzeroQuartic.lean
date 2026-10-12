import NoFourMUBs.Reuse.Archive.CriticalNonzeroSplitting
import NoFourMUBs.Reuse.Archive.CriticalNonzeroPolynomial

set_option autoImplicit false
namespace CriticalNonzeroRational20261003
open CriticalNonzeroPolynomial20261003
noncomputable section

/-- Complex specialization of the one generic polynomial definition.
The actual physical square-sum binding remains a separate obligation. -/
theorem reduced_numerator_factorization (k K : ℂ) :
    reducedNumerator k K = -262144 * quartic k K * k^2 * (3*k^2+1)^3 *
      (denFactorMinus k K)^3 * (denFactorPlus k K)^3 := by
  exact CriticalNonzeroPolynomial20261003.factorization k K

end
#print axioms reduced_numerator_factorization
end CriticalNonzeroRational20261003
