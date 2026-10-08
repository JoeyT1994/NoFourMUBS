import CriticalNonzeroQuarticData

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace CriticalNonzeroRational20261003
noncomputable section

/-- Literal factorization of the supplied reduced numerator. This alone
does not identify that numerator with the physical Newton square sum. -/
theorem reduced_numerator_factorization (k K : ℂ) :
    reducedNumerator k K = -262144 * quartic k K * k^2 * (3*k^2+1)^3 *
      (denFactorMinus k K)^3 * (denFactorPlus k K)^3 := by
  unfold reducedNumerator quartic denFactorMinus denFactorPlus
  unfold reducedCoefficient00 reducedCoefficient01 reducedCoefficient02 reducedCoefficient03 reducedCoefficient04 reducedCoefficient05 reducedCoefficient06 reducedCoefficient07 reducedCoefficient08 reducedCoefficient09 reducedCoefficient10
  ring

end
#print axioms reduced_numerator_factorization
end CriticalNonzeroRational20261003
