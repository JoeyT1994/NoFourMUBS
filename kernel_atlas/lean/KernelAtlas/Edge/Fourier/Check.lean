import KernelAtlas.Edge.Fourier.Data

namespace NoFourMUBs.KernelAtlas.Edge.Fourier

open NoFourMUBs.KernelAtlas NoFourMUBs.KernelAtlas.Seed NoFourMUBs.SeedAtlas Hadamard6

theorem frame_checked : frameOK frame fq = true := by decide +kernel

theorem normal_checked : sigmaOK tabN frame sigq (171 / 100) = true := by decide +kernel


end NoFourMUBs.KernelAtlas.Edge.Fourier
