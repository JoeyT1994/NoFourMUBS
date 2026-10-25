import KernelAtlas.Edge.Baseline.C1eData
import KernelAtlas.Edge.Baseline.RootDiffData
import KernelAtlas.Edge.Baseline.SlopeData
import KernelAtlas.Edge.Fourier.Data

namespace NoFourMUBs.KernelAtlas.Edge.Baseline

open NoFourMUBs.KernelAtlas.Edge

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem box0_slope : slopeOK box0.hb slopeY0
    (etaJacT ball box0 Fourier.frame Fourier.fq diffH0 diffV0 derivativeP0) slopeQ0 = true := by
  decide +kernel

end NoFourMUBs.KernelAtlas.Edge.Baseline
