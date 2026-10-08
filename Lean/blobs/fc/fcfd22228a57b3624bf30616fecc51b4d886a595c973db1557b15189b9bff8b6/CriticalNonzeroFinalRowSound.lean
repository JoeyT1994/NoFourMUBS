import CriticalNonzeroFinalRowData
set_option autoImplicit false
namespace CriticalNonzeroFinalRows20261003
open CriticalZeroSplitReduction20261003 HornerReflector IntegerReflector
open CriticalZeroSumAssembly20261003
open CriticalNonzeroHornerRows20261003 CriticalNonzeroLastStep20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem requested_row_sound0 (k K : R) (n : ℕ) :
    evalII k K (requestedRow0 n)=(DenseCoefficients.interpret k K residualDense0).getD n 0 := by
  simp only [requestedRow0,residualDense0,evalII_add,evalII_neg,CoefficientAt.eval_mulAt,
    DenseCoefficients.interpret_add,DenseCoefficients.interpret_neg,DenseCoefficients.interpret_mul,
    CoefficientAt.getD_add,CriticalNonzeroHornerRows20261003.getD_neg]

theorem rows_zero0 (k K : R)
    (hc : ∀ n : ℕ, n<16 → zeroII (requestedRow0 n)=true) :
    CriticalZeroSplitReduction20261003.Coefficients.allZero
      (DenseCoefficients.interpret k K residualDense0) := by
  apply CriticalZeroSumAssembly20261003.Coefficients.allZero_of_getD
  intro n hn
  rw [← requested_row_sound0]
  apply evalII_zero
  exact hc n (by simpa only [DenseCoefficients.interpret_length,residual_length0] using hn)

theorem before_binding0 (k K : R) :
    CriticalZeroSplitReduction20261003.Coefficients.eval K
      (DenseCoefficients.interpret k K beforeDense0)=HornerReflector.value k K beforeExpr0 :=
  dense_extract_value k K beforeExpr0 15 before_reconstruct0
theorem requested_row_sound1 (k K : R) (n : ℕ) :
    evalII k K (requestedRow1 n)=(DenseCoefficients.interpret k K residualDense1).getD n 0 := by
  simp only [requestedRow1,residualDense1,evalII_add,evalII_neg,CoefficientAt.eval_mulAt,
    DenseCoefficients.interpret_add,DenseCoefficients.interpret_neg,DenseCoefficients.interpret_mul,
    CoefficientAt.getD_add,CriticalNonzeroHornerRows20261003.getD_neg]

theorem rows_zero1 (k K : R)
    (hc : ∀ n : ℕ, n<16 → zeroII (requestedRow1 n)=true) :
    CriticalZeroSplitReduction20261003.Coefficients.allZero
      (DenseCoefficients.interpret k K residualDense1) := by
  apply CriticalZeroSumAssembly20261003.Coefficients.allZero_of_getD
  intro n hn
  rw [← requested_row_sound1]
  apply evalII_zero
  exact hc n (by simpa only [DenseCoefficients.interpret_length,residual_length1] using hn)

theorem before_binding1 (k K : R) :
    CriticalZeroSplitReduction20261003.Coefficients.eval K
      (DenseCoefficients.interpret k K beforeDense1)=HornerReflector.value k K beforeExpr1 :=
  dense_extract_value k K beforeExpr1 15 before_reconstruct1
theorem requested_row_sound2 (k K : R) (n : ℕ) :
    evalII k K (requestedRow2 n)=(DenseCoefficients.interpret k K residualDense2).getD n 0 := by
  simp only [requestedRow2,residualDense2,evalII_add,evalII_neg,CoefficientAt.eval_mulAt,
    DenseCoefficients.interpret_add,DenseCoefficients.interpret_neg,DenseCoefficients.interpret_mul,
    CoefficientAt.getD_add,CriticalNonzeroHornerRows20261003.getD_neg]

theorem rows_zero2 (k K : R)
    (hc : ∀ n : ℕ, n<15 → zeroII (requestedRow2 n)=true) :
    CriticalZeroSplitReduction20261003.Coefficients.allZero
      (DenseCoefficients.interpret k K residualDense2) := by
  apply CriticalZeroSumAssembly20261003.Coefficients.allZero_of_getD
  intro n hn
  rw [← requested_row_sound2]
  apply evalII_zero
  exact hc n (by simpa only [DenseCoefficients.interpret_length,residual_length2] using hn)

theorem before_binding2 (k K : R) :
    CriticalZeroSplitReduction20261003.Coefficients.eval K
      (DenseCoefficients.interpret k K beforeDense2)=HornerReflector.value k K beforeExpr2 :=
  dense_extract_value k K beforeExpr2 14 before_reconstruct2
theorem requested_row_sound3 (k K : R) (n : ℕ) :
    evalII k K (requestedRow3 n)=(DenseCoefficients.interpret k K residualDense3).getD n 0 := by
  simp only [requestedRow3,residualDense3,evalII_add,evalII_neg,CoefficientAt.eval_mulAt,
    DenseCoefficients.interpret_add,DenseCoefficients.interpret_neg,DenseCoefficients.interpret_mul,
    CoefficientAt.getD_add,CriticalNonzeroHornerRows20261003.getD_neg]

theorem rows_zero3 (k K : R)
    (hc : ∀ n : ℕ, n<15 → zeroII (requestedRow3 n)=true) :
    CriticalZeroSplitReduction20261003.Coefficients.allZero
      (DenseCoefficients.interpret k K residualDense3) := by
  apply CriticalZeroSumAssembly20261003.Coefficients.allZero_of_getD
  intro n hn
  rw [← requested_row_sound3]
  apply evalII_zero
  exact hc n (by simpa only [DenseCoefficients.interpret_length,residual_length3] using hn)

theorem before_binding3 (k K : R) :
    CriticalZeroSplitReduction20261003.Coefficients.eval K
      (DenseCoefficients.interpret k K beforeDense3)=HornerReflector.value k K beforeExpr3 :=
  dense_extract_value k K beforeExpr3 14 before_reconstruct3
theorem target_binding (k K : R) :
    CriticalZeroSplitReduction20261003.Coefficients.eval K
      (DenseCoefficients.interpret k K targetDense)=HornerReflector.value k K targetExpr :=
  dense_extract_value k K targetExpr 10 target_reconstruct
#print axioms requested_row_sound0
#print axioms rows_zero0
#print axioms before_binding0
#print axioms requested_row_sound1
#print axioms rows_zero1
#print axioms before_binding1
#print axioms requested_row_sound2
#print axioms rows_zero2
#print axioms before_binding2
#print axioms requested_row_sound3
#print axioms rows_zero3
#print axioms before_binding3
#print axioms target_binding
end
end CriticalNonzeroFinalRows20261003
