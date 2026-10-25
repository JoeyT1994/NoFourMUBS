import KernelAtlas.Edge.SmallBall.Data0

namespace NoFourMUBs.KernelAtlas.Edge.SmallBall.B0

open NoFourMUBs.KernelAtlas.Edge

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem checked : fullBox ball enclosure Fourier.frame Fourier.fq full = true := by decide +kernel

end NoFourMUBs.KernelAtlas.Edge.SmallBall.B0
