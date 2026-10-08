import CriticalNonzeroFactorData

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace CriticalNonzeroPolynomial20261003
section
variable {R : Type*} [CommRing R]

theorem coefficient_06 (k : R) : reducedCoefficient06 k=factorCoefficient06 k := by
  simp only [reducedCoefficient06,factorCoefficient06,factorScale,cubeCoefficient2,cubeCoefficient3,cubeCoefficient4,cubeCoefficient5,cubeCoefficient6,quarticCoefficient0,quarticCoefficient1,quarticCoefficient2,quarticCoefficient3,quarticCoefficient4,denominatorCoefficient0,denominatorCoefficient1,denominatorCoefficient2]
  ring

theorem coefficient_07 (k : R) : reducedCoefficient07 k=factorCoefficient07 k := by
  simp only [reducedCoefficient07,factorCoefficient07,factorScale,cubeCoefficient3,cubeCoefficient4,cubeCoefficient5,cubeCoefficient6,quarticCoefficient1,quarticCoefficient2,quarticCoefficient3,quarticCoefficient4,denominatorCoefficient0,denominatorCoefficient1,denominatorCoefficient2]
  ring

theorem coefficient_08 (k : R) : reducedCoefficient08 k=factorCoefficient08 k := by
  simp only [reducedCoefficient08,factorCoefficient08,factorScale,cubeCoefficient4,cubeCoefficient5,cubeCoefficient6,quarticCoefficient2,quarticCoefficient3,quarticCoefficient4,denominatorCoefficient0,denominatorCoefficient1,denominatorCoefficient2]
  ring

end
#print axioms coefficient_06
#print axioms coefficient_07
#print axioms coefficient_08
end CriticalNonzeroPolynomial20261003
