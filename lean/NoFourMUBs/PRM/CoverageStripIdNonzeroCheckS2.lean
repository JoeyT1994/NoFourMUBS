import NoFourMUBs.PRM.CoverageStripIdNonzeroStage
import NoFourMUBs.PRM.CoverageStripIdNonzeroPart
import NoFourMUBs.PRM.CoverageStripIdNonzeroDataP2

/-! The nonzero-`J` square sum, group 2 of the monomials of `momentPoly` (kernel check). -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable section

namespace NoFourMUBs.PRM.Coverage.StripId.Nonzero

open NoFourMUBs.Kronecker

theorem part2_valid : qvalidD (partQ2 mD - partD2) = true := by
  decide +kernel

end NoFourMUBs.PRM.Coverage.StripId.Nonzero
