import NoFourMUBs.Reuse.Archive.CriticalZeroSumDenseCommonBindings03
import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprCommonBindings03
import NoFourMUBs.Reuse.Archive.CriticalZeroSumNumeratorGroupData06

set_option autoImplicit false
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]

/-- The seventh archived group, using the existing dense common coefficients. -/
def group06DenseReuse : List DenseCoefficients.XY :=
  DenseCoefficients.add commonDenseCoefficients_36
    (DenseCoefficients.add commonDenseCoefficients_37
      (DenseCoefficients.add commonDenseCoefficients_38
        (DenseCoefficients.add commonDenseCoefficients_39
          (DenseCoefficients.add commonDenseCoefficients_40
            (DenseCoefficients.add commonDenseCoefficients_41 [])))))

theorem group06DenseReuse_interpret (X Y : K) :
    DenseCoefficients.interpret X Y group06DenseReuse =
      ExprCoefficients.interpret X Y numeratorGroupOriginal_06 := by
  simp only [group06DenseReuse, numeratorGroupOriginal_06,
    DenseCoefficients.interpret_add, ExprCoefficients.interpret_add,
    commonDenseCoefficients_36_interpret, commonDenseCoefficients_37_interpret,
    commonDenseCoefficients_38_interpret, commonDenseCoefficients_39_interpret,
    commonDenseCoefficients_40_interpret, commonDenseCoefficients_41_interpret,
    commonExprCoefficients_36_interpret, commonExprCoefficients_37_interpret,
    commonExprCoefficients_38_interpret, commonExprCoefficients_39_interpret,
    commonExprCoefficients_40_interpret, commonExprCoefficients_41_interpret]
  rfl

def group06DenseResidual : List DenseCoefficients.XY :=
  DenseCoefficients.add group06DenseReuse
    (DenseCoefficients.neg (DenseCoefficients.fromExpr numeratorGroupExpanded_06))

theorem group06DenseResidual_interpret (X Y : K) :
    DenseCoefficients.interpret X Y group06DenseResidual =
      ExprCoefficients.interpret X Y numeratorGroupResidual_06 := by
  simp only [group06DenseResidual, numeratorGroupResidual_06,
    DenseCoefficients.interpret_add, ExprCoefficients.interpret_add,
    DenseCoefficients.interpret_neg, ExprCoefficients.interpret_neg,
    DenseCoefficients.interpret_fromExpr, group06DenseReuse_interpret]

end
end CriticalZeroSumAssembly20261003
