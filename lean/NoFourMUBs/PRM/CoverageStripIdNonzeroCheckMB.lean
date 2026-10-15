import NoFourMUBs.PRM.CoverageStripIdNonzeroStage

/-! Kernel checks of the staged nonzero-`J` half data. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable section

namespace NoFourMUBs.PRM.Coverage.StripId.Nonzero

open NoFourMUBs.Kronecker StripMoments

theorem momB_valid_0 : qvalidD ((halfOf (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) fldB).mom ((-4), 2) - momB ((-4), 2)) = true := by
  decide +kernel

theorem momB_valid_1 : qvalidD ((halfOf (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) fldB).mom ((-3), 0) - momB ((-3), 0)) = true := by
  decide +kernel

theorem momB_valid_2 : qvalidD ((halfOf (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) fldB).mom ((-3), 1) - momB ((-3), 1)) = true := by
  decide +kernel

theorem momB_valid_3 : qvalidD ((halfOf (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) fldB).mom ((-3), 2) - momB ((-3), 2)) = true := by
  decide +kernel

theorem momB_valid_4 : qvalidD ((halfOf (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) fldB).mom ((-3), 3) - momB ((-3), 3)) = true := by
  decide +kernel

theorem momB_valid_5 : qvalidD ((halfOf (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) fldB).mom ((-2), (-2)) - momB ((-2), (-2))) = true := by
  decide +kernel

theorem momB_valid_6 : qvalidD ((halfOf (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) fldB).mom ((-2), (-1)) - momB ((-2), (-1))) = true := by
  decide +kernel

theorem momB_valid_7 : qvalidD ((halfOf (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) fldB).mom ((-2), 0) - momB ((-2), 0)) = true := by
  decide +kernel

theorem momB_valid_8 : qvalidD ((halfOf (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) fldB).mom ((-2), 1) - momB ((-2), 1)) = true := by
  decide +kernel

theorem momB_valid_9 : qvalidD ((halfOf (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) fldB).mom ((-2), 2) - momB ((-2), 2)) = true := by
  decide +kernel

theorem momB_valid_10 : qvalidD ((halfOf (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) fldB).mom ((-2), 3) - momB ((-2), 3)) = true := by
  decide +kernel

theorem momB_valid_11 : qvalidD ((halfOf (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) fldB).mom ((-2), 4) - momB ((-2), 4)) = true := by
  decide +kernel

theorem momB_valid_12 : qvalidD ((halfOf (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) fldB).mom ((-1), (-2)) - momB ((-1), (-2))) = true := by
  decide +kernel

theorem momB_valid_13 : qvalidD ((halfOf (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) fldB).mom ((-1), (-1)) - momB ((-1), (-1))) = true := by
  decide +kernel

theorem momB_valid_14 : qvalidD ((halfOf (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) fldB).mom ((-1), 2) - momB ((-1), 2)) = true := by
  decide +kernel

theorem momB_valid_15 : qvalidD ((halfOf (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) fldB).mom ((-1), 3) - momB ((-1), 3)) = true := by
  decide +kernel

theorem momB_valid_16 : qvalidD ((halfOf (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) fldB).mom (0, (-3)) - momB (0, (-3))) = true := by
  decide +kernel

theorem momB_valid_17 : qvalidD ((halfOf (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) fldB).mom (0, (-2)) - momB (0, (-2))) = true := by
  decide +kernel

theorem momB_valid_18 : qvalidD ((halfOf (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) fldB).mom (0, 2) - momB (0, 2)) = true := by
  decide +kernel

theorem momB_valid_19 : qvalidD ((halfOf (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) fldB).mom (0, 3) - momB (0, 3)) = true := by
  decide +kernel

theorem momB_valid_20 : qvalidD ((halfOf (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) fldB).mom (1, (-3)) - momB (1, (-3))) = true := by
  decide +kernel

theorem momB_valid_21 : qvalidD ((halfOf (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) fldB).mom (1, (-2)) - momB (1, (-2))) = true := by
  decide +kernel

theorem momB_valid_22 : qvalidD ((halfOf (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) fldB).mom (1, 1) - momB (1, 1)) = true := by
  decide +kernel

theorem momB_valid_23 : qvalidD ((halfOf (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) fldB).mom (1, 2) - momB (1, 2)) = true := by
  decide +kernel

theorem momB_valid_24 : qvalidD ((halfOf (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) fldB).mom (2, (-4)) - momB (2, (-4))) = true := by
  decide +kernel

theorem momB_valid_25 : qvalidD ((halfOf (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) fldB).mom (2, (-3)) - momB (2, (-3))) = true := by
  decide +kernel

theorem momB_valid_26 : qvalidD ((halfOf (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) fldB).mom (2, (-2)) - momB (2, (-2))) = true := by
  decide +kernel

theorem momB_valid_27 : qvalidD ((halfOf (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) fldB).mom (2, (-1)) - momB (2, (-1))) = true := by
  decide +kernel

theorem momB_valid_28 : qvalidD ((halfOf (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) fldB).mom (2, 0) - momB (2, 0)) = true := by
  decide +kernel

theorem momB_valid_29 : qvalidD ((halfOf (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) fldB).mom (2, 1) - momB (2, 1)) = true := by
  decide +kernel

theorem momB_valid_30 : qvalidD ((halfOf (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) fldB).mom (2, 2) - momB (2, 2)) = true := by
  decide +kernel

theorem momB_valid_31 : qvalidD ((halfOf (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) fldB).mom (3, (-3)) - momB (3, (-3))) = true := by
  decide +kernel

theorem momB_valid_32 : qvalidD ((halfOf (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) fldB).mom (3, (-2)) - momB (3, (-2))) = true := by
  decide +kernel

theorem momB_valid_33 : qvalidD ((halfOf (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) fldB).mom (3, (-1)) - momB (3, (-1))) = true := by
  decide +kernel

theorem momB_valid_34 : qvalidD ((halfOf (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) fldB).mom (3, 0) - momB (3, 0)) = true := by
  decide +kernel

theorem momB_valid_35 : qvalidD ((halfOf (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) fldB).mom (4, (-2)) - momB (4, (-2))) = true := by
  decide +kernel

theorem momB_valid {p : ℤ × ℤ} (hp : p ∈ usedMoments) :
    qvalidD ((halfOf (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) fldB).mom p - momB p) = true := by
  simp only [usedMoments, List.mem_cons, List.mem_nil_iff, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  exacts [momB_valid_0, momB_valid_1, momB_valid_2, momB_valid_3, momB_valid_4, momB_valid_5, momB_valid_6, momB_valid_7, momB_valid_8, momB_valid_9, momB_valid_10, momB_valid_11, momB_valid_12, momB_valid_13, momB_valid_14, momB_valid_15, momB_valid_16, momB_valid_17, momB_valid_18, momB_valid_19, momB_valid_20, momB_valid_21, momB_valid_22, momB_valid_23, momB_valid_24, momB_valid_25, momB_valid_26, momB_valid_27, momB_valid_28, momB_valid_29, momB_valid_30, momB_valid_31, momB_valid_32, momB_valid_33, momB_valid_34, momB_valid_35]

end NoFourMUBs.PRM.Coverage.StripId.Nonzero
