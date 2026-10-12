import NoFourMUBs.Reuse.Archive.CriticalZeroSumDenseCommonBindings04
import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprCommonBindings04
import NoFourMUBs.Reuse.Archive.CriticalZeroSumNumeratorGroupData08

set_option autoImplicit false
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]

/-- The ninth archived group, using the existing dense common coefficients. -/
def group08DenseReuse : List DenseCoefficients.XY :=
  DenseCoefficients.add commonDenseCoefficients_48
    (DenseCoefficients.add commonDenseCoefficients_49
      (DenseCoefficients.add commonDenseCoefficients_50
        (DenseCoefficients.add commonDenseCoefficients_51
          (DenseCoefficients.add commonDenseCoefficients_52
            (DenseCoefficients.add commonDenseCoefficients_53 [])))))

theorem group08DenseReuse_interpret (X Y : K) :
    DenseCoefficients.interpret X Y group08DenseReuse =
      ExprCoefficients.interpret X Y numeratorGroupOriginal_08 := by
  simp only [group08DenseReuse, numeratorGroupOriginal_08,
    DenseCoefficients.interpret_add, ExprCoefficients.interpret_add,
    commonDenseCoefficients_48_interpret, commonDenseCoefficients_49_interpret,
    commonDenseCoefficients_50_interpret, commonDenseCoefficients_51_interpret,
    commonDenseCoefficients_52_interpret, commonDenseCoefficients_53_interpret,
    commonExprCoefficients_48_interpret, commonExprCoefficients_49_interpret,
    commonExprCoefficients_50_interpret, commonExprCoefficients_51_interpret,
    commonExprCoefficients_52_interpret, commonExprCoefficients_53_interpret]
  rfl

def group08DenseResidual : List DenseCoefficients.XY :=
  DenseCoefficients.add group08DenseReuse
    (DenseCoefficients.neg (DenseCoefficients.fromExpr numeratorGroupExpanded_08))

theorem group08DenseResidual_interpret (X Y : K) :
    DenseCoefficients.interpret X Y group08DenseResidual =
      ExprCoefficients.interpret X Y numeratorGroupResidual_08 := by
  simp only [group08DenseResidual, numeratorGroupResidual_08,
    DenseCoefficients.interpret_add, ExprCoefficients.interpret_add,
    DenseCoefficients.interpret_neg, ExprCoefficients.interpret_neg,
    DenseCoefficients.interpret_fromExpr, group08DenseReuse_interpret]

end
end CriticalZeroSumAssembly20261003
