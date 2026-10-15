import NoFourMUBs.PRM.CoverageStripIdNonzeroStage

/-! Kernel checks of the staged nonzero-`J` half data. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable section

namespace NoFourMUBs.PRM.Coverage.StripId.Nonzero

open NoFourMUBs.Kronecker StripMoments

theorem momA_valid_0 : qvalidD ((halfOf 1 qX 1 qY QF.z qR fldA).mom ((-4), 2) - momA ((-4), 2)) = true := by
  decide +kernel

theorem momA_valid_1 : qvalidD ((halfOf 1 qX 1 qY QF.z qR fldA).mom ((-3), 0) - momA ((-3), 0)) = true := by
  decide +kernel

theorem momA_valid_2 : qvalidD ((halfOf 1 qX 1 qY QF.z qR fldA).mom ((-3), 1) - momA ((-3), 1)) = true := by
  decide +kernel

theorem momA_valid_3 : qvalidD ((halfOf 1 qX 1 qY QF.z qR fldA).mom ((-3), 2) - momA ((-3), 2)) = true := by
  decide +kernel

theorem momA_valid_4 : qvalidD ((halfOf 1 qX 1 qY QF.z qR fldA).mom ((-3), 3) - momA ((-3), 3)) = true := by
  decide +kernel

theorem momA_valid_5 : qvalidD ((halfOf 1 qX 1 qY QF.z qR fldA).mom ((-2), (-2)) - momA ((-2), (-2))) = true := by
  decide +kernel

theorem momA_valid_6 : qvalidD ((halfOf 1 qX 1 qY QF.z qR fldA).mom ((-2), (-1)) - momA ((-2), (-1))) = true := by
  decide +kernel

theorem momA_valid_7 : qvalidD ((halfOf 1 qX 1 qY QF.z qR fldA).mom ((-2), 0) - momA ((-2), 0)) = true := by
  decide +kernel

theorem momA_valid_8 : qvalidD ((halfOf 1 qX 1 qY QF.z qR fldA).mom ((-2), 1) - momA ((-2), 1)) = true := by
  decide +kernel

theorem momA_valid_9 : qvalidD ((halfOf 1 qX 1 qY QF.z qR fldA).mom ((-2), 2) - momA ((-2), 2)) = true := by
  decide +kernel

theorem momA_valid_10 : qvalidD ((halfOf 1 qX 1 qY QF.z qR fldA).mom ((-2), 3) - momA ((-2), 3)) = true := by
  decide +kernel

theorem momA_valid_11 : qvalidD ((halfOf 1 qX 1 qY QF.z qR fldA).mom ((-2), 4) - momA ((-2), 4)) = true := by
  decide +kernel

theorem momA_valid_12 : qvalidD ((halfOf 1 qX 1 qY QF.z qR fldA).mom ((-1), (-2)) - momA ((-1), (-2))) = true := by
  decide +kernel

theorem momA_valid_13 : qvalidD ((halfOf 1 qX 1 qY QF.z qR fldA).mom ((-1), (-1)) - momA ((-1), (-1))) = true := by
  decide +kernel

theorem momA_valid_14 : qvalidD ((halfOf 1 qX 1 qY QF.z qR fldA).mom ((-1), 2) - momA ((-1), 2)) = true := by
  decide +kernel

theorem momA_valid_15 : qvalidD ((halfOf 1 qX 1 qY QF.z qR fldA).mom ((-1), 3) - momA ((-1), 3)) = true := by
  decide +kernel

theorem momA_valid_16 : qvalidD ((halfOf 1 qX 1 qY QF.z qR fldA).mom (0, (-3)) - momA (0, (-3))) = true := by
  decide +kernel

theorem momA_valid_17 : qvalidD ((halfOf 1 qX 1 qY QF.z qR fldA).mom (0, (-2)) - momA (0, (-2))) = true := by
  decide +kernel

theorem momA_valid_18 : qvalidD ((halfOf 1 qX 1 qY QF.z qR fldA).mom (0, 2) - momA (0, 2)) = true := by
  decide +kernel

theorem momA_valid_19 : qvalidD ((halfOf 1 qX 1 qY QF.z qR fldA).mom (0, 3) - momA (0, 3)) = true := by
  decide +kernel

