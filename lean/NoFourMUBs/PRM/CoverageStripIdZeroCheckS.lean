import NoFourMUBs.PRM.CoverageStripIdZeroData

/-! The zero-`J` square sum: `momentPoly` of the reduced moments is `n / (z¹² E⁵)`, and
`n = T z¹² E² + q₂ G` (kernel checks). -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable section

namespace NoFourMUBs.PRM.Coverage.StripId.Zero

open NoFourMUBs.Kronecker

theorem sum_valid : qvalidR (momentPolyQ mD - ⟨⟨nC, ![0, 0, 12, 5, 5, 5]⟩, 0⟩) 1 = true := by
  decide +kernel

theorem quot_valid : (nC - cT * vz ^ 12 * cE ^ 2 - q2C * cG).validR 1 = true := by decide +kernel

end NoFourMUBs.PRM.Coverage.StripId.Zero
