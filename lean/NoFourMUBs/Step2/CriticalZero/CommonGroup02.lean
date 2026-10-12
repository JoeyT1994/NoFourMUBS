import NoFourMUBs.Reuse.Archive.CriticalZeroSumDenseCommonBindings01
import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprCommonBindings01
import NoFourMUBs.Reuse.Archive.CriticalZeroSumNumeratorGroupData02

set_option autoImplicit false
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]

/-- The third archived group, using the existing dense common coefficients. -/
def group02DenseReuse : List DenseCoefficients.XY :=
  DenseCoefficients.add commonDenseCoefficients_12
    (DenseCoefficients.add commonDenseCoefficients_13
      (DenseCoefficients.add commonDenseCoefficients_14
        (DenseCoefficients.add commonDenseCoefficients_15
          (DenseCoefficients.add commonDenseCoefficients_16
            (DenseCoefficients.add commonDenseCoefficients_17 [])))))

theorem group02DenseReuse_interpret (X Y : K) :
    DenseCoefficients.interpret X Y group02DenseReuse =
      ExprCoefficients.interpret X Y numeratorGroupOriginal_02 := by
  simp only [group02DenseReuse, numeratorGroupOriginal_02,
    DenseCoefficients.interpret_add, ExprCoefficients.interpret_add,
    commonDenseCoefficients_12_interpret, commonDenseCoefficients_13_interpret,
    commonDenseCoefficients_14_interpret, commonDenseCoefficients_15_interpret,
    commonDenseCoefficients_16_interpret, commonDenseCoefficients_17_interpret,
    commonExprCoefficients_12_interpret, commonExprCoefficients_13_interpret,
    commonExprCoefficients_14_interpret, commonExprCoefficients_15_interpret,
    commonExprCoefficients_16_interpret, commonExprCoefficients_17_interpret]
  rfl

def group02DenseResidual : List DenseCoefficients.XY :=
  DenseCoefficients.add group02DenseReuse
    (DenseCoefficients.neg (DenseCoefficients.fromExpr numeratorGroupExpanded_02))

theorem group02DenseResidual_interpret (X Y : K) :
    DenseCoefficients.interpret X Y group02DenseResidual =
      ExprCoefficients.interpret X Y numeratorGroupResidual_02 := by
  simp only [group02DenseResidual, numeratorGroupResidual_02,
    DenseCoefficients.interpret_add, ExprCoefficients.interpret_add,
    DenseCoefficients.interpret_neg, ExprCoefficients.interpret_neg,
    DenseCoefficients.interpret_fromExpr, group02DenseReuse_interpret]

end
end CriticalZeroSumAssembly20261003
