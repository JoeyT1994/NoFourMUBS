import KernelAtlas.Edge.Baseline.CoverData

namespace NoFourMUBs.KernelAtlas.Edge.Baseline

open NoFourMUBs.KernelAtlas.Seed

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem closed_ball_covered : ballOK coverRadius coverLevel coverBoxes = true := by decide +kernel

end NoFourMUBs.KernelAtlas.Edge.Baseline
