import NoFourMUBs.Reuse.Archive.CriticalZeroSumDenseCommonBindings05
import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprCommonBindings05
import NoFourMUBs.Reuse.Archive.CriticalZeroSumNumeratorGroupData10

set_option autoImplicit false
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]

/-- The eleventh archived group, using the existing dense common coefficients. -/
def group10DenseReuse : List DenseCoefficients.XY :=
  DenseCoefficients.add commonDenseCoefficients_60
    (DenseCoefficients.add commonDenseCoefficients_61
      (DenseCoefficients.add commonDenseCoefficients_62
        (DenseCoefficients.add commonDenseCoefficients_63
          (DenseCoefficients.add commonDenseCoefficients_64
            (DenseCoefficients.add commonDenseCoefficients_65 [])))))

theorem group10DenseReuse_interpret (X Y : K) :
    DenseCoefficients.interpret X Y group10DenseReuse =
      ExprCoefficients.interpret X Y numeratorGroupOriginal_10 := by
  simp only [group10DenseReuse, numeratorGroupOriginal_10,
    DenseCoefficients.interpret_add, ExprCoefficients.interpret_add,
    commonDenseCoefficients_60_interpret, commonDenseCoefficients_61_interpret,
    commonDenseCoefficients_62_interpret, commonDenseCoefficients_63_interpret,
    commonDenseCoefficients_64_interpret, commonDenseCoefficients_65_interpret,
    commonExprCoefficients_60_interpret, commonExprCoefficients_61_interpret,
    commonExprCoefficients_62_interpret, commonExprCoefficients_63_interpret,
    commonExprCoefficients_64_interpret, commonExprCoefficients_65_interpret]
  rfl

def group10DenseResidual : List DenseCoefficients.XY :=
  DenseCoefficients.add group10DenseReuse
    (DenseCoefficients.neg (DenseCoefficients.fromExpr numeratorGroupExpanded_10))

theorem group10DenseResidual_interpret (X Y : K) :
    DenseCoefficients.interpret X Y group10DenseResidual =
      ExprCoefficients.interpret X Y numeratorGroupResidual_10 := by
  simp only [group10DenseResidual, numeratorGroupResidual_10,
    DenseCoefficients.interpret_add, ExprCoefficients.interpret_add,
    DenseCoefficients.interpret_neg, ExprCoefficients.interpret_neg,
    DenseCoefficients.interpret_fromExpr, group10DenseReuse_interpret]

end
end CriticalZeroSumAssembly20261003
