import CriticalNonzeroFinalRowSound
import Mathlib.Tactic.IntervalCases
import CriticalNonzeroFinalRows0_00
import CriticalNonzeroFinalRows0_01
import CriticalNonzeroFinalRows0_02
import CriticalNonzeroFinalRows0_03
import CriticalNonzeroFinalRows1_00
import CriticalNonzeroFinalRows1_01
import CriticalNonzeroFinalRows1_02
import CriticalNonzeroFinalRows1_03
import CriticalNonzeroFinalRows2_00
import CriticalNonzeroFinalRows2_01
import CriticalNonzeroFinalRows2_02
import CriticalNonzeroFinalRows2_03
import CriticalNonzeroFinalRows3_00
import CriticalNonzeroFinalRows3_01
import CriticalNonzeroFinalRows3_02
import CriticalNonzeroFinalRows3_03
set_option autoImplicit false
namespace CriticalNonzeroFinalRows20261003
open CriticalZeroSplitReduction20261003 HornerReflector IntegerReflector
open CriticalZeroSumAssembly20261003
open CriticalNonzeroHornerRows20261003 CriticalNonzeroLastStep20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem all_rows0 (n : ℕ) (hn : n<16) : zeroII (requestedRow0 n)=true := by
  interval_cases n
  · exact row0_00
  · exact row0_01
  · exact row0_02
  · exact row0_03
  · exact row0_04
  · exact row0_05
  · exact row0_06
  · exact row0_07
  · exact row0_08
  · exact row0_09
  · exact row0_10
  · exact row0_11
  · exact row0_12
  · exact row0_13
  · exact row0_14
  · exact row0_15
theorem residual_zero0 (k K : R) :
    CriticalZeroSplitReduction20261003.Coefficients.eval K
      (DenseCoefficients.interpret k K residualDense0)=0 :=
  CriticalZeroSplitReduction20261003.Coefficients.eval_allZero K _
    (rows_zero0 k K all_rows0)
#print axioms all_rows0
#print axioms residual_zero0
theorem all_rows1 (n : ℕ) (hn : n<16) : zeroII (requestedRow1 n)=true := by
  interval_cases n
  · exact row1_00
  · exact row1_01
  · exact row1_02
  · exact row1_03
  · exact row1_04
  · exact row1_05
  · exact row1_06
  · exact row1_07
  · exact row1_08
  · exact row1_09
  · exact row1_10
  · exact row1_11
  · exact row1_12
  · exact row1_13
  · exact row1_14
  · exact row1_15
theorem residual_zero1 (k K : R) :
    CriticalZeroSplitReduction20261003.Coefficients.eval K
      (DenseCoefficients.interpret k K residualDense1)=0 :=
  CriticalZeroSplitReduction20261003.Coefficients.eval_allZero K _
    (rows_zero1 k K all_rows1)
#print axioms all_rows1
#print axioms residual_zero1
theorem all_rows2 (n : ℕ) (hn : n<15) : zeroII (requestedRow2 n)=true := by
  interval_cases n
  · exact row2_00
  · exact row2_01
  · exact row2_02
  · exact row2_03
  · exact row2_04
  · exact row2_05
  · exact row2_06
  · exact row2_07
  · exact row2_08
  · exact row2_09
  · exact row2_10
  · exact row2_11
  · exact row2_12
  · exact row2_13
  · exact row2_14
theorem residual_zero2 (k K : R) :
    CriticalZeroSplitReduction20261003.Coefficients.eval K
      (DenseCoefficients.interpret k K residualDense2)=0 :=
  CriticalZeroSplitReduction20261003.Coefficients.eval_allZero K _
    (rows_zero2 k K all_rows2)
#print axioms all_rows2
#print axioms residual_zero2
theorem all_rows3 (n : ℕ) (hn : n<15) : zeroII (requestedRow3 n)=true := by
  interval_cases n
  · exact row3_00
  · exact row3_01
  · exact row3_02
  · exact row3_03
  · exact row3_04
  · exact row3_05
  · exact row3_06
  · exact row3_07
  · exact row3_08
  · exact row3_09
  · exact row3_10
  · exact row3_11
  · exact row3_12
  · exact row3_13
  · exact row3_14
theorem residual_zero3 (k K : R) :
    CriticalZeroSplitReduction20261003.Coefficients.eval K
      (DenseCoefficients.interpret k K residualDense3)=0 :=
  CriticalZeroSplitReduction20261003.Coefficients.eval_allZero K _
    (rows_zero3 k K all_rows3)
#print axioms all_rows3
#print axioms residual_zero3
end
end CriticalNonzeroFinalRows20261003
