import NoFourMUBs.PRM.CoverageStripIdNonzeroDataP0
import NoFourMUBs.PRM.CoverageStripIdNonzeroDataP1
import NoFourMUBs.PRM.CoverageStripIdNonzeroDataP2
import NoFourMUBs.PRM.CoverageStripIdNonzeroDataPS
import NoFourMUBs.PRM.CoverageStripIdFast

/-! The nonzero-`J` square sum: groups 0–2 add up to `partS` (kernel check). -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable section

namespace NoFourMUBs.PRM.Coverage.StripId.Nonzero

open NoFourMUBs.Kronecker

theorem partsA_valid : qvalidD (partD0 + partD1 + partD2 - partS) = true := by
  decide +kernel

end NoFourMUBs.PRM.Coverage.StripId.Nonzero
