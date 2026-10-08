import CriticalNonzeroPolynomialData

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace CriticalNonzeroPolynomial20261003
section
variable {R : Type*} [CommRing R]

/-- Exact identity over every commutative ring. No analytical or physical
hypothesis is used; the physical square-sum evaluation is a separate task. -/
theorem factorization (k K : R) :
    reducedNumerator k K = -262144 * quartic k K * k^2 * (3*k^2+1)^3 *
      (denFactorMinus k K)^3 * (denFactorPlus k K)^3 := by
  unfold reducedNumerator quartic denFactorMinus denFactorPlus
  unfold reducedCoefficient00 reducedCoefficient01 reducedCoefficient02 reducedCoefficient03 reducedCoefficient04 reducedCoefficient05 reducedCoefficient06 reducedCoefficient07 reducedCoefficient08 reducedCoefficient09 reducedCoefficient10
  ring

end
#print axioms factorization
end CriticalNonzeroPolynomial20261003
