import KernelAtlas.Edge.Baseline.FullCheck

/-! Timing target evaluating all baseline box obligations together in the kernel. -/

namespace NoFourMUBs.KernelAtlas.Edge.Baseline

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem full_kernel_checked : fullBox ball enclosure0 Fourier.frame Fourier.fq full0 = true := by
  decide +kernel

end NoFourMUBs.KernelAtlas.Edge.Baseline
