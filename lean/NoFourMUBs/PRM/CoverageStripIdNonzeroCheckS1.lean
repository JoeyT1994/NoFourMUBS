import NoFourMUBs.PRM.CoverageStripIdNonzeroStage
import NoFourMUBs.PRM.CoverageStripIdNonzeroDataPA
import NoFourMUBs.PRM.CoverageStripIdNonzeroDataP1

/-! The nonzero-`J` square sum, group 1 (`−M(−4,2) M(2,−4) M(2,2) − M(−2,−2) M(−2,4) M(4,−2)`) through
the products `pA`, `pB` (kernel check). -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable section

namespace NoFourMUBs.PRM.Coverage.StripId.Nonzero

open NoFourMUBs.Kronecker

theorem part1_valid : qvalidD ((-1) * pA * mD (2, 2) + (-1) * pB * mD (-2, -2) - partD1) = true := by
  decide +kernel

end NoFourMUBs.PRM.Coverage.StripId.Nonzero
