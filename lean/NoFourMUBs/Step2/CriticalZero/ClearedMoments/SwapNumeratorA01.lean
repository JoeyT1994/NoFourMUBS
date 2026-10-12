import NoFourMUBs.Step2.CriticalZero.ClearedMoments.SwapNumeratorPilot
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
set_option linter.unusedSimpArgs false
set_option linter.unusedSectionVars false
set_option linter.unnecessarySeqFocus false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing
variable {F : Type*} [Field F] [CharZero F]
theorem numerator_swap_a_04 (X Y : F) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (numerator_p4_m2_a_coefficients.getD 4 []) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII Y X (numerator_p2_m4_a_coefficients.getD 4 []) := by
  simp only [numerator_p2_m4_a_coefficients_00, numerator_p2_m4_a_coefficients_01, numerator_p2_m4_a_coefficients_02, numerator_p2_m4_a_coefficients_03, numerator_p2_m4_a_coefficients_04, numerator_p2_m4_a_coefficients_05, numerator_p2_m4_a_coefficients, numerator_p4_m2_a_coefficients_00, numerator_p4_m2_a_coefficients_01, numerator_p4_m2_a_coefficients_02, numerator_p4_m2_a_coefficients_03, numerator_p4_m2_a_coefficients_04, numerator_p4_m2_a_coefficients_05, numerator_p4_m2_a_coefficients, List.cons_append,List.nil_append,
    List.getD_cons_zero,List.getD_cons_succ,List.getD_nil,
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,Int.cast_ofNat,Int.cast_neg,
    Int.cast_zero,Int.cast_one,mul_zero,zero_mul,add_zero,zero_add,mul_one,one_mul]
  <;> ring
#print axioms numerator_swap_a_04
theorem numerator_swap_a_05 (X Y : F) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (numerator_p4_m2_a_coefficients.getD 5 []) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII Y X (numerator_p2_m4_a_coefficients.getD 5 []) := by
  simp only [numerator_p2_m4_a_coefficients_00, numerator_p2_m4_a_coefficients_01, numerator_p2_m4_a_coefficients_02, numerator_p2_m4_a_coefficients_03, numerator_p2_m4_a_coefficients_04, numerator_p2_m4_a_coefficients_05, numerator_p2_m4_a_coefficients, numerator_p4_m2_a_coefficients_00, numerator_p4_m2_a_coefficients_01, numerator_p4_m2_a_coefficients_02, numerator_p4_m2_a_coefficients_03, numerator_p4_m2_a_coefficients_04, numerator_p4_m2_a_coefficients_05, numerator_p4_m2_a_coefficients, List.cons_append,List.nil_append,
    List.getD_cons_zero,List.getD_cons_succ,List.getD_nil,
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,Int.cast_ofNat,Int.cast_neg,
    Int.cast_zero,Int.cast_one,mul_zero,zero_mul,add_zero,zero_add,mul_one,one_mul]
  <;> ring
#print axioms numerator_swap_a_05
theorem numerator_swap_a_06 (X Y : F) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (numerator_p4_m2_a_coefficients.getD 6 []) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII Y X (numerator_p2_m4_a_coefficients.getD 6 []) := by
  simp only [numerator_p2_m4_a_coefficients_00, numerator_p2_m4_a_coefficients_01, numerator_p2_m4_a_coefficients_02, numerator_p2_m4_a_coefficients_03, numerator_p2_m4_a_coefficients_04, numerator_p2_m4_a_coefficients_05, numerator_p2_m4_a_coefficients, numerator_p4_m2_a_coefficients_00, numerator_p4_m2_a_coefficients_01, numerator_p4_m2_a_coefficients_02, numerator_p4_m2_a_coefficients_03, numerator_p4_m2_a_coefficients_04, numerator_p4_m2_a_coefficients_05, numerator_p4_m2_a_coefficients, List.cons_append,List.nil_append,
    List.getD_cons_zero,List.getD_cons_succ,List.getD_nil,
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,Int.cast_ofNat,Int.cast_neg,
    Int.cast_zero,Int.cast_one,mul_zero,zero_mul,add_zero,zero_add,mul_one,one_mul]
  <;> ring
#print axioms numerator_swap_a_06
theorem numerator_swap_a_07 (X Y : F) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (numerator_p4_m2_a_coefficients.getD 7 []) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII Y X (numerator_p2_m4_a_coefficients.getD 7 []) := by
  simp only [numerator_p2_m4_a_coefficients_00, numerator_p2_m4_a_coefficients_01, numerator_p2_m4_a_coefficients_02, numerator_p2_m4_a_coefficients_03, numerator_p2_m4_a_coefficients_04, numerator_p2_m4_a_coefficients_05, numerator_p2_m4_a_coefficients, numerator_p4_m2_a_coefficients_00, numerator_p4_m2_a_coefficients_01, numerator_p4_m2_a_coefficients_02, numerator_p4_m2_a_coefficients_03, numerator_p4_m2_a_coefficients_04, numerator_p4_m2_a_coefficients_05, numerator_p4_m2_a_coefficients, List.cons_append,List.nil_append,
    List.getD_cons_zero,List.getD_cons_succ,List.getD_nil,
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,Int.cast_ofNat,Int.cast_neg,
    Int.cast_zero,Int.cast_one,mul_zero,zero_mul,add_zero,zero_add,mul_one,one_mul]
  <;> ring
#print axioms numerator_swap_a_07

end NoFourMUBs.Step2.Critical.NonzeroClearing
