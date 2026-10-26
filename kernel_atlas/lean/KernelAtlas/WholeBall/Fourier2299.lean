import KernelAtlas.WholeBall.Fourier2299Cubic
import KernelAtlas.WholeBall.Fourier2299Quartic
import KernelAtlas.WholeBall.Fourier2299Mixed
import KernelAtlas.WholeBall.Fourier2299Second
import KernelAtlas.WholeBall.Fourier2299Normal
import KernelAtlas.WholeBall.Fourier2299Norms

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace NoFourMUBs.KernelAtlas.WholeBall.Fourier2299

theorem tensors_checked : data.tensorCheck = true := by
  simp only [FiniteData.tensorCheck, Bool.and_eq_true]
  exact ⟨⟨⟨⟨cubic_checked, quartic_checked⟩, mixed_checked⟩, second_checked⟩, normal_checked⟩

end NoFourMUBs.KernelAtlas.WholeBall.Fourier2299
