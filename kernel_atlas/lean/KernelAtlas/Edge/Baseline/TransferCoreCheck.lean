import KernelAtlas.Edge.Baseline.TransferData

namespace NoFourMUBs.KernelAtlas.Edge.Baseline

open NoFourMUBs.KernelAtlas.Seed NoFourMUBs.KernelAtlas.Edge

theorem transfer_core_ok : NoFourMUBs.KernelAtlas.Edge.coreOK transferBall transferBox = true := by
  decide +kernel

end NoFourMUBs.KernelAtlas.Edge.Baseline
