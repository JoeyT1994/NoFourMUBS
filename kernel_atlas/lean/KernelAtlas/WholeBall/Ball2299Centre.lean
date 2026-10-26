import KernelAtlas.WholeBall.Ball2299Data

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

open Matrix

namespace NoFourMUBs.KernelAtlas.WholeBall.Ball2299

theorem zi_checked : (imaginaryCoefficientBox Centre2299.ball Centre2299.centre).enclosesCheck data.fourier.Zi = true := by decide +kernel

theorem k0_checked : (data.jets.W.mul data.jets.Z).enclosesCheck data.fourier.fourier.K0 = true := by decide +kernel

theorem k1_checked : (data.jets.W.mul data.fourier.Zi).enclosesCheck data.fourier.fourier.K1 = true := by decide +kernel

theorem s_checked : ((MatrixBox.exact phaseFrequencies).mul data.jets.U).enclosesCheck data.fourier.fourier.S = true := by decide +kernel

theorem t_checked : ((MatrixBox.exact phaseFrequencies).mul data.jets.H).enclosesCheck data.fourier.fourier.T = true := by decide +kernel

theorem d_checked : ((MatrixBox.exact phaseFrequencies).mul (MatrixBox.exact BasisNorm.matrix)).enclosesCheck data.fourier.fourier.D = true := by decide +kernel

theorem phase_checked : (centrePhaseBox Centre2299.ball Centre2299.centre).enclosesCheck data.phase = true := by decide +kernel

theorem fourier_checked : centreFourierCheck Centre2299.ball Centre2299.centre BasisNorm.matrix data.jets data.fourier = true := by
  simp only [centreFourierCheck, Bool.and_eq_true]
  exact ⟨⟨⟨⟨⟨zi_checked, k0_checked⟩, k1_checked⟩, s_checked⟩, t_checked⟩, d_checked⟩

end NoFourMUBs.KernelAtlas.WholeBall.Ball2299
