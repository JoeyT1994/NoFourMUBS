import NoFourMUBs.PRM.CoverageStripIdNonzeroStage
import NoFourMUBs.PRM.CoverageStripIdNonzeroPart
import NoFourMUBs.PRM.CoverageStripIdNonzeroDataP4

/-! The nonzero-`J` square sum, group 4 of the monomials of `momentPoly` (kernel check). -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable section

namespace NoFourMUBs.PRM.Coverage.StripId.Nonzero

open NoFourMUBs.Kronecker

theorem part4_valid : qvalidD (partQ4 mD - partD4) = true := by
  decide +kernel

end NoFourMUBs.PRM.Coverage.StripId.Nonzero
