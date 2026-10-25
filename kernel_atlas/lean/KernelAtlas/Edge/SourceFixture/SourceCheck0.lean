import KernelAtlas.Edge.SourceFixture.SourceData0

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge.SourceFixture.S0

open NoFourMUBs.KernelAtlas.Seed NoFourMUBs.KernelAtlas.Edge

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem checked : sourceOK ball radius Ds source = true := by decide +kernel

end NoFourMUBs.KernelAtlas.Edge.SourceFixture.S0
