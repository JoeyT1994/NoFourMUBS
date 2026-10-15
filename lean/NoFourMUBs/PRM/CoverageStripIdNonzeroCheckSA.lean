import NoFourMUBs.PRM.CoverageStripIdNonzeroStage
import NoFourMUBs.PRM.CoverageStripIdNonzeroDataPA

/-! The nonzero-`J` square sum: the two products `pA = M(−4,2) M(2,−4)`, `pB = M(−2,4) M(4,−2)`
(kernel checks). -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable section

namespace NoFourMUBs.PRM.Coverage.StripId.Nonzero

open NoFourMUBs.Kronecker

theorem pA_valid : qvalidD (mD (-4, 2) * mD (2, -4) - pA) = true := by decide +kernel

theorem pB_valid : qvalidD (mD (-2, 4) * mD (4, -2) - pB) = true := by decide +kernel

end NoFourMUBs.PRM.Coverage.StripId.Nonzero
