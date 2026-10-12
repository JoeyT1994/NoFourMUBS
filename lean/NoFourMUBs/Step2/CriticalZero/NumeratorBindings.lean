import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprCommonBindings00
import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprCommonBindings01
import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprCommonBindings02
import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprCommonBindings03
import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprCommonBindings04
import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprCommonBindings05
import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprRawBindings
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]

theorem allCommonExprCoefficients_interpret (X Y : K) :
    ExprCoefficients.interpret X Y allCommonExprCoefficients = allCommonCoefficients X Y := by
  simp only [allCommonExprCoefficients, allCommonCoefficients,
    ExprCoefficients.interpret_add, commonExprCoefficients_00_interpret,
    commonExprCoefficients_01_interpret,
    commonExprCoefficients_02_interpret,
    commonExprCoefficients_03_interpret,
    commonExprCoefficients_04_interpret,
    commonExprCoefficients_05_interpret,
    commonExprCoefficients_06_interpret,
    commonExprCoefficients_07_interpret,
    commonExprCoefficients_08_interpret,
    commonExprCoefficients_09_interpret,
    commonExprCoefficients_10_interpret,
    commonExprCoefficients_11_interpret,
    commonExprCoefficients_12_interpret,
    commonExprCoefficients_13_interpret,
    commonExprCoefficients_14_interpret,
    commonExprCoefficients_15_interpret,
    commonExprCoefficients_16_interpret,
    commonExprCoefficients_17_interpret,
    commonExprCoefficients_18_interpret,
    commonExprCoefficients_19_interpret,
    commonExprCoefficients_20_interpret,
    commonExprCoefficients_21_interpret,
    commonExprCoefficients_22_interpret,
    commonExprCoefficients_23_interpret,
    commonExprCoefficients_24_interpret,
    commonExprCoefficients_25_interpret,
    commonExprCoefficients_26_interpret,
    commonExprCoefficients_27_interpret,
    commonExprCoefficients_28_interpret,
    commonExprCoefficients_29_interpret,
    commonExprCoefficients_30_interpret,
    commonExprCoefficients_31_interpret,
    commonExprCoefficients_32_interpret,
    commonExprCoefficients_33_interpret,
    commonExprCoefficients_34_interpret,
    commonExprCoefficients_35_interpret,
    commonExprCoefficients_36_interpret,
    commonExprCoefficients_37_interpret,
    commonExprCoefficients_38_interpret,
    commonExprCoefficients_39_interpret,
    commonExprCoefficients_40_interpret,
    commonExprCoefficients_41_interpret,
    commonExprCoefficients_42_interpret,
    commonExprCoefficients_43_interpret,
    commonExprCoefficients_44_interpret,
    commonExprCoefficients_45_interpret,
    commonExprCoefficients_46_interpret,
    commonExprCoefficients_47_interpret,
    commonExprCoefficients_48_interpret,
    commonExprCoefficients_49_interpret,
    commonExprCoefficients_50_interpret,
    commonExprCoefficients_51_interpret,
    commonExprCoefficients_52_interpret,
    commonExprCoefficients_53_interpret,
    commonExprCoefficients_54_interpret,
    commonExprCoefficients_55_interpret,
    commonExprCoefficients_56_interpret,
    commonExprCoefficients_57_interpret,
    commonExprCoefficients_58_interpret,
    commonExprCoefficients_59_interpret,
    commonExprCoefficients_60_interpret,
    commonExprCoefficients_61_interpret,
    commonExprCoefficients_62_interpret,
    commonExprCoefficients_63_interpret,
    commonExprCoefficients_64_interpret,
    commonExprCoefficients_65_interpret, ExprCoefficients.interpret]

theorem numeratorExprResidual_interpret (X Y : K) :
    ExprCoefficients.interpret X Y numeratorExprResidual =
      Coefficients.add (allCommonCoefficients X Y) (Coefficients.neg (numeratorCoefficients X Y)) := by
  simp only [numeratorExprResidual, ExprCoefficients.interpret_add,
    ExprCoefficients.interpret_neg, allCommonExprCoefficients_interpret,
    rawNumeratorExprCoefficients_interpret]

end
end CriticalZeroSumAssembly20261003
