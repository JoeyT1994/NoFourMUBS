import NoFourMUBs.PRM.CoverageStripIdNonzeroStage
import NoFourMUBs.PRM.CoverageStripIdNonzeroPart
import NoFourMUBs.PRM.CoverageStripIdNonzeroDataP3

/-! The nonzero-`J` square sum, group 3 of the monomials of `momentPoly` (kernel check). -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable section

namespace NoFourMUBs.PRM.Coverage.StripId.Nonzero

open NoFourMUBs.Kronecker

theorem part3_valid : qvalidD (partQ3 mD - partD3) = true := by
  decide +kernel

end NoFourMUBs.PRM.Coverage.StripId.Nonzero
