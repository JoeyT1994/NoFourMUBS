import CriticalNonzeroFactorData

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace CriticalNonzeroPolynomial20261003
section
variable {R : Type*} [CommRing R]

theorem coefficient_03 (k : R) : reducedCoefficient03 k=factorCoefficient03 k := by
  simp only [reducedCoefficient03,factorCoefficient03,factorScale,cubeCoefficient0,cubeCoefficient1,cubeCoefficient2,cubeCoefficient3,quarticCoefficient0,quarticCoefficient1,quarticCoefficient2,quarticCoefficient3,denominatorCoefficient0,denominatorCoefficient1,denominatorCoefficient2]
  ring

theorem coefficient_04 (k : R) : reducedCoefficient04 k=factorCoefficient04 k := by
  simp only [reducedCoefficient04,factorCoefficient04,factorScale,cubeCoefficient0,cubeCoefficient1,cubeCoefficient2,cubeCoefficient3,cubeCoefficient4,quarticCoefficient0,quarticCoefficient1,quarticCoefficient2,quarticCoefficient3,quarticCoefficient4,denominatorCoefficient0,denominatorCoefficient1,denominatorCoefficient2]
  ring

theorem coefficient_05 (k : R) : reducedCoefficient05 k=factorCoefficient05 k := by
  simp only [reducedCoefficient05,factorCoefficient05,factorScale,cubeCoefficient1,cubeCoefficient2,cubeCoefficient3,cubeCoefficient4,cubeCoefficient5,quarticCoefficient0,quarticCoefficient1,quarticCoefficient2,quarticCoefficient3,quarticCoefficient4,denominatorCoefficient0,denominatorCoefficient1,denominatorCoefficient2]
  ring

end
#print axioms coefficient_03
#print axioms coefficient_04
#print axioms coefficient_05
end CriticalNonzeroPolynomial20261003
