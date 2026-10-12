import NoFourMUBs.Reuse.Archive.CriticalZeroSumDenseCommonBindings01
import NoFourMUBs.Reuse.Archive.CriticalZeroSumDenseCommonBindings02
import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprCommonBindings01
import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprCommonBindings02
import NoFourMUBs.Reuse.Archive.CriticalZeroSumNumeratorGroupData03

set_option autoImplicit false
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]

/-- The fourth archived group, using the existing dense common coefficients. -/
def group03DenseReuse : List DenseCoefficients.XY :=
  DenseCoefficients.add commonDenseCoefficients_18
    (DenseCoefficients.add commonDenseCoefficients_19
      (DenseCoefficients.add commonDenseCoefficients_20
        (DenseCoefficients.add commonDenseCoefficients_21
          (DenseCoefficients.add commonDenseCoefficients_22
            (DenseCoefficients.add commonDenseCoefficients_23 [])))))

theorem group03DenseReuse_interpret (X Y : K) :
    DenseCoefficients.interpret X Y group03DenseReuse =
      ExprCoefficients.interpret X Y numeratorGroupOriginal_03 := by
  simp only [group03DenseReuse, numeratorGroupOriginal_03,
    DenseCoefficients.interpret_add, ExprCoefficients.interpret_add,
    commonDenseCoefficients_18_interpret, commonDenseCoefficients_19_interpret,
    commonDenseCoefficients_20_interpret, commonDenseCoefficients_21_interpret,
    commonDenseCoefficients_22_interpret, commonDenseCoefficients_23_interpret,
    commonExprCoefficients_18_interpret, commonExprCoefficients_19_interpret,
    commonExprCoefficients_20_interpret, commonExprCoefficients_21_interpret,
    commonExprCoefficients_22_interpret, commonExprCoefficients_23_interpret]
  rfl

def group03DenseResidual : List DenseCoefficients.XY :=
  DenseCoefficients.add group03DenseReuse
    (DenseCoefficients.neg (DenseCoefficients.fromExpr numeratorGroupExpanded_03))

theorem group03DenseResidual_interpret (X Y : K) :
    DenseCoefficients.interpret X Y group03DenseResidual =
      ExprCoefficients.interpret X Y numeratorGroupResidual_03 := by
  simp only [group03DenseResidual, numeratorGroupResidual_03,
    DenseCoefficients.interpret_add, ExprCoefficients.interpret_add,
    DenseCoefficients.interpret_neg, ExprCoefficients.interpret_neg,
    DenseCoefficients.interpret_fromExpr, group03DenseReuse_interpret]

end
end CriticalZeroSumAssembly20261003
