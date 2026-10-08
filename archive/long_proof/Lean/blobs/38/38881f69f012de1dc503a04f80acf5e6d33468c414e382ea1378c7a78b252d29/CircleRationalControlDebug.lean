import CircleControlDebug

/-! A separate proof-method probe. The original coefficient control is frozen.
The new arbitrary rational coefficient is normalized only after the finite
circle/degree expressions have become explicit ordinary polynomial arithmetic.
This is a scaling probe, not a new instantiated nonintegral center control. -/
namespace CircleRationalControlDebug
open MvPolynomial
open Mub6.Classification.FourCircleResidualSubstitution
open Mub6.Classification.SharedResidualPolynomials
open Mub6.Classification.SparsePolynomialIntervals
open CircleControlDebug
open scoped BigOperators
noncomputable section
set_option maxHeartbeats 0
set_option maxRecDepth 200000

theorem rational_scaled_identity (q : ℚ) :
    clearingDenominator removed * (C q * programPolynomial denominatorIm) =
      C q * clearProgram signs bounds SharedResidualExportControlV4.denominatorIm := by
  simp only [denominatorIm, SharedResidualExportControlV4.denominatorIm,
    programPolynomial, termPolynomial, powersPolynomial, clearProgram, clearTerm,
    termExponent, pairDegree, sheetMonomial, powersExponent_apply]
  have h10 : (1 : Fin 2) ≠ 0 := by decide
  simp only [clearingDenominator, perSeedDenominator, rawSeedNumerator,
    bounds, removed, Fin.prod_univ_four, sign0, sign1, sign2, sign3, h10, ite_true, ite_false]
  simp only [powersDegree, Prod.mk.injEq, Fin.ext_iff]
  norm_num
  apply MvPolynomial.funext
  intro p
  simp only [MvPolynomial.eval_mul,MvPolynomial.eval_add,MvPolynomial.eval_pow,
    MvPolynomial.eval_C,MvPolynomial.eval_X,map_zero,map_one,map_sub,map_neg,map_ofNat]
  norm_num
  ring

#print axioms CircleRationalControlDebug.rational_scaled_identity
end
end CircleRationalControlDebug
