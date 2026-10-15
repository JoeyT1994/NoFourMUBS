import NoFourMUBs.PRM.CoverageStripIdZeroData

/-! The combined moments from the formulas agree with the reduced data (kernel checks). -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable section

namespace NoFourMUBs.PRM.Coverage.StripId.Zero

open NoFourMUBs.Kronecker StripMoments

theorem mom_valid_0 : qvalidR (mSum ((-4), 2) - mD ((-4), 2)) 1 = true := by decide +kernel

theorem mom_valid_1 : qvalidR (mSum ((-3), 0) - mD ((-3), 0)) 1 = true := by decide +kernel

theorem mom_valid_2 : qvalidR (mSum ((-3), 1) - mD ((-3), 1)) 1 = true := by decide +kernel

theorem mom_valid_3 : qvalidR (mSum ((-3), 2) - mD ((-3), 2)) 1 = true := by decide +kernel

theorem mom_valid_4 : qvalidR (mSum ((-3), 3) - mD ((-3), 3)) 1 = true := by decide +kernel

theorem mom_valid_5 : qvalidR (mSum ((-2), (-2)) - mD ((-2), (-2))) 1 = true := by decide +kernel

theorem mom_valid_6 : qvalidR (mSum ((-2), (-1)) - mD ((-2), (-1))) 1 = true := by decide +kernel

theorem mom_valid_7 : qvalidR (mSum ((-2), 0) - mD ((-2), 0)) 1 = true := by decide +kernel

theorem mom_valid_8 : qvalidR (mSum ((-2), 1) - mD ((-2), 1)) 1 = true := by decide +kernel

theorem mom_valid_9 : qvalidR (mSum ((-2), 2) - mD ((-2), 2)) 1 = true := by decide +kernel

theorem mom_valid_10 : qvalidR (mSum ((-2), 3) - mD ((-2), 3)) 1 = true := by decide +kernel

theorem mom_valid_11 : qvalidR (mSum ((-2), 4) - mD ((-2), 4)) 1 = true := by decide +kernel

theorem mom_valid_12 : qvalidR (mSum ((-1), (-2)) - mD ((-1), (-2))) 1 = true := by decide +kernel

theorem mom_valid_13 : qvalidR (mSum ((-1), (-1)) - mD ((-1), (-1))) 1 = true := by decide +kernel

theorem mom_valid_14 : qvalidR (mSum ((-1), 2) - mD ((-1), 2)) 1 = true := by decide +kernel

theorem mom_valid_15 : qvalidR (mSum ((-1), 3) - mD ((-1), 3)) 1 = true := by decide +kernel

theorem mom_valid_16 : qvalidR (mSum (0, (-3)) - mD (0, (-3))) 1 = true := by decide +kernel

theorem mom_valid_17 : qvalidR (mSum (0, (-2)) - mD (0, (-2))) 1 = true := by decide +kernel

theorem mom_valid_18 : qvalidR (mSum (0, 2) - mD (0, 2)) 1 = true := by decide +kernel

theorem mom_valid_19 : qvalidR (mSum (0, 3) - mD (0, 3)) 1 = true := by decide +kernel

theorem mom_valid_20 : qvalidR (mSum (1, (-3)) - mD (1, (-3))) 1 = true := by decide +kernel

theorem mom_valid_21 : qvalidR (mSum (1, (-2)) - mD (1, (-2))) 1 = true := by decide +kernel

theorem mom_valid_22 : qvalidR (mSum (1, 1) - mD (1, 1)) 1 = true := by decide +kernel

theorem mom_valid_23 : qvalidR (mSum (1, 2) - mD (1, 2)) 1 = true := by decide +kernel

theorem mom_valid_24 : qvalidR (mSum (2, (-4)) - mD (2, (-4))) 1 = true := by decide +kernel

theorem mom_valid_25 : qvalidR (mSum (2, (-3)) - mD (2, (-3))) 1 = true := by decide +kernel

theorem mom_valid_26 : qvalidR (mSum (2, (-2)) - mD (2, (-2))) 1 = true := by decide +kernel

theorem mom_valid_27 : qvalidR (mSum (2, (-1)) - mD (2, (-1))) 1 = true := by decide +kernel

theorem mom_valid_28 : qvalidR (mSum (2, 0) - mD (2, 0)) 1 = true := by decide +kernel

theorem mom_valid_29 : qvalidR (mSum (2, 1) - mD (2, 1)) 1 = true := by decide +kernel

theorem mom_valid_30 : qvalidR (mSum (2, 2) - mD (2, 2)) 1 = true := by decide +kernel

theorem mom_valid_31 : qvalidR (mSum (3, (-3)) - mD (3, (-3))) 1 = true := by decide +kernel

theorem mom_valid_32 : qvalidR (mSum (3, (-2)) - mD (3, (-2))) 1 = true := by decide +kernel

theorem mom_valid_33 : qvalidR (mSum (3, (-1)) - mD (3, (-1))) 1 = true := by decide +kernel

theorem mom_valid_34 : qvalidR (mSum (3, 0) - mD (3, 0)) 1 = true := by decide +kernel

theorem mom_valid_35 : qvalidR (mSum (4, (-2)) - mD (4, (-2))) 1 = true := by decide +kernel

theorem mom_valid {p : ℤ × ℤ} (hp : p ∈ usedMoments) : qvalidR (mSum p - mD p) 1 = true := by
  simp only [usedMoments, List.mem_cons, List.mem_nil_iff, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  exacts [mom_valid_0, mom_valid_1, mom_valid_2, mom_valid_3, mom_valid_4, mom_valid_5, mom_valid_6, mom_valid_7, mom_valid_8, mom_valid_9, mom_valid_10, mom_valid_11, mom_valid_12, mom_valid_13, mom_valid_14, mom_valid_15, mom_valid_16, mom_valid_17, mom_valid_18, mom_valid_19, mom_valid_20, mom_valid_21, mom_valid_22, mom_valid_23, mom_valid_24, mom_valid_25, mom_valid_26, mom_valid_27, mom_valid_28, mom_valid_29, mom_valid_30, mom_valid_31, mom_valid_32, mom_valid_33, mom_valid_34, mom_valid_35]

end NoFourMUBs.PRM.Coverage.StripId.Zero