theorem momA_valid_20 : qvalidD ((halfOf 1 qX 1 qY QF.z qR fldA).mom (1, (-3)) - momA (1, (-3))) = true := by
  decide +kernel

theorem momA_valid_21 : qvalidD ((halfOf 1 qX 1 qY QF.z qR fldA).mom (1, (-2)) - momA (1, (-2))) = true := by
  decide +kernel

theorem momA_valid_22 : qvalidD ((halfOf 1 qX 1 qY QF.z qR fldA).mom (1, 1) - momA (1, 1)) = true := by
  decide +kernel

theorem momA_valid_23 : qvalidD ((halfOf 1 qX 1 qY QF.z qR fldA).mom (1, 2) - momA (1, 2)) = true := by
  decide +kernel

theorem momA_valid_24 : qvalidD ((halfOf 1 qX 1 qY QF.z qR fldA).mom (2, (-4)) - momA (2, (-4))) = true := by
  decide +kernel

theorem momA_valid_25 : qvalidD ((halfOf 1 qX 1 qY QF.z qR fldA).mom (2, (-3)) - momA (2, (-3))) = true := by
  decide +kernel

theorem momA_valid_26 : qvalidD ((halfOf 1 qX 1 qY QF.z qR fldA).mom (2, (-2)) - momA (2, (-2))) = true := by
  decide +kernel

theorem momA_valid_27 : qvalidD ((halfOf 1 qX 1 qY QF.z qR fldA).mom (2, (-1)) - momA (2, (-1))) = true := by
  decide +kernel

theorem momA_valid_28 : qvalidD ((halfOf 1 qX 1 qY QF.z qR fldA).mom (2, 0) - momA (2, 0)) = true := by
  decide +kernel

theorem momA_valid_29 : qvalidD ((halfOf 1 qX 1 qY QF.z qR fldA).mom (2, 1) - momA (2, 1)) = true := by
  decide +kernel

theorem momA_valid_30 : qvalidD ((halfOf 1 qX 1 qY QF.z qR fldA).mom (2, 2) - momA (2, 2)) = true := by
  decide +kernel

theorem momA_valid_31 : qvalidD ((halfOf 1 qX 1 qY QF.z qR fldA).mom (3, (-3)) - momA (3, (-3))) = true := by
  decide +kernel

theorem momA_valid_32 : qvalidD ((halfOf 1 qX 1 qY QF.z qR fldA).mom (3, (-2)) - momA (3, (-2))) = true := by
  decide +kernel

theorem momA_valid_33 : qvalidD ((halfOf 1 qX 1 qY QF.z qR fldA).mom (3, (-1)) - momA (3, (-1))) = true := by
  decide +kernel

theorem momA_valid_34 : qvalidD ((halfOf 1 qX 1 qY QF.z qR fldA).mom (3, 0) - momA (3, 0)) = true := by
  decide +kernel

theorem momA_valid_35 : qvalidD ((halfOf 1 qX 1 qY QF.z qR fldA).mom (4, (-2)) - momA (4, (-2))) = true := by
  decide +kernel

theorem momA_valid {p : ℤ × ℤ} (hp : p ∈ usedMoments) :
    qvalidD ((halfOf 1 qX 1 qY QF.z qR fldA).mom p - momA p) = true := by
  simp only [usedMoments, List.mem_cons, List.mem_nil_iff, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  exacts [momA_valid_0, momA_valid_1, momA_valid_2, momA_valid_3, momA_valid_4, momA_valid_5, momA_valid_6, momA_valid_7, momA_valid_8, momA_valid_9, momA_valid_10, momA_valid_11, momA_valid_12, momA_valid_13, momA_valid_14, momA_valid_15, momA_valid_16, momA_valid_17, momA_valid_18, momA_valid_19, momA_valid_20, momA_valid_21, momA_valid_22, momA_valid_23, momA_valid_24, momA_valid_25, momA_valid_26, momA_valid_27, momA_valid_28, momA_valid_29, momA_valid_30, momA_valid_31, momA_valid_32, momA_valid_33, momA_valid_34, momA_valid_35]

end NoFourMUBs.PRM.Coverage.StripId.Nonzero
