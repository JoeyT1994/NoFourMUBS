import NoFourMUBs.Step2.CriticalZero.CommonTerm01
import NoFourMUBs.Reuse.Archive.CriticalZeroSumDenseCommonBindings00
import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprCommonBindings00
import NoFourMUBs.Reuse.Archive.CriticalZeroSumNumeratorGroupData00

set_option autoImplicit false
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]

/-- The same archived first group, reusing its checked triple product. -/
def group00TripReuse : List DenseCoefficients.XY :=
  DenseCoefficients.add commonDenseCoefficients_00
    (DenseCoefficients.add (DenseCoefficients.neg trip00Cs)
      (DenseCoefficients.add commonDenseCoefficients_02
        (DenseCoefficients.add commonDenseCoefficients_03
          (DenseCoefficients.add commonDenseCoefficients_04
            (DenseCoefficients.add commonDenseCoefficients_05 [])))))

theorem group00TripReuse_eval (X Y z : K) :
    Coefficients.eval z (DenseCoefficients.interpret X Y group00TripReuse) =
      Coefficients.eval z (ExprCoefficients.interpret X Y numeratorGroupOriginal_00) := by
  simp only [group00TripReuse, numeratorGroupOriginal_00,
    DenseCoefficients.interpret_add, ExprCoefficients.interpret_add,
    commonDenseCoefficients_00_interpret, commonDenseCoefficients_02_interpret,
    commonDenseCoefficients_03_interpret, commonDenseCoefficients_04_interpret,
    commonDenseCoefficients_05_interpret,
    commonExprCoefficients_00_interpret, commonExprCoefficients_01_interpret,
    commonExprCoefficients_02_interpret, commonExprCoefficients_03_interpret,
    commonExprCoefficients_04_interpret, commonExprCoefficients_05_interpret,
    Coefficients.eval_add, common_term01_from_trip00]
  rfl

def group00TripResidual : List DenseCoefficients.XY :=
  DenseCoefficients.add group00TripReuse
    (DenseCoefficients.neg (DenseCoefficients.fromExpr numeratorGroupExpanded_00))

theorem group00TripResidual_eval (X Y z : K) :
    Coefficients.eval z (DenseCoefficients.interpret X Y group00TripResidual) =
      Coefficients.eval z (ExprCoefficients.interpret X Y numeratorGroupResidual_00) := by
  simp only [group00TripResidual, numeratorGroupResidual_00,
    DenseCoefficients.interpret_add, ExprCoefficients.interpret_add,
    DenseCoefficients.interpret_neg, ExprCoefficients.interpret_neg,
    DenseCoefficients.interpret_fromExpr, Coefficients.eval_add,
    Coefficients.eval_neg, group00TripReuse_eval]

end
end CriticalZeroSumAssembly20261003
