import KernelAtlas.WholeBall.Fourier2299TermNorms
import KernelAtlas.WholeBall.Fourier2299CubicNorm
import KernelAtlas.WholeBall.Fourier2299QuarticNorm
import KernelAtlas.WholeBall.Fourier2299MixedNorm
import KernelAtlas.WholeBall.Fourier2299SecondNorm
import KernelAtlas.WholeBall.Fourier2299NormalNorm
import KernelAtlas.WholeBall.Fourier2299Sums

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace NoFourMUBs.KernelAtlas.WholeBall.Fourier2299

theorem norms_checked : data.normCheck bounds = true := by
  simp only [FiniteData.normCheck, Bool.and_eq_true]
  exact ⟨⟨⟨⟨⟨term_norms_checked, cubic_norm_checked⟩, quartic_norm_checked⟩, mixed_norm_checked⟩, second_norm_checked⟩, normal_norm_checked⟩

end NoFourMUBs.KernelAtlas.WholeBall.Fourier2299
