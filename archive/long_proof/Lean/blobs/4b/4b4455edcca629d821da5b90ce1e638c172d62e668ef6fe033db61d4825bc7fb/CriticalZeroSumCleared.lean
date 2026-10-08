import CriticalZeroSumValues
import CriticalZeroSumTerms00
import CriticalZeroSumEval00
import CriticalZeroSumTerms01
import CriticalZeroSumEval01
import CriticalZeroSumTerms02
import CriticalZeroSumEval02
import CriticalZeroSumTerms03
import CriticalZeroSumEval03
import CriticalZeroSumTerms04
import CriticalZeroSumEval04
import CriticalZeroSumTerms05
import CriticalZeroSumEval05
set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 100000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]

def computedNumerator (X Y z : K) : K :=
  CriticalZeroSplitReduction20261003.Coefficients.eval z (allCommonCoefficients X Y)

theorem computedNumerator_eq_terms (X Y z : K) : computedNumerator X Y z=
  commonTerm_00 X Y z +
  commonTerm_01 X Y z +
  commonTerm_02 X Y z +
  commonTerm_03 X Y z +
  commonTerm_04 X Y z +
  commonTerm_05 X Y z +
  commonTerm_06 X Y z +
  commonTerm_07 X Y z +
  commonTerm_08 X Y z +
  commonTerm_09 X Y z +
  commonTerm_10 X Y z +
  commonTerm_11 X Y z +
  commonTerm_12 X Y z +
  commonTerm_13 X Y z +
  commonTerm_14 X Y z +
  commonTerm_15 X Y z +
  commonTerm_16 X Y z +
  commonTerm_17 X Y z +
  commonTerm_18 X Y z +
  commonTerm_19 X Y z +
  commonTerm_20 X Y z +
  commonTerm_21 X Y z +
  commonTerm_22 X Y z +
  commonTerm_23 X Y z +
  commonTerm_24 X Y z +
  commonTerm_25 X Y z +
  commonTerm_26 X Y z +
  commonTerm_27 X Y z +
  commonTerm_28 X Y z +
  commonTerm_29 X Y z +
  commonTerm_30 X Y z +
  commonTerm_31 X Y z +
  commonTerm_32 X Y z +
  commonTerm_33 X Y z +
  commonTerm_34 X Y z +
  commonTerm_35 X Y z +
  commonTerm_36 X Y z +
  commonTerm_37 X Y z +
  commonTerm_38 X Y z +
  commonTerm_39 X Y z +
  commonTerm_40 X Y z +
  commonTerm_41 X Y z +
  commonTerm_42 X Y z +
  commonTerm_43 X Y z +
  commonTerm_44 X Y z +
  commonTerm_45 X Y z +
  commonTerm_46 X Y z +
  commonTerm_47 X Y z +
  commonTerm_48 X Y z +
  commonTerm_49 X Y z +
  commonTerm_50 X Y z +
  commonTerm_51 X Y z +
  commonTerm_52 X Y z +
  commonTerm_53 X Y z +
  commonTerm_54 X Y z +
  commonTerm_55 X Y z +
  commonTerm_56 X Y z +
  commonTerm_57 X Y z +
  commonTerm_58 X Y z +
  commonTerm_59 X Y z +
  commonTerm_60 X Y z +
  commonTerm_61 X Y z +
  commonTerm_62 X Y z +
  commonTerm_63 X Y z +
  commonTerm_64 X Y z +
  commonTerm_65 X Y z := by
  have hn : CriticalZeroSplitReduction20261003.Coefficients.eval z ([] : List K)=0 := rfl
  simp only [computedNumerator,allCommonCoefficients,
    CriticalZeroSplitReduction20261003.Coefficients.eval_add,hn,
    eval_common_00,eval_common_01,eval_common_02,eval_common_03,eval_common_04,eval_common_05,eval_common_06,eval_common_07,eval_common_08,eval_common_09,eval_common_10,eval_common_11,eval_common_12,eval_common_13,eval_common_14,eval_common_15,eval_common_16,eval_common_17,eval_common_18,eval_common_19,eval_common_20,eval_common_21,eval_common_22,eval_common_23,eval_common_24,eval_common_25,eval_common_26,eval_common_27,eval_common_28,eval_common_29,eval_common_30,eval_common_31,eval_common_32,eval_common_33,eval_common_34,eval_common_35,eval_common_36,eval_common_37,eval_common_38,eval_common_39,eval_common_40,eval_common_41,eval_common_42,eval_common_43,eval_common_44,eval_common_45,eval_common_46,eval_common_47,eval_common_48,eval_common_49,eval_common_50,eval_common_51,eval_common_52,eval_common_53,eval_common_54,eval_common_55,eval_common_56,eval_common_57,eval_common_58,eval_common_59,eval_common_60,eval_common_61,eval_common_62,eval_common_63,eval_common_64,eval_common_65]
  ring

/-- Every term including the constant is multiplied by the common denominator.
The quadratic relation is used exactly in the odd-moment pairs. -/
theorem valueSum66_times_denominator (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    valueSum66 X Y z r*commonDenominator X Y z=computedNumerator X Y z := by
  rw [computedNumerator_eq_terms]
  dsimp only [valueSum66,polynomial66]
  linear_combination
    (common_term_00 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_01 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_02 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_03 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_04 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_05 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_06 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_07 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_08 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_09 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_10 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_11 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_12 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_13 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_14 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_15 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_16 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_17 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_18 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_19 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_20 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_21 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_22 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_23 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_24 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_25 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_26 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_27 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_28 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_29 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_30 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_31 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_32 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_33 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_34 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_35 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_36 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_37 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_38 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_39 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_40 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_41 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_42 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_43 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_44 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_45 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_46 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_47 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_48 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_49 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_50 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_51 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_52 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_53 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_54 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_55 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_56 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_57 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_58 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_59 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_60 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_61 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_62 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_63 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_64 X Y z r hX hY hz hDx hDy hDz hq) +
    (common_term_65 X Y z r hX hY hz hDx hDy hDz hq)
end
#print axioms computedNumerator_eq_terms
#print axioms valueSum66_times_denominator
end CriticalZeroSumAssembly20261003
