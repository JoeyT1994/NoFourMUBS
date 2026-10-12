import NoFourMUBs.Reuse.Archive.CriticalZeroSumDenseCommonBindings02
import NoFourMUBs.Reuse.Archive.CriticalZeroSumDenseCommonBindings03
import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprCommonBindings02
import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprCommonBindings03
import NoFourMUBs.Reuse.Archive.CriticalZeroSumNumeratorGroupData05

set_option autoImplicit false
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]

/-- The sixth archived group, using the existing dense common coefficients. -/
def group05DenseReuse : List DenseCoefficients.XY :=
  DenseCoefficients.add commonDenseCoefficients_30
    (DenseCoefficients.add commonDenseCoefficients_31
      (DenseCoefficients.add commonDenseCoefficients_32
        (DenseCoefficients.add commonDenseCoefficients_33
          (DenseCoefficients.add commonDenseCoefficients_34
            (DenseCoefficients.add commonDenseCoefficients_35 [])))))

theorem group05DenseReuse_interpret (X Y : K) :
    DenseCoefficients.interpret X Y group05DenseReuse =
      ExprCoefficients.interpret X Y numeratorGroupOriginal_05 := by
  simp only [group05DenseReuse, numeratorGroupOriginal_05,
    DenseCoefficients.interpret_add, ExprCoefficients.interpret_add,
    commonDenseCoefficients_30_interpret, commonDenseCoefficients_31_interpret,
    commonDenseCoefficients_32_interpret, commonDenseCoefficients_33_interpret,
    commonDenseCoefficients_34_interpret, commonDenseCoefficients_35_interpret,
    commonExprCoefficients_30_interpret, commonExprCoefficients_31_interpret,
    commonExprCoefficients_32_interpret, commonExprCoefficients_33_interpret,
    commonExprCoefficients_34_interpret, commonExprCoefficients_35_interpret]
  rfl

def group05DenseResidual : List DenseCoefficients.XY :=
  DenseCoefficients.add group05DenseReuse
    (DenseCoefficients.neg (DenseCoefficients.fromExpr numeratorGroupExpanded_05))

theorem group05DenseResidual_interpret (X Y : K) :
    DenseCoefficients.interpret X Y group05DenseResidual =
      ExprCoefficients.interpret X Y numeratorGroupResidual_05 := by
  simp only [group05DenseResidual, numeratorGroupResidual_05,
    DenseCoefficients.interpret_add, ExprCoefficients.interpret_add,
    DenseCoefficients.interpret_neg, ExprCoefficients.interpret_neg,
    DenseCoefficients.interpret_fromExpr, group05DenseReuse_interpret]

end
end CriticalZeroSumAssembly20261003
