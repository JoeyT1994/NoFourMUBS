import KernelAtlas.WholeBall.Fourier2299Data
import KernelAtlas.WholeBall.MatrixRowNorms

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

set_option Elab.async false

namespace NoFourMUBs.KernelAtlas.WholeBall.Fourier2299

theorem sums_checked : data.sumCheck bounds = true := by decide +kernel

end NoFourMUBs.KernelAtlas.WholeBall.Fourier2299
