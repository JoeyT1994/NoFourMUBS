import NoFourMUBs.Reuse.Archive.CriticalZeroSumDenseCommonBindings03
import NoFourMUBs.Reuse.Archive.CriticalZeroSumDenseCommonBindings04
import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprCommonBindings03
import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprCommonBindings04
import NoFourMUBs.Reuse.Archive.CriticalZeroSumNumeratorGroupData07

set_option autoImplicit false
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]

/-- The eighth archived group, using the existing dense common coefficients. -/
def group07DenseReuse : List DenseCoefficients.XY :=
  DenseCoefficients.add commonDenseCoefficients_42
    (DenseCoefficients.add commonDenseCoefficients_43
      (DenseCoefficients.add commonDenseCoefficients_44
        (DenseCoefficients.add commonDenseCoefficients_45
          (DenseCoefficients.add commonDenseCoefficients_46
            (DenseCoefficients.add commonDenseCoefficients_47 [])))))

theorem group07DenseReuse_interpret (X Y : K) :
    DenseCoefficients.interpret X Y group07DenseReuse =
      ExprCoefficients.interpret X Y numeratorGroupOriginal_07 := by
  simp only [group07DenseReuse, numeratorGroupOriginal_07,
    DenseCoefficients.interpret_add, ExprCoefficients.interpret_add,
    commonDenseCoefficients_42_interpret, commonDenseCoefficients_43_interpret,
    commonDenseCoefficients_44_interpret, commonDenseCoefficients_45_interpret,
    commonDenseCoefficients_46_interpret, commonDenseCoefficients_47_interpret,
    commonExprCoefficients_42_interpret, commonExprCoefficients_43_interpret,
    commonExprCoefficients_44_interpret, commonExprCoefficients_45_interpret,
    commonExprCoefficients_46_interpret, commonExprCoefficients_47_interpret]
  rfl

def group07DenseResidual : List DenseCoefficients.XY :=
  DenseCoefficients.add group07DenseReuse
    (DenseCoefficients.neg (DenseCoefficients.fromExpr numeratorGroupExpanded_07))

theorem group07DenseResidual_interpret (X Y : K) :
    DenseCoefficients.interpret X Y group07DenseResidual =
      ExprCoefficients.interpret X Y numeratorGroupResidual_07 := by
  simp only [group07DenseResidual, numeratorGroupResidual_07,
    DenseCoefficients.interpret_add, ExprCoefficients.interpret_add,
    DenseCoefficients.interpret_neg, ExprCoefficients.interpret_neg,
    DenseCoefficients.interpret_fromExpr, group07DenseReuse_interpret]

end
end CriticalZeroSumAssembly20261003
