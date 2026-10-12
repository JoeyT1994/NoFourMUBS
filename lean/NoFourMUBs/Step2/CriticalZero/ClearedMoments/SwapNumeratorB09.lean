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
theorem numerator_swap_b_37 (X Y : F) :
    X*(CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (numerator_p4_m2_b_coefficients.getD 37 [])) = Y*(CriticalZeroSplitReduction20261003.IntegerReflector.evalII Y X (numerator_p2_m4_b_coefficients.getD 37 [])) := by
  simp only [numerator_p2_m4_b_coefficients_00, numerator_p2_m4_b_coefficients_01, numerator_p2_m4_b_coefficients_02, numerator_p2_m4_b_coefficients_03, numerator_p2_m4_b_coefficients_04, numerator_p2_m4_b_coefficients, numerator_p4_m2_b_coefficients_00, numerator_p4_m2_b_coefficients_01, numerator_p4_m2_b_coefficients_02, numerator_p4_m2_b_coefficients_03, numerator_p4_m2_b_coefficients_04, numerator_p4_m2_b_coefficients, List.cons_append,List.nil_append,
    List.getD_cons_zero,List.getD_cons_succ,List.getD_nil,
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,Int.cast_ofNat,Int.cast_neg,
    Int.cast_zero,Int.cast_one,mul_zero,zero_mul,add_zero,zero_add,mul_one,one_mul]
  <;> ring
#print axioms numerator_swap_b_37
theorem numerator_swap_b_38 (X Y : F) :
    X*(CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (numerator_p4_m2_b_coefficients.getD 38 [])) = Y*(CriticalZeroSplitReduction20261003.IntegerReflector.evalII Y X (numerator_p2_m4_b_coefficients.getD 38 [])) := by
  simp only [numerator_p2_m4_b_coefficients_00, numerator_p2_m4_b_coefficients_01, numerator_p2_m4_b_coefficients_02, numerator_p2_m4_b_coefficients_03, numerator_p2_m4_b_coefficients_04, numerator_p2_m4_b_coefficients, numerator_p4_m2_b_coefficients_00, numerator_p4_m2_b_coefficients_01, numerator_p4_m2_b_coefficients_02, numerator_p4_m2_b_coefficients_03, numerator_p4_m2_b_coefficients_04, numerator_p4_m2_b_coefficients, List.cons_append,List.nil_append,
    List.getD_cons_zero,List.getD_cons_succ,List.getD_nil,
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,Int.cast_ofNat,Int.cast_neg,
    Int.cast_zero,Int.cast_one,mul_zero,zero_mul,add_zero,zero_add,mul_one,one_mul]
  <;> ring
#print axioms numerator_swap_b_38
theorem numerator_swap_b_39 (X Y : F) :
    X*(CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (numerator_p4_m2_b_coefficients.getD 39 [])) = Y*(CriticalZeroSplitReduction20261003.IntegerReflector.evalII Y X (numerator_p2_m4_b_coefficients.getD 39 [])) := by
  simp only [numerator_p2_m4_b_coefficients_00, numerator_p2_m4_b_coefficients_01, numerator_p2_m4_b_coefficients_02, numerator_p2_m4_b_coefficients_03, numerator_p2_m4_b_coefficients_04, numerator_p2_m4_b_coefficients, numerator_p4_m2_b_coefficients_00, numerator_p4_m2_b_coefficients_01, numerator_p4_m2_b_coefficients_02, numerator_p4_m2_b_coefficients_03, numerator_p4_m2_b_coefficients_04, numerator_p4_m2_b_coefficients, List.cons_append,List.nil_append,
    List.getD_cons_zero,List.getD_cons_succ,List.getD_nil,
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,Int.cast_ofNat,Int.cast_neg,
    Int.cast_zero,Int.cast_one,mul_zero,zero_mul,add_zero,zero_add,mul_one,one_mul]
  <;> ring
#print axioms numerator_swap_b_39

end NoFourMUBs.Step2.Critical.NonzeroClearing
