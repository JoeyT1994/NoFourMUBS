import NoFourMUBs.Reuse.Archive.CriticalZeroSumDenseCommonBindings00
import NoFourMUBs.Reuse.Archive.CriticalZeroSumDenseCommonBindings01
import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprCommonBindings00
import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprCommonBindings01
import NoFourMUBs.Reuse.Archive.CriticalZeroSumNumeratorGroupData01

set_option autoImplicit false
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]

/-- The second archived group, using the existing dense common coefficients. -/
def group01DenseReuse : List DenseCoefficients.XY :=
  DenseCoefficients.add commonDenseCoefficients_06
    (DenseCoefficients.add commonDenseCoefficients_07
      (DenseCoefficients.add commonDenseCoefficients_08
        (DenseCoefficients.add commonDenseCoefficients_09
          (DenseCoefficients.add commonDenseCoefficients_10
            (DenseCoefficients.add commonDenseCoefficients_11 [])))))

theorem group01DenseReuse_interpret (X Y : K) :
    DenseCoefficients.interpret X Y group01DenseReuse =
      ExprCoefficients.interpret X Y numeratorGroupOriginal_01 := by
  simp only [group01DenseReuse, numeratorGroupOriginal_01,
    DenseCoefficients.interpret_add, ExprCoefficients.interpret_add,
    commonDenseCoefficients_06_interpret, commonDenseCoefficients_07_interpret,
    commonDenseCoefficients_08_interpret, commonDenseCoefficients_09_interpret,
    commonDenseCoefficients_10_interpret, commonDenseCoefficients_11_interpret,
    commonExprCoefficients_06_interpret, commonExprCoefficients_07_interpret,
    commonExprCoefficients_08_interpret, commonExprCoefficients_09_interpret,
    commonExprCoefficients_10_interpret, commonExprCoefficients_11_interpret]
  rfl

def group01DenseResidual : List DenseCoefficients.XY :=
  DenseCoefficients.add group01DenseReuse
    (DenseCoefficients.neg (DenseCoefficients.fromExpr numeratorGroupExpanded_01))

theorem group01DenseResidual_interpret (X Y : K) :
    DenseCoefficients.interpret X Y group01DenseResidual =
      ExprCoefficients.interpret X Y numeratorGroupResidual_01 := by
  simp only [group01DenseResidual, numeratorGroupResidual_01,
    DenseCoefficients.interpret_add, ExprCoefficients.interpret_add,
    DenseCoefficients.interpret_neg, ExprCoefficients.interpret_neg,
    DenseCoefficients.interpret_fromExpr, group01DenseReuse_interpret]

end
end CriticalZeroSumAssembly20261003
