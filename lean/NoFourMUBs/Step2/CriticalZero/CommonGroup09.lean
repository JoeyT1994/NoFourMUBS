import NoFourMUBs.Reuse.Archive.CriticalZeroSumDenseCommonBindings04
import NoFourMUBs.Reuse.Archive.CriticalZeroSumDenseCommonBindings05
import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprCommonBindings04
import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprCommonBindings05
import NoFourMUBs.Reuse.Archive.CriticalZeroSumNumeratorGroupData09

set_option autoImplicit false
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]

/-- The tenth archived group, using the existing dense common coefficients. -/
def group09DenseReuse : List DenseCoefficients.XY :=
  DenseCoefficients.add commonDenseCoefficients_54
    (DenseCoefficients.add commonDenseCoefficients_55
      (DenseCoefficients.add commonDenseCoefficients_56
        (DenseCoefficients.add commonDenseCoefficients_57
          (DenseCoefficients.add commonDenseCoefficients_58
            (DenseCoefficients.add commonDenseCoefficients_59 [])))))

theorem group09DenseReuse_interpret (X Y : K) :
    DenseCoefficients.interpret X Y group09DenseReuse =
      ExprCoefficients.interpret X Y numeratorGroupOriginal_09 := by
  simp only [group09DenseReuse, numeratorGroupOriginal_09,
    DenseCoefficients.interpret_add, ExprCoefficients.interpret_add,
    commonDenseCoefficients_54_interpret, commonDenseCoefficients_55_interpret,
    commonDenseCoefficients_56_interpret, commonDenseCoefficients_57_interpret,
    commonDenseCoefficients_58_interpret, commonDenseCoefficients_59_interpret,
    commonExprCoefficients_54_interpret, commonExprCoefficients_55_interpret,
    commonExprCoefficients_56_interpret, commonExprCoefficients_57_interpret,
    commonExprCoefficients_58_interpret, commonExprCoefficients_59_interpret]
  rfl

def group09DenseResidual : List DenseCoefficients.XY :=
  DenseCoefficients.add group09DenseReuse
    (DenseCoefficients.neg (DenseCoefficients.fromExpr numeratorGroupExpanded_09))

theorem group09DenseResidual_interpret (X Y : K) :
    DenseCoefficients.interpret X Y group09DenseResidual =
      ExprCoefficients.interpret X Y numeratorGroupResidual_09 := by
  simp only [group09DenseResidual, numeratorGroupResidual_09,
    DenseCoefficients.interpret_add, ExprCoefficients.interpret_add,
    DenseCoefficients.interpret_neg, ExprCoefficients.interpret_neg,
    DenseCoefficients.interpret_fromExpr, group09DenseReuse_interpret]

end
end CriticalZeroSumAssembly20261003
