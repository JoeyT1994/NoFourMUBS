import CriticalMomentReductionBatch00
import CriticalMomentReductionBatch01
import CriticalMomentReductionBatch02
import CriticalMomentReductionBatch03
import CriticalMomentReductionBatch04
import CriticalMomentReductionBatch05
import CriticalMomentReductionBatch06
import CriticalMomentReductionBatch07

set_option autoImplicit false
set_option maxRecDepth 16000
set_option maxHeartbeats 1800000
namespace CriticalLaurent20261003
open scoped BigOperators
noncomputable section

theorem row_reduction (M : ℤ → ℤ → ℂ) (hM : OrthogonalMoments M) (i : Fin 48) :
    rowValue M i=reducedRows M i := by
  fin_cases i
  · exact row_reduction_00 M hM
  · exact row_reduction_01 M hM
  · exact row_reduction_02 M hM
  · exact row_reduction_03 M hM
  · exact row_reduction_04 M hM
  · exact row_reduction_05 M hM
  · exact row_reduction_06 M hM
  · exact row_reduction_07 M hM
  · exact row_reduction_08 M hM
  · exact row_reduction_09 M hM
  · exact row_reduction_10 M hM
  · exact row_reduction_11 M hM
  · exact row_reduction_12 M hM
  · exact row_reduction_13 M hM
  · exact row_reduction_14 M hM
  · exact row_reduction_15 M hM
  · exact row_reduction_16 M hM
  · exact row_reduction_17 M hM
  · exact row_reduction_18 M hM
  · exact row_reduction_19 M hM
  · exact row_reduction_20 M hM
  · exact row_reduction_21 M hM
  · exact row_reduction_22 M hM
  · exact row_reduction_23 M hM
  · exact row_reduction_24 M hM
  · exact row_reduction_25 M hM
  · exact row_reduction_26 M hM
  · exact row_reduction_27 M hM
  · exact row_reduction_28 M hM
  · exact row_reduction_29 M hM
  · exact row_reduction_30 M hM
  · exact row_reduction_31 M hM
  · exact row_reduction_32 M hM
  · exact row_reduction_33 M hM
  · exact row_reduction_34 M hM
  · exact row_reduction_35 M hM
  · exact row_reduction_36 M hM
  · exact row_reduction_37 M hM
  · exact row_reduction_38 M hM
  · exact row_reduction_39 M hM
  · exact row_reduction_40 M hM
  · exact row_reduction_41 M hM
  · exact row_reduction_42 M hM
  · exact row_reduction_43 M hM
  · exact row_reduction_44 M hM
  · exact row_reduction_45 M hM
  · exact row_reduction_46 M hM
  · exact row_reduction_47 M hM

/-- Finite coefficient collection, with no analytic or scalar assumptions. -/
theorem reducedRows_sum (M : ℤ → ℤ → ℂ) :
    (∑ i : Fin 48, reducedRows M i)= -6*momentPolynomial66 M := by
  norm_num [reducedRows,momentPolynomial66,Fin.sum_univ_succ,
    reducedRow00,
    reducedRow01,
    reducedRow02,
    reducedRow03,
    reducedRow04,
    reducedRow05,
    reducedRow06,
    reducedRow07,
    reducedRow08,
    reducedRow09,
    reducedRow10,
    reducedRow11,
    reducedRow12,
    reducedRow13,
    reducedRow14,
    reducedRow15,
    reducedRow16,
    reducedRow17,
    reducedRow18,
    reducedRow19,
    reducedRow20,
    reducedRow21,
    reducedRow22,
    reducedRow23,
    reducedRow24,
    reducedRow25,
    reducedRow26,
    reducedRow27,
    reducedRow28,
    reducedRow29,
    reducedRow30,
    reducedRow31,
    reducedRow32,
    reducedRow33,
    reducedRow34,
    reducedRow35,
    reducedRow36,
    reducedRow37,
    reducedRow38,
    reducedRow39,
    reducedRow40,
    reducedRow41,
    reducedRow42,
    reducedRow43,
    reducedRow44,
    reducedRow45,
    reducedRow46,
    reducedRow47] <;> ring

/-- All 2,304 ordered coefficient products, including exact M00=6 and all six
zero moments, give the explicit 66-term polynomial. -/
theorem moment_quadratic_reduction (M : ℤ → ℤ → ℂ) (hM : OrthogonalMoments M) :
    (-(∑ rs : Fin 48 × Fin 48,
      (((cornerTerms rs.1).1*(cornerTerms rs.2).1 : ℤ) : ℂ) *
        momentMonomial M ((cornerTerms rs.1).2+(cornerTerms rs.2).2)))/6 =
      momentPolynomial66 M := by
  rw [Fintype.sum_prod_type]
  change (-(∑ i : Fin 48, rowValue M i))/6=momentPolynomial66 M
  simp_rw [row_reduction M hM]
  rw [reducedRows_sum]
  ring

end
#print axioms row_reduction
#print axioms reducedRows_sum
#print axioms moment_quadratic_reduction
end CriticalLaurent20261003
