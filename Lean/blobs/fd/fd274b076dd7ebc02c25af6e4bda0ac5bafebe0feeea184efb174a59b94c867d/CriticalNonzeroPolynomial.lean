import CriticalNonzeroFactor00
import CriticalNonzeroFactor01
import CriticalNonzeroFactor02
import CriticalNonzeroFactor03

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace CriticalNonzeroPolynomial20261003
section
variable {R : Type*} [CommRing R]

/-- The full supplied factorization, assembled from eleven independently
checked univariate coefficient identities. -/
theorem factorization (k K : R) :
    reducedNumerator k K = -262144 * quartic k K * k^2 * (3*k^2+1)^3 *
      (denFactorMinus k K)^3 * (denFactorPlus k K)^3 := by
  have ht : reducedNumerator k K=factorScale k*quartic k K*
      (denFactorMinus k K*denFactorPlus k K)^3 := by
    unfold reducedNumerator
    rw [coefficient_00,coefficient_01,coefficient_02,coefficient_03,coefficient_04,coefficient_05,coefficient_06,coefficient_07,coefficient_08,coefficient_09,coefficient_10]
    rw [quartic_decomposition,denominator_decomposition]
    simp only [factorCoefficient00,factorCoefficient01,factorCoefficient02,factorCoefficient03,factorCoefficient04,factorCoefficient05,factorCoefficient06,factorCoefficient07,factorCoefficient08,factorCoefficient09,factorCoefficient10,cubeCoefficient0,cubeCoefficient1,cubeCoefficient2,cubeCoefficient3,cubeCoefficient4,cubeCoefficient5,cubeCoefficient6]
    ring
  rw [ht]
  unfold factorScale
  ring

end
#print axioms factorization
end CriticalNonzeroPolynomial20261003
