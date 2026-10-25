import KernelAtlas.Edge.Baseline.OverlapData

namespace NoFourMUBs.KernelAtlas.Edge.Baseline

open NoFourMUBs.KernelAtlas.Edge

theorem boxes01_overlap : overlapOK box0 box1 = true := by decide +kernel

theorem box1_ok : chartOK ball box1 = true := by decide +kernel

end NoFourMUBs.KernelAtlas.Edge.Baseline
