import NoFourMUBs.Reuse.Archive.CriticalNonzeroFactorData

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace CriticalNonzeroPolynomial20261003
section
variable {R : Type*} [CommRing R]

theorem coefficient_09 (k : R) : reducedCoefficient09 k=factorCoefficient09 k := by
  simp only [reducedCoefficient09,factorCoefficient09,factorScale,cubeCoefficient5,cubeCoefficient6,quarticCoefficient3,quarticCoefficient4,denominatorCoefficient0,denominatorCoefficient1,denominatorCoefficient2]
  ring

theorem coefficient_10 (k : R) : reducedCoefficient10 k=factorCoefficient10 k := by
  simp only [reducedCoefficient10,factorCoefficient10,factorScale,cubeCoefficient6,quarticCoefficient4,denominatorCoefficient0,denominatorCoefficient1,denominatorCoefficient2]
  ring

end
#print axioms coefficient_09
#print axioms coefficient_10
end CriticalNonzeroPolynomial20261003
