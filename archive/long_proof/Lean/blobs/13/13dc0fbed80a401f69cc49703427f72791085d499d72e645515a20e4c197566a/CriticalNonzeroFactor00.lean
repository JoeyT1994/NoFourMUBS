import CriticalNonzeroFactorData

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace CriticalNonzeroPolynomial20261003
section
variable {R : Type*} [CommRing R]

theorem coefficient_00 (k : R) : reducedCoefficient00 k=factorCoefficient00 k := by
  simp only [reducedCoefficient00,factorCoefficient00,factorScale,cubeCoefficient0,quarticCoefficient0,denominatorCoefficient0,denominatorCoefficient1,denominatorCoefficient2]
  ring

theorem coefficient_01 (k : R) : reducedCoefficient01 k=factorCoefficient01 k := by
  simp only [reducedCoefficient01,factorCoefficient01,factorScale,cubeCoefficient0,cubeCoefficient1,quarticCoefficient0,quarticCoefficient1,denominatorCoefficient0,denominatorCoefficient1,denominatorCoefficient2]
  ring

theorem coefficient_02 (k : R) : reducedCoefficient02 k=factorCoefficient02 k := by
  simp only [reducedCoefficient02,factorCoefficient02,factorScale,cubeCoefficient0,cubeCoefficient1,cubeCoefficient2,quarticCoefficient0,quarticCoefficient1,quarticCoefficient2,denominatorCoefficient0,denominatorCoefficient1,denominatorCoefficient2]
  ring

end
#print axioms coefficient_00
#print axioms coefficient_01
#print axioms coefficient_02
end CriticalNonzeroPolynomial20261003
