import KernelAtlas.Edge.ProductionSample.Data1

namespace NoFourMUBs.KernelAtlas.Edge.ProductionSample.B1

open NoFourMUBs.KernelAtlas.Edge

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem checked : fullBox ball enclosure Fourier.frame Fourier.fq full = true := by decide +kernel

end NoFourMUBs.KernelAtlas.Edge.ProductionSample.B1
