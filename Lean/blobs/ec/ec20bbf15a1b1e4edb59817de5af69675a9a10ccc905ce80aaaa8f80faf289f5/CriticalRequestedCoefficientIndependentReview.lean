import CriticalZeroSumCoefficientAt

set_option autoImplicit false
namespace CriticalRequestedCoefficientIndependentReview20261003
open CriticalZeroSplitReduction20261003
open CriticalZeroSumAssembly20261003

/-- The middle coefficient keeps both convolution contributions. -/
theorem mixed_middle_coefficient :
    IntegerReflector.zeroII (Coefficients.add2
      (CoefficientAt.mulAt (DenseCoefficients.fromExpr [.x,.y])
        (DenseCoefficients.fromExpr [.lit 1,.add .x .y]) 1)
      (Coefficients.neg2 (HornerReflector.normalize
        (.add (.mul .x (.add .x .y)) .y))))=true := by rfl

/-- A wrong constant in the expected coefficient is rejected. -/
theorem incorrect_middle_coefficient_rejected :
    IntegerReflector.zeroII (Coefficients.add2
      (CoefficientAt.mulAt (DenseCoefficients.fromExpr [.x,.y])
        (DenseCoefficients.fromExpr [.lit 1,.add .x .y]) 1)
      (Coefficients.neg2 (HornerReflector.normalize
        (.add (.add (.mul .x (.add .x .y)) .y) (.lit 1)))))=false := by rfl

/-- The last nonzero coefficient and the coefficient just past the product
are distinguished, including an explicit zero tail. -/
theorem tail_boundary :
    IntegerReflector.zeroII
      (CoefficientAt.mulAt (DenseCoefficients.fromExpr [.x,.y])
        (DenseCoefficients.fromExpr [.lit 1,.add .x .y]) 2)=false ∧
    IntegerReflector.zeroII
      (CoefficientAt.mulAt (DenseCoefficients.fromExpr [.x,.y])
        (DenseCoefficients.fromExpr [.lit 1,.add .x .y]) 3)=true := by
  exact ⟨rfl,rfl⟩

#print axioms mixed_middle_coefficient
#print axioms incorrect_middle_coefficient_rejected
#print axioms tail_boundary
end CriticalRequestedCoefficientIndependentReview20261003
