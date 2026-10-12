import NoFourMUBs.Reuse.Archive.CriticalZeroSumNumeratorGroupData00
import NoFourMUBs.Reuse.Archive.CriticalZeroSumNumeratorGroupData01
import NoFourMUBs.Reuse.Archive.CriticalZeroSumNumeratorGroupData02
import NoFourMUBs.Reuse.Archive.CriticalZeroSumNumeratorGroupData03
import NoFourMUBs.Reuse.Archive.CriticalZeroSumNumeratorGroupData04
import NoFourMUBs.Reuse.Archive.CriticalZeroSumNumeratorGroupData05
import NoFourMUBs.Reuse.Archive.CriticalZeroSumNumeratorGroupData06
import NoFourMUBs.Reuse.Archive.CriticalZeroSumNumeratorGroupData07
import NoFourMUBs.Reuse.Archive.CriticalZeroSumNumeratorGroupData08
import NoFourMUBs.Reuse.Archive.CriticalZeroSumNumeratorGroupData09
import NoFourMUBs.Reuse.Archive.CriticalZeroSumNumeratorGroupData10
import NoFourMUBs.Reuse.Archive.CriticalZeroSumDenseCoefficients

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003

def groupedNumeratorOriginal : List HornerReflector.HExpr :=
  ExprCoefficients.add numeratorGroupOriginal_00 (ExprCoefficients.add numeratorGroupOriginal_01 (ExprCoefficients.add numeratorGroupOriginal_02 (ExprCoefficients.add numeratorGroupOriginal_03 (ExprCoefficients.add numeratorGroupOriginal_04 (ExprCoefficients.add numeratorGroupOriginal_05 (ExprCoefficients.add numeratorGroupOriginal_06 (ExprCoefficients.add numeratorGroupOriginal_07 (ExprCoefficients.add numeratorGroupOriginal_08 (ExprCoefficients.add numeratorGroupOriginal_09 (ExprCoefficients.add numeratorGroupOriginal_10 ([])))))))))))

def groupedNumeratorExpanded : List HornerReflector.HExpr :=
  ExprCoefficients.add numeratorGroupExpanded_00 (ExprCoefficients.add numeratorGroupExpanded_01 (ExprCoefficients.add numeratorGroupExpanded_02 (ExprCoefficients.add numeratorGroupExpanded_03 (ExprCoefficients.add numeratorGroupExpanded_04 (ExprCoefficients.add numeratorGroupExpanded_05 (ExprCoefficients.add numeratorGroupExpanded_06 (ExprCoefficients.add numeratorGroupExpanded_07 (ExprCoefficients.add numeratorGroupExpanded_08 (ExprCoefficients.add numeratorGroupExpanded_09 (ExprCoefficients.add numeratorGroupExpanded_10 ([])))))))))))

def groupedNumeratorResidual : List DenseCoefficients.XY :=
  DenseCoefficients.add (DenseCoefficients.fromExpr groupedNumeratorExpanded)
    (DenseCoefficients.neg (DenseCoefficients.fromExpr rawNumeratorExprCoefficients))

noncomputable section
variable {K : Type*} [Field K] [CharZero K]

/-- Regroup the same66terms into the repository's11groups. -/
theorem groupedNumeratorOriginal_eval (X Y z : K) :
    Coefficients.eval z (ExprCoefficients.interpret X Y groupedNumeratorOriginal) =
      Coefficients.eval z (ExprCoefficients.interpret X Y allCommonExprCoefficients) := by
  have hnil : Coefficients.eval z (ExprCoefficients.interpret X Y []) = 0 := rfl
  simp only [groupedNumeratorOriginal, allCommonExprCoefficients,
    numeratorGroupOriginal_00, numeratorGroupOriginal_01, numeratorGroupOriginal_02, numeratorGroupOriginal_03, numeratorGroupOriginal_04, numeratorGroupOriginal_05, numeratorGroupOriginal_06, numeratorGroupOriginal_07, numeratorGroupOriginal_08, numeratorGroupOriginal_09, numeratorGroupOriginal_10,
    ExprCoefficients.interpret_add, Coefficients.eval_add, hnil, add_zero, add_assoc]

theorem groupedNumeratorResidual_interpret (X Y : K) :
    DenseCoefficients.interpret X Y groupedNumeratorResidual =
      Coefficients.add (ExprCoefficients.interpret X Y groupedNumeratorExpanded)
        (Coefficients.neg (ExprCoefficients.interpret X Y rawNumeratorExprCoefficients)) := by
  simp only [groupedNumeratorResidual, DenseCoefficients.interpret_add,
    DenseCoefficients.interpret_neg, DenseCoefficients.interpret_fromExpr]

end
end CriticalZeroSumAssembly20261003
