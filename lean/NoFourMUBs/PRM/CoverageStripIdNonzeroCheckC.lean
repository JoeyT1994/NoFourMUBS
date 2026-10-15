import NoFourMUBs.PRM.CoverageStripIdNonzeroStage

/-! Kernel checks of the staged nonzero-`J` half data. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable section

namespace NoFourMUBs.PRM.Coverage.StripId.Nonzero

open NoFourMUBs.Kronecker StripMoments

theorem comb_valid_0 : qvalidD (momA ((-4), 2) + momB ((-4), 2) - mD ((-4), 2)) = true := by decide +kernel
theorem comb_valid_1 : qvalidD (momA ((-3), 0) + momB ((-3), 0) - mD ((-3), 0)) = true := by decide +kernel
theorem comb_valid_2 : qvalidD (momA ((-3), 1) + momB ((-3), 1) - mD ((-3), 1)) = true := by decide +kernel
theorem comb_valid_3 : qvalidD (momA ((-3), 2) + momB ((-3), 2) - mD ((-3), 2)) = true := by decide +kernel
theorem comb_valid_4 : qvalidD (momA ((-3), 3) + momB ((-3), 3) - mD ((-3), 3)) = true := by decide +kernel
theorem comb_valid_5 : qvalidD (momA ((-2), (-2)) + momB ((-2), (-2)) - mD ((-2), (-2))) = true := by decide +kernel
theorem comb_valid_6 : qvalidD (momA ((-2), (-1)) + momB ((-2), (-1)) - mD ((-2), (-1))) = true := by decide +kernel
theorem comb_valid_7 : qvalidD (momA ((-2), 0) + momB ((-2), 0) - mD ((-2), 0)) = true := by decide +kernel
theorem comb_valid_8 : qvalidD (momA ((-2), 1) + momB ((-2), 1) - mD ((-2), 1)) = true := by decide +kernel
theorem comb_valid_9 : qvalidD (momA ((-2), 2) + momB ((-2), 2) - mD ((-2), 2)) = true := by decide +kernel
theorem comb_valid_10 : qvalidD (momA ((-2), 3) + momB ((-2), 3) - mD ((-2), 3)) = true := by decide +kernel
theorem comb_valid_11 : qvalidD (momA ((-2), 4) + momB ((-2), 4) - mD ((-2), 4)) = true := by decide +kernel
theorem comb_valid_12 : qvalidD (momA ((-1), (-2)) + momB ((-1), (-2)) - mD ((-1), (-2))) = true := by decide +kernel
theorem comb_valid_13 : qvalidD (momA ((-1), (-1)) + momB ((-1), (-1)) - mD ((-1), (-1))) = true := by decide +kernel
theorem comb_valid_14 : qvalidD (momA ((-1), 2) + momB ((-1), 2) - mD ((-1), 2)) = true := by decide +kernel
theorem comb_valid_15 : qvalidD (momA ((-1), 3) + momB ((-1), 3) - mD ((-1), 3)) = true := by decide +kernel
theorem comb_valid_16 : qvalidD (momA (0, (-3)) + momB (0, (-3)) - mD (0, (-3))) = true := by decide +kernel
theorem comb_valid_17 : qvalidD (momA (0, (-2)) + momB (0, (-2)) - mD (0, (-2))) = true := by decide +kernel
theorem comb_valid_18 : qvalidD (momA (0, 2) + momB (0, 2) - mD (0, 2)) = true := by decide +kernel
theorem comb_valid_19 : qvalidD (momA (0, 3) + momB (0, 3) - mD (0, 3)) = true := by decide +kernel
theorem comb_valid_20 : qvalidD (momA (1, (-3)) + momB (1, (-3)) - mD (1, (-3))) = true := by decide +kernel
theorem comb_valid_21 : qvalidD (momA (1, (-2)) + momB (1, (-2)) - mD (1, (-2))) = true := by decide +kernel
theorem comb_valid_22 : qvalidD (momA (1, 1) + momB (1, 1) - mD (1, 1)) = true := by decide +kernel
theorem comb_valid_23 : qvalidD (momA (1, 2) + momB (1, 2) - mD (1, 2)) = true := by decide +kernel
theorem comb_valid_24 : qvalidD (momA (2, (-4)) + momB (2, (-4)) - mD (2, (-4))) = true := by decide +kernel
theorem comb_valid_25 : qvalidD (momA (2, (-3)) + momB (2, (-3)) - mD (2, (-3))) = true := by decide +kernel
theorem comb_valid_26 : qvalidD (momA (2, (-2)) + momB (2, (-2)) - mD (2, (-2))) = true := by decide +kernel
theorem comb_valid_27 : qvalidD (momA (2, (-1)) + momB (2, (-1)) - mD (2, (-1))) = true := by decide +kernel
theorem comb_valid_28 : qvalidD (momA (2, 0) + momB (2, 0) - mD (2, 0)) = true := by decide +kernel
theorem comb_valid_29 : qvalidD (momA (2, 1) + momB (2, 1) - mD (2, 1)) = true := by decide +kernel
theorem comb_valid_30 : qvalidD (momA (2, 2) + momB (2, 2) - mD (2, 2)) = true := by decide +kernel
theorem comb_valid_31 : qvalidD (momA (3, (-3)) + momB (3, (-3)) - mD (3, (-3))) = true := by decide +kernel
theorem comb_valid_32 : qvalidD (momA (3, (-2)) + momB (3, (-2)) - mD (3, (-2))) = true := by decide +kernel
theorem comb_valid_33 : qvalidD (momA (3, (-1)) + momB (3, (-1)) - mD (3, (-1))) = true := by decide +kernel
theorem comb_valid_34 : qvalidD (momA (3, 0) + momB (3, 0) - mD (3, 0)) = true := by decide +kernel
theorem comb_valid_35 : qvalidD (momA (4, (-2)) + momB (4, (-2)) - mD (4, (-2))) = true := by decide +kernel
theorem comb_valid {p : ℤ × ℤ} (hp : p ∈ usedMoments) : qvalidD (momA p + momB p - mD p) = true := by
  simp only [usedMoments, List.mem_cons, List.mem_nil_iff, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  exacts [comb_valid_0, comb_valid_1, comb_valid_2, comb_valid_3, comb_valid_4, comb_valid_5, comb_valid_6, comb_valid_7, comb_valid_8, comb_valid_9, comb_valid_10, comb_valid_11, comb_valid_12, comb_valid_13, comb_valid_14, comb_valid_15, comb_valid_16, comb_valid_17, comb_valid_18, comb_valid_19, comb_valid_20, comb_valid_21, comb_valid_22, comb_valid_23, comb_valid_24, comb_valid_25, comb_valid_26, comb_valid_27, comb_valid_28, comb_valid_29, comb_valid_30, comb_valid_31, comb_valid_32, comb_valid_33, comb_valid_34, comb_valid_35]

end NoFourMUBs.PRM.Coverage.StripId.Nonzero
