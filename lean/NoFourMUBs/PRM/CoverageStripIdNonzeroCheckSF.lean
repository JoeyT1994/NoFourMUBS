import NoFourMUBs.PRM.CoverageStripIdNonzeroDataN
import NoFourMUBs.PRM.CoverageStripIdNonzeroDataP0
import NoFourMUBs.PRM.CoverageStripIdNonzeroDataP1
import NoFourMUBs.PRM.CoverageStripIdNonzeroDataP2
import NoFourMUBs.PRM.CoverageStripIdNonzeroDataP3
import NoFourMUBs.PRM.CoverageStripIdNonzeroDataP4
import NoFourMUBs.PRM.CoverageStripIdFast

/-! The nonzero-`J` square sum: the five reduced partial sums add up to `n / (2⁵ h⁴ Π ℓ⁵)`
(kernel check). -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable section

namespace NoFourMUBs.PRM.Coverage.StripId.Nonzero

open NoFourMUBs.Kronecker

theorem parts_sum_valid : qvalidD (partD0 + partD1 + partD2 + partD3 + partD4 -
    ⟨⟨nC, ![0, 0, 4, 5, 5, 5, 5, 5, 5, 5]⟩, 0⟩) = true := by
  decide +kernel

end NoFourMUBs.PRM.Coverage.StripId.Nonzero
