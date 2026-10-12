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
theorem numerator_swap_a_00 (X Y : F) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (numerator_p4_m2_a_coefficients.getD 0 []) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII Y X (numerator_p2_m4_a_coefficients.getD 0 []) := by
  simp only [numerator_p2_m4_a_coefficients_00, numerator_p2_m4_a_coefficients_01, numerator_p2_m4_a_coefficients_02, numerator_p2_m4_a_coefficients_03, numerator_p2_m4_a_coefficients_04, numerator_p2_m4_a_coefficients_05, numerator_p2_m4_a_coefficients, numerator_p4_m2_a_coefficients_00, numerator_p4_m2_a_coefficients_01, numerator_p4_m2_a_coefficients_02, numerator_p4_m2_a_coefficients_03, numerator_p4_m2_a_coefficients_04, numerator_p4_m2_a_coefficients_05, numerator_p4_m2_a_coefficients, List.cons_append,List.nil_append,
    List.getD_cons_zero,List.getD_cons_succ,List.getD_nil,
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,Int.cast_ofNat,Int.cast_neg,
    Int.cast_zero,Int.cast_one,mul_zero,zero_mul,add_zero,zero_add,mul_one,one_mul]
  <;> ring
#print axioms numerator_swap_a_00
theorem numerator_swap_a_01 (X Y : F) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (numerator_p4_m2_a_coefficients.getD 1 []) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII Y X (numerator_p2_m4_a_coefficients.getD 1 []) := by
  simp only [numerator_p2_m4_a_coefficients_00, numerator_p2_m4_a_coefficients_01, numerator_p2_m4_a_coefficients_02, numerator_p2_m4_a_coefficients_03, numerator_p2_m4_a_coefficients_04, numerator_p2_m4_a_coefficients_05, numerator_p2_m4_a_coefficients, numerator_p4_m2_a_coefficients_00, numerator_p4_m2_a_coefficients_01, numerator_p4_m2_a_coefficients_02, numerator_p4_m2_a_coefficients_03, numerator_p4_m2_a_coefficients_04, numerator_p4_m2_a_coefficients_05, numerator_p4_m2_a_coefficients, List.cons_append,List.nil_append,
    List.getD_cons_zero,List.getD_cons_succ,List.getD_nil,
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,Int.cast_ofNat,Int.cast_neg,
    Int.cast_zero,Int.cast_one,mul_zero,zero_mul,add_zero,zero_add,mul_one,one_mul]
  <;> ring
#print axioms numerator_swap_a_01
theorem numerator_swap_a_02 (X Y : F) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (numerator_p4_m2_a_coefficients.getD 2 []) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII Y X (numerator_p2_m4_a_coefficients.getD 2 []) := by
  simp only [numerator_p2_m4_a_coefficients_00, numerator_p2_m4_a_coefficients_01, numerator_p2_m4_a_coefficients_02, numerator_p2_m4_a_coefficients_03, numerator_p2_m4_a_coefficients_04, numerator_p2_m4_a_coefficients_05, numerator_p2_m4_a_coefficients, numerator_p4_m2_a_coefficients_00, numerator_p4_m2_a_coefficients_01, numerator_p4_m2_a_coefficients_02, numerator_p4_m2_a_coefficients_03, numerator_p4_m2_a_coefficients_04, numerator_p4_m2_a_coefficients_05, numerator_p4_m2_a_coefficients, List.cons_append,List.nil_append,
    List.getD_cons_zero,List.getD_cons_succ,List.getD_nil,
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,Int.cast_ofNat,Int.cast_neg,
    Int.cast_zero,Int.cast_one,mul_zero,zero_mul,add_zero,zero_add,mul_one,one_mul]
  <;> ring
#print axioms numerator_swap_a_02
theorem numerator_swap_a_03 (X Y : F) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (numerator_p4_m2_a_coefficients.getD 3 []) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII Y X (numerator_p2_m4_a_coefficients.getD 3 []) := by
  simp only [numerator_p2_m4_a_coefficients_00, numerator_p2_m4_a_coefficients_01, numerator_p2_m4_a_coefficients_02, numerator_p2_m4_a_coefficients_03, numerator_p2_m4_a_coefficients_04, numerator_p2_m4_a_coefficients_05, numerator_p2_m4_a_coefficients, numerator_p4_m2_a_coefficients_00, numerator_p4_m2_a_coefficients_01, numerator_p4_m2_a_coefficients_02, numerator_p4_m2_a_coefficients_03, numerator_p4_m2_a_coefficients_04, numerator_p4_m2_a_coefficients_05, numerator_p4_m2_a_coefficients, List.cons_append,List.nil_append,
    List.getD_cons_zero,List.getD_cons_succ,List.getD_nil,
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,Int.cast_ofNat,Int.cast_neg,
    Int.cast_zero,Int.cast_one,mul_zero,zero_mul,add_zero,zero_add,mul_one,one_mul]
  <;> ring
#print axioms numerator_swap_a_03

end NoFourMUBs.Step2.Critical.NonzeroClearing
