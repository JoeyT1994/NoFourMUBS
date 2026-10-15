import NoFourMUBs.PRM.CoverageStripIdNonzeroDataN
import NoFourMUBs.PRM.CoverageStripIdNonzeroDataP3
import NoFourMUBs.PRM.CoverageStripIdNonzeroDataP4
import NoFourMUBs.PRM.CoverageStripIdNonzeroDataPS
import NoFourMUBs.PRM.CoverageStripIdFast

/-! The nonzero-`J` square sum: `partS` and groups 3–4 add up to `n / (2⁵ h⁴ Π ℓ⁵)` (kernel check). -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable section

namespace NoFourMUBs.PRM.Coverage.StripId.Nonzero

open NoFourMUBs.Kronecker

theorem partsB_valid : qvalidD (partS + partD3 + partD4 - ⟨⟨nC, ![0, 0, 4, 5, 5, 5, 5, 5, 5, 5]⟩, 0⟩) = true := by
  decide +kernel

end NoFourMUBs.PRM.Coverage.StripId.Nonzero
