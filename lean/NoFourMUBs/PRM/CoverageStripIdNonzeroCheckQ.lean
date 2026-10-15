import NoFourMUBs.PRM.CoverageStripIdNonzeroDataN
import NoFourMUBs.PRM.CoverageStripIdNonzeroDataQ
import NoFourMUBs.PRM.CoverageStripIdFast

/-! The nonzero-`J` quotient identity `n h⁸ + 2¹⁷ k² (3k² + 1)³ Q_h (Π ℓ)³ = q G` (kernel check). -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable section

namespace NoFourMUBs.PRM.Coverage.StripId.Nonzero

open NoFourMUBs.Kronecker

theorem quot_valid :
    (nC * ch ^ 8 + 131072 * vk ^ 2 * (3 * vk ^ 2 + 1) ^ 3 * cQh * cP ^ 3 - qC * cG).validD = true := by
  decide +kernel

end NoFourMUBs.PRM.Coverage.StripId.Nonzero
