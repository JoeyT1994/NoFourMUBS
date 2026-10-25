import KernelAtlas.Edge.Baseline.TransferData

namespace NoFourMUBs.KernelAtlas.Edge.Baseline

open NoFourMUBs.KernelAtlas.Seed NoFourMUBs.KernelAtlas.Edge

theorem transfer_ok : transferOK transferBall transferBox transfer = true := by
  decide +kernel

end NoFourMUBs.KernelAtlas.Edge.Baseline
