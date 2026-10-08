import CriticalZeroQuotientData

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]

theorem reduced_numerator_factors (X Y z K : R) :
    Coefficients.eval2 K z (numReducedTable X Y) =
      -3888*z^13*(z+2)^2*(z+3)^2*(K+(z-1)*(z+3)^3)*(A z K)^2*(B z K)^2 := by
  dsimp only [numReducedTable,Coefficients.eval2,Coefficients.eval,A,B]
  ring

theorem reduced_denominator_factors (X Y z K : R) :
    Coefficients.eval2 K z (denReducedTable X Y) = z^12*(A z K)^5 := by
  dsimp only [denReducedTable,Coefficients.eval2,Coefficients.eval,A]
  ring

#print axioms reduced_numerator_factors
#print axioms reduced_denominator_factors
end
end CriticalZeroSplitReduction20261003
