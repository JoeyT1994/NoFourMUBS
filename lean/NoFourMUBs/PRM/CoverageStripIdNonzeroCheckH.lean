import NoFourMUBs.PRM.CoverageStripIdNonzeroStage

/-! Kernel checks of the staged nonzero-`J` half data. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable section

namespace NoFourMUBs.PRM.Coverage.StripId.Nonzero

open NoFourMUBs.Kronecker StripMoments

theorem lamA_valid_0 : qvalidD (lamS 1 qX 1 qY QF.z qR qX qY qZ (iL 4) (iL 5) (iL 6) 0 - lamA 0) = true := by decide +kernel
theorem lamA_valid_1 : qvalidD (lamS 1 qX 1 qY QF.z qR qX qY qZ (iL 4) (iL 5) (iL 6) 1 - lamA 1) = true := by decide +kernel
theorem lamA_valid_2 : qvalidD (lamS 1 qX 1 qY QF.z qR qX qY qZ (iL 4) (iL 5) (iL 6) 2 - lamA 2) = true := by decide +kernel
theorem lamA_valid_3 : qvalidD (lamS 1 qX 1 qY QF.z qR qX qY qZ (iL 4) (iL 5) (iL 6) 3 - lamA 3) = true := by decide +kernel
theorem lamA_valid_4 : qvalidD (lamS 1 qX 1 qY QF.z qR qX qY qZ (iL 4) (iL 5) (iL 6) 4 - lamA 4) = true := by decide +kernel
theorem lamA_valid_5 : qvalidD (lamS 1 qX 1 qY QF.z qR qX qY qZ (iL 4) (iL 5) (iL 6) 5 - lamA 5) = true := by decide +kernel
theorem lamA_valid (i : ℕ) (hi : i < 6) : qvalidD (lamS 1 qX 1 qY QF.z qR qX qY qZ (iL 4) (iL 5) (iL 6) i - lamA i) = true := by
  interval_cases i
  exacts [lamA_valid_0, lamA_valid_1, lamA_valid_2, lamA_valid_3, lamA_valid_4, lamA_valid_5]

theorem fldA_valid_0 : qvalidD (fldS lamA qzA 0 - fldA 0) = true := by decide +kernel
theorem fldA_valid_1 : qvalidD (fldS lamA qzA 1 - fldA 1) = true := by decide +kernel
theorem fldA_valid_2 : qvalidD (fldS lamA qzA 2 - fldA 2) = true := by decide +kernel
theorem fldA_valid_3 : qvalidD (fldS lamA qzA 3 - fldA 3) = true := by decide +kernel
theorem fldA_valid_4 : qvalidD (fldS lamA qzA 4 - fldA 4) = true := by decide +kernel
theorem fldA_valid_5 : qvalidD (fldS lamA qzA 5 - fldA 5) = true := by decide +kernel
theorem fldA_valid_6 : qvalidD (fldS lamA qzA 6 - fldA 6) = true := by decide +kernel
theorem fldA_valid_7 : qvalidD (fldS lamA qzA 7 - fldA 7) = true := by decide +kernel
theorem fldA_valid_8 : qvalidD (fldS lamA qzA 8 - fldA 8) = true := by decide +kernel
theorem fldA_valid_9 : qvalidD (fldS lamA qzA 9 - fldA 9) = true := by decide +kernel
theorem fldA_valid_10 : qvalidD (fldS lamA qzA 10 - fldA 10) = true := by decide +kernel
theorem fldA_valid_11 : qvalidD (fldS lamA qzA 11 - fldA 11) = true := by decide +kernel
theorem fldA_valid (i : ℕ) (hi : i < 12) : qvalidD (fldS lamA qzA i - fldA i) = true := by
  interval_cases i
  exacts [fldA_valid_0, fldA_valid_1, fldA_valid_2, fldA_valid_3, fldA_valid_4, fldA_valid_5, fldA_valid_6, fldA_valid_7, fldA_valid_8, fldA_valid_9, fldA_valid_10, fldA_valid_11]

theorem lamB_valid_0 : qvalidD (lamS (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) qX qY qZ (iL 7) (iL 8) (iL 9) 0 - lamB 0) = true := by decide +kernel
theorem lamB_valid_1 : qvalidD (lamS (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) qX qY qZ (iL 7) (iL 8) (iL 9) 1 - lamB 1) = true := by decide +kernel
theorem lamB_valid_2 : qvalidD (lamS (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) qX qY qZ (iL 7) (iL 8) (iL 9) 2 - lamB 2) = true := by decide +kernel
theorem lamB_valid_3 : qvalidD (lamS (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) qX qY qZ (iL 7) (iL 8) (iL 9) 3 - lamB 3) = true := by decide +kernel
theorem lamB_valid_4 : qvalidD (lamS (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) qX qY qZ (iL 7) (iL 8) (iL 9) 4 - lamB 4) = true := by decide +kernel
theorem lamB_valid_5 : qvalidD (lamS (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) qX qY qZ (iL 7) (iL 8) (iL 9) 5 - lamB 5) = true := by decide +kernel
theorem lamB_valid (i : ℕ) (hi : i < 6) : qvalidD (lamS (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) qX qY qZ (iL 7) (iL 8) (iL 9) i - lamB i) = true := by
  interval_cases i
  exacts [lamB_valid_0, lamB_valid_1, lamB_valid_2, lamB_valid_3, lamB_valid_4, lamB_valid_5]

theorem fldB_valid_0 : qvalidD (fldS lamB qzB 0 - fldB 0) = true := by decide +kernel
theorem fldB_valid_1 : qvalidD (fldS lamB qzB 1 - fldB 1) = true := by decide +kernel
theorem fldB_valid_2 : qvalidD (fldS lamB qzB 2 - fldB 2) = true := by decide +kernel
theorem fldB_valid_3 : qvalidD (fldS lamB qzB 3 - fldB 3) = true := by decide +kernel
theorem fldB_valid_4 : qvalidD (fldS lamB qzB 4 - fldB 4) = true := by decide +kernel
theorem fldB_valid_5 : qvalidD (fldS lamB qzB 5 - fldB 5) = true := by decide +kernel
theorem fldB_valid_6 : qvalidD (fldS lamB qzB 6 - fldB 6) = true := by decide +kernel
theorem fldB_valid_7 : qvalidD (fldS lamB qzB 7 - fldB 7) = true := by decide +kernel
theorem fldB_valid_8 : qvalidD (fldS lamB qzB 8 - fldB 8) = true := by decide +kernel
theorem fldB_valid_9 : qvalidD (fldS lamB qzB 9 - fldB 9) = true := by decide +kernel
theorem fldB_valid_10 : qvalidD (fldS lamB qzB 10 - fldB 10) = true := by decide +kernel
theorem fldB_valid_11 : qvalidD (fldS lamB qzB 11 - fldB 11) = true := by decide +kernel
theorem fldB_valid (i : ℕ) (hi : i < 12) : qvalidD (fldS lamB qzB i - fldB i) = true := by
  interval_cases i
  exacts [fldB_valid_0, fldB_valid_1, fldB_valid_2, fldB_valid_3, fldB_valid_4, fldB_valid_5, fldB_valid_6, fldB_valid_7, fldB_valid_8, fldB_valid_9, fldB_valid_10, fldB_valid_11]

end NoFourMUBs.PRM.Coverage.StripId.Nonzero
