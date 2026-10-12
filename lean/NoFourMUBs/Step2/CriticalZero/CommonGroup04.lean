import NoFourMUBs.Reuse.Archive.CriticalZeroSumDenseCommonBindings02
import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprCommonBindings02
import NoFourMUBs.Reuse.Archive.CriticalZeroSumNumeratorGroupData04

set_option autoImplicit false
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]

/-- The fifth archived group, using the existing dense common coefficients. -/
def group04DenseReuse : List DenseCoefficients.XY :=
  DenseCoefficients.add commonDenseCoefficients_24
    (DenseCoefficients.add commonDenseCoefficients_25
      (DenseCoefficients.add commonDenseCoefficients_26
        (DenseCoefficients.add commonDenseCoefficients_27
          (DenseCoefficients.add commonDenseCoefficients_28
            (DenseCoefficients.add commonDenseCoefficients_29 [])))))

theorem group04DenseReuse_interpret (X Y : K) :
    DenseCoefficients.interpret X Y group04DenseReuse =
      ExprCoefficients.interpret X Y numeratorGroupOriginal_04 := by
  simp only [group04DenseReuse, numeratorGroupOriginal_04,
    DenseCoefficients.interpret_add, ExprCoefficients.interpret_add,
    commonDenseCoefficients_24_interpret, commonDenseCoefficients_25_interpret,
    commonDenseCoefficients_26_interpret, commonDenseCoefficients_27_interpret,
    commonDenseCoefficients_28_interpret, commonDenseCoefficients_29_interpret,
    commonExprCoefficients_24_interpret, commonExprCoefficients_25_interpret,
    commonExprCoefficients_26_interpret, commonExprCoefficients_27_interpret,
    commonExprCoefficients_28_interpret, commonExprCoefficients_29_interpret]
  rfl

def group04DenseResidual : List DenseCoefficients.XY :=
  DenseCoefficients.add group04DenseReuse
    (DenseCoefficients.neg (DenseCoefficients.fromExpr numeratorGroupExpanded_04))

theorem group04DenseResidual_interpret (X Y : K) :
    DenseCoefficients.interpret X Y group04DenseResidual =
      ExprCoefficients.interpret X Y numeratorGroupResidual_04 := by
  simp only [group04DenseResidual, numeratorGroupResidual_04,
    DenseCoefficients.interpret_add, ExprCoefficients.interpret_add,
    DenseCoefficients.interpret_neg, ExprCoefficients.interpret_neg,
    DenseCoefficients.interpret_fromExpr, group04DenseReuse_interpret]

end
end CriticalZeroSumAssembly20261003
